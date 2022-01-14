feature 'two people are playing' do
  scenario 'two people can enter their names' do
    visit '/'
    select "Two Player", :from => "mode"
    click_button "Load"
    fill_in :player_one_name, with: "Orla"
    fill_in :player_two_name, with: "ABT"
    click_button "Play"
  end
end
