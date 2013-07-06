Rails.application.routes.draw do

  mount Mocha::Rails::Engine => "/mocha-rails"
end
