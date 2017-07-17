require_relative 'game'

describe WordGame do
  let(:game) { WordGame.new }

  it "enters word" do
    expect(game.enter("example")) to eq ["e", "x", "a", "m", "p", "l", "e"]
  end

  it "creates word blank" do
    expect(game.blank_arr) to eq ("_ _ _ _ _ _ _")
  end

  it "searches letter" do
    game.search("m") to eq ("You got a letter")
    game.search("z") to eq ("Sorry, guess again")
  end

end