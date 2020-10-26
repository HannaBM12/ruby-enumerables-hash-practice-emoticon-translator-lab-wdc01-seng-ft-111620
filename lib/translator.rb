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
  hash.each do |inner_key, inner_value|
    if inner_value[:japanese] == emoticon
      inner_value[:english]
      #binding.pry
    end

    #binding.pry
  end
end

def get_japanese_emoticon
  # code goes here
end
