/// @description Insert description here
// You can write your code in this editor

event_inherited()

function next_step()
{
	if (text != "")
	{
		text = "";
		draw_text_reset()
	}
	
	story_index += 1
	if (story_index < array_length(story_beats))
	{
		// Parse entry
		var _entry = story_beats[story_index];
		switch (_entry[0])
		{
			case 0:
				// Change background
				_img = _entry[1]
				sprite_index = _img;
				break;
			case 1:
				// Wait time
				wait_time = _entry[1] * 60
				return;
			case 2:
				// Display text		
				portrait = _entry[1]
				text = _entry[2]
				draw_text_reset()
				return;
		}
		
		next_step();
	}
}

fade = 1
fade_inc = -1
story_index = -1
text = ""
portrait = undefined
wait_time = 0
next_step()

function skip()
{
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
}