class CreateFacultyprofiles < ActiveRecord::Migration
  def self.up
    create_table :facultyprofiles do |t|
      t.string :dept
      t.string :type
      t.timestamps
    end
  end

  def self.down
    drop_table :facultyprofiles
  end
end
