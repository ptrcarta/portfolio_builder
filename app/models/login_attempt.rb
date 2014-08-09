class LoginAttempt < ActiveRecord::Base
  belongs_to :authenticable, polymorphic: true
end
