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
    new_emoticons[key][:english]
    new_emoticons[key][:japanese]
    value.each do |ele|
      new_emoticons[key][:english].push(ele)
        binding.pry
      new_emoticons[key][:english].push(ele)
    end


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
