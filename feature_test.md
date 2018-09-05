
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
