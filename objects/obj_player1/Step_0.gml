if keyboard_check(ord("A")){
	x_spd = -mspd
} else if keyboard_check(ord("D")){
	x_spd = mspd
} else{
	x_spd = 0
}

if keyboard_check(ord("W")) and grounded == true{
	y_spd += jump_amt
}


if grounded{
	y_spd = 0
}


x += x_spd
y += y_spd

