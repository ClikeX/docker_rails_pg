%w[2.5 2.6 2.7 3.0.0-preview1].each do |version|
 puts version
 system("./build_and_push.sh #{version}")
end