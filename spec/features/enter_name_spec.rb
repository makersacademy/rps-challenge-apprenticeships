feature 'entering name' do
  scenario 'visit page' do
    visit "/"
    expect(page.status_code).to eq 200
  end

  scenario 'page has input field for name' do
    visit "/"
    expect(page).to have_field "player"
  end

  scenario 'page has play button' do
    visit "/"
    expect(page).to have_button "play"
  end

  scenario 'page redirects after submitting name' do
    sign_in_and_play
    expect(page).to have_content "Sasha"
  end
end
