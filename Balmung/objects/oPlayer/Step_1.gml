/// @description Direction System
// You can write your code in this editor

//check for arrow keys pressed
if sign(ysp) = -1 {
    if sign(xsp) = -1 {
        //up-left diagonal
        p_dir = 3;
    } else if sign(xsp) = 1 {
        //up-right diagonal
        p_dir = 1;
    } else {
        //up
        p_dir = 2;
    }
} else if sign(ysp) = 1 {
    if sign(xsp) = -1 {
        //down-left diagonal
        p_dir = 5;
    } else if sign(xsp) = 1 {
        //down-right diagonal
        p_dir = 7;
    } else {
        //down
        p_dir = 6;
    }
} else if sign(xsp) = -1 {
    //left
    p_dir = 4;
} else if sign(xsp) = 1 {
    //right
    p_dir = 0;
}

direction = p_dir * 45

show_debug_message("Direction: \n" + string(direction))