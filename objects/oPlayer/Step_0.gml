if keyboard_check(vk_up){

y-=move_speed

}

if keyboard_check(vk_down){

y+=move_speed

}

if keyboard_check(vk_left){

x-=move_speed image_xscale=-1

}

if keyboard_check(vk_right){

x+=move_speed image_xscale=1

}

y = clamp(y,0, 800)

global.score = clamp(global.score,0, infinity)

if (x > room_width) {
    x = 0;
}
else if (x < 0) {
    x = room_width;
}

if vida <= 0{game_restart()}
