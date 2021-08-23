namespace :custom_command do
  desc 'Show top 5 formats in folder!'
  task :top_five, [:path] do |_, args|
    formats = {}
    formats.default = 0
    args[:path] << '/' unless args[:path].nil?
    Dir.glob("#{args[:path]}**/*") do |filename|
      file_extension = File.extname(filename)
      formats[file_extension] += 1 unless file_extension.empty?
    end
    puts 'Top 5 file formats in new_folder folder:'
    top_five_formats = formats.sort_by(&:last).last(5).reverse
    top_five_formats.each do |key, value|
      puts "#{key.ljust(9)} #{value}"
    end
  end
end
