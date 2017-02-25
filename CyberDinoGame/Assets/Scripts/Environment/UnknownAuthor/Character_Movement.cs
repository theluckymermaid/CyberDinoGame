using UnityEngine;
using System.Collections;

public class Character_Movement : MonoBehaviour
{
    Animator _anim;
    public float moveSpeed = .5f;
    public float runSpeed = 4.0f;
    public float rotateSpeed = 0.50f;

    // Update is called once per frame
    void Start()
    {
        _anim = GetComponent<Animator>();
    }

    void Update()
    {
        if ((!Input.GetKey(KeyCode.W)) || (!Input.GetKey(KeyCode.S)) || (!Input.GetKey(KeyCode.A)))
        {
            _anim.SetBool("IsWalking", false);
            _anim.SetBool("IsRunning", false);
        }
        if (Input.GetKey(KeyCode.W))
        {
            GetComponent<Rigidbody>().MovePosition(transform.position + (transform.rotation * ((Vector3.forward) * moveSpeed * Time.deltaTime)));
            WalkAnimation();
        }

        //if (Input.GetKey(KeyCode.S))
        //{
        //    transform.Translate((Vector3.back) * moveSpeed * Time.deltaTime);
        //}
        if (Input.GetKey(KeyCode.D))
        {
            transform.Rotate(Vector3.up * rotateSpeed);
            WalkAnimation();
        }
        if (Input.GetKey(KeyCode.A))
        {
            transform.Rotate(Vector3.down * rotateSpeed);
            WalkAnimation();
        }
        if ((Input.GetKey(KeyCode.W)) && (Input.GetKey(KeyCode.LeftShift)))
        {
            GetComponent<Rigidbody>().MovePosition(transform.position + (transform.rotation * ((Vector3.forward) * moveSpeed * runSpeed * Time.deltaTime)));
            RunAnimation();
        }
    }
    void WalkAnimation()
    {
        _anim.SetBool("IsWalking", true);
        _anim.SetBool("IsRunning", false);
    }
    void RunAnimation()
    {
        _anim.SetBool("IsWalking", false);
        _anim.SetBool("IsRunning", true);
    }
}
