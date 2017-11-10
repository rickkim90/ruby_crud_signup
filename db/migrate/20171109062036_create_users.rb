class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      #글자로 이루어진 email
      t.string :email #column이름
      t.string :password

      t.timestamps null: false
    end
  end
end
