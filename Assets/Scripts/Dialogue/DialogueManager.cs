using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;
using UnityEngine.EventSystems;

public class DialogueManager : MonoBehaviour
{
    /*El sistema de diálogos utiliza el paquete gratuito de INK para hacer los dialogos y 
    las elecciones, de esta forma todos los dialogos se guardan en un archivo JSON*/
    [Header("Dialogue UI")]
    [SerializeField] private GameObject dialoguePanel;
    [SerializeField] private TextMeshProUGUI dialogueText;
    [SerializeField] private GameObject[] choices;
    [SerializeField] private TextAsset loadGlobalsJSON;
    private static DialogueManager instance;
    private Story currentStory;
    public bool dialogueIsPlaying { get; set; }
    private TextMeshProUGUI[] choicesText;
    public bool storyHasStarted; 
    private Coroutine displayLineCoroutine;
    private float typingSpeed;
    private DialogueVariables dialogueVariables;

    private void Awake()
    {
        instance = this;
        typingSpeed = 0.02f;
        dialogueVariables = new DialogueVariables(loadGlobalsJSON);
    }

    public static DialogueManager GetInstance()
    {
        return instance;
    }

    void Start()
    {
        //Ocultar la interfaz
        dialogueIsPlaying = false;
        storyHasStarted = false;
        dialoguePanel.SetActive(false);
        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        foreach (GameObject choice in choices)
        {
            choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();
            choices[index].SetActive(false);
            index++;
        }
    }

    void Update()
    {
        if (!dialogueIsPlaying)
        {
            return;
        }

        //Continuar la historia al hacer click mientras las opciones no están en pantalla
        if (Input.GetMouseButtonDown(0) && !choices[0].activeInHierarchy)
        {


            if (storyHasStarted)
                ContinueStory();
            else
                storyHasStarted = true;
        }
    }

    public void EnterDialogueMode(TextAsset inkJSON)
    {
        //Muestra la interfaz de dialogo
        currentStory = new Story(inkJSON.text);
        dialogueIsPlaying = true;
        dialoguePanel.SetActive(true);
        dialogueVariables.StartListening(currentStory);

        ContinueStory();
    }

    private void ExitDialogueMode()
    {
        dialogueIsPlaying = false;
        dialogueVariables.StopListening(currentStory);
        storyHasStarted = false;
        dialoguePanel.SetActive(false);
        dialogueText.text = "";
    }

    private void ContinueStory()
    {
        if (currentStory.canContinue)
        {
            if (displayLineCoroutine != null)
            {
                StopCoroutine(displayLineCoroutine);
            }
            displayLineCoroutine = StartCoroutine(DisplayLine(currentStory.Continue()));
            DisplayChoices();
        }
        else
        {
            ExitDialogueMode();
        }
    }

    private void DisplayChoices()
    {
        //Al llegar a una elección se mostraran las opciones
        List<Choice> currentChoices = currentStory.currentChoices;

        if (currentChoices.Count > choices.Length)
        {
            Debug.LogError("Error");
        }

        int index = 0;
        foreach (Choice choice in currentChoices)
        {
            choices[index].SetActive(true);
            choicesText[index].text = choice.text;
            index++;
        }

        //Oculta las opciones sobrantes si hay menos que las opciones máximas
        for (int i = index; i < choices.Length; i++)
        {
            choices[i].SetActive(false);
        }
    }

    public void MakeChoice(int choiceIndex)
    {
        //Al elegir una opción el dialogo continua 
        currentStory.ChooseChoiceIndex(choiceIndex);
        ContinueStory();
    }

    private IEnumerator DisplayLine(string line)
    {
        dialogueText.text = "";
        //bool willSound = true;

        foreach (char letter in line.ToCharArray())
        {
            //if (willSound)
            //    //SoundFXManager.instance.PlaySoundFXClip(textSound, transform, 1f);
            //willSound = !willSound;
            dialogueText.text += letter;
            yield return new WaitForSeconds(typingSpeed);
        }
        DisplayChoices();

    }

    public Ink.Runtime.Object GetVariableState(string variableName)
    {
        Ink.Runtime.Object variableValue = null;
        dialogueVariables.variables.TryGetValue(variableName, out variableValue);
        if (variableValue == null)
        {
            Debug.LogWarning("Ink Variable was found to be null:  " + variableName);
        }
        return variableValue;
    }
}