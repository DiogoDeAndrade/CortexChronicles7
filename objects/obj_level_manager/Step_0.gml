/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_train_engine) && (alarm[0] < 0)
{
	alarm[0] = 60
}

if (keyboard_check(vk_control) && keyboard_check(vk_shift) && keyboard_check(ord("L"))) {
    // Ctrl+Shift+L is currently being pressed
    room_goto(global.next_level)
}