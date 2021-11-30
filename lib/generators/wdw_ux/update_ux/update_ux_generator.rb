# 
# 
# frozen_string_literal: true

require 'rails/generators/base'

module WdwUx
    module Generators
        class UpdateUxGenerator < Rails::Generators::Base
            source_root ::File.expand_path('../templates', __FILE__)

            def update_ux
                say("Starting WDW UX", :magenta)
                run "bundle install"
                say("adding wdw ux assets", :magenta)
                update_wdw_ux_assets
            end

            def update_wdw_ux_assets
                directory ::File.expand_path(::File.join(__FILE__, 
                    '../../templates/assets/stylesheets')), 
                    "app/assets/stylesheets/wdw_ux", 
                    :recursive => true

            end
        end        
    end
end