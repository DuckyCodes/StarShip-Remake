/*Programming 12
Asteroids Game Criteria

























Task A: The Mode Framework
The GAMEOVER mode should have 2 different representations: a win screen that is triggered by destroying all the asteroids, and a lose screen that is triggered when you run out of lives. Put some effort into improving the user experience by making each mode more than basic. Include each of the following: custom fonts, custom color schemes, and animated GIFs.

Task B: The UFO Class
Shows up periodically (could be a set interval like every 1000 frames, or a random interval).
When that interval happens, create a new UFO object. It should appears on a random edge of the screen, fly across the screen, and leave on a different edge of the screen. Once it leaves the screen, the object is removed from the ArrayList. This will be repeated on the next interval.
Fires one or more UFOBullet objects aimed at the player’s ship. These Bullets can destroy Asteroid objects if you want.
Dies (removed from list) when shot by Bullet objects from the player’s ship. They can pass through Asteroid objects without taking damage.

Task E: Teleport
Make it so when you press a key, your ship teleports to a random safe place on the screen. It should include the following:
  
When the ship teleports, it should pick a random x and y coordinate to teleport to. If that coordinate is within a close distance of any Asteroid (< 200 pixels), it should pick again and again until it generates a safe x and y.
Once used, there should be a cooldown effect so that the player can’t teleport again until a timer is up.
The cooldown timer should be illustrated on screen in a visual way that clearly indicates when the teleport option is available. For example, you could have a red bar (rectangle) that fills up as the cooldown timer ticks up. Once the cooldown is full, the bar’s color changes to green to indicate it is ready to be used again.

*/
