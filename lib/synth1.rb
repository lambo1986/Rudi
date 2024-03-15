require 'unimidi'

# Prompt the user to select an output
output = UniMIDI::Output.gets

# Use a channel (0-15), note (0-127), and velocity (0-127)
channel = 0
note = 60 # Middle C
velocity = 100

# Send a note on and note off message
output.open do |output|
  output.puts(0x90 + channel, note, velocity) # Note on
  sleep 0.5 # Hold the note for half a second
  output.puts(0x80 + channel, note, velocity) # Note off
end
