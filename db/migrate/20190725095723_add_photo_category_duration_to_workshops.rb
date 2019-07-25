class AddPhotoCategoryDurationToWorkshops < ActiveRecord::Migration[5.2]
  def change
    add_column :workshops, :photo, :string, :default => "https://res.cloudinary.com/vvrruubb69e/image/upload/v1553290806/photo-1521017432531-fbd92d768814.jpg"
    add_column :workshops, :duration, :time
    add_column :workshops, :location, :string
    add_column :workshops, :category, :string

  end
end
