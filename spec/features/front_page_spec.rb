describe "the front page", type: :feature do

  it "asks the player to give their name" do
    visit '/'
      fill_in 'name', with: 'Sherlock'
    end
    click_button 'Play'
    expect(page).to have_content 'Sherlock'
  end
