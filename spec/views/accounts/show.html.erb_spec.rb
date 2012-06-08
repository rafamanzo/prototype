require 'spec_helper'

describe "accounts/show" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :bank => "Bank",
      :agency => "Agency",
      :number => "Number",
      :funds_cents => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bank/)
    rendered.should match(/Agency/)
    rendered.should match(/Number/)
    rendered.should match(/9.99/)
  end
end
