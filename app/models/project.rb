class Project < ApplicationRecord
  has_many :project_users
  has_many :users, through: :project_users
  has_many :tasks

  validates :title, presence: true
  validates :goal,  presence: true
  validates :date,  presence: true
end
