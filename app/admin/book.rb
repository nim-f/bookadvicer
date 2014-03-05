ActiveAdmin.register Book do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  controller do
    def permitted_params
      params.permit book: [:title, :author, :genre, :genre_2,:genre_3, :date_of_publication, :link, :summary, :buy_link, :active]
    end 
    def update
      update! do |format|
        format.html { redirect_to admin_books_path }
      end
    end
    def create
      create! do |format|
        format.html { redirect_to admin_books_path }
      end
    end 
  end
end
