// Step Event code for the object that needs to follow the player

// Set the following variables to adjust the following speed and lerp value
var followSpeed = 5; // Adjust the speed at which the object follows the player
var lerpValue = 0.01; // Adjust the lerp value for smooth movement (0.1 is a good starting point)
var _cdis = 10

// Check if the player object exists
if instance_exists(oPlayer)
{
    // Calculate the distance between the object and the player's x and y positions
    var distanceX = oPlayer.x - x;
    var distanceY = oPlayer.y - y;

    // Check if the distance is greater than 15 or less than -15
    if (abs(distanceX) > _cdis || abs(distanceY) > _cdis)
    {
        // Update the object's position using the lerp function
        x = lerp(x, oPlayer.x, lerpValue * followSpeed);
        y = lerp(y, oPlayer.y, lerpValue * followSpeed);
    }
}
