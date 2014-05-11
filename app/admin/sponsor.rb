ActiveAdmin.register Sponsor do

  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :image_url
      f.input :link_url
      f.input :semesters, :as => :check_boxes
    end
    f.actions
  end
  
  index do
    column :name
    column :image_url
    column :link_url
    column :semesters do |s|
      (s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }).join(', ')
    end
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :image_url
      row :link_url
      row :semesters do |s|
        (s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }).join(', ')
      end    
    end
  end
end
