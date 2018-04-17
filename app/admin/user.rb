ActiveAdmin.register User do
  permit_params :first_name, :last_name, :email, :locale, :password,
                :password_confirmation, :provider, :uid

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :locale
    column :provider
    actions
  end

  filter :first_name
  filter :last_name
  filter :email
  filter :locale

  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :locale
      f.input :password
      f.input :password_confirmation
      f.input :provider
      f.input :uid
    end
    f.actions
  end
end
