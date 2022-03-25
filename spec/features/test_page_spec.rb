feature 'index page' do
  it 'has a button for one and two players' do
    visit '/'
    expect(page).to have_content 'One Player'
    expect(page).to have_content 'Two Players'
  end

  scenario 'clicking on the two players button creates two input boxes', js: true do
    visit '/'
    click_on 'Two Players'
    expect(page).to have_selector "input[name='p1_name']"
    expect(page).to have_selector "input[name='p2_name']"
  end

  scenario 'basic e2e game, p1 wins', js: true do
    visit '/'
    click_on 'Two Players'
    within 'form' do
      fill_in 'p1_name', with: 'nameone'
      fill_in 'p2_name', with: 'nametwo'
    end
    click_on 'Submit'
    expect(page).to have_content "nameone, make your move:"
    click_on 'PAPER'
    expect(page).to have_content "nametwo, make your move:"
    click_on 'ROCK'
    expect(page).to have_content "nameone wins!"
  end

  scenario 'basic e2e game, p2 wins', js: true do
    visit '/'
    click_on 'Two Players'
    within 'form' do
      fill_in 'p1_name', with: 'nameone'
      fill_in 'p2_name', with: 'nametwo'
    end
    click_on 'Submit'
    expect(page).to have_content "nameone, make your move:"
    click_on 'PAPER'
    expect(page).to have_content "nametwo, make your move:"
    click_on 'SCISSORS'
    expect(page).to have_content "nametwo wins!"
  end

  scenario 'basic e2e draw game', js: true do
    visit '/'
    click_on 'Two Players'
    within 'form' do
      fill_in 'p1_name', with: 'nameone'
      fill_in 'p2_name', with: 'nametwo'
    end
    click_on 'Submit'
    expect(page).to have_content "nameone, make your move:"
    click_on 'PAPER'
    expect(page).to have_content "nametwo, make your move:"
    click_on 'PAPER'
    expect(page).to have_content "Draw!"
  end
end

