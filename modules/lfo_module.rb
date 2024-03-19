module LFO
  def apply_random_lfo(output, cc_number, range_min, range_max, rate)
    Thread.new do
      loop do
        cc_value = rand(range_min..range_max)
        output.puts(0xB0 + @channel, cc_number, cc_value)
        sleep rate
      end
    end
  end

  def apply_sine_lfo(output, cc_number, min_value, max_value, wave_frequency)
    amplitude = (max_value - min_value) / 2.0
    offset = min_value + amplitude

    Thread.new do
      phase = 4.3
      # Calculate the phase increment to achieve the desired wave_frequency
      # Adjust the sleep_duration for smoother or faster updates
      sleep_duration = 0.7 # Smaller for higher resolution
      phase_increment = 2 * Math::PI * wave_frequency * sleep_duration

      loop do
        cc_value = (Math.sin(phase) * amplitude + offset).round
        output.puts(0xB0 + @channel, cc_number, cc_value)

        phase += phase_increment
        phase -= 2 * Math::PI if phase >= 2 * Math::PI # Keep phase within a 0 to 2*PI range

        sleep sleep_duration
      end
    end
  end
end
