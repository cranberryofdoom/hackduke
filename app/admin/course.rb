ActiveAdmin.register Course do

  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :location
      f.input :date
      f.input :start_time
      f.input :end_time
      f.input :register_url
      f.input :instructors, :as => :check_boxes
      f.input :semester, :as => :select
    end
    f.actions
  end

  index do
    column :title
    column :location
    column :date
    column :start_time
    column :end_time
    column :register_url
    column :instructors do |i|
      (i.instructors.map { |e| e.name }).join(', ')
    end
    column :semester
    default_actions
  end

  show do
    attributes_table do
      row :title
      row :location
      row :date
      row :start_time
      row :end_time
      row :register_url
      row :instructors do |i|
        (i.instructors.map { |e| e.name }).join(', ')
      end
      row :semester
    end
  end
end
