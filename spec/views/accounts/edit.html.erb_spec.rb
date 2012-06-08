require 'spec_helper'

describe "accounts/edit" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :bank => "MyString",
      :agency => "MyString",
      :number => "MyString",
      :funds_cents => "9.99"
    ))
  end

  it "renders the edit account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path(@account), :method => "post" do
      assert_select "input#account_bank", :name => "account[bank]"
      assert_select "input#account_agency", :name => "account[agency]"
      assert_select "input#account_number", :name => "account[number]"
      assert_select "input#account_funds_cents", :name => "account[funds_cents]"
    end
  end
end
