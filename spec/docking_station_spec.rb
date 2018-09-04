require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'gives a working bike' do
    expect(subject.release_bike).to be_working
  end

  # it { is_expected.to respond_to :dock_bike }

  it { is_expected.to respond_to :dock_bike }

  # it '...' do
  #   bike = Bike.new
  #   expect(subject.dock_bike(bike)).to eq('bike')
  # end

end
