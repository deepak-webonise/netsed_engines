require 'haml'
module Mms
  module Backend
    # backend engine file
    class Engine < ::Rails::Engine
      isolate_namespace Mms

      initializer 'mms', before: :load_config_initializers do
        config.paths['db/migrate'].expanded.each do |expanded_path|
          Rails.application.config.paths['db/migrate'] << expanded_path
        end
        Rails.application.config.assets.precompile += %w(
          mms/backend/dashboard.css mms/backend/dashboard.js )
      end
    end
  end
end
