feature '>>>Check user signed it' do
    scenario 'visit play page' do
        sign_in
      visit('/play')
      expect(page).to have_content 'Welcome Tom!'
    end
  end

