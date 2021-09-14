require 'rails_helper'

RSpec.describe "Index" do
  before :each do
    @snape = Professor.create(name: "Severus Snape", age: 45, specialty: "Potions")
    @hagarid = Professor.create(name: "Rubeus Hagrid", age: 38 , specialty: "Care of Magical Creatures")
    @lupin = Professor.create(name: "Remus Lupin", age: 49 , specialty: "Defense Against The Dark Arts")

    @harry = Student.create!(name: "Harry Potter" , age: 11 , house: "Gryffindor" )
    @malfoy = Student.create!(name: "Draco Malfoy" , age: 12 , house: "Slytherin" )
    @longbottom = Student.create!(name: "Neville Longbottom" , age: 11 , house: "Gryffindor" )

  end

  it 'lists all students with the number of professors they have' do
    visit '/students'

    expect(page).to have_content(@harry.name)
    expect(page).to have_content(@harry.professor_count)

    expect(page).to have_content(@malfoy.name)
    expect(page).to have_content(@malfoy.professor_count)
  end

  it 'lists students in alphabetical order' do
     visit '/students'

     expect(@malfoy.name).to appear_before(@harry.name)
     expect(@harry.name).to appear_before(@longbottom.name)
   end


end
