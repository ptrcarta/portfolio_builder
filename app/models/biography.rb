class Biography < ActiveRecord::Base
  belongs_to :owner

  has_attached_file :avatar,
    { :medium => "300x300>", :thumb => "100x100>" },
    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
