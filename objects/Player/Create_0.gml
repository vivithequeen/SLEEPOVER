rem = 50
rem_max = 100
rem_drop_counter = 100
rem_up_counter = 50

rem_bar_width = 200
rem_bar_height = 20
rem_bar_x = 5
rem_bar_y = 5
rem_frame = 1

image_xscale = 0.75

rem_color()

function rem_color() {
	if (rem > 80){
		rem_frame = 3
	} else if (rem > 60){
		rem_frame = 1
	} else if (rem > 40){
		rem_frame = 2
	} else if (rem > 20){
		rem_frame = 1
	} else {
		rem_frame = 3
	}
}