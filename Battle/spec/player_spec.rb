require './lib/player'

describe Player do
  subject(:Jo) { Player.new('Jo') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end
end
