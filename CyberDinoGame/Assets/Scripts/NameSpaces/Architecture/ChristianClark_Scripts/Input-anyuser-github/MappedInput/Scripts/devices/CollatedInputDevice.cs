using UnityEngine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class CollatedInputDevice : InputDevice {

    private List<InputDevice> devices = new List<InputDevice>();

    public void AddDevice(InputDevice device) {
        if (!(device is CollatedInputDevice) && device != null)
            devices.Add(device);
    }

    public void RemoveDevice(InputDevice device) {
        devices.Remove(device);
    }

    protected override void Update() {
        base.Update();

        devices.Sort((x, y) => y.lastInputTime.CompareTo(x.lastInputTime));
    }

    public override string GetAxisName(MappedAxis axis) {
        if (devices.Count > 0) {
            return devices[0].GetAxisName(axis);
        }

        return axis.ToString();
    }

    public override bool GetButton(MappedButton button) {
        bool result = false;
        foreach (InputDevice device in devices) {
            result |= device.GetButton(button);
        }

        return result;
    }

    public override bool GetButtonDown(MappedButton button) {
        bool result = false;
        foreach (InputDevice device in devices) {
            result |= device.GetButtonDown(button);
        }

        return result;
    }

    public override string GetButtonName(MappedButton button) {
        if (devices.Count > 0) {
            return devices[0].GetButtonName(button);
        }

        return button.ToString();
    }

    public override bool GetButtonUp(MappedButton button) {
        bool result = false;
        foreach (InputDevice device in devices) {
            result |= device.GetButtonUp(button);
        }

        return result;
    }

    protected override float GetAxisValueRaw(MappedAxis axis) {
        float result = 0f;
        foreach (InputDevice device in devices) {
            result = (Mathf.Abs(device.GetAxisRaw(axis)) > Mathf.Abs(result)) ? device.GetAxisRaw(axis) : result;
        }

        return result;
    }
}

