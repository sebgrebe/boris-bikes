require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = Array.new
  end

  def release_bike
    fail "Sorry, there are no bikes" if @bikes.empty?
    @bikes.shift
  end

  def dock_bike(bike)
    fail "Oops, full." if @bikes.length >= 20
    @bikes.push(bike)
  end
end
