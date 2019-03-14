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
      end

      within "#comedian-#{comedian_2.id}" do
        expect(page).to have_content("Name: #{comedian_2.name}")
        expect(page).to have_content("Age: #{comedian_2.age}")
        expect(page).to have_content("Hometown: #{comedian_2.hometown}")
      end
    end

    it 'should show tv specials' do
      comedian_2 = Comedian.create(name: "Erin King", age: 34, hometown: "Fountain", profile_pic: "http://avalonuk.com/wp-content/uploads/2015/03/iliza-website.jpg")
      special_1 = comedian_2.specials.create(name: "My Life is Funny", runtime: 5)
      special_2 = comedian_2.specials.create(name: "Speeling", runtime: 10)

      visit '/comedians'
      save_and_open_page
      within "#comedian-#{comedian_2.id}" do
        within "#special-#{special_1.id}" do
          expect(page).to have_content("Special: #{special_1.name}")
          expect(page).to have_content("Runtime: #{special_1.runtime}")
        end
        within "#special-#{special_2.id}" do
          expect(page).to have_content("Special: #{special_2.name}")
          expect(page).to have_content("Runtime: #{special_2.runtime}")
        end
      end
    end
  end
end
