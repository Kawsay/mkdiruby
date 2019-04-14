def check_if_user_gave_input
  abort('No directory name') if ARGV.empty?
end

def get_folder_name
  return forlder_name = ARGV.first
end

def create_directories(root)
  # Create root directory (ARGV)
  Dir.mkdir(root)
  puts "creating #{root}"
  # Create root/lib/
  Dir.mkdir(root + '/lib')
  # Create root/Gemfile
  File.write(
    root + '/Gemfile',
    [
      "source \"http://rubygems.org\"",
      "ruby \"2.5.1\"\n",

      "gem \"rspec\"",
      "gem \"rubocop\"",
      "gem \"pry\""
    ].join("\n")
  )

  # Git init
  system("git init")

  # Write ".env" into root/.gitignore
  File.write(root + "/.gitignore", ".env")

  # Create root/.env
  File.open(root + "/lib/.env", "w+")

  # Create root/spec/
  Dir.mkdir(root + "/spec")

  # rspec --init
  system("rspec --init")

  # Create root/README.md
  File.write(
    root + "/README.md",
    [
      "Ruby 2.5.1",
      "Generated with :purple_heart: by mkdiruby.rb"
    ].join
  )
  # Enjoy !
  system("tree")
  puts "\e[32mDirectories initialization done. Enjoy !\e[0m"
end

create_directories(get_folder_name)