class ChangeDataStartToPost < ActiveRecord::Migration[6.1]
  def change
    change_column :posts,:start, :date
  end
end
