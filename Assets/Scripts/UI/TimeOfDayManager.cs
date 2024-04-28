using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TimeOfDayManager : MonoBehaviour
{
    [SerializeField] private Image[] imageList;
    [SerializeField] private Sprite[] spriteList;
    [SerializeField] private Sprite[] skySpriteList;
    [SerializeField] private Animator animator;
    [SerializeField] private GameObject blackBackground;
    [SerializeField] private SpriteRenderer cielo;
    private int i;
    private static TimeOfDayManager instance;

    private void Awake()
    {
        instance = this;
    }
    void Start()
    {
        imageList[0].sprite = spriteList[0];
        imageList[1].sprite = spriteList[1];
    }

    public void ChangeDay()
    {
        cielo.sprite = skySpriteList[(i + 1) % spriteList.Length];
    }

    public void ChangeDay2()
    {
        i = (i + 1) % spriteList.Length;
        animator.SetBool("ChangeDay", false);
        imageList[0].sprite = spriteList[i];
        imageList[1].sprite = spriteList[(i + 1) % spriteList.Length];
        blackBackground.SetActive(false);
    }

    public static TimeOfDayManager GetInstance()
    {
        return instance;
    }
}
