using UnityEngine;
using System.Collections;
using System;

public class DamagingDinosaur : MonoBehaviour
{
    public float damage;
    public float increasingDamage = 20f;
    public int maxDamage = 100;
    //SkinnedMeshRenderer dinosaur;
    public bool armor;

    Rigidbody rig;

    void Start()
    {
        //dinosaur = GetComponent<SkinnedMeshRenderer>();
        rig = GetComponent<Rigidbody>();
        if (armor == true)
        {
            rig.mass = 0;
            rig.angularDrag = 0;
            rig.useGravity = false;
            rig.constraints = RigidbodyConstraints.FreezeAll;
        }

    }


    void OnTriggerEnter()
    {
        damage += increasingDamage;
        //dinosaur.SetBlendShapeWeight(1, damage);
        if (armor == true && damage >= 100)
        {
            rig.mass = 1;
            rig.angularDrag = 0.05f;
            rig.useGravity = true;
            rig.constraints = RigidbodyConstraints.None;
            StartCoroutine(ArmorDisappear());
        }
    }

    public IEnumerator ArmorDisappear()
    {
        int i = 4;
        while (i >0)
        {
            yield return new WaitForSeconds(1);
            i--;
        }
        Destroy(gameObject);
    }
}

/*Instructions:
    1. Add the spinosaurus to the scene. In the folder Resources -> Prefabs-> Spinosaurus -> Spinosaurus
    1. Create a new layer and name it "Armor".
    2. In the hierarchy, expand the Spinosaurus Prefab until you get to geometry. Click on geometry and set the layer to "Armor" and all of the children. (Should be Spinosaurus->Spinosaurus->Geometry)
    2. Under the tab "Edit", go to "Project Settings", and then to "Physics".
    3. Under "Layer Collision Matrix", uncheck the Armor/Armor square so that they do not interact with each other.
*/
