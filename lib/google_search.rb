require 'launchy'

def check_if_ARGV_is_not_empty
  abort("Missing keywords") if ARGV.empty?
end

def write_URL
  return url = 'https://www.google.com/search?q=' + ARGV.join(' ')
end

def launch_research(url)
  puts "Seaching for #{ARGV.join(' ')}"
  Launchy.open(url)
end

def execute
  check_if_ARGV_is_not_empty
  url = write_URL
  launch_research(url)
end

execute