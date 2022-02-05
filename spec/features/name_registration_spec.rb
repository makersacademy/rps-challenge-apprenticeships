feature 'register name' do

  scenario 'enter name' do

    sign_in
    expect(page).to have_content 'Welcome Wilbur!'
    
  end

end
