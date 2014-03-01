class City < ActiveRecord::Base
  validates :elevation, numericality: {
    :greater_than_or_equal_to => 3315,
    #:if => lambda { |city| city.state == "CO"},
    :if => 'is_colorado?',
    :message => "is too low, lowest point in CO is 3315 feet."
  }

  def is_colorado?
    state == 'CO'
  end
end
