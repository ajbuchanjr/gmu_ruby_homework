#An initializer that accepts url and title parameters:
  #it should set instance variables named url, title
  #it should set a read only variable named last_visited
  #A method named visit! which sets last_visited to the current time and date
    #(hint: the Time.now method returns an instance of Time)

class Bookmark < ApplicationController

  def set_url
    @url = Book.find(params[:id])
  end
  def set_title
    @title = Book.find(params[:id])
  end

end