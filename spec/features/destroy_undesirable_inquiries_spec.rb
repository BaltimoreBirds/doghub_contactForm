require'spec_helper'

feature'admin destroys inquires', %Q{
  As an admin
  I want to delete an inquiry
  So that I can remove spam or other undesirable inquiries
  Acceptance Criteria
  I can remove an item from the listing of contact inquiries

  }do

  mike=FactoryGirl.create(:contact)
  it'destroys inquiries'do
    visit'/contacts'

    expect(page).to have_content(@contacts)
    # save_and_open_page
    page.all(:link,'Destroy')[0].click
  end



end
