require 'unimidi'

# Select the first available MIDI output
output = UniMIDI::Output.use(0)

# Assign the channel directly (for channel 1, we use 0)
channel = 0

def random_note_generator(min_note, max_note)
  Enumerator.new do |yielder|
    loop do
      yielder << rand(min_note..max_note)
    end
  end
end

# Send a note on and note off message to play the note
output.open do |output|
  123.times do
    # Generate random note and velocity for each iteration
    note = [73, 63, 44, 80, 66, 77].sample
    velocity = [30, 45, 53, 60, 79].sample

    output.puts(0x90 + channel, note, velocity) # Note on message
    sleep 0.11 # Duration of the note
    output.puts(0x80 + channel, note, velocity) # Note off message

    sleep 0.005 # Pause between notes for clarity
  end
end

output.open do |output|
  123.times do
    # Generate random note and velocity for each iteration
    note = [73, 63, 45, 83, 67, 77].sample
    velocity = [30, 45, 53, 60, 79].sample

    output.puts(0x90 + channel, note, velocity) # Note on message
    sleep 0.11 # Duration of the note
    output.puts(0x80 + channel, note, velocity) # Note off message

    sleep 0.005 # Pause between notes for clarity
  end
end

output.open do |output|
  123.times do
    # Generate random note and velocity for each iteration
    note = [73, 63, 44, 80, 66, 77].sample
    velocity = [30, 45, 53, 60, 79].sample

    output.puts(0x90 + channel, note, velocity) # Note on message
    sleep 0.11 # Duration of the note
    output.puts(0x80 + channel, note, velocity) # Note off message

    sleep 0.005 # Pause between notes for clarity
  end
end

min_note = 50 # Middle C (C4)
max_note = 92 # C5

# Create the enumerator for random notes within the range
note_generator = random_note_generator(min_note, max_note)

# Use the enumerator to generate and send random notes within the range
output.open do |output|
  123.times do
    note = note_generator.next
    velocity = [30, 45, 53, 60, 79].sample

    output.puts(0x90 + channel, note, velocity) # Note on message
    sleep 0.07 # Duration of the note
    output.puts(0x80 + channel, note, velocity) # Note off message
    sleep 0.005 # Pause between notes for clarity
  end
end
