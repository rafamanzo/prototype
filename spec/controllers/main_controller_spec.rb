require 'spec_helper'

describe MainController do
  describe '#home' do
    before :each do
      get :home
    end

    it { should render_template('home') }
  end
end
