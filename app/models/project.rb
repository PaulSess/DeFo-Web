class Project < ApplicationRecord
  belongs_to :department
  has_many :users, through: :departments

end
