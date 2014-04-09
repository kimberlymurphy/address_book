class Person < ActiveRecord::Base
  validates :first_name, :presence => true #, on: :update
  validates :last_name, presence: {message: "You don't have a last name?"}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  validates :state, inclusion: {
    :in => %w(AK KY NY AL LA OH AR MA OK AZ MD OR CA  ME PA CO MI RI CT MN SC DC MO SD DE MS TN
 +FL MT TX GA NC UT HI ND VA IA NE VT ID NH WA IL NJ WI IN NM WV KS NV WY),
    :message => "is not a valid state" }
  validates :zip_code, presence: true, length: { minimum: 5 },
            format: { with: /\d{5}/ }
  VALID_PHONE_REGEX = /\d{3}[.-]\d{3}[.-]\d{4}/
  validates :phone, presence: true,
            format: {
              with: VALID_PHONE_REGEX,
              message: "number structure is xxx-xxx-xxxx or xxx.xxx.xxxx"
            }
end
