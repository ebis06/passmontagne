class AddAttachmentTraceToRoute < ActiveRecord::Migration
  def self.up
    add_column :routes, :trace_file_name, :string
    add_column :routes, :trace_content_type, :string
    add_column :routes, :trace_file_size, :integer
    add_column :routes, :trace_updated_at, :datetime
  end

  def self.down
    remove_column :routes, :trace_file_name
    remove_column :routes, :trace_content_type
    remove_column :routes, :trace_file_size
    remove_column :routes, :trace_updated_at
  end
end
