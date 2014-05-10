ActiveAdmin.register Organizer do
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
      f.input :admin
      f.input :semesters, :as => :check_boxes
    end
    f.actions
  end
  
  index do
    column :name
    column :image_url
    column :admin
    column :semesters do |s|
      ss = s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }
      ss.join(', ')
    end
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :image_url
      row :admin
      row :semesters do |s|
        ss = s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }
        ss.join(', ')
      end    
    end
  end
end
