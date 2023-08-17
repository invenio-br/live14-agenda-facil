class CreateAgendaSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :agenda_slots do |t|
      t.references :agenda, null: false, foreign_key: true
      t.date :date
      t.time :start
      t.time :finish

      t.timestamps
    end
  end
end
