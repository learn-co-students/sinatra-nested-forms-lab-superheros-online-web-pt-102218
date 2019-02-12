require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(params[:team])
        @tm = @team.members
        params[:team][:members].each do |i|
            @team.members << Member.new(i)
        end

        erb :team
    end

end
