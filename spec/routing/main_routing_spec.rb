require "spec_helper"

describe MainController do
  describe "routing" do
    it 'should route to #home' do
      get('/').should route_to('main#home')
    end
  end
end