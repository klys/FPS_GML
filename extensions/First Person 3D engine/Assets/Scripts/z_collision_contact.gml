obj_id = instance_nearest(x,y,argument0)
obj_z = argument1+20
soundkind = argument2

if place_meeting(x,y,obj_id) {

    if z < obj_z then {
        if touched = 0 then {
            touched = 1
            ex_audio_play(soundkind)
            ex_audio_class_set_volume(soundkind,0.85)
        }
    }
} else {
    touched = 0
}