For VFX: 

-Create an Empty Game object and put the Player in the Empty Game object (*if we are doing Multiplayer, create and Empty Game object for Each player*)

-parent the DamageVFX prefab underneath the player.
-parent the Shield prefab (*you should be getting that from Jessica*) and parent that one underneath the player. 

-Create another Empty game object, and name it Health Objects and parent that underneath the First Empty Game object. 

-Parent the Healing VFX to the player. 

-Underneath Health GameObject, parent the Health drop object (*or whatever we are using to heal*) underneath the Health Game Object. 
-Parent the Healing VFX to the player. 

So it Should look like this

WholePlayer
	- Player
		-HealingVFX
		- DamageVFX
		-Shield
	- HealthObjects
		- HealthDrop

Create another Empty Game Object and name it VFX Manager, and parent the VFXManager Script Underneath the VFX Manager Game Object. 

The gameobjects that needs to go into the Player Health In the VFX Script is the Health Manager Game Object (*Which will be under the Weapons Folder*)

-Damager Sparks is the DamageVFX that is parented underneath the Player. 
-Shield is the ShiledVFX that is parents underneath the Player
-Heal VFX is the healingVFX that is parented underneath the player

-Player Or Enemy is the Player (*Not that empty Game Object, the actual Player*)