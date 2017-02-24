require 'journey'

describe Journey do


  it 'knows the entry station' do
      journey = Journey.new("Hampstead")
      expect(journey.entry_station). to eq "Hampstead"
  end

  it 'knows the exit station' do
      journey = Journey.new("Hampstead")
      journey.finish("Euston")
      expect(journey.exit_station). to eq "Euston"
  end

  it 'knows that the journey is complete' do
      journey = Journey.new("Hampstead")
      journey.finish("Euston")
      expect(journey.in_journey?).to be false
  end


end
