require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'gives a working bike' do
    subject.dock_bike(Bike.new)
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to :dock_bike }

  it 'returns our instance of bike using see_bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bikes).to include(bike)
  end

  it 'raises an error when releasing a bike and no bike is docked' do
    expect { subject.release_bike }.to raise_error("Sorry, there are no bikes")
  end

  it 'raises an error when docking a bike when it is already full' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(Bike.new) }
    expect { subject.dock_bike(Bike.new) }.to raise_error("Oops, full.")
  end

end
