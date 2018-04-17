ActiveAdmin.register Book do
  permit_params :genre, :title, :year, :author, :image, :publisher

  index do
    selectable_column
    id_column
    column :genre
    column :title
    column :year
    column :author
    column :image
    column :publisher
    actions
  end

  filter :genre
  filter :title
  filter :year
  filter :author
  filter :publisher

  form do |f|
    f.inputs do
      f.input :genre
      f.input :title
      f.input :year
      f.input :author
      f.input :image
      f.input :publisher
    end
    f.actions
  end
end
