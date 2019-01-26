require 'platform-api'

namespace :heroku do
  desc 'restarts all the heroku dynos so we can control when they restart'
  task :restart do
    heroku = PlatformAPI.connect_oauth(ENV['HEROKU_OAUTH_TOKEN'])
    heroku.dyno.restart_all(ENV['HEROKU_APP_NAME'])
  end
end


