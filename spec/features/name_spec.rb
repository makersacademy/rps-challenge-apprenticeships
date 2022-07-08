
feature 'Home Page' do
    scenario 'submit button' do
        visit '/'
        expect(page).to have_button('Submit')
    end
    scenario 'to fill the form' do
        visit '/'
        expect(page.fill_in 'Enter your name:', with: 'Sabih')
    end
    scenario 'to submit content' do
        visit '/'
        page.fill_in 'Enter your name:', with: 'Sabih'
        page.click_on 'Submit'
        expect(page).to have_content 'Sabih'
    end
end
  