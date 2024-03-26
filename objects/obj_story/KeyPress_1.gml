/// @description Insert description here
// You can write your code in this editor

if (story_index >= array_length(story_beats))
{
	next_screen()
}
else if wait_time > 0
{
	wait_time = 0;
	next_step();
}
else if variable_instance_exists(self.id, "_text_char") && (text != "")
{
	var _text_ind = floor(_text_char);
	if (_text_ind < string_length(text))
	{
		_text_char = string_length(text)
	}
	else 
	{
		next_step();
	}
}
