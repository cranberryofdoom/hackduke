ActiveAdmin.register Instructor do

  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :image_url, :hint => "Use 'first-name-last-name'.png and make sure the image file is in the public/instructors folder"
      f.input :courses, :as => :check_boxes
    end
    f.actions
  end
  
  index do
    column :name
    column :image_url
    column :courses do |c|
      (c.courses.map { |e| e.title }).join(' , ')
    end
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :image_url
      row :courses do |c|
       (c.courses.map { |e| e.title }).join(' , ')
     end    
   end
 end
end
