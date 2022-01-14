feature 'login and choose the option rock' do 
  scenario ' login with Adam and choose rock' do 
    sign_in
    fill_in :choice , with:"rock"
    click_button "Submit"
    expect(page).to have_content "Adam chose rock"
  end
end

