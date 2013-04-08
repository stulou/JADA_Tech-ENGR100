key.thrust_up	be		key.type		key.thrust		key.num127

				blt		key.make127		key.num117		key.thrust		

				add		key.thrust		key.thrust		key.num10
				
				be		key.return		0				0

key.make127		cp		key.thrust		key.num127
		
				be		key.return		0				0
				
key.thrust_down	be		key.return		key.thrust		key.num0

				blt		key.make0		key.thrust		key.num10	

				sub		key.thrust		key.thrust		key.num10
				
				be		key.return		0				0

key.make0		cp		key.thrust		key.num0
			call	iro.drive	iro.after
				be		key.type		0				0
