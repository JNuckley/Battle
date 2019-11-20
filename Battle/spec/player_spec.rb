require './lib/player'

describe Player do
  subject(:jo) { Player.new('Jo') }
  subject(:matt) { Player.new('Matt') }

  describe '#name' do
    it 'returns the name' do
      expect(jo.name).to eq 'Jo'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(jo.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'reduces the player hit points' do
      expect(matt).to receive(:receive_damage)
      jo.attack(matt)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { jo.receive_damage }.to change { jo.hit_points }.by(-10)
    end
  end
end
