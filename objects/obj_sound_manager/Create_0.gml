/// @description Insert description here
// You can write your code in this editor
sndinst_wind = noone
music_id = -1
sndinst_music = noone

function play_wind()
{
	if (sndinst_wind != noone) return;
	
	sndinst_wind = audio_play_sound(snd_wind, 0, false);
	audio_sound_gain(sndinst_wind, 1, 0);
	audio_sound_pitch(sndinst_wind, random_range(0.75, 1.25));
}

function stop_wind()
{
	if (sndinst_wind == noone) return;
	
	audio_stop_sound(sndinst_wind)
}

function play_main_music()
{
	if (music_id == 0) return;
	else if (music_id >= 0)
	{
		stop_music();
	}
	
	sndinst_music = audio_play_sound(music_main, 0, false);
	audio_sound_gain(sndinst_music, 0.15, 0);
	
	music_id = 0
}

function stop_music()
{
	if (sndinst_music == noone) return;
	
	audio_stop_sound(sndinst_music)
	music_id = -1
}


function play_title_music()
{
	if (music_id == 1) return;
	else if (music_id >= 0)
	{
		stop_music();
	}
	
	sndinst_music = audio_play_sound(music_title, 0, false);
	audio_sound_gain(sndinst_music, 0.15, 0);
	
	music_id = 1
}


function play_logo_music()
{
	if (music_id == 2) return;
	else if (music_id >= 0)
	{
		stop_music();
	}
	
	sndinst_music = audio_play_sound(music_logo, 0, false);
	audio_sound_gain(sndinst_music, 0.15, 0);
	
	music_id = 2
}

function stop_music()
{
	if (sndinst_music == noone) return;
	
	audio_stop_sound(sndinst_music)
	music_id = -1
}

function stop_all()
{
	stop_music()
	stop_wind()
}
