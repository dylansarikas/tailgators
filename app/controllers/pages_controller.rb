class PagesController < ApplicationController
  def index
    @gb = Stadium.find_by(name: 'Lambeau Field')
    @chi = Stadium.find_by(name: 'Soldier Field')
    @det = Stadium.find_by(name: 'Ford Field')
    @min = Stadium.find_by(name: 'US Bank Stadium')
    @nfcn = [@gb, @chi, @det, @min]
  end

  def features; end

  def faq; end

  def about; end
end
