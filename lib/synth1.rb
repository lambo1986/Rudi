require 'unimidi'

# Select the first available MIDI output
output = UniMIDI::Output.use(0)

# Assign the channel directly (for channel 10, we use 9)
channel = 0

# Define a note, velocity, and duration
note = 60 # Middle C
velocity = 100
duration = 0.5

# Send a note on and note off message to play the note
output.open do |output|
  output.puts(0x90 + channel, note, velocity) # Note on message
  sleep duration
  output.puts(0x80 + channel, note, velocity) # Note off message
end
