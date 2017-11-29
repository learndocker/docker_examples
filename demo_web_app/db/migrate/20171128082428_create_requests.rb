class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.timestamp :timestamp
      t.string :ip
      t.string :host
      t.string :path
    end
  end
end
