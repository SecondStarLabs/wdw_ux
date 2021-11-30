# 
# 
# frozen_string_literal: true

require 'rails/generators/base'

module WdwUx
    module Generators
        class InstallGenerator < Rails::Generators::Base
            source_root ::File.expand_path('../templates', __FILE__)

            def install
                say("Starting WDW UX", :magenta)
                run "bundle install"
                say("adding wdw ux assets", :magenta)
                add_wdw_ux_assets
            end

            def add_wdw_ux_assets
                append_file ::File.expand_path('app/assets/stylesheets/application.bootstrap.scss'), "@import \"wdw_ux/wdw_ux\""
                directory ::File.expand_path(::File.join(__FILE__, 
                    '../../templates/assets/stylesheets')), 
                    "app/assets/stylesheets/wdw_ux", 
                    :recursive => true

            end
        end        
    end
end