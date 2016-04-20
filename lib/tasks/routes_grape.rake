namespace :routes do
  desc 'API Routes'
  task grape: :environment do
    # ObjectSpace.each_object(Class).select { |klass| klass < Grape::API }.map(&:routes).flatten.each do |api|
    #   puts "     #{api.request_method} #{api.path} # #{api.description}"
    # end
    routes = ObjectSpace.each_object(Class).select { |klass| klass < Grape::API }.map(&:routes).flatten
    routes.map! do |route|
      [route.request_method, route.path, route.description]
    end
    routes.uniq.each { |a| puts "%\ 6s %50s # %s" % a }
  end
end
