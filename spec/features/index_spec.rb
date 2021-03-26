feature 'index' do 
  scenario 'sign up and play' do
    register_and_play

    expect(page).to have_content "Mark"
  end 
end
