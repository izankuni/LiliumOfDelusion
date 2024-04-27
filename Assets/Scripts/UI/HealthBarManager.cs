using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBarManager : MonoBehaviour
{
    [SerializeField] private Slider slider;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        slider.value = ((Ink.Runtime.IntValue)DialogueManager.GetInstance().GetVariableState("mental_health")).value;
    }
}
