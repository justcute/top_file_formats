namespace :custom_command do
  desc 'Show top 5 formats in folder!'
  task :top_five, [:path] do |_, args|
    formats = {}
    formats.default = 0
    args[:path]<<'/' unless args[:path].nil?
    Dir.glob("#{args[:path]}**/*") do |file|
      file_ending = file.split('/')[-1]
      formats[file_ending.split('.')[-1]] += 1 if file_ending.include?('.')
    end
    puts 'Top 5 file formats in new_folder folder:'
    formats.sort_by(&:last).last(5).reverse.each do |key, value|
      puts ".#{key.ljust(9)} #{value}"
    end
  end
end
