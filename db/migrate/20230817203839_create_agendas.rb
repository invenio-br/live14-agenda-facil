class CreateAgendas < ActiveRecord::Migration[7.0]
  def change
    create_table :agendas do |t|
      t.references :professional, null: false, foreign_key: true
      t.string :place_name

      t.timestamps
    end
  end
end
