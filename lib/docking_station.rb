require "bike"

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @bikes << bike
    self
  end

  def has_bike?
    @bikes.empty? == true ? (return false) : (return true)
  end

end
