#!/usr/bin/env python3 

from pycrossfade.song import Song
from pycrossfade.transition import crossfade, crop_audio_and_dbeats
from pycrossfade.utils import save_audio

# creating master and slave songs
master_song = Song('/app/demos/01.mp3')
slave_song = Song('/app/demos/02.mp3')
# creating crossfade with bpm matching
output_audio = crossfade(master_song, slave_song, len_crossfade=8, len_time_stretch=8)
# saving the output
save_audio(output_audio, '/app/demos/sample.wav')
