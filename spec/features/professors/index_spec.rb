require 'rails_helper'

RSpec.describe "Index" do
  before :each do
    @snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
    @hagarid = Professor.create(name: "Rubeus Hagrid", age: 38 , specialty: "Care of Magical Creatures")
    @lupin = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")

  end

  it 'can show a list of professors along with their name, age, and specialty' do
    visit '/professors'

    expect(page).to eq(@snape.name)
    expect(page).to eq(@snape.age)
    expect(page).to eq(@snape.specialty)

    expect(page).to eq(@hagarid.name)
    expect(page).to eq(@hagarid.age)
    expect(page).to eq(@hagarid.specialty)
    
    expect(page).to eq(@lupin.name)
    expect(page).to eq(@lupin.age)
    expect(page).to eq(@lupin.specialty)

  end
end
