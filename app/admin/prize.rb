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
      f.input :sponsor, :as => :select
      f.input :partners, :as => :check_boxes, :collection => Partner.all.where(:partnership_type => "Non-Profit Partner")
      f.input :semester, :as => :select
      f.input :api
    end
    f.inputs "Description &nbsp;&nbsp;(use <a href='http://daringfireball.net/projects/markdown/syntax'>markdown</a>)" do
      f.input :markdown_content, :label => "Description", :as => :pagedown_text
    end
    f.actions
  end

  index do
    column :title
    column :markdown_content
    column :sponsor
    column :api
    column :partners do |p|
      (p.partners.map { |e| e.name }).join(' , ')
    end
    column :semester
    actions
  end

  show do
    attributes_table do
      row :title
      row :markdown_content
      row :sponsor
      row :api
      row :partners do |p|
        (p.partners.map { |e| e.name }).join(' , ')
      end
      row :semester
    end
  end
end
