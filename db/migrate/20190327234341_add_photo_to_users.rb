class AddPhotoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string,  :default => "https://res.cloudinary.com/vvrruubb69e/image/upload/v1564156660/Screenshot_2019-07-26_at_17.57.31.png"
  end
end
