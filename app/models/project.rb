class Project < ApplicationRecord

  has_nany :projects_users
  has_many :users, through: :project_users

end
