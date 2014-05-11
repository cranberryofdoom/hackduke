ActiveAdmin.register Partner do
  
  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :image_url, :hint => "Use 'partner_name'.png and make sure the image file is in the public/partners folder"
      f.input :link_url
      f.input :partnership_type, :as => :select, :collection => ["University Partner", "Non-Profit Partner"]
      f.input :semesters, :as => :check_boxes
    end
    f.actions
  end
  
  index do
    column :name
    column :image_url
    column :link_url
    column :partnership_type
    column :semesters do |s|
      (s.semesters.map { |e| ([e.season, e.year.year]).join(' ') }).join(' , ')
    end
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :image_url
      row :link_url
      row :partnership_type
      row :semesters do |s|
        (s.semesters.map { |e| ([e.season, e.year.year]).join(' ') }).join(', ')
      end    
    end
  end
end
