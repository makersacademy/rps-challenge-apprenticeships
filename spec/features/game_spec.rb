
feature '#choose rock' do
  scenario 'player chooses rock' do
    enter_name_and_play
    find("option[value='rock']").select_option
    click_button "Submit"
    expect(page).to have_content('picked rock')
  end
end
