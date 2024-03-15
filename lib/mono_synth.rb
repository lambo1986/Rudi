require 'unimidi'

class MonoSynth
  attr_reader :output, :channel

  def initialize
    @output = UniMIDI::Output.use(0)
    @channel = 0
  end

  # Method to generate an endless stream of random notes within a range
  def random_note_generator(min_note, max_note)
    Enumerator.new do |yielder|
      loop do
        yielder << rand(min_note..max_note)
      end
    end
  end

  # Method to play random notes
  def play_random_notes(duration: 0.23, pause: 0.13, count: 123)
    note_generator = random_note_generator(50, 90)

    @output.open do |output|
      count.times do
        note = note_generator.next
        velocity = [30, 45, 53, 60, 79].sample
        play_note(output, note, velocity, duration, pause)
      end
    end
  end

  # New method to play a predefined sequence of notes
  def play_sequence(notes, velocities, duration: 0.07, pause: 0.005)
    @output.open do |output|
      notes.each_with_index do |note, index|
        velocity = velocities[index]
        play_note(output, note, velocity, duration, pause)
      end
    end
  end

  private

  def play_note(output, note, velocity, duration, pause)
    output.puts(0x90 + @channel, note, velocity) # Note on message
    sleep duration
    output.puts(0x80 + @channel, note, velocity) # Note off message
    sleep pause
  end
end

