# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'markdown', :convert_on_start => true, :dry_run => false do  
	# See README for info on the watch statement below
	# Will not convert while :dry_run is true. Once you're happy with your watch statements remove it
	watch (/markdown\/(.+\/)*(.+\.)(md|markdown)/i) { |m| "markdown/#{m[1]}#{m[2]}#{m[3]}|html/#{m[1]}#{m[2]}html|views/layout.html.erb"}
end

guard 'bundler' do
  watch('Gemfile')
end

guard 'pow' do
  watch('.rvmrc')
  watch('config.ru')
end

guard 'livereload' do
  watch(%r{html/.+\.(html)})
  watch(%r{views/.+\.(erb)})
end

guard 'toc', :convert_on_start => true, :dry_run => false do
	# Will not convert while :dry_run is true. Once you're happy with your watch statements remove it
	watch (/html\/(.+\/)*(.+\.)(html)/i) {"html|html|index.html|views/layout.html.erb"}
end
