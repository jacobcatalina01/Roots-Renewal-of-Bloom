using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TreeTransform : MonoBehaviour
{
    public float rotationSpeed = 360f;
    public float pitchAngle = 15f;

    public void Update()
    {
        RectTransform r = transform.parent.gameObject.GetComponent<RectTransform>();
        float scaleFactor = Mathf.Min(r.rect.width, r.rect.height);
        transform.localScale = Vector3.one * scaleFactor;
        transform.localPosition = Vector3.down * scaleFactor / 4f + Vector3.forward * transform.localPosition.z;

        float rotationTimer = Time.time;
        Quaternion yRot = Quaternion.Euler(0, rotationTimer * rotationSpeed, 0);
        Quaternion xRot = Quaternion.Euler(Vector3.right * pitchAngle);
        transform.rotation = xRot * yRot;
    }
}
