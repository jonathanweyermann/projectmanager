class Pomodoro < ActiveRecord::Base
  belongs_to :task
  has_many :pauses
end
