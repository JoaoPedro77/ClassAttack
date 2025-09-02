// Contador de spawn
spawn_counter++;
if (spawn_counter >= spawn_timer) {
    spawn_counter = 0;

    // Escolher posição no topo
    var spawn_x = irandom(550);
    var spawn_y = -32; 

    // Sorteio baseado em chances
    var sorteio = irandom(99);
    var acumulado = 0;

    for (var i = 0; i < array_length(spawn_objects); i++) {
        acumulado += spawn_chances[i];
        if (sorteio < acumulado) {
            var obj_to_spawn = spawn_objects[i];

            // Caso seja inimigo, sortear entre os 4
            if (obj_to_spawn == oTesoura) { 
                var qual_inimigo = irandom(3);
                switch (qual_inimigo) {
                    case 0: obj_to_spawn = oTesoura; break;
                    case 1: obj_to_spawn = oBolaPapel; break;
                    case 2: obj_to_spawn = oBorracha; break;
                    case 3: obj_to_spawn = oLiga; break;
                }
            }

            instance_create_layer(spawn_x, spawn_y, "Props", obj_to_spawn);
            break;
        }
    }

    // Reduz spawn_timer gradualmente
    if (spawn_timer > 15) {spawn_timer -= 1;}
	
}