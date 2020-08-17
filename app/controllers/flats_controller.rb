# require "open-uri" nao preisamos disso aqui

class FlatsController < ApplicationController
  def list
    get_flats
  end

  def single
    get_flats
    # passa por cada flat
    @flats.each do |flat|
      # se o id do flat for 205...
      if flat["id"] == params[:id].to_i
        # guarda ele na variavel @flat
        @flat = flat
      end
    end
  end

  def get_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    info = open(url).read
    @flats = JSON.parse(info)
  end
end
