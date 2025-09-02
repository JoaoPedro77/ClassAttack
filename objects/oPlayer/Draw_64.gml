// Desenha o sprite do player normalmente
//draw_self();

// HUD - pontuação
draw_set_color(c_white);
draw_text(10, 35, "Pontos: " + string(global.score));

// Barra de vida
draw_healthbar(10, 10, 180, 35, vida, c_black, c_red, c_green, 0, true, true);
