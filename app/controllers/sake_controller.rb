class SakeController < ApplicationController
  def index
    @title = 'Sake Homepage'
  end

  def show
    info = params[:id]

    sake_1 = PageContent.new('DAIGINJO & JUNMAI DAIGINJO 大吟醸', 'daiginjo.jpeg', 'Daiginjo (大吟醸) is super premium sake (hence the “dai,” or “big”) and is regarded by many as the pinnacle of the brewers art. It requires precise brewing methods and uses rice that has been polished all the way down to at least 50% (meaning the percentage number you’ll see on the bottle is 50% or lower) – at least 50% has been polished off. Daiginjo sakes are often relatively pricey and are usually served chilled to bring out their nice light, complex flavors and aromas. Junmai daiginjo is simply daiginjo sake that also fits the “pure rice” (no additives) definition.')
    sake_2 = PageContent.new('GINJO & JUNMAI GINJO 吟醸', 'Image 2', 'Content 2')
    sake_3 = PageContent.new('HONJOZO 本醸造', 'Image 3', 'Content 3')
    serving_sake = PageContent.new('Serving Sake', 'serving_sake.jpg', 'Content 4')
    birth_of_sake = PageContent.new('Birth of Sake', 'Image 5', 'Content 5')

    if info.to_i == 1
      @title = sake_1.title
      @main_image = sake_1.main_image
      @content = sake_1.content

    elsif info.to_i == 2
      @title = sake_2.title
      @main_image = sake_2.main_image
      @content = sake_2.content

    elsif info.to_i == 3
      @title = sake_3.title
      @main_image = sake_3.main_image
      @content = sake_3.content

    elsif info == 'serving'
      @title = serving_sake.title
      @main_image = serving_sake.main_image
      @content = serving_sake.content

    elsif info == 'birth_of_sake'
      @title = birth_of_sake.title
      @main_image = birth_of_sake.main_image
      @content = birth_of_sake.content
    end

  end
end

class PageContent
  attr_accessor :title, :main_image, :content

  def initialize(t, img, c)
    @title, @main_image, @content = t, img, c
  end
end
