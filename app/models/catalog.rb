class Catalog < ApplicationRecord
  has_many :ratings

  extend FriendlyId
  friendly_id :title, use: :slugged
end
