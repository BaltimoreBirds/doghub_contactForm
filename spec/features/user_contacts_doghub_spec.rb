require'spec_helper'

feature 'user contacts doghub', %Q{

  As a site visitor
  I want to contact DogHub staff
  So that I can tell them how awesome they are
  Acceptance Criteria:

  I must specify a valid email address
  I must specify a subject
  I must specify a description
  I must specify a first name
  I must specify a last name
  } do
  it 'contacts doghub with valid attributes' do
    visit '/contacts/new'
    # save_and_open_page
    fill_in 'Email', with: 'johnny@johnny.com'
    fill_in 'Subject', with: 'some_text'
    fill_in 'Description', with: 'description'
    fill_in 'First name', with: 'john'
    fill_in 'Last name', with: 'appleseed'

    click_on 'Create Contact'
    # save_and_open_page
    expect(page).to have_content "Thank you for contacting Doghub"
  end

  it 'contacts doghub with invalid attributes' do
    visit '/contacts/new'

    click_on 'Create Contact'

    expect(page).to have_content "Email can't be blank"
    expect(page).to have_content "Subject can't be blank"
    expect(page).to have_content "Description can't be blank"
    expect(page).to have_content "First name can't be blank"
    expect(page).to have_content "Some custom message"

  end


end
