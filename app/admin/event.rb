ActiveAdmin.register Event do

  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :location
      f.input :date
      f.input :start_time
      f.input :end_time
      f.input :mentors, :as => :check_boxes
      f.input :semester, :as => :select
    end
    f.actions
  end

  index do
    column :name
    column :location
    column :date
    column :start_time
    column :end_time
    column :mentors do |m|
     (m.mentors.map { |e| e.name }).join(', ')
   end
   column :semester
   actions
 end

 show do
  attributes_table do
    row :name
    row :location
    row :date
    row :start_time
    row :end_time
    row :mentors do |m|
      (m.mentors.map { |e| e.name }).join(', ')
    end  
    row :semester
  end
end
end
