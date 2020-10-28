class CreateSchoolclasses < ActiveRecord::Migration[5.0]
  def change
    create_table :schoolclasses do |t|
      t.string :titleroom_number
      t.string :integer
    end
  end
end
