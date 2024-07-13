class Task < ApplicationRecord
  belongs_to :project
  has_many :comments

  validates :title,   presence: true
  validates :aim,     presence: true
  validates :date,    presence: true
  validates :content, presence: true
end
