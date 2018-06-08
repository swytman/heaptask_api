class AddUserIdToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :user_id, :integer
    Task.all.update_all(user_id: User.find_by(email: 'ravensl@mail.ru')&.id)
  end
end
