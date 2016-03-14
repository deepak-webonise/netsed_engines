module Mms
  module Users
    class Engine < ::Rails::Engine
      isolate_namespace Mms

      initializer "mms", before: :load_config_initializers do |app|
        config.paths["db/migrate"].expanded.each do |expanded_path|
          Rails.application.config.paths["db/migrate"] << expanded_path
        end
      end
    end
  end
end
