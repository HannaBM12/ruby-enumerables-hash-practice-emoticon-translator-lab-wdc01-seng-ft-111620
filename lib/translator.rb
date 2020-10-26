# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')
  emoticons.each_with_object({}) do |(key,value),name|
    name[key] = {}
    binding.pry
  end

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
