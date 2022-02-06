feature 'homepage' do

  scenario '#form takes name' do
    enter_user

    expect(page).to have_content 'Welcome Mighty Wigglesworth'
  end
end


