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
                else if(pc.item1.type == i.type)
                {
                    AddCapacity(pc.item1);
                    Destroy(i.gameObject);
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
                else if (pc.item2.type == i.type)
                {

                    AddCapacity(pc.item2);
                    Destroy(i.gameObject);
                }
            }
        }
    }

    void AddCapacity(Item item)
    {
        switch (item.type)
        {
            case Item.ItemType.Seed:
                item.capacity += Item.maxCapacity[item.type];
                break;
            case Item.ItemType.Acorn:
                item.capacity += Item.maxCapacity[item.type];
                break;
            case Item.ItemType.Melee:
                item.capacity = Item.maxCapacity[item.type];
                break;
            case Item.ItemType.Shield:
                item.capacity = Item.maxCapacity[item.type];
                break;

        }
    }

}
