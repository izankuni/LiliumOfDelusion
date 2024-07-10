using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpenMenu : MonoBehaviour
{
    [SerializeField] GameObject menu;
    [SerializeField] PlayerMovement playerMovement;
    void Start()
    {
        menu.SetActive(false);
    }

    // Update is called once per frame
    public void menuOpen()
    {
        menu.SetActive(true);
        playerMovement.MovementManager(true);
    }

    public void menuExit()
    {
        menu.SetActive(false);
        playerMovement.MovementManager(false);
    }
}
