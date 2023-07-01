/// @description Direction System
// You can write your code in this editor

//check for arrow keys pressed
if keyboard_check(vk_up) {
    if keyboard_check(vk_left) {
        //up-left diagonal
        direction = 3;
    } else if keyboard_check(vk_right) {
        //up-right diagonal
        direction = 1;
    } else {
        //up
        direction = 2;
    }
} else if keyboard_check(vk_down) {
    if keyboard_check(vk_left) {
        //down-left diagonal
        direction = 5;
    } else if keyboard_check(vk_right) {
        //down-right diagonal
        direction = 7;
    } else {
        //down
        direction = 6;
    }
} else if keyboard_check(vk_left) {
    //left
    direction = 4;
} else if keyboard_check(vk_right) {
    //right
    direction = 0;
}

direction = direction * 45

show_debug_message("Direction: \n" + string(direction))