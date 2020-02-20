require 'docking_station.rb'

describe DockingStation do
	it {is_expected.to respond_to(:release_bike)}

	it "checks if bike is working" do
		bike = Bike.new
		expect(bike).to be_working
	end

	it {is_expected.to respond_to(:dock).with(1).argument}
	it {is_expected.to respond_to(:bike)}
	it 'docks something' do
		bike = Bike.new
		expect(subject.dock(bike)).to eq bike
	end
	it 'returns docked bikes' do
		bike = Bike.new
    subject.dock(bike)
		expect(subject.bike).to eq bike
	end

	it "raises an error when no bikes" do
		expect {subject.release_bike}.to raise_error("No bikes available")
	end

	it "raises an error when full" do
    subject.dock(Bike.new)
		expect {subject.dock(Bike.new)}.to raise_error("Docking station full")
	end

end
