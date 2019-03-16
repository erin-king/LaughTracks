RSpec.describe 'user visits new page' do
  describe 'as a vistor' do
    it 'should show a form' do
      visit '/comedians/new'

      within "#new-comedian-form" do
        expect(page).to have_button("Submit")
      end
    end

    it 'should submit a completed form' do
      visit '/comedians/new'

      within '#new-comedian-form' do
        fill_in "comedian[name]", with: 'Jazzy Jazzerton'
        fill_in "comedian[age]", with: '3'
        fill_in "comedian[hometown]", with: 'Colorado Springs'
        click_button 'Submit'
      end

      expect(current_path).to eq('/comedians')
      expect(page).to have_content('Jazzy Jazzerton')
    end

    it 'should not submit a form with incomplete info' do
      visit '/comedians/new'

      within '#new-comedian-form' do
        fill_in "comedian[name]", with: ''
        fill_in "comedian[age]", with: '3'
        fill_in "comedian[hometown]", with: 'Colorado Springs'
        click_button 'Submit'
      end

      expect(current_path).to eq('/comedians')
    end
  end
end
