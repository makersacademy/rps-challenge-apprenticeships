feature 'User visits app page' do
  scenario 'there is a form to enter name and start game' do
    visit ('/')
    find_field('player_name').value
  end
end