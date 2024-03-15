require 'unimidi'

class PolySynth
  attr_reader :output, :channel

  def initialize
    @output = UniMIDI::Output.use(0)
    @channel = 0
  end

  def play_chord(notes, velocity, duration, pause)
    notes.each do |note|
      @output.puts(0x90 + @channel, note, velocity)
    end

    sleep duration

    notes.each do |note|
      @output.puts(0x80 + @channel, note, velocity)
    end

    sleep pause
  end

  private

  def play_note(output, note, velocity, duration, pause)
    output.puts(0x90 + @channel, note, velocity) # Note on message
    sleep duration
    output.puts(0x80 + @channel, note, velocity) # Note off message
    sleep pause
  end
end

