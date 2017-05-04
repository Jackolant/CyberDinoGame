using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

// This script holds, keeps track of, and sends delegates for a GameCharacter's vital statisics.
// It also handles the interpretation of input.
// If a GameCharacter does not also have a CharacterMotor component on it, it cannot move.
// If a GameCharacter does not have a CharacterGun and a Weapon, it cannot fire.
public class GameCharacter : MonoBehaviour {

    public CharacterMotor motor;

    // Inputs
    [HideInInspector]
    public Vector3 moveInput = Vector3.zero;
    [HideInInspector]
    public bool sprintInput = false;
    [HideInInspector]
    public bool jumpInput = false;
    [HideInInspector]
    public Vector3 aimPoint = Vector3.zero;
    [HideInInspector]
    // You can only politely ask that you'd like the Dino to fire it's weapon.
    public bool fireInput = false;

    public bool IsSprinting
    {
        // We can't sprint if we're overheated or if we don't have any move input!
        get { return !overheated && sprintInput && moveInput != Vector3.zero; }
    }

    // Movement settings
    public float speed;
    public float sprintSpeed;
    public float sprintHeatCostPerSecond;
    public float jumpHeight;

    // Health settings
    [SerializeField]
    private float currentHealth;
    [SerializeField]
    private float maxHealth;

    public float CurrentHealth
    {
        get { return currentHealth; }
        set
        {
            currentHealth = value;
            UpdateHealthChange();
        }
    }

    public float MaxHealth
    {
        get { return maxHealth; }
        set
        {
            maxHealth = value;
            UpdateHealthChange();
        }
    }

    // Heat settings
    [SerializeField]
    private float currentHeat;
    [SerializeField]
    private float maxHeat;
    public float heatCooldownPerSecond;

    public float overheatWaitPeriod;
    [Range(0f, 1f)]
    public float overheatWaitUntilPercentage;
    [SerializeField]
    [HideInInspector]
    private float overheatedAtTime = 0;

    public float CurrentHeat
    {
        get { return currentHeat; }
        set
        {
            currentHeat = value;
            UpdateHeatChange();
        }
    }

    public float MaxHeat
    {
        get { return maxHeat; }
        set
        {
            maxHeat = value;
            UpdateHeatChange();
        }
    }

    [SerializeField]
    [HideInInspector]
    private bool overheated = false;
    public bool Overheated { get { return overheated; } }

    // Delegates for Health, Heat, and when the weapon gets fired.
    public event Action<float> HealthChangePercentage;
    public event Action<float, float> HealthChange;
    public event Action Death;
    public static event Action<GameCharacter> CharacterDeath;

    public event Action<float> HeatChangePercentage;
    public event Action<float, float> HeatChange;
    public event Action<bool> Overheat;

    public event Action<Weapon> WeaponFired;
    public event Action<Weapon, int> ActiveWeaponChanged;
    public event Action<Weapon[]> WeaponListChanged;

    // Update our health and notify any listeners of the changes.
    private void UpdateHealthChange() {
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);

        if (HealthChange != null) {
            HealthChange(currentHealth, maxHealth);
        }

        if (HealthChangePercentage != null) {
            HealthChangePercentage(currentHealth / maxHealth);
        }

        // If we die, send out both a static delegate and an instance delegate.
        // The static delegate is for anything that needs to know when a character has died.
        // The instance delegate is for any components that are attached to the character.
        if (currentHealth == 0 && Death != null) {
            if (CharacterDeath != null) {
                CharacterDeath(this);
            }
            Death();
        }
    }

    // Update our heat, make any changes to our state that need to be made, and notify our listeners of those changes.
    private void UpdateHeatChange() {
        currentHeat = Mathf.Clamp(currentHeat, 0, maxHeat);

        if (HeatChange != null) {
            HeatChange(currentHeat, maxHeat);
        }

        if (HeatChangePercentage != null) {
            HeatChangePercentage(currentHeat / maxHeat);
        }

        // Check wether or not we fulfil the condition for being overheated or not overheated.
        if (!overheated) {
            if (currentHeat >= maxHeat) {
                overheatedAtTime = Time.time;
                overheated = true;
                if (Overheat != null) {
                    Overheat(true);
                }
            }
        } else {
            if (currentHeat / maxHeat <= overheatWaitUntilPercentage) {
                overheated = false;
                if (Overheat != null) {
                    Overheat(false);
                }
            }
        }
    }

    //Gun and weapon settings
    public CharacterGun gun;
    [SerializeField]
    [Tooltip("The weapon the character is currently using.")]
    private Weapon activeWeapon = null;
    public Weapon ActiveWeapon { get { return activeWeapon; } }
    [SerializeField]
    [Tooltip("If set, this is the weapon the character will spawn with.")]
    private Weapon defaultWeapon = null;
    public Weapon DefaultWeapon { get { return defaultWeapon; } }
    [SerializeField]
    private List<Weapon> weaponList = new List<Weapon>();
    public Weapon[] Weapons { get { return weaponList.ToArray(); } }
    [HideInInspector]
    [SerializeField]
    private GameObject weaponsGroupObject;
    [HideInInspector]
    [SerializeField]
    private List<Weapon> removedWeaponList = new List<Weapon>();

    #region Weapon Functions
    /// <summary>
    /// Set the GameCharacter's default weapon, which cannot be removed except by calling this function with a null parameter.<para></para>
    /// If the weapon is not already in the GameCharacter's list of weapons, it will be added to the GameCharacter.
    /// </summary>
    /// <param name="weapon">The weapon to be set as default.</param>
    /// <returns>The copy of the weapon that is unique to this GameCharacter.</returns>
    public Weapon SetDefaultWeapon(Weapon weapon) {
        // Are we setting a new default weapon?
        if (weapon != null) {
            if (weapon != defaultWeapon || weaponList.Count == 0) {
                Weapon prevDefault = defaultWeapon;
                defaultWeapon = AddWeapon(weapon);

                if (prevDefault != null) {
                    // If we were using the previous default weapon, then swtich to the new one.
                    if (activeWeapon == prevDefault) {
                        activeWeapon = defaultWeapon;
                    }

                    // Remove the weapon that was previously the default.
                    weaponList.Remove(prevDefault);
                    
                    prevDefault.enabled = false;
                    removedWeaponList.Add(prevDefault);

                    if (WeaponListChanged != null) {
                        WeaponListChanged(weaponList.ToArray());
                    }
                }
            }
        // If this function was called with null, then remove the default weapon.
        } else if (defaultWeapon != null) {
            // If we were previously using the default weapon, we now don't have an active weapon.
            if (activeWeapon == defaultWeapon) {
                SetActiveWeapon(null);
            }

            // Remove the default weapon.
            weaponList.Remove(defaultWeapon);
            
            defaultWeapon.enabled = false;
            removedWeaponList.Add(defaultWeapon);

            if (WeaponListChanged != null) {
                WeaponListChanged(weaponList.ToArray());
            }
        }

        return defaultWeapon;
    }

    /// <summary>
    /// <para>Add a copy of a weapon to the GameCharacter's weapon list.</para>
    /// If the GameCharacter already has a weapon with the same weaponID, then OnPickupCopy([the new weapon]) is called on the existing weapon.
    /// </summary>
    /// <param name="weapon">The weapon to be copied.</param>
    /// <returns>The copy of the weapon that is unique to the GameCharacter and is also in it's weapon list.</returns>
    public Weapon AddWeapon(Weapon weapon) {
        Weapon wpn = FindWeaponWithID(weapon.weaponID);
        // Do we already have a weapon with the same ID?
        if (wpn == null) {
            wpn = FindRemovedWeaponWithID(weapon.weaponID);
            if (wpn != null) {
                // Reinitalize the previously removed weapon.
                wpn.CopyDataFrom(weapon);
                removedWeaponList.Remove(wpn);
            } else {
                // Create a new copy of the weapon passed in.
                wpn = weaponsGroupObject.AddCopyOfScript(weapon);
            }
            // Configure the weapon to have the correct owner.
            wpn.gameCharacter = this;
            // and put it in our weapon list.
            weaponList.Add(wpn);
            if (WeaponListChanged != null) {
                WeaponListChanged(weaponList.ToArray());
            }

            // If didn't have an active weapon before, we now have one.
            if (activeWeapon == null) {
                SetActiveWeapon(wpn);
            }

            return wpn;
        } else {
            wpn.OnPickupCopy(weapon);
            return wpn;
        }
    }

    /// <summary>
    /// Remove a weapon (or a weapon with the same weaponID) from the GameCharacter's list of weapons.<para></para>
    /// If the weapon to be removed is the GameCharacter's default weapon, the function will not remove it.
    /// </summary>
    /// <param name="weapon"></param>
    public void RemoveWeapon(Weapon weapon) {
        Weapon wpn = null;
        if (weapon.gameObject == weaponsGroupObject) {
            wpn = weapon;
        } else {
            wpn = FindWeaponWithID(weapon.weaponID);
        }

        if (wpn != null && wpn != defaultWeapon) {
            // If we're removing our activeWeapon, then we need to switch to another weapon if we have one.
            if (activeWeapon == wpn) {
                if (defaultWeapon != null) {
                    // We have a default weapon we can switch to.
                    SetActiveWeapon(defaultWeapon);
                } else if (weaponList.Count > 1) {
                    // We have at least one other weapon we can switch to.
                    CycleWeaponPrev();
                } else {
                    // We have no other weapons to switch to.
                    SetActiveWeapon(null);
                }
            }

            // Add the weapon to a list of removed weapons to allow for caching
            weaponList.Remove(wpn);
            
            wpn.enabled = false;
            removedWeaponList.Add(wpn);

            if (WeaponListChanged != null) {
                WeaponListChanged(weaponList.ToArray());
            }
        }
    }

    /// <summary>
    /// Add a new weapon to a GameCharacter and make the the active weapon.
    /// See <seealso cref="AddWeapon(Weapon)"/> and <see cref="SetActiveWeapon(Weapon)"/>
    /// </summary>
    /// <param name="weapon">The weapon to be added and set active</param>
    /// <returns>The copy of the weapon that is unique to the GameCharacter and is also in it's weapon list.</returns>
    public Weapon AddWeaponAndSetActive(Weapon weapon) {
        Weapon copy = AddWeapon(weapon);
        SetActiveWeapon(copy);
        return copy;
    }

    /// <summary>
    /// Finds a weapon with the specified weaponID inside the GameCharacter's list of weapons.
    /// </summary>
    /// <param name="weaponID">The weaponID to look for.</param>
    /// <returns>The weapon found, if there is one. Otherwise, returns null.</returns>
    public Weapon FindWeaponWithID(string weaponID) {
        return weaponList.Find(wpn => wpn.weaponID == weaponID);
    }

    /// <summary>
    /// Finds a weapon with a weaponID inside the cached list of previously removed weapons.
    /// </summary>
    /// <param name="weaponID"></param>
    /// <returns></returns>
    private Weapon FindRemovedWeaponWithID(string weaponID) {
        return removedWeaponList.Find(wpn => wpn.weaponID == weaponID);
    }
    
    /// <summary>
    /// Sets the GameCharacter's active weapon (or a weapon with the same weaponID if the weapon passed in is not in the GameCharacter's list of weapons) and disables all other weapons.<para></para>
    /// Does nothing if the GameCharacter does not have that weapon (or a weapon with the same ID) in it's weapon list. Though calling this with null will set the GameCharacter's active weapon to their default weapon (if they have one).
    /// </summary>
    /// <param name="weapon"></param>
    public void SetActiveWeapon(Weapon weapon) {
        Weapon wpn = null;
        // Are we resetting the active weapon?
        if (weapon != null) {
            //Don't do anything unless we're actually changing weapons.
            if (weapon != activeWeapon) {
                if (weaponList.Contains(weapon)) {
                    wpn = weapon;
                } else {
                    wpn = FindWeaponWithID(weapon.weaponID);
                }

                // Only do something if we have that weapon in our list.
                if (wpn != null) {
                    // Update our active weapon one last time before switching away from it.
                    // This stops shenanigans such as charging a weapon and then storing that charge by swtiching away from it.
                    // Perhaps this would be better with special code for that case, but the a "ChargingWeapon" class doesn't exist when I'm writing this!
                    UpdateWeapon(false);

                    //Disable all other weapons in our list and enable the one that was made active.
                    foreach (Weapon w in weaponList) {
                        w.enabled = w == wpn;
                    }

                    activeWeapon = wpn;

                    if (ActiveWeaponChanged != null) {
                        ActiveWeaponChanged(activeWeapon, weaponList.IndexOf(activeWeapon));
                    }
                }
            }
        } else {
            //Only do something if the weapon is actually being changed.
            if (activeWeapon != defaultWeapon) {
                // Update our active weapon one last time before switching away from it.
                // This stops shenanigans such as charging a weapon and then storing that charge by swtiching away from it.
                // Perhaps this would be better with special code for that case, but the a "ChargingWeapon" class doesn't exist when I'm writing this!
                UpdateWeapon(false);

                // We are resetting the active weapon.
                // If default weapon is null, then all weapons are disabled.
                weaponList.ForEach(w => w.enabled = w == defaultWeapon);
                activeWeapon = defaultWeapon;

                if (ActiveWeaponChanged != null) {
                    ActiveWeaponChanged(activeWeapon, weaponList.IndexOf(activeWeapon));
                }
            }
        }
    }

    /// <summary>
    /// Sets the GameCharacter's active weapon to the one that comes before it in it's weapon list.
    /// </summary>
    public void CycleWeaponPrev() {
        CycleWeapon(false);
    }

    /// <summary>
    /// Sets the GameCharacter's active weapon to the one that comes after it in it's weapon list.
    /// </summary>
    public void CycleWeaponNext() {
        CycleWeapon(true);
    }

    private void CycleWeapon(bool next) {
        // Do we actually /have/ any weapons?
        if (weaponList.Count > 0) {
            if (activeWeapon != null) {
                int index = weaponList.IndexOf(activeWeapon);
                // Go fowards or backwards based on which way we're cycling.
                index = (index + ((next) ? 1 : -1)) % weaponList.Count;
                SetActiveWeapon(weaponList[index]);
            } else {
                // If we don't have an active weapon, set it to the start or the end of the weapon list based on which way we're cycling.
                SetActiveWeapon((next) ? weaponList[0] : weaponList[weaponList.Count - 1]);
            }
        }
    }
    #endregion

    // Intialization logic
    void Awake() {
        weaponsGroupObject = new GameObject("Weapons");
        weaponsGroupObject.transform.parent = this.transform;
    }
        
    // Make sure we're all good to go!
    void Start() {
        UpdateHealthChange();
        UpdateHeatChange();
        SetDefaultWeapon(defaultWeapon);
    }

    // Character physics!
    protected virtual void FixedUpdate() {
        if (motor != null) {
            UpdateMovement(Time.fixedDeltaTime);
        }
    }

    protected virtual void UpdateMovement(float fixedDeltaTime) {
        motor.Move(fixedDeltaTime);

        //Add sprinting heat cost
        if (IsSprinting) {
            CurrentHeat += sprintHeatCostPerSecond * fixedDeltaTime;
        }
    }

    // Update is called once per frame
    protected virtual void Update () {
        UpdateWeapon(fireInput);
        UpdateHeat();
    }

    protected virtual void UpdateWeapon(bool fireInput) {
        if (gun != null && activeWeapon != null && activeWeapon.isActiveAndEnabled) {
            float heatChange;
            bool weaponFired;
            //We can't shoot if we're overheated!
            bool firing = (Overheated) ? false : fireInput;
            activeWeapon.UpdateState(firing, gun.bulletSpawnPoints, out heatChange, out weaponFired);
            CurrentHeat += heatChange;

            if (weaponFired && WeaponFired != null) {
                // This delegate is only to be fired when the character actually shoots something, not for every frame the fire input is held down.
                WeaponFired(activeWeapon);
            }
        }
    }

    protected virtual void UpdateHeat() {
        // Update heat cooling
        // If we got overheated, then we need to wait before we can do cooling again.
        if (!overheated || (overheated && (Time.time >= overheatedAtTime + overheatWaitPeriod))) {
            CurrentHeat -= heatCooldownPerSecond * Time.deltaTime;
        }
    }
    
    void OnValidate() {

        speed = Mathf.Max(0, speed);
        sprintSpeed = Mathf.Max(0, sprintSpeed);
        sprintHeatCostPerSecond = Mathf.Max(0, sprintHeatCostPerSecond);

        if (Application.isPlaying) {
            // Code that happens during play.
            CurrentHealth = currentHealth;
            CurrentHeat = currentHeat;

            if (weaponList.Count > 0 && !weaponList.Contains(activeWeapon)) {
                activeWeapon = defaultWeapon;
            }

            if (weaponList.Count > 0 && !weaponList.Contains(defaultWeapon)) {
                defaultWeapon = weaponList[0];
            }

        } else {
            // Code that happens when not in play.
            maxHealth = Mathf.Max(0, maxHealth);
            currentHealth = maxHealth;

            currentHeat = 0;
            maxHeat = Math.Max(0, maxHeat);

            activeWeapon = null;
            weaponList.Clear();
        }

        heatCooldownPerSecond = Mathf.Max(0, heatCooldownPerSecond);
        overheatWaitPeriod = Math.Max(0, overheatWaitPeriod);
        overheatWaitUntilPercentage = Mathf.Clamp01(overheatWaitUntilPercentage);
    }

    //Debug information that only gets compiled if we're running this script in the editor.
#if UNITY_EDITOR
    public bool showDebugInfo = false;

    void OnGUI() {
        if (showDebugInfo) {
            GUILayout.Label("Health: " + currentHealth + "/" + maxHealth);
            GUILayout.Label("Heat: " + currentHeat + "/" + maxHeat);
            GUILayout.Label("Overheated: " + overheated);
            GUILayout.Label("Active Weapon: " + activeWeapon.weaponName + ((activeWeapon.usesAmmo) ? " (" + activeWeapon.currentAmmo + "/" + activeWeapon.maxAmmo + ")" : ""));
            GUILayout.Label("Weapons");
            foreach (Weapon weapon in weaponList) {
                if (activeWeapon == weapon) {
                    GUILayout.Label("[" + weapon.weaponName + "]" + ((weapon.usesAmmo) ? " (" + weapon.currentAmmo + "/" + weapon.maxAmmo + ")" : ""));
                } else {
                    GUILayout.Label(weapon.weaponName + ((weapon.usesAmmo) ? " (" + weapon.currentAmmo + "/" + weapon.maxAmmo + ")" : ""));
                }
            }
        }
    }
#endif
}
