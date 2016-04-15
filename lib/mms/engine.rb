module Mms
  # Engine class for mms
  class Engine < ::Rails::Engine
    isolate_namespace Mms

    initializer 'mms', before: :load_config_initializers do
      Rails.application.routes.append do
        mount Mms::Engine => '/'
      end
      config.paths['db/migrate'].expanded.each do |expanded_path|
        Rails.application.config.paths['db/migrate'] << expanded_path
      end

      Rails.application.config.assets.precompile += %w(
        mms/data_tables.css mms/data_tables.js)
    end
  end
end
