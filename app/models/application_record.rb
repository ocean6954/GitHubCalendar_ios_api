class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  belongs_to :week
end
