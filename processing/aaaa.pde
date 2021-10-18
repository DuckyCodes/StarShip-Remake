/*Programming 12
Asteroids Game Criteria

Task A: The Mode Framework
Add the mode framework to the project. Include INTRO, GAME, PAUSE, and GAMEOVER modes. The GAMEOVER mode should have 2 different representations: a win screen that is triggered by destroying all the asteroids, and a lose screen that is triggered when you run out of lives. Put some effort into improving the user experience by making each mode more than basic. Include each of the following: custom fonts, custom color schemes, and animated GIFs.

Task B: The UFO Class
Create a UFO class that extends GameObject and uses PVectors. It will act as an AI-controlled enemy that takes shots at the player’s ship as it travels across the screen. It should meet the following criteria:

Shows up periodically (could be a set interval like every 1000 frames, or a random interval).
When that interval happens, create a new UFO object. It should appears on a random edge of the screen, fly across the screen, and leave on a different edge of the screen. Once it leaves the screen, the object is removed from the ArrayList. This will be repeated on the next interval.
Fires one or more UFOBullet objects aimed at the player’s ship. These Bullets can destroy Asteroid objects if you want.
Dies (removed from list) when shot by Bullet objects from the player’s ship. They can pass through Asteroid objects without taking damage.

Task C: Ship Collisions
Make the player’s ship lose lives when it hits an asteroid or a UFO bullet. When this happens:

The ship starts with 3 lives.
Decrease the ship’s lives variable by 1. If the lives variable reaches zero, switch mode to GAMEOVER.
When the ship has a collision, make the ship invulnerable to collisions for a short period of time (such as 60-180 frames). The ship’s show function should also draw the ship differently during this time to indicate this invulnerable state. User a timer like the shotTimer for limiting the ship’s rate of fire to do this.

Task D: The Particle Class and Fire Class
Make a Particle class and Fire class that create visual effects. The Fire class represents particles that will come out of the ship’s engines when you press the UP key. Particles represent dust that will explode out of destroyed things such as UFOs and Asteroids. They should account for the following

Track their transparency. They start 100% solid but fade away to invisible. When they become invisible they should be removed from the game.
Fire should have a velocity that is opposite of the ship’s direction and come out of the ship. Particles should have a random velocity and come out of the center of the destroyed object.
An exploding object should make many Particles (10+)

Task E: Teleport
Make it so when you press a key, your ship teleports to a random safe place on the screen. It should include the following:
  
When the ship teleports, it should pick a random x and y coordinate to teleport to. If that coordinate is within a close distance of any Asteroid (< 200 pixels), it should pick again and again until it generates a safe x and y.
Once used, there should be a cooldown effect so that the player can’t teleport again until a timer is up.
The cooldown timer should be illustrated on screen in a visual way that clearly indicates when the teleport option is available. For example, you could have a red bar (rectangle) that fills up as the cooldown timer ticks up. Once the cooldown is full, the bar’s color changes to green to indicate it is ready to be used again.

Task F: Reset
Make sure the game resets when you return from GAMEOVER to INTRO. You should reset all ship variables (location, velocity, direction, and lives) and the amount of Asteroids.
*/
