using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public float speed = 5f;
    private float horizontal;
    [SerializeField] private Rigidbody2D rb;
    [SerializeField] private GameObject dialoguePanel;

    private float speedCopy;
    private static PlayerMovement instance;
    private void Awake()
    {
        instance = this;
    }
    public static PlayerMovement GetInstance()
    {
        return instance;
    }
    private void Start()
    {
        speedCopy = speed;
    }

    void Update()
    {
        if (!dialoguePanel.activeInHierarchy)
            horizontal = Input.GetAxisRaw("Horizontal");
        else
            horizontal = 0;
    }

    private void FixedUpdate()
    {

        rb.velocity = new Vector2(horizontal * speed, rb.velocity.y);
    }

    public void MovementManager(bool isStop)
    {
        if (isStop)
            speed = 0;
        else
            speed = speedCopy;
    }
}
