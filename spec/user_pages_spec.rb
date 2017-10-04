#The user should be able to enter their address to prove they have required address with a form requiring name and address.

describe('viewing home and verify residency', {:type => :feature}) do
  it('allows a user to input address') do
    visit('/')

    fill_in('address', :with => "1000 Vista Ave")
    click_button('Submit')
    expect(page).to have_content("To Begin")
  end
end
