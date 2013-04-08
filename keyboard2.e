			call ir.drive			ir.after
		//	call iro.drive			iro.after
key.type		call 	key.drive 		key.after						//calls driver	
				be 		key.type 		key.signal		key.num0		//excludes button releases from inputs	
				be 		key.right 		key.input		key.l			//l controls right			
				be 		key.left 		key.input		key.j			//j controls left
				be 		key.forward		key.input		key.i			//i controls forward
				be 		key.backward	key.input		key.k			//k controls backward			
				be 		key.thrust_up 	key.input		key.w			//w controls increasing upward thrust			
				be 		key.thrust_down key.input		key.s			//s controls decreasing upward thrust		
				be 		key.trim_r 		key.input		key.d			//d controls trim right		
				be		key.end			key.input		key.esc			//esc ends the program
				be 		key.trim_l 		key.input		key.a			//a controls trim left						
				be 		key.stop 		key.input		key.space		//space controls reset
key.return			call		ir.drive		ir.after
				be 		key.type 		0 				0			    //loops back to type



key.end			halt



key.space		.data 32 	//ascii value for space bar
key.w			.data 119 	//ascii value for w key
key.a			.data 97 	//ascii value for a key
key.s			.data 115 	//ascii value for s key
key.d			.data 100 	//ascii value for d key
key.i			.data 105 	//ascii value for i key
key.j			.data 106 	//ascii value for j key
key.k			.data 107 	//ascii value for k key
key.l			.data 108 	//ascii value for l key
key.dir_horiz	.data 0		//0 is mid, 1 left, 2 right
key.dir_vert	.data 0		//0 is mid, 1 forward, 2 backward
key.thrust		.data 0		//0 no thrust, 127 max thrust
key.trim		.data 67	//9 max left, 125 max right, 67 mid trim
key.num127		.data 127
key.num117		.data 117
key.num10		.data 10
key.num5		.data 5
key.num2		.data 2
key.num125		.data 125
key.num120		.data 120
key.num9		.data 9
key.num14		.data 14
key.esc			.data 27	//ascii value for escape key




#include driver.e
#include left.e
#include right.e
#include forward.e
#include backward.e
#include trim.e
#include thrust.e
#include stop.e
#include ir_driver_on.e
//#include ir_driver_off.e



//key.left		be		key.left_mid	key.dir_horiz	key.num1

//				cp		key.dir_horiz	key.num1
			
//				be		key.type		0				0
			
//key.left_mid	cp		key.dir_horiz	key.num0

//				be		key.type		0				0

//key.right		be		key.right_mid	key.dir_horiz	key.num2

//				cp		key.dir_horiz	key.num2
			
//				be		key.type		0				0
			
//key.right_mid	cp		key.dir_horiz	key.num0

//				be		key.type		0				0
				
//key.forward	be		key.forward_mid	key.dir_vert	key.num1

//				cp		key.dir_vert	key.num1
			
//				be		key.type		0				0
			
//key.forward_mid	cp	key.dir_vert	key.num0

//				be		key.type		0				0

//key.backward	be		key.backward_mid key.dir_vert	key.num2

//				cp		key.dir_vert	key.num2
			
//				be		key.type		0				0
			
//key.backward_mid cp	key.dir_vert	key.num0

//				be		key.type		0				0

//key.thrust_up	be		key.type		key.thrust		key.num127

//				blt		key.make127		key.num117		key.thrust		

//				add		key.thrust		key.thrust		key.num10
				
//				be		key.type		0				0

//key.make127	cp		key.thrust		key.num127
		
//				be		key.type		0				0
				
//key.thrust_down	be	key.type		key.thrust		key.num0

//				blt		key.make0		key.thrust		key.num10	

//				sub		key.thrust		key.thrust		key.num10
				
//				be		key.type		0				0

//key.make0		cp		key.thrust		key.num0
		
//				be		key.type		0				0
				
//key.trim_l	be		key.type		key.trim		key.num125

//				blt		key.make125		key.num120		key.trim		

//				add		key.trim		key.trim		key.num5
				
//				be		key.type		0				0

//key.make125	cp		key.trim		key.num125
		
//				be		key.type		0				0

//key.trim_r	be		key.type		key.trim		key.num9

//				blt		key.make9		key.trim		key.num14		

//				sub		key.trim		key.trim		key.num5
				
//				be		key.type		0				0

//key.make9		cp		key.trim		key.num9
		
//				be		key.type		0				0
				
//key.stop		cp		key.thrust		key.num0

//				be		key.type		0				0
				
