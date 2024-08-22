class PagesController < ApplicationController
  # Nice job with this controller to route your pages
  def index
    # potentially could add all stadiums in same conference to one model and then get them all from that so you dont have to search for each one.
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
