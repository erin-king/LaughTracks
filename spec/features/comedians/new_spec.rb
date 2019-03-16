RSpec.describe 'user visits new page' do
  describe 'as a vistor' do
    it 'should show a form' do
      visit '/comedians/new'

      within "#new-comedian-form" do
        expect(page).to have_button("Submit")
      end
    end
  end
end

# save_and_open_page
# click_button 'Create My Account'
# fill_in 'Title', with: 'I love Rails!'

#
# it 'should submit completed form' do
#   visit '/songs/new'
#
#   within '.new-song' do
#     fill_in "song[title]", with: 'Love Baby Yeah'
#     fill_in "song[length]", with: '100'
#     fill_in "song[play_count]", with: '2'
#     click_button 'Submit'
#   end
#
#   expect(current_path).to eq('/songs')
#   expect(page).to have_content('Love Baby Yeah')
# end
#
# it "shouldn't submit a form with incomplete info" do
#   visit '/songs/new'
#   # within '.new-song' do
#     fill_in "song[title]", with: ''
#     fill_in "song[length]", with: '100'
#     fill_in "song[play_count]", with: '2'
#     click_button 'Submit'
#
#     expect(current_path).to eq('/songs')
# end
# end

# Then I see a form to input a new comedian into the database
# Including fields for their name, age and city.
# When the form is successfully submitted and saved,
# Then I am redirected to `/comedians`
# And I see the new comedian's data on the page.
