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

  def funk_walk(tempo)
    @output.open do |output|
      [play_kick(output), play_closed_hi_hat(output), play_ride(output)]
      sleep tempo
      play_closed_hi_hat(output)
      sleep tempo
      [play_kick(output), play_closed_hi_hat(output)]
      sleep tempo
      play_closed_hi_hat(output)
      sleep tempo
      [play_snare(output), play_ride(output)]
      sleep tempo
      play_closed_hi_hat(output)
      sleep tempo
      play_closed_hi_hat(output)
      sleep tempo
      [play_closed_hi_hat(output), play_rim(output)]
      sleep tempo
    end
  end

  def single_hit_snare
    @output.open do |output|
      play_snare(output)
    end
  end

  def single_crash_kick
    @output.open do |output|
      [play_cymbal(output), play_kick2(output)]
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

  def play_clap(output)
    output.puts(0x90 + @channel, 39, @velocity) # Clap
  end

  def play_open_hi_hat(output)
    output.puts(0x90 + @channel, 46, @velocity) # Open Hi-Hat
  end

  def play_cymbal(output)
    output.puts(0x90 + @channel, 49, @velocity) # Cymbal
  end

  def play_ride(output)
    output.puts(0x90 + @channel, 51, @velocity) # Ride
  end

  def play_kick2(output)
    output.puts(0x90 + @channel, 35, @velocity) # Additional Kick (Kick2)
  end
end
