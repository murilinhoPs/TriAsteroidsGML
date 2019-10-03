var inst = instance_create_layer(x, y, "Instances", obj_bullet);

inst.direction = image_angle;
inst.speed = 6.5;

audio_play_sound(snd_zap, 1, false);

alarm[0] = 0.5 * room_speed;