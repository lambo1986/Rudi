require_relative 'poly_synth.rb'

poly_synth = PolySynth.new

# Example: Play a C Major7 chord
c_major_chord = [60, 64, 67, 71]  # MIDI note numbers for C, E, G, B
velocity = 100  # Velocity (loudness) of the chord
duration = 0.3    # Duration of the chord in seconds
pause = 0.1     # Pause after playing the chord

5.times do
  poly_synth.play_chord(c_major_chord, velocity, duration, pause)
end
