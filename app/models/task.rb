class Task < ActiveRecord::Base
	def isDone?
		return self.isDone
	end

	def markTheTaskAsDone
		self.isDone = true
		self.save
	end

	def markTheTaskAsUndone
		self.isDone = false
		self.save
	end

end
