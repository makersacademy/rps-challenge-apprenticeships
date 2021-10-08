
feature 'feature' do
  scenario 'allow user to enter name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Rahat'
  end
end

