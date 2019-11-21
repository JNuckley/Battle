require 'game'

describe Game do
  subject(:game) { Game.new(p1, p2) }
  let(:p1) { double :player }
  let(:p2) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(p2).to receive(:receive_damage)
      game.attack(p2)
    end
  end
  describe '#p1' do
    it 'retrieves the first player' do
      expect(game.p1).to eq p1
    end
  end

  describe '#p2' do
    it 'retrieves the second player' do
      expect(game.p2).to eq p2
    end
  end

  describe '#current_turn' do
    it 'starts as p1' do
      expect(game.current_turn).to eq p1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq p2
    end
  end
end
