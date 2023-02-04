using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{
    public int seedCount = 10;
    public int acornCount = 0;
    [SerializeField] public GameObject meleeWeapon;
    [SerializeField] public GameObject shield;




    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Pickup"))
        {
            Item i = other.transform.parent.gameObject.GetComponent<Item>();

            if ((i.droppedBy == null || i.droppedBy != other.gameObject))
            {
                PlayerController pc = GetComponent<PlayerController>();
                if (pc.item1 == null)
                {
                    pc.item1 = i;
                    i.PickedUp(gameObject);
                    if(i.type==Item.ItemType.Melee)
                    {
                        meleeWeapon.SetActive(true);
                    }
                    if (i.type == Item.ItemType.Shield)
                    {
                        shield.SetActive(true);
                    }

                }
                else if (pc.item2 == null)
                {

                    pc.item2 = i;
                    i.PickedUp(gameObject);
                    if (i.type == Item.ItemType.Melee)
                    {
                        meleeWeapon.SetActive(true);
                    }
                    if (i.type == Item.ItemType.Shield)
                    {
                        shield.SetActive(true);
                    }
                }
            }
        }
    }

}
