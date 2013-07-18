class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :organizer_name
      t.string :organizer_email
      t.string :title
      t.date :date
    end
  end
end
