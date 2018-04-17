ActiveAdmin.register Rent do
  permit_params :user_id, :book_id, :from, :to

  index do
    selectable_column
    id_column
    column :user_id
    column :book_id
    column :from
    column :to
    actions
  end

  filter :user_id
  filter :book_id
  filter :from
  filter :to

  form do |f|
    f.inputs do
      f.input :user_id
      f.input :book_id
      f.input :from
      f.input :to
    end
    f.actions
  end
end
