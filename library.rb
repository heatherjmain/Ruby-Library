class Library

  attr_reader( :books )
  attr_writer( :books )

  def initialize( books )
    @books = books
  end

  def library()
    return @books
  end


  def book_info( title )

  book = []


    if title == nil
      return false

    elsif @books[:title] == title

    end
    book.push(title)
    return book
  end


end
