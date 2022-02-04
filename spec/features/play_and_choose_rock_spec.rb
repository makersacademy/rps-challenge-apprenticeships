feature 'login and choose the option rock' do 
  scenario ' login with Adam and choose rock' do 
    sign_in
    click_button "rock"
    expect(page).to have_content "Adam chose rock"
  end
end

