tracks = [];
volumes = [];

audio_group_load(audiogroup_default);

tracks[0] = audio_play_sound(music_base, 1, true);
tracks[1] = audio_play_sound(music_red, 1, true);
tracks[2] = audio_play_sound(music_green, 1, true);
tracks[3] = audio_play_sound(music_blue, 1, true);
tracks[4] = audio_play_sound(music_cyan, 1, true);
tracks[5] = audio_play_sound(music_magenta, 1, true);
tracks[6] = audio_play_sound(music_yellow, 1, true);

for (var i = 0; i < 7; i++)
{
    volumes[i] = (i == 0) ? 0.5 : 0;
    audio_sound_gain(tracks[i], volumes[i], 0);
}

current_track = 0;

function switch_track(new_track)
{
    if (new_track == current_track) return;

    audio_sound_gain(tracks[current_track], 0, 0.5);
    audio_sound_gain(tracks[new_track], 0.5, 0.5);

    current_track = new_track;
}