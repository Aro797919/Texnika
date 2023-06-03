class PagesController < ApplicationController
  def home
  end

  def usluga
    @uslugis = Uslugi.all
  end

  def nas
  end

  def kontakt
  end
end
