require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :bank => "MyString",
      :agency => "MyString",
      :number => "MyString",
      :funds_cents => "9.99"
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path, :method => "post" do
      assert_select "input#account_bank", :name => "account[bank]"
      assert_select "input#account_agency", :name => "account[agency]"
      assert_select "input#account_number", :name => "account[number]"
      assert_select "input#account_funds_cents", :name => "account[funds_cents]"
    end
  end
end
