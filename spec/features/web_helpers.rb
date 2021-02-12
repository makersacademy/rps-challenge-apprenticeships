def fill_in_name
  visit ('/')
    fill_in :name, with: "Tom"
    click_button 'Enter'
  end
