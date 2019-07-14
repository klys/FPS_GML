obj_id = instance_nearest(x,y,argument0)
obj_z = argument1
sound = argument2

if place_meeting(x,y,obj_id)
    if z < obj_z+1 then {
    if z > -1 then {
        with obj_id {
            hp -= 50
            if hp < 1 then {
                instance_destroy()
            }
        }
        //sound effect
        ex_audio_play(sound,false)
        //distance_sound(sound,10)
    instance_destroy()
    }}