class ChaptersController < ApplicationController
  
  def chap1
    @chapnum = 1
  	@lines = get_lines(@chapnum)
  end

  def chap2
    @chapnum = 2
    @lines = get_lines(@chapnum)
  end

  def chap3
    @chapnum = 3
    @lines = get_lines(@chapnum)
  end

  def chap4
    @chapnum = 4
  	@lines = get_lines(@chapnum)
  end

  def chap5
    @chapnum = 5
    @lines = get_lines(@chapnum)
  end

  def chap6
    @chapnum = 1
    @lines = get_lines(@chapnum)
  end

  def chap7
    @chapnum = 7
    @lines = get_lines(@chapnum)
  end

  def chap8
    @chapnum = 8
    @lines = get_lines(@chapnum)
  end

  def chap9
    @chapnum = 9
    @lines = get_lines(@chapnum)
  end

  def chap10
    @chapnum = 10
    @lines = get_lines(@chapnum)
  end

  def chap11
    @chapnum = 11
    @lines = get_lines(@chapnum)
  end

  def chap12
    @chapnum = 12
    @lines = get_lines(@chapnum)
  end

  def chap13
    @chapnum = 13
    @lines = get_lines(@chapnum)
  end

  def chap14
    @chapnum = 14
    @lines = get_lines(@chapnum)
  end

  def chap15
    @chapnum = 15
    @lines = get_lines(@chapnum)
  end

  def chap16
    @chapnum = 16
    @lines = get_lines(@chapnum)
  end

  def get_lines(chapnum)
    return Line.where(chapter: chapnum).order(:linenumber)
  end

  def chap17
    @chapnum = 17
    @lines = get_lines(@chapnum)
  end

  def chap18
    @chapnum = 18
    @lines = get_lines(@chapnum)
  end

  def chap19
    @chapnum = 19
    @lines = get_lines(@chapnum)
  end

  def chap20
    @chapnum = 20
    @lines = get_lines(@chapnum)
  end

  def chap21
    @chapnum = 21
    @lines = get_lines(@chapnum)
  end

  def chap22
    @chapnum = 22
    @lines = get_lines(@chapnum)
  end

  def chap23
    @chapnum = 23
    @lines = get_lines(@chapnum)
  end

  def chap24
    @chapnum = 24
    @lines = get_lines(@chapnum)
  end

  def chap25
    @chapnum = 25
    @lines = get_lines(@chapnum)
  end

  def chap26
    @chapnum = 26
    @lines = get_lines(@chapnum)
  end

  def chap27
    @chapnum = 27
    @lines = get_lines(@chapnum)
  end

  def chap28
    @chapnum = 28
    @lines = get_lines(@chapnum)
  end

  def chap29
    @chapnum = 29
    @lines = get_lines(@chapnum)
  end

  def chap30
    @chapnum = 30
    @lines = get_lines(@chapnum)
  end

  def chap31
    @chapnum = 31
    @lines = get_lines(@chapnum)
  end

  def chap32
    @chapnum = 32
    @lines = get_lines(@chapnum)
  end

  def chap33
    @chapnum = 33
    @lines = get_lines(@chapnum)
  end

  def chap34
    @chapnum = 34
    @lines = get_lines(@chapnum)
  end

  def index
    
  end
end
