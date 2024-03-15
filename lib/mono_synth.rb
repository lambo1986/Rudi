require 'unimidi'

class MonoSynth
  attr_reader :output, :channel

  def initialize
    @output = UniMIDI::Output.use(0)
    @channel = 0
  end

  def random_note_generator(min_note, max_note)
    Enumerator.new do |yielder|
      loop do
        yielder << rand(min_note..max_note)
      end
    end
  end

  def play
    note_generator = random_note_generator(50, 90)

    @output.open do |output|
      123.times do
        note = note_generator.next
        velocity = [30, 45, 53, 60, 79].sample

        output.puts(0x90 + @channel, note, velocity) # Note on message
        sleep 0.07 # Duration of the note
        output.puts(0x80 + @channel, note, velocity) # Note off message
        sleep 0.005 # Pause between notes for clarity
      end
    end
  end
end

synth = MonoSynth.new
synth.play
