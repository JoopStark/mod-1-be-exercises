require 'rspec'
require './lib/pirate'

RSpec.describe Pirate do
  it 'has a name' do
    pirate = Pirate.new('Jane')
    expect(pirate.name).to eq('Jane')
  end

  it 'can have a different name' do
    pirate = Pirate.new('Blackbeard')
    expect(pirate.name).to eq('Blackbeard')
  end

  it 'is a scallywag by default' do
    pirate = Pirate.new('Jane')
    expect(pirate.job).to eq('Scallywag')
  end

  it 'is not always a scallywag' do
    pirate = Pirate.new('Jack', 'cook')
    expect(pirate.job).to eq('cook')
  end

  it 'is not cursed by default' do
    pirate = Pirate.new('Jack')

    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be false

    pirate.commit_heinous_act
    expect(pirate.cursed?).to be true
  end

  it 'has a booty' do
    pirate1 = Pirate.new("Kyle")

    expect(pirate1.booty).to be 0
  end

  it 'gets 100 booty for robbing a ship' do
    # create a pirate
    # rob some ships
    # check that the pirate got 100 booty for each ship it robbed
    pirate1 = Pirate.new("Kyle")

    expect(pirate1.booty).to be 0
    pirate1.rob_ship
    expect(pirate1.booty).to be 100

  end

end
