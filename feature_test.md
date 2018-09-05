As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

in irb
  load './lib/docking_station.rb'
  station = DockingStation.new
  bike = Bike.new
  station.dock_bike(bike)

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

in irb
  load './lib/docking_station.rb'
  station = DockingStation.new
  bike = Bike.new
  station.dock_bike(bike)
  station.see_bike
  --> returns bike (our variable created above)

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

in irb
  load './lib/docking_station.rb'
  station = DockingStation.new
  station.release_bike
  --> raises Runtime Error

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.

in irb
  load './lib/docking_station.rb'
  station = DockingStation.new
  station.dock_bike(Bike.new)
  station.dock_bike(Bike.new)
  --> raises error 'Oops, full'

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

in irb
  load './lib/docking_station.rb'
  station = DockingStation.new
  DEFAULT_CAPACITY.times { station.dock_bike(Bike.new) }
  station.dock_bike(Bike.new)
  --> raises error 'Oops, full'

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary

in irb
  load './lib/docking_station.rb'
  station = DockingStation.new
  station.capacity == 20
  station = DockingStation.new(30)
  station.capacity == 30

-----------------------------------

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

in irb
  load './lib/docking_station.rb'
  bike = Bike.new
  station = DockingStation.new
  station.dock_bike(bike,false)
  bike.working? == false

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

in irb
  load './lib/docking_station.rb'
  bike = Bike.new
  station = DockingStation.new
  station.dock_bike(bike,false)
  station.release_bike
  --> raises error "Sorry, there are no working bikes"

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
