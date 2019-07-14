//reset the recoil back to normal
if giveaccback = 1 then {
    global.gun_stat_accuracy = acc
    giveaccback = 0
}  

//resetting aim (you can't aim down the sight while reloading)
if aim < 2 then {
    aim += 0.5
    gun_z += 0.2
    gun_h -= 0.125
    if aim = 2 then {
        ads = 0
    }
}

//adjust the arm for reload
if armmoved = 0 then {
    arm_h += 0.2
    arm_z = 0.5
    if arm_h = 2 then {
        armmoved = 1
    }
}

//clip is going down
if armmoved = 1 then {
if clipin = 0 then {
    if gun_clip_z < 5 then {
        gun_clip_z += 0.25
    }
}}

//setting timer (alarm didn't work because this is in a step event 
//othewise it would be resetting itself over and over again)
if gun_clip_z = 5 then {
    if timer < 50 then {
        timer += 1
    }
    if timer = 50 then {
        clipin = 1
    }
}

//clip going back in
if clipin = 1 then {
    if gun_clip_z > 0 then {
        gun_clip_z -= 0.25
    }
    
    //give the specific gun the bullet and reset some varaibles
    if gun_clip_z = 0 then {
    if clippedin = 0 then { 
        ex_audio_play("snd_clipin",false)       //make a variable for the clip-in sound otheriwise
        clippedin = 1                       //the sound keeps spamming.
    }
           
    if armmoved = 1 then {
        if arm_h > 0 then {
            arm_h -= 0.4
            arm_z = 0
        }
    if arm_h = 0 then {
        if gotbullets = 0 then {
        if global.gun = global.model_ak47 then {
        if global.ak47_bullets = 0 then {
        if global.ak47_ammo > 29 then {
            global.ak47_bullets = 30
            global.ak47_ammo -= 30
            clippedin = 0 ; gotbullets = 1 ; global.reloading = 0 ; exit
        }
        if global.ak47_ammo < 30 then {
            global.ak47_bullets = global.ak47_ammo
            global.ak47_ammo = 0
            clippedin = 0 ; gotbullets = 1 ; global.reloading = 0 ; exit
        }
    }}}
    }
    }
    
}

}