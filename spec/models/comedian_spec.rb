RSpec.describe Comedian, type: :model do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        comic = Comedian.create(age: 48)
        expect(comic).to_not be_valid
      end

      it 'should be invalid if missing an age' do
        comic = Comedian.create(name: 'Mitch Hedberg')
        expect(comic).to_not be_valid
      end
    end
  end

  describe "Class Methods" do
    describe ".average_age" do
      it "returns average age for all comedians" do
        Comedian.create(name: "Iliza Shlesinger", age: 26, hometown: "Manhattan", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
        Comedian.create(name: "Erin King", age: 34, hometown: "Fountain", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")

        expect(Comedian.average_age).to eq(30)
      end
    end
  end

end
