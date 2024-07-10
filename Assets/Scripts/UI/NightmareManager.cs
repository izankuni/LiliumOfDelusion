using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class NightmareManager : MonoBehaviour
{
    // Start is called before the first frame update
    [SerializeField] Image imageNightmare;
    [SerializeField] Sprite[] NightmareImages;
    [SerializeField] private TextAsset[] inkJSON;
    private static NightmareManager instance;

    [SerializeField] GameObject portrait;
    [SerializeField] GameObject panel;
    [SerializeField] GameObject info;
    [SerializeField] GameObject card;
    [SerializeField] GameObject talk;

    private int i;

    private void Awake()
    {
        instance = this;
    }

    void Start()
    {
        i = 0;
        imageNightmare.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (((Ink.Runtime.BoolValue)DialogueManager.GetInstance().GetVariableState("changeImage")).value)
        {
            imageNightmare.sprite = NightmareImages[((Ink.Runtime.IntValue)DialogueManager.GetInstance().GetVariableState("imageID")).value];
        }
    }

    public void StartNightmare()
    {
        DialogueManager.GetInstance().EnterDialogueMode(inkJSON[i]);
        imageNightmare.gameObject.SetActive(true);

        portrait.SetActive(false);
        i += 1;
    }

    public void StopNightmare()
    {
        imageNightmare.gameObject.SetActive(false);

        portrait.SetActive(true);
        panel.SetActive(true);
        card.SetActive(true);
        info.SetActive(true);
        talk.SetActive(true);
    }

    public void DeleteUI()
    {
        portrait.SetActive(false);
        panel.SetActive(false);
        card.SetActive(false);
        info.SetActive(false);
        talk.SetActive(false);
    }

    public static NightmareManager GetInstance()
    {
        return instance;
    }
}
