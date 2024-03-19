require './lib/poly_synth.rb'

poly_synth = PolySynth.new

c_major_chord = [60, 64, 67, 71]  # MIDI note numbers for C, E, G, B
a_minor_chord = [57, 67, 69, 72]
f_major_chord = [53, 57, 62, 76]
ab_major_sixth_chord = [56, 60, 63, 65]
bb_minor_seventh_chord = [58, 61, 65, 72]
velocity = 100
duration = 0.3
pause = 0.15

2.times do
  4.times do
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

  4.times do
    5.times do
      poly_synth.play_chord(ab_major_sixth_chord, velocity, duration, pause)
    end

    7.times do
      poly_synth.play_chord(bb_minor_seventh_chord, velocity, duration, pause)
    end
  end
end
