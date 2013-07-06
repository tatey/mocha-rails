module Mocha
  module Rails
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      class_option :mount, :aliases => '-m', :type => :string, :default => '/specs', :desc => 'Mounts engine at <MOUNT>'

      desc 'Installs mocha-rails into your application'
      def install
        route "mount Mocha::Rails::Engine => '#{options[:mount]}' unless Rails.env.production?"

        test_dir = Dir.exists?(::Rails.root.join 'spec') ? 'spec' : 'test'
        copy_file 'suite.js', "#{test_dir}/javascripts/suite.js"
      end
    end
  end
end
