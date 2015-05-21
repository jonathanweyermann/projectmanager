class Project < ActiveRecord::Base
  belongs_to :context
  has_many :tasks
end
