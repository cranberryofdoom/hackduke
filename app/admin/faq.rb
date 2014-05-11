ActiveAdmin.register Faq do

  # permit all params, including nested ones
  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs do
      f.input :question
      f.input :semesters, :as => :check_boxes
    end
    f.inputs "Answer &nbsp;&nbsp;(use <a href='http://daringfireball.net/projects/markdown/syntax'>markdown</a>)" do
      f.input :markdown_content, :label => "Answer", :as => :pagedown_text
    end
    f.actions
  end

  index do
    column :question
    column :markdown_content
    column :semesters do |s|
      (s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }).join(', ')
    end
    default_actions
  end

  show do
    attributes_table do
      row :question
      row :markdown_content
      row :semesters do |s|
        (s.semesters.map { |e| ([e.season, e.year.year]).join(' ')  }).join(', ')
        
      end    
    end
  end 
end
