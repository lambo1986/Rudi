require "unimidi"

class DrumMachine
  attr_reader :output, :channel, :velocity

  def initialize(output_index: 0, channel: 9, velocity: 100)
    @output = UniMIDI::Output.use(output_index)
    @channel = channel
    @velocity = velocity
  end

  def play_basic_pattern
    @output.open do |output|
      play_snare(output)
      sleep 0.15
      play_kick(output)
      sleep 0.15
      play_kick(output)
      sleep 0.15
      play_snare(output)
      sleep 0.15
      play_closed_hi_hat(output)
      sleep 0.15
      play_kick(output)
      sleep 0.15
      play_kick(output)
      sleep 0.15
      play_closed_hi_hat(output)
      sleep 0.15
    end

    def random_pattern
      @output.open do |output|
        4.times do
          method_name = [:play_snare, :play_kick, :play_closed_hi_hat, :play_rim].sample
          send(method_name, output)
          sleep 0.10
        end
      end
    end
  end

  private

  def play_kick(output)
    output.puts(0x90 + @channel, 36, @velocity) # Kick drum
  end

  def play_snare(output)
    output.puts(0x90 + @channel, 38, @velocity) # Snare drum
  end

  def play_closed_hi_hat(output)
    output.puts(0x90 + @channel, 42, @velocity) # Closed Hi-Hat
  end

  def play_rim(output)
    output.puts(0x90 + @channel, 37, @velocity) # Rimshot
  end
end
