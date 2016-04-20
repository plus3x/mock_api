namespace :routes do
  desc 'API Routes'
  task grape: :environment do
    routes = ObjectSpace.each_object(Class).select { |klass| klass < Grape::API }.map(&:routes).flatten
    routes.map! do |route|
      [route.request_method, route.path, route.description]
    end
    routes.uniq.each { |a| puts "%\ 6s %50s # %s" % a }
  end
end
