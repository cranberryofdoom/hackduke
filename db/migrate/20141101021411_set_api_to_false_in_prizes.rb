class SetApiToFalseInPrizes < ActiveRecord::Migration
  def change
  	Prize.all.each do |p|
  		if p.api == nil
  			p.update api: false
  		end
  	end
  end
end
