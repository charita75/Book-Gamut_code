using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookModel
/// </summary>
public class BookModel
{
	public String InsertBook(Book book)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();
            db.Books.Add(book);
            db.SaveChanges();

            return book.Title + " Was Successfully Inserted";
        }
        catch(Exception e)
        {
            return "Error:" + e;
        }
    }
    public String DeleteBook(int id)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();
            Book book = db.Books.Find(id);

            db.Books.Attach(book);
            db.Books.Remove(book);
            db.SaveChanges();

            
            return book.Title + " Was Successfully Deleted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }
    public String UpdateBook( int id, Book book)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();

            //Fetch
            Book b = db.Books.Find(id);

            b.Title = book.Title;
            b.TypeId = book.TypeId;
            b.ISBN = book.ISBN;
            b.Image = book.Image;
            b.Price = book.Price;
            b.Publication = book.Publication;
            b.Author = book.Author;

            db.SaveChanges();
            return book.Title + " Was Successfully Updated";

        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public Book GetBook(string ISBN)
    {
        try
        {
            using (c563316sp01g3Entities db = new c563316sp01g3Entities())
            {
                Book book = db.Books.Find(ISBN);
                return book;
            }
        }
        catch
        {
            return null;
        }
    }

    public List<Book> GetAllBooks()
    {
        try
        {
            using (c563316sp01g3Entities db = new c563316sp01g3Entities())
            {
                List<Book> books = (from x in db.Books select x).ToList();
                return books;
            }
        }
        catch
        {
            return null;
        }
    }

    public List<Book> GetProductByAuthor(string author)
    {
        try
        {
            using (c563316sp01g3Entities db = new c563316sp01g3Entities())
            {
                List<Book> books = (from x in db.Books where x.Author == author select x).ToList();
                return books;
            }
        }
        catch
        {
            return null;
        }
    }
}