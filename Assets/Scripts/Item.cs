using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Item : MonoBehaviour
{

    public int capacity = 5;
    public enum ItemType
    {
        Seed,
        Acorn,
        Melee,
        Shield
    }
    public ItemType type;

    public GameObject droppedBy = null;


    public static Dictionary<ItemType,int> maxCapacity = new Dictionary<ItemType, int>()
    {
        {ItemType.Seed, 10},
        {ItemType.Acorn, 5},
        {ItemType.Melee, 15},
        {ItemType.Shield, 10},
    };

    [SerializeField] GameObject seedModel;
    [SerializeField] GameObject acornModel;
    [SerializeField] GameObject meleeModel;
    [SerializeField] GameObject shieldModel;





    private void Update()
    {
        transform.Rotate(0, Time.deltaTime * 60, 0);
    }



    public void PickedUp(GameObject player)
    {
        droppedBy = player;
        transform.position = new Vector3(0, -30, 0);
        enabled = false;
    }

    public void Drop(Vector3 position)
    {
        enabled = true;
        Reset();

        StartCoroutine(PickupAgain());
    }

    public void Reset()
    {

        capacity = maxCapacity[type];
        acornModel.SetActive(type == ItemType.Acorn);
        seedModel.SetActive(type == ItemType.Seed);
        meleeModel.SetActive(type == ItemType.Melee);
        shieldModel.SetActive(type == ItemType.Shield);


    }
    IEnumerator PickupAgain()
    {
        yield return new WaitForSeconds(15f);
        droppedBy = null;
    }

}
