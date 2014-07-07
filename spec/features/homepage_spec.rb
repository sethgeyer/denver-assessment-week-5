feature "Homepage" do
  scenario "visitor visits homepage" do
    visit "/"
    expect(page).to have_content("Contacts")
    expect(page).to have_link("Login")
    click_on "Login"
    expect(page).to have_button("Login")
  end

  scenario "logged in user visits homepage" do
    visit "/login"
    fill_in "Username", with: "Jeff"
    fill_in "Password:", with: "jeff123"
    click_button "Login"
    expect(page).to have_content("Spencer")
    expect(page).to have_content("Jeff D.")




  end

end