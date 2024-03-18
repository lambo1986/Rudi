module LFO
  def apply_lfo(output, cc_number, range_min, range_max, rate)
    Thread.new do
      loop do
        cc_value = rand(range_min..range_max)
        output.puts(0xB0 + @channel, cc_number, cc_value)
        sleep rate
      end
    end
  end
end
