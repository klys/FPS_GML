if giveaccback = 1 then {
    global.gun_stat_accuracy = acc
    giveaccback = 0
}  


if aim < 2 then {
    aim += 0.5
    gun_z += 0.2
    gun_h -= 0.125
    if aim = 2 then {
        ads = 0
    }
}

if armmoved = 0 then {
    arm_h += 0.2
    arm_z = 0.5
    if arm_h = 2 then {
        armmoved = 1
    }
}

if armmoved = 1 then {
if clipin = 0 then {
    if gun_clip_z < 5 then {
        gun_clip_z += 0.25
    }
}}

if gun_clip_z = 5 then {
    if timer < 50 then {
        timer += 1
    }
    if timer = 50 then {
        clipin = 1
    }
}

if clipin = 1 then {
    if gun_clip_z > 0 then {
        gun_clip_z -= 0.25
    }
    
    if gun_clip_z = 0 then {
    if clippedin = 0 then { 
        ex_audio_play("snd_clipin",false)
        clippedin = 1
    }
        if armmoved = 1 then {
        if arm_h > 0 then {
            arm_h -= 0.4
            arm_z = 0
        }
    if arm_h = 0 then {
        if gotbullets = 0 then {
        if global.gun = global.model_ak47 then {
        if global.ak47_bullets < 30 then {
        global.ak47_ammo += global.ak47_bullets
        global.ak47_bullets = 0       
        if global.ak47_ammo > 29 then {
            global.ak47_bullets = 30
            global.ak47_ammo -= 30
            clippedin = 0 ; gotbullets = 1 ; arm_h = 0 ; arm_z = 0 ; global.reloading = 0 ; manual_reload = 0 ;  exit
            //some reset variables ^
        }
        if global.ak47_ammo < 30 then {
            global.ak47_bullets = global.ak47_ammo
            global.ak47_ammo = 0
            clippedin = 0 ; gotbullets = 1 ; arm_h = 0 ; arm_z = 0 ; global.reloading = 0 ; manual_reload = 0 ;  exit
        }
    }}}
    }
    }
}

}