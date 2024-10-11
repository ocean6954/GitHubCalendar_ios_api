class Week < ApplicationRecord
  belongs_to :contirbution
  has_many :days, dependent: :destroy
end
