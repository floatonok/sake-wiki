class SakeController < ApplicationController
  def index
  end

  def show
    @info = params[:id]

    daiginjo_images = Image.new('daiginjo.jpg', 'daiginjo2.jpg', 'daiginjo3.jpg')

    daiginjo_headings = Heading.new(
    'DAIGINJO & JUNMAI DAIGINJO',
    'A minimum of 50% of the outer rice layers must be polished away',
    "Daiginjo is often the most prized bottling of the sake brewery, representing the height of the brewmaster's ability.")

    daiginjo_texts = Text.new(
    "Daiginjo (大吟醸) is super premium sake (hence the “dai,” or “big”) and is regarded by many as the pinnacle of the brewers art. It requires precise brewing methods and uses rice that has been polished all the way down to at least 50% (meaning the percentage number you’ll see on the bottle is 50% or lower) – at least 50% has been polished off. Daiginjo sakes are often relatively pricey and are usually served chilled to bring out their nice light, complex flavors and aromas. Junmai daiginjo is simply daiginjo sake that also fits the “pure rice” (no additives) definition.",

    "Because the breweries are using their best rice at the highest polishing rate, extra care is taken in the other steps of production as well. Daiginjos are often brewed in smaller tanks than Junmais and Ginjos, to better regulate the temperature and speed of fermentation. The koji is also painstakingly made; some breweries even have a separate room specifically for making daiginjo koji. Most often, the sake is pressed in an assakuki, a contraption resembling an accordion. The sake is placed in mesh bags that sit in the folds of the “accordion”  so that when pressed together, the liquid runs through a pipe located on one end of the device. This is the most aggressive method of pressing, and yields the greatest quantity of sake.",

    "A more delicate method of pressing is called funashibori. The sake is placed in mesh bags and laid down inside a long box, called a “fune” for its boat-like appearance. The lid of the box is gently pressed down to release the sake. This results in a considerably smaller yield compared to the assakuki method, but the end product is a more refined sake with less flavor from the lees. There is a third method, which is occasionally used for the finest daiginjos: shizuku. Shizuku, which literally means “droplets,” refers to a “free run,” pressing, or lack of pressing altogether. The sake is placed in mesh bags and suspended from poles within tanks. Only the liquid that drips out is bottled. The finished product is ethereal and seamless, although usually with a price tag to match.",

    ["大","吟","醸"])

    ginjo_images = Image.new('ginjo.jpg', 'ginjo2.jpg', 'ginjo3.jpg')

    ginjo_headings = Heading.new(
    'GINJO & JUNMAI GINJO',
    'At least 40% of the outer rice layers polished away.',
    "Ginjos tend to be crowd pleasers: they are smooth, easy drinking, and have great balance.")

    ginjo_texts = Text.new(
    "Ginjo (吟醸) is premium sake that uses rice that has been polished to at least 60% (meaning the percentage number you’ll see on the bottle is 60% or lower, i.e., 51-60%) – at least 40% has been polished off. It is brewed using special yeast and fermenting techniques. The result is often a light, fruity and complex flavor that is usually quite fragrant. It’s easy to drink and often (though certainly not as a rule) served chilled. Junmai ginjo is simply ginjo sake that also fits the “pure rice” (no additives) definition.",

    "Ginjo sakes are relatively new in the sake world—they weren't widely produced until about 50 years ago. At that time, sake had an image of being sweet and flabby. Sake brewers gradually began polishing the rice further as an experiment, and found the result to be lighter and drier sakes that were extremely enjoyable. Ginjo sakes have a minimum of 60% seimaibuai, or percentage of rice remaining after polishing. Because this is only a minimum, many brewers polish their rice for ginjo sakes past 60% to achieve a smoother, cleaner style. Today, even though the consumption of sake may be on the decline in Japan, the consumption of ginjo grade sakes is still increasing.",

    "Even though the difference between junmai and ginjo can be as little as a 10% polishing change, the change in aroma and flavor can be quite significant. Junmais have subdued aromas and richer body; ginjos, on the other hand, have more expressive aromas of fruit and floral notes, with a softer finish. Ginjos tend to be crowd pleasers: they are smooth, easy drinking, and have great balance. Ginjos also are often a great value; fantastic ginjo sake can be found in the $50-70 range on wine lists or $20-35 retail. Some well priced, excellent-quality ginjos to look out for include Nanbu Bijin Junmai Ginjo, Jokigen Junmai Ginjo*, and Dassai 50 Junmai Ginjo.",

    ["吟","醸"])

    honjozo_images = Image.new('honjozo.jpg', 'honjozo2.jpg', 'honjozo3.jpg')

    honjozo_headings = Heading.new(
    'HONJOZO',
    ' To qualify as honjozo, the weight of the added alcohol must be no more than 10% of the weight of the sake rice used in brewing.',
    "Honjozos are much lighter on the palate")

    honjozo_texts = Text.new(
    "Honjozo (本醸造) also uses rice that has been polished to at least 70% (as with junmai above). However, honjozo by definition contains a small amount of distilled brewers alcohol, which is added to smooth out the flavor and aroma of the sake. Honjozo sakes are often light and easy to drink, and can be enjoyed both warm or chilled. Many sake drinkers hear the definition and assume that honjozo is a sweeter fortified product with alcohol added during fermentation, or that it's necessarily higher in alcohol than junmai, or that it's inferior to junmai, because alcohol is added. All three of these theories are false.",

    "Within the world of premium sake, any labels that do not explicitly state “junmai” on them can be assumed “honjozo”. Honjozo is sake that has a small amount of brewer's alcohol added to the fermenting sake mash. Honjozo sake is not inherently sweet—the alcohol is generally added after the yeast has completed fermenting the sugar in the sake. Although makers of bulk sake do often add large quantities of alcohol to increase overall volume, honjozo sake producers don't add much.",

    "In a blind tasting, you probably couldn't correctly tell a junmai sake from a honjozo every time. The flavor is more more dependent on what rice and yeast were used than on whether a sake is a junmai or honjozo. But honjozos do have certain qualities that stand out. While junmai sakes have a fuller texture, honjozos are much lighter on the palate, so they're easier to drink throughout an entire meal, or an entire evening. Honjozos, on the other hand, are generally less complex and maintain the same aroma/flavor profile as the glass sits. For this reason, honjozos are often good candidates for gentle warming, as they do not have the subtleties of junmai that can get lost with the slight raise in temperature.",

    ["本","醸","造"])

    serving_images = Image.new('serving.jpg', 'serving2.jpg', 'serving3.jpg')

    serving_headings = Heading.new(
    'SERVING SAKE',
    'Top quality sake is not served hot, as heat causes loss of flavour and aroma.',
    "As a show of generosity, the server may put a glass inside the masu or put the masu on a saucer and pour until sake overflows.")

    serving_texts = Text.new(
    "In Japan, sake is served chilled (reishu 冷酒), at room temperature (jōon 常温 or hiya 冷や), or heated (atsukan 熱燗), depending on the preference of the drinker, the quality of the sake, and the season. Typically, hot sake is a winter drink, and high-grade sake is not drunk hot, because the flavors and aromas will be lost. This masking of flavor is the reason that low-quality and old sake is often served hot. There are gradations of temperature both for chilling and heating, about every 5 degrees, with hot sake generally served around 50 °C (122 °F), and chilled sake around 10 °C (50 °F), like white wine. Hot sake that has cooled (kanzamashi 燗冷まし) may be reheated.",

    "Sake is traditionally drunk from small cups called choko or o-choko (お猪口) and poured into the choko from ceramic flasks called tokkuri. This is very common for hot sake, where the flask is heated in hot water and the small cups ensure that the sake does not get cold in the cup, but may also be used for chilled sake. Traditionally one does not pour one’s own drink, which is known as tejaku (手酌), but instead members of a party pour for each other, which is known as shaku (酌). This has relaxed in recent years, but is generally observed on more formal occasions, such as business meals, and is still often observed for the first drink.",

    "Another traditional cup is the masu, a box usually made of hinoki or sugi, which was originally used for measuring rice. The masu holds exactly 180 ml, so the sake is served by filling the masu to the brim; this is done for chilled or room temperature sake. In some Japanese restaurants, as a show of generosity, the server may put a glass inside the masu or put the masu on a saucer and pour until sake overflows and fills both containers.",

    ["酒","器"])

    birth_of_sake_images = Image.new('', 'birth_of_sake2.jpg', 'birth_of_sake3.jpg')

    birth_of_sake_headings = Heading.new(
    'THE BIRTH OF SAKÉ',
    "“If you were to give saké a personality, it’s a very subtle thing. It’s a beverage that supports the meal and that’s not overly sensationalized.”",
    "“When people enjoy our sake and say it’s delicious, I truly feel grateful.”")

    birth_of_sake_texts = Text.new(
    "In a world where most mass produced goods are heavily automated, a small group of manual laborers must brave unusual working conditions to preserve a 2000-year-old tradition that we have come to know as saké. The Birth of Saké is a cinematic documentary that reveals the story of passionate saké-makers and what it takes to make world-class saké at Yoshida Brewery, a 144-year-old family-owned small brewery in northern Japan.",

    "The workers at Yoshida Brewery are an eclectic cast of characters, ranging from 20 to 70 years old. As a vital part of this cast that must live and work for a six-month period through the brutal winter, charismatic veteran brewmaster Yamamoto (65) and the brewery’s sixth-generation heir, Yasuyuki Yoshida (27), are keepers of this tradition, and are the main characters who bring the narrative forward. Currently, stiff competition and the eventual retirement of experienced workers intensify the pressure of preserving quality of taste, tradition and brand reputation for Yoshida Brewery. Surrounded by 1,000 competitors, Yoshida must surface as a worthy contender in a market overrun by choices. While the narrative follows the brewery’s energy and ambition to survive, the characters remain central to the storytelling. As artisans who must dedicate their whole lives to the making of this world-class saké, their private sacrifices are often sizable and unseen.",

    "Director Erik Shirai, who was a cinematographer for The Travel Channel’s ‘No Reservations’ with Anthony Bourdain, and who recently completed ‘Eye What you Eat’ a new web series for the Scripps Network, began work on the film in August of 2012, when he and producer Masako Tsumura visited the brewery for the first time. After a long and exhaustive permission process, Tedorigawa’s owners allowed full access to Erik and Masako to film at the brewery. They returned in January 2013 to live amongst the workers at the brewery and capture the intense and relatively unknown process (even within in Japan), of traditional saké making. Living at the brewery allowed them a rare window into a cast of vibrant and dynamic characters and fueled their interest in painting a deeper portrait of the people behind the product.",

    ["手","取","川"])

    if @info.to_i == 1
      @main_image = daiginjo_images.main
      @image_1 = daiginjo_images.image_1
      @image_2 = daiginjo_images.image_2
      @title = daiginjo_headings.title
      @heading_1 = daiginjo_headings.heading_1
      @heading_2 = daiginjo_headings.heading_2
      @overview = daiginjo_texts.overview
      @text_1 = daiginjo_texts.text_1
      @text_2 = daiginjo_texts.text_2
      @characters = daiginjo_texts.characters

    elsif @info.to_i == 2
      @main_image = ginjo_images.main
      @image_1 = ginjo_images.image_1
      @image_2 = ginjo_images.image_2
      @title = ginjo_headings.title
      @heading_1 = ginjo_headings.heading_1
      @heading_2 = ginjo_headings.heading_2
      @overview = ginjo_texts.overview
      @text_1 = ginjo_texts.text_1
      @text_2 = ginjo_texts.text_2
      @characters = ginjo_texts.characters

    elsif @info.to_i == 3
      @main_image = honjozo_images.main
      @image_1 = honjozo_images.image_1
      @image_2 = honjozo_images.image_2
      @title = honjozo_headings.title
      @heading_1 = honjozo_headings.heading_1
      @heading_2 = honjozo_headings.heading_2
      @overview = honjozo_texts.overview
      @text_1 = honjozo_texts.text_1
      @text_2 = honjozo_texts.text_2
      @characters = honjozo_texts.characters

    elsif @info == 'serving'
      @main_image = serving_images.main
      @image_1 = serving_images.image_1
      @image_2 = serving_images.image_2
      @title = serving_headings.title
      @heading_1 = serving_headings.heading_1
      @heading_2 = serving_headings.heading_2
      @overview = serving_texts.overview
      @text_1 = serving_texts.text_1
      @text_2 = serving_texts.text_2
      @characters = serving_texts.characters

    elsif @info == 'birth_of_sake'
      @main_image = birth_of_sake_images.main
      @image_1 = birth_of_sake_images.image_1
      @image_2 = birth_of_sake_images.image_2
      @title = birth_of_sake_headings.title
      @heading_1 = birth_of_sake_headings.heading_1
      @heading_2 = birth_of_sake_headings.heading_2
      @overview = birth_of_sake_texts.overview
      @text_1 = birth_of_sake_texts.text_1
      @text_2 = birth_of_sake_texts.text_2
      @characters = birth_of_sake_texts.characters
    end

  end
end

class Image
  attr_accessor :main, :image_1, :image_2
  def initialize(main, img_1, img_2)
    @main, @image_1, @image_2 = main, img_1, img_2
  end
end

class Heading
  attr_accessor :title, :heading_1, :heading_2
  def initialize(title, head_1, head_2)
    @title, @heading_1, @heading_2 = title, head_1, head_2
  end
end

class Text
  attr_accessor :overview, :text_1, :text_2, :characters
  def initialize(overview, txt_1, txt_2, characters)
    @overview, @text_1, @text_2, @characters = overview, txt_1, txt_2, characters
  end
end
