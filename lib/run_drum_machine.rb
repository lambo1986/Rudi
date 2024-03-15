require_relative 'drum1.rb'

drum_machine = DrumMachine.new

99.times do
  drum_machine.single_hit_snare
  sleep 0.01
end

47.times do
  drum_machine.single_hit_snare
  sleep 0.03
end

23.times do
  drum_machine.single_hit_snare
  sleep 0.05
end

16.times do
  drum_machine.play_basic_pattern

  6.times do
    drum_machine.random_pattern
  end
end

24.times do
  drum_machine.single_hit_snare
  sleep 0.075
end

48.times do
  drum_machine.funk_walk(0.075)
end

24.times do
  drum_machine.single_hit_snare
  sleep 0.075
end

48.times do
  drum_machine.funk_walk(0.087)
end
