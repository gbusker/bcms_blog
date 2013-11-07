
namespace :db do
  
  namespace :seed do

    desc "[BCMS_Blog] Load the seed data for the blog tables and the content type tables in the cms"
    task :bcms_blog => :environment do
      load File.join("db", "bcms_blog.seeds.rb")
    end
    
  end

end	
