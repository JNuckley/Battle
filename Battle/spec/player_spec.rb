require './lib/player'

describe Player do
  subject(:jo) { Player.new('Jo') }

  describe '#name' do
    it 'returns the name' do
      expect(jo.name).to eq 'Jo'
    end
  end
end
