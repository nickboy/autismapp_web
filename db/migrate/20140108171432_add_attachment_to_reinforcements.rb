class AddAttachmentToReinforcements < ActiveRecord::Migration
	def self.up
		add_column :reinforcements, :attachment_file_name, :string
		add_column :reinforcements, :attachment_content_type, :string
		add_column :reinforcements, :attachment_file_size, :integer
		add_column :reinforcements, :attachment_updated_at, :datetime
	end

	def self.down
		remove_column :reinforcements, :attachment_file_size
		remove_column :reinforcements, :attachment_content_type
		remove_column :reinforcements, :attachment_file_name
		remove_column :reinforcements, :attachment_updated_at
	end
end
