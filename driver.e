key.drive	out 20 key.num1
key.loop	in 21 key.signal
		bne key.loop key.signal key.num1
		in 22 key.signal 		//takes in press_release input from keyboard
		in 23 key.input 		//takes an ascii value
		out 20 key.num0
key.finish	ret key.after 

key.num1	.data 1
key.num0	.data 0
key.signal	.data 0
key.input	.data 0
key.after	.data 0

