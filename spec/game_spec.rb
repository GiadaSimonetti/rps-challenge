describe Game do

  subject(:game) { described_class.new }
  let(:ai) { double("ai") }
  let(:player) { double("player") }

  describe "#play_match" do

    context "rock - rock" do
      it "works out the result" do
        expect(game.play_match("rock", "rock")).to eq("It's a draw!")
      end
    end

    context "rock - paper" do
      it "works out the result" do
        expect(game.play_match("rock", "paper")).to eq("You win!")
      end
    end

    context "rock - scissors" do
      it "works out the result" do
        expect(game.play_match("rock", "scissors")).to eq("You lose!")
      end
    end

    context "paper - rock" do
      it "works out the result" do
        expect(game.play_match("paper", "rock")).to eq("You lose!")
      end
    end

    context "paper - paper" do
      it "works out the result" do
        expect(game.play_match("paper", "paper")).to eq("It's a draw!")
      end
    end

    context "paper - scissors" do
      it "works out the result" do
        expect(game.play_match("paper", "scissors")).to eq("You win!")
      end
    end

    context "scissors - rock" do
      it "works out the result" do
        expect(game.play_match("scissors", "rock")).to eq("You win!")
      end
    end

    context "scissors - paper" do
      it "works out the result" do
        expect(game.play_match("scissors", "paper")).to eq("You lose!")
      end
    end

    context "scissors - scissors" do
      it "works out the result" do
        expect(game.play_match("scissors", "scissors")).to eq("It's a draw!")
      end
    end

    context "blank player choice" do
      it "returns an appropriate message" do
        expect(game.play_match(["rock", "paper", "scissors"].sample, ""))
          .to eq("Error! Try again!")
      end
    end

  end
end
