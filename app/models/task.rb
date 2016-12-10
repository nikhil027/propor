class Task < ActiveRecord::Base
	
	belongs_to :task_type
	belongs_to :task_category
	belongs_to :userdetail
	belongs_to :property

	#validates_presence_of :title,:description,:task_type,:task_category,:property_id,:user_id,:due_date,:status,:priority
	#validate :check_due_date
	#validate :check_status

	private

	def check_due_date
		if self.due_date <= Date.today
			errors.add(:due_date, "Should be greater than today")
		end
	end

	def check_status
		if !(self.status =="New")
			errors.add(:status, "Should be new")
		end
	end
end
