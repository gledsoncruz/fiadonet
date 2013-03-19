set :application, "FiadoNet"
set :deploy_to, "/var/www/fiadonet"
set :repository,  "git@github.com:gledsoncruz/fiadonet.git"
set :scm, "git"
set :user, "gledson"
set :use_sudo, false
set :ssh_options, { :forward_agent => true }
#ssh_options :forward_agent, true
# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

#role :web, "Apache"                          # Your HTTP server, Apache/etc
role :app, "10.1.3.74"                          # This may be the same as your `Web` server
role :db,  "10.1.3.74", :primary => true # This is where Rails migrations will run
role :db,  "10.1.3.74"


# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
