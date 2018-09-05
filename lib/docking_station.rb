require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail "Sorry, there are no bikes" if !@bike
    @bike
  end

  def dock_bike(bike)
    fail "Oops, full." if @bike
    @bike = bike
  end
end
