class StaticController < ApplicationController
  def about
  end

  def faq
    faq1 = Faq.new('What is the alcohol content of sake?', 'Sake is generally between 15% and 17% alcohol.')
    faq2 = Faq.new('What is koji?', 'Koji is steamed rice onto which koji-kin (which means koji mold) has been cultivated. This mold is known in English as Aspergillus Oryzae. It is used in sake brewing to break down the starch molecules into sugar molecules that can be used as food by the yeast cells. Since rice is milled, there is no husk and therefore no enzymes, so malting (as in beer brewing) is not possible. Koji provides those enzymes to create the sugars for fermentation. This cultivation of koji-kin mold onto steamed rice to create koji itself is the heart of the sake brewing process.')
    faq3 = Faq.new('How long does it take to brew sake?', 'Basically about a month. It can be a bit longer for ginjo-shu, including all the steps. Also, this does not include the (usually) six-month period sake is "aged" before release.')

    @faqs = [faq1, faq2, faq3]
  end
end

class Faq
  attr_accessor :question, :answer
  def initialize(q, a)
    @question, @answer = q, a
  end
end
