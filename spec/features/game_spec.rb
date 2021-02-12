feature 'game' do
  scenario 'player chooses rock and is able to submit it' do
    fill_in_name_and_choose_rock
    expect(page).to have_content 'You selected Rock'
  end

  scenario 'player chooses paper and is able to submit it' do
    fill_in_name_and_choose_paper
    expect(page).to have_content 'You selected Paper'
  end

  scenario 'player chooses scissors and is able to submit it' do
    fill_in_name_and_choose_scissors
    expect(page).to have_content 'You selected Scissors'
  end
end
