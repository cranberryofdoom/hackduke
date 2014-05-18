ActiveAdmin.register Mentor do

  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :image_url, :hint => "Use 'first_name'.png and make sure the image file is in the public/mentors folder"
      f.input :partner, :hint => "Choose a partner or a sponsor"
      f.input :sponsor, :hint => "Choose a sponsor or a partner"
      f.input :semesters, :as => :check_boxes
    end
    f.inputs "Bio &nbsp;&nbsp;(use <a href='http://daringfireball.net/projects/markdown/syntax'>markdown</a>)" do
      f.input :markdown_content, :label => "Bio", :as => :pagedown_text
    end  
    f.actions
  end

  index do
    column :name
    column :image_url
    column :markdown_content
    column :sponsor
    column :partner
    column :semesters do |s|
      (s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }).join(', ')
    end
    default_actions
  end

  show do
    attributes_table do
      row :name
      row :image_url  
      row :markdown_content
      row :sponsor
      row :partner
      row :semesters do |s|
        (s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }).join(', ')
      end
    end
  end
end
