feature 'homepage' do
  def enter_user
    visit('/')
    fill_in :username, with: 'Wigglesworth'
    click_button 'Submit'
  end

  scenario '#form takes name' do
    enter_user

    expect(page).to have_content 'Welcome Mighty Wigglesworth'
  end
end


