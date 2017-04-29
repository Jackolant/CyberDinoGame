For HealthDrops/WeaponPickUp: 

-Create an Empty Game Object called Health Manager. 

- Place the Health Drop Script in the Health Manager Game Object. 
	Health Drop = The Health Pack Game Object 
	Health Drop RB = The health Back Game Object

- Place the ManagerHealth Script in the Health Manager Game Object. 
	-Max Health = 20 (Do Not Change)
	-Current Health = 20 (Do Not Change)
	-Health Bar = the Image from canvas that should represent the green health. 
	-Health = Health Manager Game object. 
	-Enemy Or Player = the Player. 

- Create a Empty Game Object. Parent the Player Underneath the Empty Game Object. 

- Create another Empty Game Object and Name it HealthPackPickUP
- Parent the game Object that is going to represent Health Pick Up underneath the HealthPackPickUp prefab. 
- The script PickUp place that over the Health Pick Up Game Object. 

- The parameters of the PickUp Script: 
	-Player Health = Health Manager 
	-Health PickUp = The Health Pick Up game Object (*For the 	Collider*)
	-Health = Health Pick Up game Object
	-Health FX = VFX Manager Game Object (*This was explained in the txt file of ReadMeForVFX.txt*)
