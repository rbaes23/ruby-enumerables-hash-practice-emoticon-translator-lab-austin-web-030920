# require modules here
require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path)
  new_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  emoticons.each do |key, value|
# "the keys inside the 'get_meaning' hash are the Japanese emoticons and points to their meaning"
# "the keys inside the 'get_emoticon' hash are the English emoticons and points to their Japanese equivalents"
    new_hash[:get_meaning][value[1]] = key
    new_hash[:get_emoticon][value[0]] = emoticons[key][1]
  end
  new_hash
end

def get_japanese_emoticon
  
end

def get_english_meaning
  # code goes here
end