require "unimidi"
require "./lib/poly_synth.rb"

RSpec.describe PolySynth, type: :class do
  describe "#new" do
    it "creates a new PolySynth object" do
      synth = PolySynth.new

      expect(synth).to be_an_instance_of(PolySynth)
      expect(synth.output).to be_an_instance_of(UniMIDI::Output)
      expect(synth.channel).to eq 0
    end
  end

  describe "#play_chord" do
    it "plays a chord" do
      synth = PolySynth.new

      c_major_chord = [60, 64, 67, 71]  
      velocity = 100
      duration = 0.3
      pause = 0.1

      expect(synth.play_chord(c_major_chord, velocity, duration, pause)).to be_truthy
    end
  end
end
