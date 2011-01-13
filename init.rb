module Heroku::Command
  class Auth < Base
    def credentials_file
      prefix = (host == 'heroku.com') ? '' : "#{host}_"
      "#{home_directory}/.heroku/#{prefix}credentials"
    end
  end
end
