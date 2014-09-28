class Profile < ActiveRecord::Base
  validates :first_name, :last_name, :email, :bio, presence: true
end
