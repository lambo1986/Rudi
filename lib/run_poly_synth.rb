require_relative 'poly_synth.rb'

poly_synth = PolySynth.new

# Example: Play a C Major7 chord
c_major_chord = [60, 64, 67, 71]  # MIDI note numbers for C, E, G, B
a_minor_chord = [57, 67, 69, 72]
f_major_chord = [53, 57, 62, 76]
velocity = 100  # Velocity (loudness) of the chord
duration = 0.3    # Duration of the chord in seconds
pause = 0.1     # Pause after playing the chord

5.times do
  5.times do
    poly_synth.play_chord(c_major_chord, velocity, duration, pause)
  end

  7.times do
    poly_synth.play_chord(a_minor_chord, velocity, duration, pause)
  end

  6.times do
    poly_synth.play_chord(f_major_chord, velocity, duration, pause)
  end
end
