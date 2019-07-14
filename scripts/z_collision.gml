//checking Z of objects and calculate if the player can jump on them
if instance_exists(argument0){
obj_id = instance_nearest(x,y,argument0)    //what object
obj_z = obj_id.z+argument1+20               //z level of object + its own height + player height
obj_ground_z = obj_id.z                     //z level of object
soundkind = argument2                       //what sound will be played if you land on it

if place_meeting(x,y,obj_id) {

    if z < obj_z-1 then {
        x=xprevious
        y=yprevious
    }

    if z < obj_z+2 then {
    if z > obj_z-2 then {
    if not keyboard_check_pressed(vk_space) then {
        jump = 0
        global.footstep_kind = soundkind
        if onground = 0 then {
            onground = 1
            ex_audio_play(soundkind,false)
        }
        air = 0
        z = obj_z
    }}}

}
}
