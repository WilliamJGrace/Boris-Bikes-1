require 'docking_station.rb'

describe DockingStation do
	it {is_expected.to respond_to(:release_bike)}
	it { expect(subject.release_bike).to be_truthy }
end