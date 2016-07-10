require "airport"
require "plane"

describe Airport do

  describe "#land" do
    subject(:airport) {Airport.new} #give new instance name airport
    it "lands a plane" do
      expect(airport).to respond_to(:land).with(1).argument
    end
    it "changes flying attribute to false" do
      plane = Plane.new
      airport.land(plane)
      expect(plane.flying).to eq false
    end


    #it "changes flying attribute to landed" do
    #  landed_plane = airport.land(plane)
    #  expect(landed_plane.flying?).to eq false
  #  end
  end
  describe "#take_off" do
    it "releases a plane" do
      expect(subject).to respond_to(:take_off)
    end
    it "changes flying attribute to true" do
      plane = Plane.new
      subject.land(plane)
      released_plane = subject.take_off
      expect(released_plane.flying).to eq true
    end
  end
end
  
