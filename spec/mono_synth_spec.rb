require "unimidi"
require "./lib/mono_synth.rb"
RSpec.describe MonoSynth, type: :class do
  describe "#new" do
    it "exists" do
      synth = MonoSynth.new

      expect(synth).to be_a(MonoSynth)
      expect(synth.channel).to eq 0
      expect(synth.output).to be_a(UniMIDI::Output)
    end
  end

  describe "#random_note_generator" do
    it "generates random notes" do
      synth = MonoSynth.new

      expect(synth.random_note_generator(23, 55)).to be_an Enumerator
    end
  end

  describe "#play_random_notes" do
    it "plays random notes without errors" do
      synth = MonoSynth.new

      expect { synth.play_random_notes(duration: 0.1, pause: 0.1, count: 1) }.not_to raise_error
    end
  end

  describe "#play_sequence" do
    it "plays a sequence of notes without errors" do
      synth = MonoSynth.new

      expect { synth.play_sequence([33, 77], [97, 89], duration: 0.1, pause: 0.1) }.not_to raise_error
    end
  end
end
