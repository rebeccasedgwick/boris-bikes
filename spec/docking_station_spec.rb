require "docking_station"
require "bike"

describe DockingStation do
  it "responds to release_bike" do
    expect(subject).to respond_to :release_bike
  end
  it "releases a bike" do
    expect(subject.release_bike).to be_a Bike
  end
  it "releases a working bike" do
    expect(subject.release_bike.working?).to eq true
  end
end
