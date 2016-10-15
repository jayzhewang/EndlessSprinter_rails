class Score < ActiveRecord::Base
  validates :name, :score, presence: :true
end
