class Contribution < ApplicationRecord
  validates :date, presence: true
  validates :contribution_count, presence: true
end
