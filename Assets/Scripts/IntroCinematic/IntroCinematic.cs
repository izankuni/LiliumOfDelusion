using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IntroCinematic : MonoBehaviour
{
    private static IntroCinematic instance;
    [SerializeField] GameObject charaSleep;
    [SerializeField] GameObject charaBed;
    [SerializeField] GameObject cardUI;
    [SerializeField] GameObject infoUI;
    [SerializeField] GameObject player;
    [SerializeField] GameObject portrait;
    [SerializeField] private TextAsset inkJSON;
    [SerializeField] private TextAsset inkJSON2;
    [SerializeField] private Animator animatorCardImage;
    [SerializeField] private Animator animatorCamera;
    [SerializeField] GameObject tutorialMenu;
    [SerializeField] OpenMenu openMenu;
    [Header("Cameras")]
    [SerializeField] Camera firstCamera;
    [SerializeField] Camera secondCamera;

    private bool firstStarted;
    private bool secondStarted;
    private bool nextDialogue;
    private bool isAwake;
    // Start is called before the first frame update
    private void Awake()
    {
        instance = this;
    }

    void Start()
    {
        player.SetActive(false);
        cardUI.SetActive(false);
        infoUI.SetActive(false);

        firstStarted = false;
        secondStarted = false;
        nextDialogue = false;
        isAwake = false;
        portrait.SetActive(false);
        tutorialMenu.SetActive(false);
        firstCamera.gameObject.SetActive(true);
        secondCamera.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (animatorCardImage.GetBool("Finished"))
        {
            nextDialogue = true;
        }

        if(firstStarted && !DialogueManager.GetInstance().dialogueIsPlaying && !secondStarted && nextDialogue)
        {
            portrait.SetActive(true);
            secondStarted = true;
            DialogueManager.GetInstance().EnterDialogueMode(inkJSON2);
        }

        if(secondStarted && !DialogueManager.GetInstance().dialogueIsPlaying)
        {
            animatorCamera.SetBool("EndCinematic", true);
        }

        if (((Ink.Runtime.BoolValue)DialogueManager.GetInstance().GetVariableState("introAwake")).value && !isAwake)
        {
            charaSleep.SetActive(false);
            portrait.SetActive(true);
            isAwake = true;
        }
        else if(!isAwake)
        {
            portrait.SetActive(false);
        }
    }

    public static IntroCinematic GetInstance()
    {
        return instance;
    }

    public void CameraZoomEnd()
    {
        DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
        firstStarted = true;
    }

    public void EndCinematic()
    {
        player.SetActive(true);
        cardUI.SetActive(true);
        infoUI.SetActive(true);
        charaBed.SetActive(false);
    }

    public void MoveCamera()
    {
        openMenu.menuOpen();
        firstCamera.gameObject.SetActive(false);
        secondCamera.gameObject.SetActive(true);
    }

}
