ActiveAdmin.register Medium do

  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :link_url
      f.input :media_type, :as => :select, :collection => ["Gallery", "Article", "Video"]
      f.input :iframe_html
      f.input :semester, :as => :select
    end
    f.actions
  end

  index do
    column :title
    column :image_url
    column :semester
    column :link_url
    column :media_type
    actions
  end

  show do
    attributes_table do
      row :title
      row :image_url
      row :semester
      row :link_url
      row :media_type
    end
  end
end
