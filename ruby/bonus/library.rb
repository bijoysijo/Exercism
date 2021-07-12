class Library

  # Title;ISBN;Author;Published
  CATALOG_DATA = <<~DATA
    The Adventures of Tom Sawyer;9780191604928;Mark Twain;2007
    Republic;9780718198916;Plato;2012
    Programming Ruby: The Pragmatic Programmers Guide;9780974514055;David Thomas;2004
    Pride and Prejudice by Jane Austen;9781986431484;Jane Austen;2018
    To Kill a Mockingbird;9780446310789;Harper Lee;1988
    Cosmicomics;9780330319089;Italo Calvino;1969
    The Lord of the Rings;9780544003415;J. R. R. Tolkien;2012
    Lord of the Flies;9780140283334;William Golding;1999
    1984: A Novel;9780451524935;George Orwell;2009
  DATA

  BOOK_DATA = {"9780191604928" => 0, "9780718198916" => 0, "9780974514055" => 0, "9781986431484" => 0, "9780446310789" => 0, "9780330319089" => 0, "9780544003415" => 0, "9780140283334" => 0, "9780451524935" => 0}

  def data_array
    CATALOG_DATA.split(/[\n;]/)
  end

  def find_record(isbn)
    data_array.find_index(isbn)
  end

  def lookup_title(isbn)
    index = find_record(isbn)
    data_array[index - 1]
  end

  def lookup_author(isbn)
    index = find_record(isbn)
    data_array[index + 1]
  end

  def lookup_publication_year(isbn)
    index = find_record(isbn)
    data_array[index + 2]
  end

  def add_stock!(isbn, i)
    BOOK_DATA[isbn] = i
  end

  def lookup_stock(isbn)
    BOOK_DATA[isbn]
  end

  def book_in_stock?(isbn)
    BOOK_DATA[isbn] >= 1
  end

  def borrow(isbn)
    if BOOK_DATA[isbn] != 0
      BOOK_DATA[isbn] - 1
    else
      BOOK_DATA[isbn]
    end
  end

  def put_back!(isbn)
    if BOOK_DATA[isbn] == 0
      BOOK_DATA[isbn] + 1
    else
      return
    end
  end

  def books_in_stock
    BOOK_DATA.select { |k, v| v > 0 }.keys
  end

  def total_books_in_stock
    BOOK_DATA.select { |k, v| v > 0 }.count
  end
end

library = Library.new
# p library.add_stock!("9781986431484", 1)
# p library.book_in_stock?("9781986431484")
# p library.add_stock!("9780140283334", 2)
# p library.add_stock!("9780451524935", 2)
# p library.lookup_stock("9780451524935")
p library.book_in_stock?("9780451524935")
# p library.borrow("9780451524935")
# p library.put_back!("9780451524935")
# p library.books_in_stock
# p library.total_books_in_stock
