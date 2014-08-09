class Token < ActiveRecord::Base
  belongs_to :tokenable, polymorphic: true

  validates :token_string, uniqueness: true

  before_create :generate_token_string
  before_create :set_expiry_time

  private

  def set_expiry_time
    self.expires_at = Time.zone.now + 1.week
  end

  def generate_token_string
    self.token_string = loop do
      random_token  = SecureRandom.urlsafe_base64( 20, false )
      break random_token unless Token.exists?(token_string: random_token )
    end
  end

end
