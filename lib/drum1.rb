require 'unimidi'

# Prompt the user to select an output
output = UniMIDI::Output.use(9)

# Drum channel (in MIDI, channel 10 is for percussion, but it's 0-indexed in programming, so we use 9)
channel = 9

# Example MIDI note numbers for different drum sounds
kick = 36 # Kick drum
snare = 38 # Snare drum
closed_hi_hat = 42 # Closed Hi-Hat

velocity = 100 # Velocity (volume) of the note, range: 0-127

# Send a basic drum pattern
output.open do |output|
  4.times do
    output.puts(0x90 + channel, kick, velocity) # Kick drum
    sleep 0.5
    output.puts(0x90 + channel, snare, velocity) # Snare drum
    sleep 0.25
    output.puts(0x90 + channel, closed_hi_hat, velocity) # Closed Hi-Hat
    sleep 0.25
  end
end
