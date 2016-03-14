module Mms
  class Engine < ::Rails::Engine
    isolate_namespace Mms

    initializer "mms", before: :load_config_initializers do |app|
      Rails.application.routes.append do
        mount Mms::Engine => "/mms"
        devise_for :users, class_name: "Mms::Users::User", module: :devise
        devise_for :admins, class_name: "Mms::Backend::Admin", module: :devise
      end
      config.paths["db/migrate"].expanded.each do |expanded_path|
        Rails.application.config.paths["db/migrate"] << expanded_path
      end
    end
  end
end
