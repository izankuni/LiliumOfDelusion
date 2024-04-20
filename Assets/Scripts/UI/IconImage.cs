using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class IconImage : MonoBehaviour
{
    private Image image;
    [SerializeField] private Sprite[] sprites; //0 interrogante, 1 el dibujo
    [SerializeField] private string inkVariable;
    // Start is called before the first frame update
    void Start()
    {
        image = GetComponent<Image>();
        image.sprite = sprites[0];
    }

    // Update is called once per frame
    void Update()
    {
        if (((Ink.Runtime.BoolValue)DialogueManager.GetInstance().GetVariableState(inkVariable)).value)
        {
            image.sprite = sprites[1];
        }
    }
}
