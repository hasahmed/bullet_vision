if (!Crosshair.controllerPriority){
    if (mouse_x > x && playerDir != facing.right){
        playerDir = facing.right;
        dirChanged = true;
        //image_index=0;
    }
    else if (mouse_x < x && playerDir != facing.left){
        playerDir = facing.left;
        dirChanged = true;
        //image_index=4;
    }
}
else dirChanged = false;
