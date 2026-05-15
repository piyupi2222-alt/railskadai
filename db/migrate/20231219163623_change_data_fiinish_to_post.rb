class ChangeDataFinishToPost < ActiveRecord::Migration[6.1]
  def change
    change_column :posts,:finish, :date
  end
end
