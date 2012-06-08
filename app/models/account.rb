class Account < ActiveRecord::Base
  attr_accessible :agency, :bank, :funds_cents, :number
  
  monetize :funds_cents
  
  belongs_to :user
end
