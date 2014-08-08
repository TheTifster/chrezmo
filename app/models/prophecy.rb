class Prophecy < ActiveRecord::Base
  belongs_to :user
  validates_length_of :keyone, :minimum =>3, :maximum => 10, :allow_blank => false
  validates_length_of :keytwo, :minimum =>3, :maximum => 10, :allow_blank => false
  validates_length_of :keythree, :minimum =>3, :maximum => 10, :allow_blank => false
  validates_length_of :keyfour, :minimum =>3, :maximum => 10, :allow_blank => false
  validates_length_of :keyfive, :minimum =>3, :maximum => 10, :allow_blank => false
end
