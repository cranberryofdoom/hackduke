ActiveAdmin.register Semester do

  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :season, :as => :select, :collection => ["Fall", "Spring"]
      f.input :year, :as => :date_select, :discard_day => true, :discard_month => true
    end
    f.actions
  end
end
