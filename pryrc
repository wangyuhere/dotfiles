Pry.config.editor = "vim"

if defined? Rails
  require 'rails/console/app'
  extend Rails::ConsoleMethods
end

