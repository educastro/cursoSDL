class Task < ActiveRecord::Base
	def markTheTaskAsDone
		self.isDone = true
		self.save
	end

	def isDone?
		return self.isDone
	end

	def markTheTaskAsUndone
		self.isDone = false
		self.save
	end

end
