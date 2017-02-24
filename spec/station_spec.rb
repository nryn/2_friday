require 'station'

describe Station do

  subject(:station) {described_class.new("Kings Cross", 1)}

  it 'knows its name' do
    expect(station.name).to eq "Kings Cross"
  end

  it 'knows its zone' do
    expect(station.zone).to eql 1
  end

  it 'it raises an error without arguments' do
    expect{Station.new}.to raise_error ArgumentError
  end

  describe '#make_barriers' do
    it 'gives us a barrier' do
      expect(station.make_barriers).to be_an_instance_of Barrier
    end
  end

end
