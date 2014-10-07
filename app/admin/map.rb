ActiveAdmin.register Map do

  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :image_url, :hint => "Use 'map-name'.png and make sure the image file is in the public/maps folder"
      f.input :semester, :as => :select
    end
    f.actions
  end

  index do
    column :name
    column :image_url
    column :semester
    actions
  end

  show do
    attributes_table do
      row :name
      row :image_url
      row :semester
    end
  end
end
