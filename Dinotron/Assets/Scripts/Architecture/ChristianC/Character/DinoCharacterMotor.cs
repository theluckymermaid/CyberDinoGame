using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public abstract class DinoCharacterMotor : MonoBehaviour {

    public DinoCharacter dino;
    public abstract void Move(float deltaTime);
}
