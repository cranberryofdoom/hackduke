ActiveAdmin.register Prize do

# permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :sponsors, :as => :select
      f.input :semesters, :as => :select
    end
    f.actions
  end
  
  index do
    column :title
    column :description
    column :sponsor
    column :semesters do |s|
      ss = s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }
      ss.join(', ')
    end
    default_actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :sponsor
      row :semesters do |s|
        ss = s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }
        ss.join(', ')
      end    
    end
  end
end
