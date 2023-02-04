using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;
using UnityEngine.InputSystem;
using static PlayerInput;

[RequireComponent(typeof(Inventory))]
public class PlayerController : MonoBehaviour
{
    Rigidbody rb;
    [SerializeField] float jForce;
    [SerializeField] float mvSpeed;
    [SerializeField] GameObject cameraRot;
    [SerializeField] GameObject cameraRot2;
    [SerializeField] GameObject bulletRef;
    [SerializeField] GameObject bombRef;
    [SerializeField] GameObject meleeHurtboxRef;
    Inventory inventory;
    PlayerInput controls;
    [SerializeField] float kbForce = 300f;
    [SerializeField] float shootSpd = 4f;
    [SerializeField] float shootBombSpd = 2f;


    [SerializeField] public Item item1;
    [SerializeField] public Item item2;

    public bool hasShield
    {
        get
        {
            return item1.type == Item.ItemType.Shield || item2.type == Item.ItemType.Shield;
        }
    }


    public float winTimer = 0f;

    Vector2 forward
    {
        get
        {

            float sin = Mathf.Sin(-1 * cameraRot.transform.rotation.eulerAngles.y * Mathf.Deg2Rad);
            float cos = Mathf.Cos(-1 * cameraRot.transform.rotation.eulerAngles.y * Mathf.Deg2Rad);
            return new Vector2(-sin, cos);
        }
    }

    Coroutine shootCoro = null;

    bool onGround;
    

    public void OnEnable()
    {
        if (controls == null)
        {
            controls = new PlayerInput();
            // Tell the "gameplay" action map that we want to get told about
            // when actions get triggered.
            //controls.Newactionmap.SetCallbacks(this);
        }
        controls.Newactionmap.Enable();
    }

    // Start is called before the first frame update
    void Start()
    {
        inventory = GetComponent<Inventory>();
        rb = GetComponent<Rigidbody>();
        rb.collisionDetectionMode = CollisionDetectionMode.Continuous;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (controls.Newactionmap.Jump.ReadValue<float>()>.5 && onGround)
        {
            rb.AddForce(new Vector3(0f,jForce,0f));
        }


        if (controls.Newactionmap.Shoot.ReadValue<float>() > .5 && shootCoro ==null /*&& item1!=null*/)
        {
            //shootCoro = StartCoroutine(Use(item1));
            shootCoro = StartCoroutine(Shoot());
            //shootCoro = StartCoroutine(AttemptDrop(1));
        }
        if (controls.Newactionmap.Shoot2.ReadValue<float>() > .5 && shootCoro == null && item2!=null)
        {
            //shootCoro = StartCoroutine(Use(item2));
            shootCoro = StartCoroutine(AttemptDrop(2));
        }

        Vector2 axis = controls.Newactionmap.Move.ReadValue<Vector2>();
        float sin = Mathf.Sin(-1*cameraRot.transform.rotation.eulerAngles.y * Mathf.Deg2Rad);
        float cos = Mathf.Cos(-1*cameraRot.transform.rotation.eulerAngles.y * Mathf.Deg2Rad);
        Vector2 targetVelocity = new Vector2(cos * axis.x - sin * axis.y, sin * axis.x + cos * axis.y).normalized * mvSpeed;
        rb.velocity = new Vector3((targetVelocity.x - rb.velocity.x) * .1f + rb.velocity.x,rb.velocity.y,(targetVelocity.y-rb.velocity.z)*.1f+rb.velocity.z);


        Vector2 aim = controls.Newactionmap.Aim.ReadValue<Vector2>();

        cameraRot.transform.Rotate(new Vector3(0, 1, 0), aim.x, Space.World);
        cameraRot2.transform.Rotate(new Vector3(aim.y,0, 0));
    }

    IEnumerator AttemptDrop(int whichItem)
    {
        float timer = 1.5f;
        while (timer>0f)
        {
            timer -= Time.deltaTime;
            if(whichItem == 1 ? controls.Newactionmap.Shoot.ReadValue<float>() < .5 : controls.Newactionmap.Shoot2.ReadValue<float>() < .5)
            {
                break;
            }
            yield return null;
        }
        if (whichItem == 1)
        {
            item1.Drop(transform.position);
            item1 = null;
        }
        else
        {
            item2.Drop(transform.position);
            item2 = null;
        }
    }



    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Floor"))
        {
            onGround = true;
        }
    }
    private void OnCollisionStay(Collision collision)
    {
        if (collision.gameObject.CompareTag("Floor"))
        {
            onGround = true;
        }
    }
    private void OnCollisionExit(Collision collision)
    {
        if (collision.gameObject.CompareTag("Floor"))
        {
            onGround = false;
        }
    }

    IEnumerator Use(Item usedItem)
    {
        if (usedItem.type == Item.ItemType.Shield) yield return null;
        else
        {
            usedItem.capacity--;
            switch (usedItem.type)
            {
                case Item.ItemType.Seed:
                    shootCoro = StartCoroutine(Shoot());
                    break;
                case Item.ItemType.Acorn:
                    shootCoro = StartCoroutine(ShootBomb());
                    break;
                case Item.ItemType.Melee:
                    shootCoro = StartCoroutine(Melee());
                    break;
            }

            if (usedItem.capacity <= 0)
            {
                Destroy(usedItem);
            }
        }
        
    }

    IEnumerator Shoot()
    {
        GameObject bullet = Instantiate(bulletRef);
        bullet.transform.position = transform.position;
        bullet.GetComponent<Rigidbody>().velocity = new Vector3(
            forward.x,
            -Mathf.Sin(cameraRot2.transform.rotation.eulerAngles.x * Mathf.Deg2Rad),
            forward.y).normalized * shootSpd;
        bullet.GetComponent<GameObjectRef>().go.Add(this.gameObject);
        bullet.GetComponent<Rigidbody>().collisionDetectionMode = CollisionDetectionMode.Continuous;
        yield return new WaitForSeconds(.5f);
        shootCoro = null;



    }
    IEnumerator ShootBomb()
    {
        
        GameObject bomb = Instantiate(bombRef);
        bomb.transform.position = transform.position;
        float sin = Mathf.Sin(-1 * cameraRot.transform.rotation.eulerAngles.y * Mathf.Deg2Rad);
        float cos = Mathf.Cos(-1 * cameraRot.transform.rotation.eulerAngles.y * Mathf.Deg2Rad);
        bomb.GetComponent<Rigidbody>().velocity = new Vector3(
            forward.x,
            -Mathf.Sin(cameraRot2.transform.rotation.eulerAngles.x * Mathf.Deg2Rad) + 1,
            forward.y).normalized * shootBombSpd;
        bomb.GetComponent<GameObjectRef>().go.Add(gameObject);
        bomb.GetComponent<Rigidbody>().collisionDetectionMode = CollisionDetectionMode.Continuous;
        yield return new WaitForSeconds(.5f);
        shootCoro = null;
        


    }
    IEnumerator Melee()
    {
        GameObject meleeHB = Instantiate(meleeHurtboxRef);
        meleeHB.transform.position = transform.position + new Vector3(forward.normalized.x,0,forward.normalized.y)*.1f;
        meleeHB.GetComponent<GameObjectRef>().go.Add(gameObject);
        yield return new WaitForSeconds(.5f);
        Destroy(meleeHB);
        shootCoro = null;


    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("WinZone"))
        {
            winTimer += Time.deltaTime;
        }
    }

}
