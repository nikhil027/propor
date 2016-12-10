class TaskCategory < ActiveRecord::Base
	has_many :tasks
end
