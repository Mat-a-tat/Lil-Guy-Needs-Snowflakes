draw_clear(n_black);

var _sh = shake;

draw_set_color(n_white);


#region circle

draw_circle(
	GAMEWIDTH/2 + irandom_range(-_sh, _sh),
	GAMEHEIGHT/2 + irandom_range(-_sh, _sh),
	10+dsin(game.tick)*5, false);

#endregion


#region side lines (example)


draw_primitive_begin(pr_linestrip);

// garbage code
// dont worry

for (var i=0; i<=GAMEWIDTH; i+=4) {
	draw_vertex(i, random_range(-_sh, _sh) + GAMEHEIGHT/2 + dsin(game.tick*4 + i*5 + cos(i * _sh)*5)*6);
}

draw_primitive_end();


#endregion


// horrible ghost
draw_sprite(sprExample, 0,
	random_range(-_sh, _sh)/4 + GAMEWIDTH/2 + dcos(game.tick * 1.3)*16,
	random_range(-_sh, _sh)/4 + GAMEHEIGHT/2 + dsin(game.tick * 4.4)*4);