require "unimidi"
require "./lib/drum1.rb"

RSpec.describe DrumMachine, type: :class do
  describe '#initialize' do
    it 'initializes a new DrumMachine' do
      drums = DrumMachine.new(output_index: 0, channel: 9, velocity: 100)

      expect(drums).to be_a DrumMachine
      expect(drums.output).to be_a UniMIDI::Output
      expect(drums.velocity).to eq(100)
      expect(drums.channel).to eq(9)
    end
  end

  describe "#play_basic_pattern" do
    it 'plays a basic pattern' do
      drums = DrumMachine.new(output_index: 0, channel: 9, velocity: 100)

      expect(drums.play_basic_pattern).to be_truthy
    end
  end

  describe "#random_pattern" do
    it "generates a random pattern" do
      drums = DrumMachine.new(output_index: 0, channel: 9, velocity: 100)

      expect(drums.random_pattern).to be_truthy
    end
  end

  describe "#single_hit_snare" do
    it "plays a single snare" do
      drums = DrumMachine.new(output_index: 0, channel: 9, velocity: 100)

      expect(drums.single_hit_snare).to be_truthy
    end
  end

  describe "#funk_walk" do
    it "be funky n fast" do
      drums = DrumMachine.new(output_index: 0, channel: 9, velocity: 100)

      expect(drums.funk_walk(0.087)).to be_truthy
    end
  end

  describe "#single_crash_kick" do
    it "goes SMASH-BOOM" do
      drums = DrumMachine.new(output_index: 0, channel: 9, velocity: 100)

      expect(drums.single_crash_kick).to be_truthy
    end
  end
end
