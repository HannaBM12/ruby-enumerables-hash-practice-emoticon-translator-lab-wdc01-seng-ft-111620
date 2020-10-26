# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  # code goes here
  emoticons = YAML.load_file(file)
  emoticons.each_with_object({}) do |(key,value), new_emoticons|
    #binding.pry
    new_emoticons[key] = {}
    #binding.pry
    new_emoticons[key][:english] = value[0]
    new_emoticons[key][:japanese]= value[1]

    #binding.pry
  end
end

def get_japanese_emoticon(file, symbol)
  # code goes here
  load_library(file)
  binding.pry
end

def get_english_meaning
  # code goes here
end
