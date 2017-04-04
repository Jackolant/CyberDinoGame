using UnityEngine;
using System.Collections;

//this class allows for the creating and storing of dinosaur objects, that hold their own stats (health, heat, etc.)
public class DinoClass{
	int myHealth; //max health
	int myHeat; //max heat
	float mySpeed; //max speed
	int myDamage; // damage per shot
	float ROF; // rate of fire
	string myName; // name of the dinosaur

	public DinoClass(int health, int heat, float speed, int damage, float firingRate, string name) //constructor for the dinosaur object
	{
		myHealth = health;
		myHeat = heat;
		mySpeed = speed;
		myDamage = damage;
		ROF = firingRate;
		myName = name;
	}

	//these methods return their specified value from the dinosaur object.
	public int getHealth()
	{
		return myHealth;
	}
	public int getHeat()
	{
		return myHeat;
	}
	public float getSpeed()
	{
		return mySpeed;
	}
	public int getDamage()
	{
		return myDamage;
	}
	public float getROF()
	{
		return ROF;
	}
	public string getName()
	{
		return myName;
	}
}
