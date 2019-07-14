//this feature is still a bit buggy

adj = 1 //Z level adjustment

if place_meeting(x,y,obj_slope) or place_meeting(x-8,y+8,obj_slope) or place_meeting(x+54,y+8,obj_slope) then {
    global.slope = 1
    obj_slope.solid = false
} else {
    global.slope = 0
}

if place_meeting(x,y,obj_slope) then {
    
    if z < ((Obj_Camera.x-obj_slope.x+adj)+20)-5 then {
        x=xprevious
        y=yprevious
    }

    if z > ((Obj_Camera.x-obj_slope.x+adj)+20) then {
        if z < ((Obj_Camera.x-obj_slope.x+adj)+20)+2 then {
            if z > ((Obj_Camera.x-obj_slope.x+adj)+20)-2 then {
                onslope = 1
    }}}

    if keyboard_check(vk_space) then {
    if jump = 1 then {
        onslope = 0
    }}
    
    if onslope = 1 then {
        z = (Obj_Camera.x-obj_slope.x+adj)+20
        onground = 1
        jump = 0
        air = 0
    }
    

    
} else {
    onslope = 0
    
}
