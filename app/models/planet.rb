class Planet < ActiveRecord::Base
  validates :name, presence: true
  validates :distance, presence: true  
end
