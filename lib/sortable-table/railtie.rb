module SortableTable
  class Railtie < Rails::Railtie
    initializer 'sortable-table' do |app|
      ActiveSupport::on_load(:action_view) do
        ActionView::Base.send :include, SortableTable::ActionViewExtension
      end
    end
  end
end