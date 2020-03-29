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
  
  library = load_library(emoticon)
  
  labrary[:get_emoticon].each do |english, japanese|
    
    if english == value 
      japanese
    else
      "Sorry, that emoticon was not found"
    end
  
end


def get_english_meaning
  # code goes here
end