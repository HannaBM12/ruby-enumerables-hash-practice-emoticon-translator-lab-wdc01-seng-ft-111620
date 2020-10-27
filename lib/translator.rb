# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  # code goes here
  new_emoticons = {}
  emoticons = YAML.load_file(file)
  emoticons.each do |key,value|
    new_emoticons[key] = {}
    #binding.pry
    new_emoticons[key][:english] = value[0]
    new_emoticons[key][:japanese] = value[1]
  end
  new_emoticons
end


def get_english_meaning(file, emoticon)
  # code goes here
  hash = load_library(file)
  hash.each do |key, value|
    #binding.pry
    if value[:japanese] == emoticon
      binding.pry
      return value[:english]
      binding.pry
    end
    #binding.pry
  end
#binding.pry
end


def get_japanese_emoticon
  # code goes here
end
