require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = Array.new
    @capacity = capacity
  end

  def release_bike
    bike = get_working_bike
    fail "Sorry, there are no working bikes" if bike == nil
    bike
  end

  def dock_bike(bike, status = true)
    fail "Oops, full." if full?
    bike.working = status
    @bikes.push(bike)
  end

  def get_working_bike
    @bikes.each { |bike|
      return @bikes.delete(bike) if bike.working?
    }
    nil
  end

private

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
