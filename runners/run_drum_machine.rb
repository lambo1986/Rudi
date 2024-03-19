require './lib/drum1.rb'

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

13.times do
  drum_machine.play_basic_pattern
  5.times do
    drum_machine.random_pattern
  end
end

24.times do
  drum_machine.single_hit_snare
  sleep 0.075
end

31.times do
  drum_machine.funk_walk(0.075)
end

24.times do
  drum_machine.single_hit_snare
  sleep 0.087
end

19.times do
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
  sleep 0.05
end

19.times do |i|
  drum_machine.single_crash_kick
  sleep 0.07 unless i == 18
end

3.times do
  drum_machine.funk_walk(0.081)
  drum_machine.random_pattern
  drum_machine.play_basic_pattern
  2.times do
    drum_machine.random_pattern
    drum_machine.funk_walk(0.067)
    drum_machine.punk_it_up(0.13)
    drum_machine.random_pattern
    total_hits = rand(11..67)
    fixed_sleep_duration = rand(0.0037..0.0777)
    total_hits.times do |i|
      drum_machine.single_hit_snare
      sleep fixed_sleep_duration unless i == total_hits - 1
    end
  end
end

57.times do |i|
  drum_machine.single_crash_kick
  sleep 0.07 unless i == 56
end

8.times do
  drum_machine.juicy_walk(0.1923)
end

drum_machine.modulate_open_hat_decay_sine_lfo
drum_machine.modulate_open_hat_tune_random_lfo

24.times do
  drum_machine.juicy_walk(0.1923)
end
