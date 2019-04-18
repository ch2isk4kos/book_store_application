namespace :booksonrails do
    desc 'Import books'
    task :import => :environment do
        start = Time.current

        puts 'Start'

        asins.each do |asin|
            puts "import #{asin}"
            AmazonProxy.import_book asin
        end

        puts "Complete in #{Time.current - start}s"
    end

    def asins
        %w(0321944275 1937785564 1593275722 0134077709 1617291099 B00QW597D8 0692364218 1937785556 B00QK2T1SY 1941222196 B00YPU5MGS B0127BVV8Y 0321659368 B012O6PJMG B012BB0G2W 1491910852 B00NKML6JE 1491054484)
    end
end

# We have name spaced our tasks to differentiate
# them from Rails' built-in tasks, avoiding any naming conflicts.

# We also created an empty task, import, which we'll use to import the books,
# by calling it on the command line:

# $ bundle exec rake booksonrails:import

# At the end we added the ASINs extracted from Amazon into an array
