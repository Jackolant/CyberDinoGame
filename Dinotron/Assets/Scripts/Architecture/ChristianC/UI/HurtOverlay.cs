using UnityEngine;
using UnityEngine.UI;
using System.Collections;

//Flashes the screen using an overlay graphic every time a Game Character gets hurt.
public class HurtOverlay : MonoBehaviour {

    public DinoUI dinoUI;
    public Image overlayImage;
    public AnimationCurve healthPercentOverlayAlphaCurve;
    [Range(0, 1)]
    public float onDamageOverlayAlpha;
    public float onDamageEffectFadeOutTime;

    private Color overlayColor;
    private float healthPercentOverlayAlpha;
    private float lastPercentage = 0;

    private Coroutine onDamageEffect;

	// Use this for initialization
	void Start () {
        overlayColor = Color.white;
        UpdateOverlay(dinoUI.gameCharacter.CurrentHealth / dinoUI.gameCharacter.MaxHealth);
	}
	
    void OnEnable() {
        dinoUI.gameCharacter.HealthChangePercentage += UpdateOverlay;
    }

    void UpdateOverlay(float percentage) {

        healthPercentOverlayAlpha = healthPercentOverlayAlphaCurve.Evaluate(1 - percentage);
        overlayColor.a = healthPercentOverlayAlpha;
        overlayImage.color = overlayColor;

        if (percentage < lastPercentage) {
            if (onDamageEffect != null) {
                StopCoroutine(onDamageEffect);
            }
            onDamageEffect = StartCoroutine(OnDamageEffect());
        }

        lastPercentage = percentage;
    }

    IEnumerator OnDamageEffect() {
        float startTime = Time.time;
        float endTime = startTime + onDamageEffectFadeOutTime;
        while (Time.time < endTime) {
            float elapsed = Time.time - startTime;
            overlayColor.a = healthPercentOverlayAlpha + Mathf.Lerp(onDamageOverlayAlpha, 0f, elapsed / onDamageEffectFadeOutTime);
            overlayImage.color = overlayColor;
            yield return null;
        }
    }
}
