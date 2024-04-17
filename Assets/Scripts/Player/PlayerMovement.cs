using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    public float speed = 5f;
    private float horizontal;
    [SerializeField] private Rigidbody2D rb;

    void Update()
    {
        horizontal = Input.GetAxisRaw("Horizontal");
    }

    private void FixedUpdate()
    {
        rb.velocity = new Vector2(horizontal * speed, rb.velocity.y);
    }
}
