feature 'Choice of attack' do
  scenario 'attack Computer' do
    sign_in_and_play
    click_button 'rock'
    expect(page.find('#pl1rock')['src']).to have_content 'https://res.cloudinary.com/dytmcam8b/image/upload/v1604218421/rock_hqk5rc.svg'
  end
  scenario 'attack Computer' do
    sign_in_and_play
    click_button 'paper'
    expect(page.find('#p1paper')['src']).to have_content 'https://res.cloudinary.com/dytmcam8b/image/upload/v1604218421/paper_n5tj2g.svg'
  end
  scenario 'attack Computer' do
    sign_in_and_play
    click_button 'scissors'
    expect(page.find('#p1scissors')['src']).to have_content 'https://res.cloudinary.com/dytmcam8b/image/upload/v1604218421/scissors_necnyz.svg'
  end
end
