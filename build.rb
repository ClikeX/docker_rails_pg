%w[2.5 2.6 2.7 3.0].each do |version|
 puts version
 system("./build_and_push.sh #{version}")
end