require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @alphabet = ('A'..'Z').to_a
    @letters = []
    10.times.map { @letters << @alphabet.sample }
  end

  def score

  end


  url = 'https://wagon-dictionary.herokuapp.com/autocomplete/:stem'
  user_serialized = open(url).read
  user = JSON.parse(user_serialized)
end
