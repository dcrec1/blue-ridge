require 'blue_ridge'

module BlueRidge
  module Generators
    class SkeletonGenerator < Rails::Generators::Base
      def execute
        base_dir = BlueRidge.javascript_spec_dir
    
        empty_directory base_dir
        template 'application_spec.js', "#{base_dir}/application_spec.js"
        template 'spec_helper.js',      "#{base_dir}/spec_helper.js"
    
        empty_directory "#{base_dir}/fixtures"
        template 'application.html', "#{base_dir}/fixtures/application.html"
        template 'screw.css',        "#{base_dir}/fixtures/screw.css"
      end 
  
      def self.gem_root
        File.expand_path("../../../../../", __FILE__)
      end

      def self.source_root
        File.join(gem_root, 'templates', 'skeleton')
      end  
    end  
  end
end
