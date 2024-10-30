// Auto-generated stubs for each available event.

function Reinicar()
{
	if obj_GameManager.R == "Level_12" {audio_stop_all();}
	room_restart();
	
}



function FadeInNormal_Moment()
{
	room_goto(obj_cambio.changeroom);
}

function inicio()
{
	room_goto(Title);
}

function creditos(){
	room_goto(StartRoom);
}