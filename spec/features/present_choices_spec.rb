feature 'present choices' do

  scenario 'present choice of R,P or S' do
    
    sign_in
    expect(page).to have_content 'Choose Rock, Paper or Scissors:'
    
  end

end
