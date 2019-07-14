s = argument0                                           //sound index
loudness = argument1                                    //lower the better
object_d = (distance_to_object(Obj_Camera)/loudness)    //sound to camera distance

if object_d < 0 then {
 object_d = 0 // else if there is a negative number, the sound would be silenced
}

distance = 100-object_d
sound_volume(s,(distance/100)) //volume of sound must be 1 to 0, example: 0.5 (50%)
