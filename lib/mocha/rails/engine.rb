module Mocha
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Mocha::Rails
    end
  end
end
