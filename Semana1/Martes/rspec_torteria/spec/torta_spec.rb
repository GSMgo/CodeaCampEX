require 'torta'

describe Torta do

  let(:type)  { "milanesa" }
  let(:torta) { Torta.new(type) }

  subject { torta }
  it { is_expected.to respond_to(:type) }

  describe "#initialize" do
    context "with valid input" do
      it "creates a new Torta of the specified type" do
        expect(torta.type).to eq(type)
      end
    end

    context "with invalid input" do
      it "throws an argument error when not given a type argument" do
        expect { Torta.new }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#type" do
    it "returns the type of the torta" do
      expect(torta.type).to eq(type)
    end
  end

  describe "#bake!" do
    context "When no argument is given" do
      it "requires an integer time argument" do
        expect { torta.bake!() }.to raise_error(ArgumentError)
        #### falta aqui
      end
    end

    context "When a valid argument is given" do 
      it "returns the torta object" do 
        expect(torta).not_to be_nil 
      end

      context "and argument is > 0.5" do
        it "changes the status of the torta when given enough time" do
          expect { torta.bake!(10) }.to change(torta, :status)
        end
      end
    end
  end

  describe "#status" do
    describe "returns the torta's current status" do

      context "when unbaked" do
        it "is `crudo`" do
            expect(torta.status).to eq("crudo")
        end
      end

      context "when baked for less than 5 minutes" do
        it "is `crudo`" do 
          expect { torta.bake!(4) }.not_to change(torta, :status)
        end
      end

      context "when baked for at least 5 but less than 7 minutes" do
        it "is `casi listo`" do
          expect { torta.bake!(6) }.to change(torta, :status).from('crudo').to('casi listo')
        end
      end

      context "when baked for at least 7 but less or equal than 10 minutes" do
        it "is `listo`" do
          expect { torta.bake!(8) }.to change(torta, :status).from('crudo').to('listo')
        end
      end

      context "when baked for at least 11 minutes" do
        it "is `quemado`"do
          expect { torta.bake!(11) }.to change(torta, :status).from('crudo').to('quemado')
        end
      end
    end
  end

  describe "#bake_time" do
    it "returns bake time of the specified type" do
        expect(torta.bake_time).to eq(10)
    end
  end
end
