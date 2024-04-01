/// @description Insert description here
// You can write your code in this editor

story_beats =
[
	[ 0, spr_story01 ],
	[ 1, 1 ],
	[ 2, spr_portrait_rowan, "The raid on Cogwell's facility revealed some interesting facts...\nApparentely, the good doctor had extensive analysis of the Prime Nexus'\nvulnerabilities." ],
	[ 2, spr_portrait_nyx, "So he did our homework for us?" ],
	[ 2, spr_portrait_rowan, "Indeed...\nMost of these vulnerabilities are easily covered, but others are\nharder to solve." ],
	[ 2, spr_portrait_rowan, "The interesting one is the Prime Nexus' vulnerability to EMP." ],
	[ 2, spr_portrait_nyx, "EMP?" ],
	[ 2, spr_portrait_jax, "Electromagnetic Pulse... Don't you watch movies?" ],
	[ 2, spr_portrait_nyx, "No time, busy infiltrating facilities and toppling an evil government." ],
	[ 2, spr_portrait_jax, "EMP is an magnetic wave that can shutdown unshielded electronics.\nI'm surprised the Prime Nexus isn't shielded!" ],
	[ 2, spr_portrait_rowan, "His base is, but the nanobots that control him aren't...\nAnd there lies our hope!" ],
	[ 2, spr_portrait_jax, "So we just build this EMP, take it next to him and blow him up...\nSounds easy and fun!" ],
	[ 2, spr_portrait_rowan, "Nothing about this is easy, Jax..." ],
	[ 2, spr_portrait_rowan, "To build the EMP, we need access to a nuclear device... and\nunless one of you have been holding out on us, we don't have any of those\nlying around!" ],
	[ 2, spr_portrait_nyx, "But if we're having this meeting, I'm pretty sure you've figured out\na way to get our hands on one..." ],
	[ 2, spr_portrait_rowan, "More or less... I know where one will be, no idea on how to get it..." ],
	[ 2, spr_portrait_rowan, "In a few weeks, Cortex is moving some small warheads from storage\nin the Zigurat to a missile base to be installed." ],
	[ 2, spr_portrait_jax, "Let me guess, show of force for our neighbours in the Confederacy?" ],
	[ 2, spr_portrait_rowan, "Yes... But the important part is that it will be vulnerable!" ],
	[ 2, spr_portrait_rowan, "Well, sort of vulnerable...\nIt will be transported in escorted armored vehicles, but we don't have anything\nthat can match that firepower..." ],
	[ 2, spr_portrait_jax, "We have a few weeks, right?\nI may have an idea..." ],
	[ 0, spr_story02 ],
	[ 1, 1 ],
	[ 2, undefined, "A week later..." ],
	[ 0, spr_story03 ],
	[ 1, 1 ],
	[ 2, spr_portrait_jax2, "You think you'll get it done in time?" ],
	[ 2, spr_portrait_engineer, "Well, it's not going to be pretty, but it will do the job..." ],
	[ 2, spr_portrait_jax2, "That's ok, not aiming for pretty, more interested in 'weaponized'\nand 'armored'!" ],
	[ 2, spr_portrait_engineer, "Got you covered there! Little Timmy rocks!" ],
	[ 0, spr_story04 ],
	[ 1, 1 ],
	[ 2, spr_portrait_jax3, "So, what do you think, boss?" ],
	[ 2, spr_portrait_rowan2, "It's something, Jax...\nThere's something so human about this, I believe it will work!\nAt least Cortex won't expect it!" ],
	[ 2, spr_portrait_jax3, "Can't wait to fly this thing, ah ah ah!" ],
	[ 2, spr_portrait_rowan2, "You're driving?! You got some sort of deathwish?!\nThe neural feedback can kill you!" ],
	[ 2, spr_portrait_jax3, "Of course I'm flying, who do you think I am?\nCan't let someone else have all the fun!\nBesides, Nyx had her moment at Cogwell's base, now it's my turn!" ],
	[ 2, spr_portrait_rowan2, "Alright..." ],
	[ 0, spr_story05 ],
	[ 2, undefined, "Godspeed..." ],
]

// Inherit the parent event
event_inherited();

next_screen_name = rm_game01