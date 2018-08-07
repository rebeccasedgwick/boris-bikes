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
  it "responds to dock_bike" do
    expect(subject).to respond_to :dock_bike
  end
  # it "docks a bike" do
  #   expect(subject.dock_bike(Bike.new)).to eq true
  # end
  it "responds to has_bike" do
    expect(subject).to respond_to :has_bike?
  end
  it "responds true to has_bike as true once bike docked" do
    expect(subject.dock_bike(Bike.new).has_bike?).to eq true
  end
  it "responds false to has_bike when a new station" do
    expect(subject.has_bike?).to eq false
  end
end

# describe DockingStation do
#   before do
#
#
#   end
#   it "does stuff"
#     expects
#   end
# end
