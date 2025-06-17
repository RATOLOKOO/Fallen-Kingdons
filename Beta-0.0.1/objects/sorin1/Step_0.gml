// GRAVIDADE
if (!place_meeting(x, y + 1, obj_grama)) {
    vspd += grv; // Aplica gravidade
} else {
    vspd = 0;

    // PULO
    if (keyboard_check_pressed(vk_up)) {
        vspd = pulo;
        audio_play_sound(snd_pulando, 0, false); // Toca o som do pulo uma vez
    }
}

// MOVIMENTO VERTICAL
y += vspd;

// CORRIGE SOBREPOSIÇÃO COM O CHÃO
while (place_meeting(x, y, obj_grama)) {
    y -= 1;
}

// MOVIMENTO HORIZONTAL
var andando = false;

if (keyboard_check(vk_left)) {
    x -= spd;
    image_xscale = -1;
    andando = true;
}
if (keyboard_check(vk_right)) {
    x += spd;
    image_xscale = 1;
    andando = true;
}

// SOM DE CORRER
if (andando && place_meeting(x, y + 1, obj_grama)) {
    if (!audio_is_playing(snd_correndo)) {
        audio_play_sound(snd_correndo, 0, true); // toca em loop enquanto anda
    }
} else {
    audio_stop_sound(snd_correndo); // para o som se não estiver andando
}

// ANIMAÇÕES
if (vspd != 0) {
    sprite_index = sorinAndando; // Ou sorinPulando se tiver
} else if (andando) {
    sprite_index = sorinAndando;
} else {
    sprite_index = sorin;
}
