# require modules here
require 'yaml'
require 'pry'
require 'pp'

def load_library(emoticon)
  list = YAML.load_file(emoticon)
  hash = {}
    hash[:get_meaning] = {}
    hash[:get_emoticon] = {}
   
  list.each do |get_meaning, get_emoticon|
    hash[:get_meaning][get_emoticon[1]] = get_meaning
    hash[:get_emoticon][get_emoticon[0]] = get_emoticon[1]
  end 
  hash
end

def get_japanese_emoticon (emoticon, value)
  binding.pry
  library = load_library(emoticon)
    if labrary[:get_emoticon]include? (value) 
      labrary[:get_emoticon][value]
    else
      "Sorry, that emoticon was not found"
    end
end


def get_english_meaning
  # code goes here
end