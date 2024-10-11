class Contirbution < ApplicationRecord
  has_many :weeks, dependent: :destroy
end
