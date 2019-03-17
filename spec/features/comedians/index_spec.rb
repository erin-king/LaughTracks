RSpec.describe 'user visits homepage' do
  describe 'as a vistor' do
    it 'should see a list of comedians' do
      comedian_1 = Comedian.create(name: "Iliza Shlesinger", age: 36, hometown: "Manhattan", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
      comedian_2 = Comedian.create(name: "Erin King", age: 34, hometown: "Fountain", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")

      visit '/comedians'

      within "#comedian-#{comedian_1.id}" do
        expect(page).to have_content("Name: #{comedian_1.name}")
        expect(page).to have_content("Age: #{comedian_1.age}")
        expect(page).to have_content("Hometown: #{comedian_1.hometown}")
        expect(page).to have_content("Total Specials: #{comedian_1.specials.count}")
      end

      within "#comedian-#{comedian_2.id}" do
        expect(page).to have_content("Name: #{comedian_2.name}")
        expect(page).to have_content("Age: #{comedian_2.age}")
        expect(page).to have_content("Hometown: #{comedian_2.hometown}")
        expect(page).to have_content("Total Specials: #{comedian_2.specials.count}")
      end
    end

    it 'should show tv specials' do
      comedian_2 = Comedian.create(name: "Erin King", age: 34, hometown: "Fountain", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
      special_1 = comedian_2.specials.create(name: "My Life is Funny", runtime: 5, thumbnail: "https://ionemadamenoire.files.wordpress.com/2016/07/so-many-white-guys1.jpg")
      special_2 = comedian_2.specials.create(name: "Speeling", runtime: 10, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTYxOTUzOTU3N15BMl5BanBnXkFtZTcwNzE4ODUzMQ@@._V1_SY1000_CR0,0,670,1000_AL_.jpg")

      visit '/comedians'

      within "#comedian-#{comedian_2.id}" do
        within "#special-#{special_1.id}" do
          expect(page).to have_content("Special: #{special_1.name}")
          expect(page).to have_content("Runtime: #{special_1.runtime}")
          expect(page).to have_css("img")
        end
        within "#special-#{special_2.id}" do
          expect(page).to have_content("Special: #{special_2.name}")
          expect(page).to have_content("Runtime: #{special_2.runtime}")
          expect(page).to have_css("img[src*='#{special_2.thumbnail}']")
        end
      end
    end

    it 'should show a statistics area at the top' do
      comedian_1 = Comedian.create(name: "Iliza Shlesinger", age: 36, hometown: "Manhattan", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
      special_1 = comedian_1.specials.create(name: "A Real Show", runtime: 5, thumbnail: "https://ionemadamenoire.files.wordpress.com/2016/07/so-many-white-guys1.jpg")
      special_2 = comedian_1.specials.create(name: "A Real Podcast", runtime: 10, thumbnail: "https://ionemadamenoire.files.wordpress.com/2016/07/so-many-white-guys1.jpg")
      comedian_2 = Comedian.create(name: "Erin King", age: 34, hometown: "Fountain", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
      special_3 = comedian_2.specials.create(name: "My Life is Funny", runtime: 15, thumbnail: "https://ionemadamenoire.files.wordpress.com/2016/07/so-many-white-guys1.jpg")
      special_4 = comedian_2.specials.create(name: "Speeling", runtime: 20, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTYxOTUzOTU3N15BMl5BanBnXkFtZTcwNzE4ODUzMQ@@._V1_SY1000_CR0,0,670,1000_AL_.jpg")

      visit '/comedians'

      within "#statistics" do
        expect(page).to have_content("Comedian Stats")
        expect(page).to have_content("Average Age: 35.0")
        expect(page).to have_content("Average Special Run Time: 12.5")
        expect(page).to have_content("Hometowns: Fountain, Manhattan")
      end
    end

    it 'should show only 34 year-olds' do
      comedian_1 = Comedian.create(name: "Iliza Shlesinger", age: 36, hometown: "Manhattan", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
      comedian_2 = Comedian.create(name: "Erin King", age: 34, hometown: "Fountain", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
      special_1 = comedian_1.specials.create(name: "A Real Show", runtime: 5, thumbnail: "https://ionemadamenoire.files.wordpress.com/2016/07/so-many-white-guys1.jpg")
      special_3 = comedian_2.specials.create(name: "My Life is Funny", runtime: 15, thumbnail: "https://ionemadamenoire.files.wordpress.com/2016/07/so-many-white-guys1.jpg")
      special_4 = comedian_2.specials.create(name: "Speeling", runtime: 20, thumbnail: "https://m.media-amazon.com/images/M/MV5BMTYxOTUzOTU3N15BMl5BanBnXkFtZTcwNzE4ODUzMQ@@._V1_SY1000_CR0,0,670,1000_AL_.jpg")

      visit '/comedians?age=34'

      within "#comedian-#{comedian_2.id}" do
        expect(page).to have_content("Name: #{comedian_2.name}")
        expect(page).to have_content("Age: #{comedian_2.age}")
        expect(page).to have_content("Hometown: #{comedian_2.hometown}")
      end
      expect(page).to_not have_content("Name: #{comedian_1.name}")
    end
  end
end
