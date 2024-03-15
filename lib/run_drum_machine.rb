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

23.times do |i|
  drum_machine.single_hit_snare
  sleep 0.05 unless i == 22
end

drum_machine.single_crash_kick

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

36.times do
  drum_machine.funk_walk(0.075)
end

24.times do
  drum_machine.single_hit_snare
  sleep 0.087
end

24.times do
  drum_machine.funk_walk(0.087)
end

99.times do
  drum_machine.single_hit_snare
  sleep 0.01
end

77.times do
  drum_machine.single_hit_snare
  sleep 0.02
end

47.times do
  drum_machine.single_hit_snare
  sleep 0.03
end

23.times do |i|
  drum_machine.single_hit_snare
  sleep 0.05 unless i == 22
end

19.times do
  drum_machine.single_crash_kick
  sleep 0.07
end
