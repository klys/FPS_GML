obj_id = instance_nearest(x,y,argument0)
obj_z = argument1
sound = argument2

if place_meeting(x,y,obj_id)
    if z < obj_z+1 then {
    if z > -1 then {
        //sound effect
        if wentthrough = 0 then {
            ex_audio_play(sound,false)
            //distance_sound(sound,10)
            wentthrough = 1
        }
    }}
