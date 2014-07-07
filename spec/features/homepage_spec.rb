feature "Homepage" do
  scenario "visitor visits homepage" do
    visit "/"
    expect(page).to have_content("Contacts")
    expect(page).to have_link("Login")
    click_on "Login"
    expect(page).to have_button("Login")
  end
end