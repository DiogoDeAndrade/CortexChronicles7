/// @description Insert description here
// You can write your code in this editor
damage = 1

alarm[0] = 180

depth = -200

function snd_hit(_volume)
{
	var _snd = audio_play_sound(snd_thump, 0, false);
	audio_sound_gain(_snd, _volume, 0);
	audio_sound_pitch(_snd, random_range(0.75, 1.25));
}

function snd_rico()
{
	var _snd = audio_play_sound(snd_ricochet, 0, false);
	audio_sound_gain(_snd, 0.15, 0);
	audio_sound_pitch(_snd, random_range(0.75, 1.25));
}