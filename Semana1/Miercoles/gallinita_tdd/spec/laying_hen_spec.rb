require 'laying_hen'

describe LayingHen do
  let(:hen) { LayingHen.new() }
  # LayingHen tests here
  describe 'initialize' do
    it 'creates a new laiyng hen' do
      expect(hen).to be_an_instance_of LayingHen
    end
  end

  describe 'age!' do
    it 'ages the hen 1 month' do
      expect{hen.age!}.to change{hen.age}.by(1)  
    end
  end

  describe 'lay_egg' do 
    it 'creates a new egg if the hen is older than 3 months' do
      expect{hen.lay_egg(4)}.to change{$eggs.length}.by(4)
    end
  end

  describe 'any_eggs?' do
    it 'checks if the hen has laid eggs' do
      expect(hen.any_eggs?).to be true
    end
  end

  describe 'pick_egg' do 
    context 'if the egg is rotten' do 
      it 'the egg is saved in rotten eggs' do
        expect{hen.pick_egg}.to change{$rotten}.by_at_least(1)
      end
    end

    context 'if the egg is ok' do
      it 'the egg is save in the basket' do
        expect{hen.pick_egg}.to change{$basket.length}.by_at_least(1)
      end
    end
  end

  describe 'old?' do
    it ' checks the age of the hen' do
      expect(hen.old?).to eq(0)
    end
  end

end




describe Egg do
  let(:egg) { Egg.new() }
  # Egg tests here
  describe 'initialize' do 
    it 'creates a new egg' do
      expect(egg).to be_an_instance_of Egg
    end
  end

  describe 'rotten?' do
    context 'if is rotten' do
      it 'should return true' do
        expect(egg.rotten?(4)).to be false
      end
    end

    context 'if is ok' do
      it 'should return false' do
        expect(egg.rotten?(1)).to be true
      end
    end
    
  end
end

