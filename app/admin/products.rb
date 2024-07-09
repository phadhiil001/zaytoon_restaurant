ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :price
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  #

  permit_params :name, :description, :price, images: []

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
      # f.input :images, as: :file, input_html: { multiple: true }
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :price
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :price
      row :created_at
      row :updated_at
      # row :images do |product|
      #   ul do
      #     product.images.each do |img|
      #       li do
      #         image_tag url_for(img)
      #       end
      #     end
      #   end
      # end
    end
    active_admin_comments
  end

end
