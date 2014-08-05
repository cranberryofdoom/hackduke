ActiveAdmin.register Winner do

  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :team_members
      f.input :project
      f.input :link_url
      f.input :prize_type, :as => :select, :collection => ["Main Prize", "Sponsor Prize"]
      f.input :prize_description
      f.input :semester, :as => :select
    end
    f.actions
  end

  index do
    column :team_members
    column :project
    column :link_url
    column :prize_type
    column :semester
    default_actions
  end

  show do
    attributes_table do
      row :team_members
      row :project
      row :link_url
      row :prize_type
      row :prize_description
      row :semester
    end
  end
end
