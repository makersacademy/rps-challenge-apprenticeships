feature 'play' do
  scenario 'player sees a message greeting them' do
    sign_in_and_play
    expect(page).to have_content 'Hi jackie'
  end

  scenario 'player can choose an option from the select box' do
    sign_in_and_play
    select('Rock', from: 'options')
    expect(page).to have_content 'Rock'
  end
end
