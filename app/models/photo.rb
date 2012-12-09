class Photo < ActiveRecord::Base
  attr_accessible :img_url
    validates :img_url, presence: true
end
