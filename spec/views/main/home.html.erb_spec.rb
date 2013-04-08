require 'spec_helper'

describe "main/home" do
  before :each do
    render :template => "main/home", :layout => "layouts/application"
  end

  context 'application layout' do
    it "renders the correct charset for the page" do
      assert_select 'meta[charset="utf-8"]'
    end

    it "renders the viewport tag for the page" do
      assert_select 'meta[name="viewport"][content="width=device-width,initial-scale=1"]'
    end

    it "renders the page title" do
      assert_select "title", "Prototype"
    end

    it "renders the main div" do
      assert_select 'div[id="main"]'
    end

    it "renders the header" do
      assert_select 'div[id="header"]', :count => 1
      assert_select 'div[id="banner"]', :count => 1
      assert_select 'div[id="welcome"]', :count => 1
      assert_select 'div[id="welcome"] h1', :text => "Prototype", :count => 1
      assert_select 'div[id="welcome_slogan"]', :count => 1
      assert_select 'div[id="welcome_slogan"] h1', :text => "Prototype", :count => 1
    end

    it 'renders the menubar' do
      assert_select 'div[id="menubar"]', :count => 1
      assert_select 'ul[id="menu"]', :count => 1
      assert_select 'li[class="current"] a', :text => 'Home', :count => 1
    end

    it 'renders the site_content div' do
      assert_select 'div[id="site_content"]', :count => 1
    end

    it 'renders the sidebar_content div' do
      assert_select 'div[class="sidebar_container"]', :count => 1
    end

    it 'renders the content div' do
      assert_select 'div[id="content"]', :count => 1
    end

    it 'renders the footer' do
      assert_select 'div[id="content_grey"]', :count => 1
      assert_select 'div[class="content_grey_container_box"] h4', :text => 'Why this site is secure?', :count =>1
      assert_select 'div[class="content_grey_container_box"] h4', :text => "Also, it's free software", :count =>1
      assert_select 'div[class="content_grey_container_box"] h4', :text => "Give me a tip", :count =>1
    end
  end
end