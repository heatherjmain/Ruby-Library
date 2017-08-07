require( "minitest/autorun" )
require_relative( "./library" )

# Create a class for a Library that has an
# array of books. Each book should be a hash
# with a title, which is a string, and rental
# details, which is another hash with a
# student name and due date.
class TestLibrary < MiniTest::Test

# Create a method that list all the books
# and their corresponding details.
  def test_library
    library = Library.new( books:[
      {
          title: "lord_of_the_rings",
          rental_details: {
           student_name: "Jeff",
           date: "01/12/16"
        }
      },

      {
          title: "The_Wind_in_the_Willows",
          rental_details: {
           student_name: "Susan",
           date: "11/03/17"
        }
      },

      {
          title: "The Circle",
          rental_details: {
           student_name: "Mae",
           date: "05/03/17"
        }
      }
    ])

    expected = { books: [{
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
      }
    },

    {
        title: "The_Wind_in_the_Willows",
        rental_details: {
         student_name: "Susan",
         date: "11/03/17"
      }
    },

    {
        title: "The Circle",
        rental_details: {
         student_name: "Mae",
         date: "05/03/17"
      }
    }]}
    actual = library.books
    assert_equal( expected, actual )
  end


# Create a method that takes in a book title
# and returns all of the information about
# that book.
def test_book_info
  library = Library.new( books:[
    {
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
      }
    },

    {
        title: "The_Wind_in_the_Willows",
        rental_details: {
         student_name: "Susan",
         date: "11/03/17"
      }
    },

    {
        title: "The Circle",
        rental_details: {
         student_name: "Mae",
         date: "05/03/17"
      }
    }
  ])

  expected = {
      title: "The Circle",
      rental_details: {
       student_name: "Mae",
       date: "05/03/17"
    }
  }
  actual = library.book_info( "The Circle" )
  assert_equal( expected, actual )
end








end
