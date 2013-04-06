require 'spec_helper'

describe "main/home" do
  it "renders the correct charset for the page" do
    render :template => "main/home", :layout => "layouts/application"

    assert_select 'meta[charset="utf-8"]'
  end

  it "renders the viewport tag for the page" do
    render :template => "main/home", :layout => "layouts/application"

    assert_select 'meta[name="viewport"][content="width=device-width,initial-scale=1"]'
  end

  it "renders the page title" do
    render :template => "main/home", :layout => "layouts/application"

    assert_select "title", "Prototype"
  end
end