spawn_counter = 0;   // contador de spawn
spawn_timer   = 60;  // tempo inicial entre spawns (frames)

// Objetos possíveis de spawn
spawn_objects = [oTesoura, oBolaPapel, oBorracha, oLiga, oMoeda, oBombom];

// Chances correspondentes (em porcentagem, soma até 100)
spawn_chances = [90, 0, 0, 0, 5, 5, 0]; 
// Exemplo: 40% inimigos, 20% moeda, 10% bombom, 30% powerup

randomize()