ActiveAdmin.register Order do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :status, :pst_rate, :gst_rate, :hst_rate,
                :order_date, :sub_total, :total,
                :customer_id, order_item_attributes:
                    %i[tour_id order_id price quantity]

  form do |f|
    f.semantic_errors *f.object.errors.keys

    # need to pull taxes from db
    f.inputs 'Order' do
      f.input :order_date
      f.input :customer
      f.input :pst_rate
      f.input :gst_rate
      f.input :hst_rate
      f.input :status
      f.input :sub_total
      f.input :total

      f.has_many :order_items, allow_destroy: true do |n_f|
        n_f.input :tour
      end
    end
    f.actions
  end
end
