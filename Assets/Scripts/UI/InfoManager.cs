using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class InfoManager : MonoBehaviour
{
    [SerializeField] GameObject infoDetailsMenu;
    [SerializeField] Image infoImage;
    [SerializeField] TextMeshProUGUI infoName;
    [SerializeField] TextMeshProUGUI infoText;

    [SerializeField] Sprite[] infoImages;
    [SerializeField] string[] infoNames;
    [SerializeField] string[] infoTexts;

    [SerializeField] string[] inkVariables;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OpenInfoDetails(int i)
    {
        if (((Ink.Runtime.BoolValue)DialogueManager.GetInstance().GetVariableState(inkVariables[i])).value)
        {
            infoDetailsMenu.SetActive(true);
            infoImage.sprite = infoImages[i];
            infoName.text = infoNames[i];
            infoText.text = infoTexts[i];
        }
    }

    public void CloseInfoMenu()
    {
        infoDetailsMenu.SetActive(false);
    }
}
