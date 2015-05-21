require 'bowling'

RSpec.describe Bowling, "#score" do
  context "with no strikes or spares" do
    it "sums the pin count for each roll" do
      bowling = Bowling.new
      20.times { bowling.hit(4) }
      expect(bowling.score).to eq 80
    end
    it "sums" do
      bowling = Bowling.new
      bowling.hit(5)
      bowling.hit(5*5*5)
      expect(bowling.score).to eq 130
    end
  end
  context "strikes and spares tested" do
    it "compares expected score" do
      bowling = Bowling.new
      bowling.hit(5)
      bowling.hitstrike
      bowling.hitstrike
      bowling.hit(3)
      bowling.hitspare(7)
      bowling.hit(5)
      expect(bowling.score).to eq 68
      expect(bowling.spare).to eq 0
      expect(bowling.strike).to eq 0
    end
  end
end
