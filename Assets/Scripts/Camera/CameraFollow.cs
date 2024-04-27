using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour
{
    public float speed = 3f;
    public Transform target;

    // Update is called once per frame
    void Update()
    {
        if(target.position.x > 0 && target.position.x < 5) //ULTRA PROVISIONAL ESTO ULTIMO
        {
            Vector3 newPos = new(target.position.x, 0, -10f);
            transform.position = Vector3.Slerp(transform.position, newPos, speed * Time.deltaTime);
        }

    }
}
