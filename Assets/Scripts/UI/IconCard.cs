using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class IconCard : MonoBehaviour
{
    [SerializeField] private Image[] imageList;
    [SerializeField] private GameObject animatorGameObject;
    [SerializeField] private Image imageCard;
    [SerializeField] private TextAsset inkJSON;
    [SerializeField] private GameObject portrait;
    private Image image;
    private Color color;
    private Animator animator;
    // Start is called before the first frame update
    void Start()
    {
        for(int i = 0; i < imageList.Length; i++)
        {
            image = imageList[i];
            color = image.color;
            color.a = 0.5f;
            image.color = color;
        }
        animator = animatorGameObject.GetComponent<Animator>();
        animatorGameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {

        if (DialogueManager.GetInstance().dialogueIsPlaying && animator.GetBool("Finished"))
        {
            if (Input.GetMouseButtonDown(0))
            {
                animator.SetBool("Finished", false);
                animator.gameObject.SetActive(false);
                ((Ink.Runtime.BoolValue)DialogueManager.GetInstance().GetVariableState("card_obtained")).value = false;
            }
        }

        if (((Ink.Runtime.BoolValue)DialogueManager.GetInstance().GetVariableState("card_obtained")).value && !DialogueManager.GetInstance().dialogueIsPlaying)
        {
            imageCard.sprite = imageList[((Ink.Runtime.IntValue)DialogueManager.GetInstance().GetVariableState("card_value")).value].sprite;
            animatorGameObject.SetActive(true);
            if (Input.GetMouseButtonDown(0))
            {
                if (!animator.GetBool("Finished"))
                {
                    animator.SetBool("Finished", true);
                    DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
                    portrait.SetActive(false);
                }
            }
        }
    }
}
