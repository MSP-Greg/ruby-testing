# frozen_string_literal: true

t = Gem.path.join "\n                "
puts
puts "Dir.home        #{Dir.home}",
     "Gem.user_home   #{Gem.user_home}", "",
     "Gem.user_dir    #{Gem.user_dir}",
     "Gem.default_dir #{Gem.default_dir}", "",
     "Gem.paths       #{t}", ""

t = Gem.path == [Gem.user_dir, Gem.default_dir]
exit (t ? 0 : 1)
