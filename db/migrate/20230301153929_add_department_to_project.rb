class AddDepartmentToProject < ActiveRecord::Migration[7.0]
  def change
    add_reference :projects, :department, null: false, foreign_key: true
  end
end
