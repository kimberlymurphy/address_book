class Person < ActiveRecord::Base
  validates :first_name, :presence => true #, on: :update
  validates :last_name, presence: {message: "You don't have a last name?"}
end


#Has key syntax
#  :key => value
#  key: value
