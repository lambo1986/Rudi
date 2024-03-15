require_relative 'drum1.rb'

drum_machine = DrumMachine.new

16.times do
  drum_machine.play_basic_pattern

  6.times do
    drum_machine.random_pattern
  end
end
