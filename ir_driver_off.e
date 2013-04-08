iro.drive	out 138 key.dir_horiz 
		out 139 key.dir_vert
		out 140 key.num0
		out 141 key.trim
		out 147 key.num1
iro.loop	in 136 iro.signal
		bne iro.loop iro.signal key.num1
		out 137 key.num0
		ret iro.after

iro.signal 	.data 0
iro.after	.data 0
//#include ir_global.e

