class CreateAlumniprofiles < ActiveRecord::Migration
  def self.up
    create_table :alumniprofiles do |t|
      t.integer :yop
      t.string :company
      t.string :jobprofile

      t.timestamps
    end
  end

  def self.down
    drop_table :alumniprofiles
  end
end
