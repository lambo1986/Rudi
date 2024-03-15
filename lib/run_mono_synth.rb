require_relative 'mono_synth.rb'

mono_synth = MonoSynth.new

# Play a random sequence of notes
mono_synth.play_random_notes(count: 13)

# Play a predefined sequence of notes
notes = [73, 63, 44, 80, 66, 77]
velocities = [30, 45, 53, 60, 79, 55]

23.times do
  mono_synth.play_sequence(notes, velocities)
end

notes = notes.reverse.append(74, 64, 45, 81, 67, 78)
velocities = (50..111).to_a.take(12)

13.times do
  mono_synth.play_sequence(notes, velocities, duration: 0.11)
end

mono_synth.play_sequence([75, 63, 44, 37], [55, 47, 67, 99], duration: 1.137)
