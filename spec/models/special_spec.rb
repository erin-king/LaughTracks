RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a name' do
        special = Special.create
        expect(special).to_not be_valid
      end
    end
  end

  # describe 'Class Methods' do
  #   describe '.average_runtime' do
  #     it 'returns average runtime for all specials' do
  #       # comedian_2 = Comedian.create(name: "Erin King", age: 34, hometown: "Fountain", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
  #       # special_1 = comedian_2.specials.create(name: "My Life is Funny", runtime: 30, thumbnail: "https://ionemadamenoire.files.wordpress.com/2016/07/so-many-white-guys1.jpg")
  #       # special_2 = comedian_2.specials.create(name: "Speeling", runtime: 10, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTYxOTUzOTU3N15BMl5BanBnXkFtZTcwNzE4ODUzMQ@@._V1_SY1000_CR0,0,670,1000_AL_.jpg")
  #       Special.create(name: "My Life is Funny", runtime: 30, thumbnail: "https://ionemadamenoire.files.wordpress.com/2016/07/so-many-white-guys1.jpg")
  #       Special.create(name: "Speeling", runtime: 10, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTYxOTUzOTU3N15BMl5BanBnXkFtZTcwNzE4ODUzMQ@@._V1_SY1000_CR0,0,670,1000_AL_.jpg")
  #
  #       expect(Special.average_runtime).to eq(20)
  #     end
  #   end
  # end
end

# describe "Class Methods" do
#   describe ".average_age" do
#     it "returns average age for all comedians" do
#       Comedian.create(name: "Iliza Shlesinger", age: 26, hometown: "Manhattan", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
#       Comedian.create(name: "Erin King", age: 34, hometown: "Fountain", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
#
#       expect(Comedian.average_age).to eq(30)
#     end
#   end
# end
