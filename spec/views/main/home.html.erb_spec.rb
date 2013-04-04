require 'spec_helper'

describe "main/home" do
  it "renders the page title" do
    render :template => "main/home", :layout => "layouts/application"

    assert_select "title", "Prototype"
    #assert_select "p", "Teste"
  end
end