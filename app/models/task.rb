class Task < ApplicationRecord
  belongs_to :project

  validates :title,   presence: true
  validates :aim,     presence: true
  validates :date,    presence: true
  validates :content, presence: true
end
