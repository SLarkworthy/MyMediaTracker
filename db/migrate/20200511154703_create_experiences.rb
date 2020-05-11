class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.text :notes
      t.integer :rating
      t.integer :user_id
      t.integer :medium_id

      t.timestamps
    end
  end
end
