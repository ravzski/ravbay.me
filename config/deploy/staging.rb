server '..',
  user: 'deploy',
  roles: %w{web app db}

set :stage, :production
set :branch, 'master'
set :rails_env, 'production'
