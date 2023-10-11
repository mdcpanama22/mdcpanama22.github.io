let House1 = function(){
}
House1.prototype.preload = function(){
}
House1.prototype.create = function(){ 
	this.houseNumber = 1;
	this.backGround = game.add.group();
	this.backGround = game.add.sprite(0, 0, "L1_1");
	this.backGround = game.add.sprite(0, 1335 - 893, "L1_2");
	this.backGround = game.add.sprite(750 - 272, 1335 - 585, "L1_3");
	this.background = game.add.sprite(0, 0, "L1_6");
	
	this.itemsH1 = game.add.group(); //HOUSE 1: William's House
	this.curNotepadPos = "suspects";
	this.curNotepadIndex = 0;
	this.accused = 0;

//ITEMS IN THIS HOSUE
	this.background = game.add.sprite(0, 1334-275, "L1_5");
	//ITEMS IN THIS HOSUE
	let item3 = game.add.sprite(600, 1050, "Cash"); //Loose Money
	item3.description = "A haphazard pile of crisp bank notes - in the order of 250 pounds. A small fortune."
	item3.name = "Loose Money";
	item3.pic = "Cash";
	item3.alreadyGrabbed = false; 
	item3.events.onInputDown.add(addToInventory,this,0,item3);
	let item4 = game.add.sprite(0, 675, "Combination"); //Combination
	item4.description = "A slip of paper containing only the digits 2 6 2 9. It appears to be written in a quick, inexact handwriting."
	item4.name = "Combination";
	item4.pic = "Combination";
	item4.alreadyGrabbed = false; 
	item4.events.onInputDown.add(addToInventory,this,0,item4);
	this.background = game.add.sprite(0, 1334 - 525, "L1_8");
	let item5 = game.add.sprite(-50, 330, "Letter1"); //Friend 1: Letter to Deceased
	item5.description = "A carefully-folded letter with neat, deliberate writing."
	item5.name = "William's letter"; 
	item5.pic = "Letter1";
	item5.alreadyGrabbed = false; 
	item5.events.onInputDown.add(addToInventory,this,0,item5);
	this.itemsH1.add(item3); //Loose Money
	this.itemsH1.add(item4); //Combination
	this.itemsH1.add(item5); // Letter 1
	
	instantiateNotepad(this);
	this.but = game.add.sprite(575,1334-150,"bkpk");
	this.but.inputEnabled = true;
	this.but.events.onInputDown.add(enableDisableNotepad, this);
	this.but.events.onInputDown.add(swapNotepad, this);
	

	for(i=0;i<this.notepadStuff.panels.length;i++)
		for(j=0;j<this.notepadStuff.panels[i].length;j++)
			this.notepadStuff.panels[i][j].visible = !this.notepadStuff.visible;
	
	this.notepadStuff.visible = !this.notepadStuff.visible;
	this.itemsH1.forEach(function(item){
		for(i =  0; i < playerInventory.length; i++){
			if(playerInventory[i].name === item.name){
				item.alreadyGrabbed = true;
				item.visible = false
				item.inputEnabled= false;
			}
		}
		if(item.alreadyGrabbed !== true){
			item.scale.setTo(0.3, 0.3);
			item.visible = true;
			item.inputEnabled = true;
		}
	});
}
House1.prototype.update = function(){
}
