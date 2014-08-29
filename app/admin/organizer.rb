ActiveAdmin.register Organizer do
   
   # permit all params, including nested ones
   controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :name, :hint => "Use first name only"
      f.input :image_url, :hint => "Use 'first_name'.png and make sure the image file is in the public/organizers folder"
      f.input :admin, :hint => "Check 'yes' if adding a contributor who isn't a student"
      f.input :semesters, :as => :check_boxes
    end
    f.actions
  end
  
  index do
    column :name
    column :image_url
    column :admin
    column :semesters do |s|
      (s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }).join(', ')
    end
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :image_url
      row :admin
      row :semesters do |s|
        (s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }).join(', ')
      end    
    end
  end
end
