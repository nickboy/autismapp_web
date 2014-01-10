class Question < ActiveRecord::Base

	validates :title, :presence => true
	has_attached_file :attachment, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
