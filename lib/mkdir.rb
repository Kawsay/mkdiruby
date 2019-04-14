def check_if_user_gave_input
  abort('mkdir : no ARGS') if ARGV.empty?
end

def get_folder_name
  return folder_name = ARGV.first
end

def create_folder(name)
  Dir.mkdir(name)
end

def execute
  create_folder(get_folder_name) if check_if_user_gave_input
end

execute
create_folder('test')