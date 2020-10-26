# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')
  emoticons.each_with_object({}) do |(key,value), new_emoticons|
    #binding.pry
    new_emoticons[key] = {}
    #binding.pry
    new_emoticons[key][:english] = value[0]
    new_emoticons[key][:japanese]= value[1]

    #binding.pry

    #binding.pry
  end
#binding.pry
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
