require 'spec_helper'

describe Account do
  context 'associations' do
    it{ should belong_to(:user)}
  end
  
  context 'field type' do
    it 'should be a kind of Money' do
      subject.funds.should be_a(Money)
    end
  end
end
