class CreateStudentprofiles < ActiveRecord::Migration
  def self.up
    create_table :studentprofiles do |t|
      t.string :usn
      t.string :dept
      t.string :sem
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :studentprofiles
  end
end
