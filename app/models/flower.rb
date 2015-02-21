class Flower < ActiveRecord::Base
    belongs_to :bagh
    validates :content, length: { maximum: 140 }
end
