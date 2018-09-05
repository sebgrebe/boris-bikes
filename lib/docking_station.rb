require_relative 'bike'

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = Array.new
  end

  def release_bike
    fail "Sorry, there are no bikes" if empty?
    @bikes.shift
  end

  def dock_bike(bike)
    fail "Oops, full." if full?
    @bikes.push(bike)
  end

private

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
