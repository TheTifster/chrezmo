class AddUserRefToProphecies < ActiveRecord::Migration
  def change
    add_reference :prophecies, :user, index: true
  end
end
