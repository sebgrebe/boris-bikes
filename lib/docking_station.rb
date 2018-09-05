require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end

  def see_bike
    @bike
  end
end
