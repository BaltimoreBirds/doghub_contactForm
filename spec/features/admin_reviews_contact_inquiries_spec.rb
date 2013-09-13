require'spec_helper'

feature 'admin reviews contact inquiries', %Q{
  As an admin
  I want to review contact inquiries
  So that I can respond or take action
  Acceptance Criteria:

  I can see a list of all contact inquiries
  }do

  it 'views contact inquiries' do
    visit '/contacts/'

    expect(page).to have_content(@contacts)

  end
end

