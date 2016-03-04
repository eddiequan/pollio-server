class AddPoll < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title
    end
  end
end
