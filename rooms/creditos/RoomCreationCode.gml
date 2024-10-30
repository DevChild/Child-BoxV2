if obj_speedrun.speedrun {
			
	with(obj_speedrun){
		if time < timeMax {
			timeMax = time;
			
			/*
			ini_open("maxscore.ini");
			ini_write_real("score", "max", timeMax);
			ini_close();
			*/
			if gxc_get_query_param("challenge") == global.ch_speedrun {
				gxc_challenge_submit_score(timeMax*100);
				//show_message_async("new record")
			}
		}
	}
}

layer_sequence_create("Transicion",128, 72,credits);

		
