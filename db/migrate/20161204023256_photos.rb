class Photos < ActiveRecord::Migration[5.0]
  def change
      create_table :photos do |t|
          t.string :name
          t.text :notes
          t.datetime :date
      end
  end
end
