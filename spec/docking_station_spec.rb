require 'docking_station'

describe DockingStation do
  let(:bike) { Bike.new }
  it { is_expected.to respond_to :release_bike }

  it 'gives a working bike' do
    subject.dock_bike(bike)
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to :dock_bike }

  it 'returns our instance of bike using .bike' do
    subject.dock_bike(bike)
    expect(subject.bikes).to include(bike)
  end

  it 'raises an error when releasing a bike and no bike is docked' do
    expect { subject.release_bike }.to raise_error("Sorry, there are no bikes")
  end

  it 'raises an error when docking a bike when it is already full' do
    DockingStation::DEFAULT_CAPACITY.times { subject.dock_bike(bike) }
    expect { subject.dock_bike(Bike.new) }.to raise_error("Oops, full.")
  end

  it 'sets capacity to 30 when capacity is set to 30' do
    station = DockingStation.new(30)
    expect(station.capacity).to eq 30
  end

 it 'sets default capacity to 20 when no capacity given' do
   station = DockingStation.new
   expect(station.capacity).to eq 20
 end

 it 'sets bike to not working when reported as not working on return' do
   subject.dock_bike(bike,false)
   expect(bike.working?).to be_falsey
 end

 it 'only returns working bikes on bike_release' do

 end

end
