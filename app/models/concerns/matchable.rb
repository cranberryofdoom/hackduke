module Matchable
	extend ActiveSupport::Concern

	def match?(season, year)
		semester = self.semesters.find_by(:season => season, :year => Date.new(year,01,01).to_s(:db))
		if semester != nil
			return true
		end
		return false
	end

	def match_one?(season, year)
		semester = self.semester
		if semester != nil
			return true
		end
		return false
	end

end