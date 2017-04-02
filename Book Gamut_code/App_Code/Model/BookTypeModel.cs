using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookTypeModel
/// </summary>
public class BookTypeModel
{
	public String InsertBookType(BookType bookType)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();
            db.BookTypes.Add(bookType);
            db.SaveChanges();

            return bookType.Name + " Was Successfully Inserted";
        }
        catch(Exception e)
        {
            return "Error:" + e;
        }
    }
    public String DeleteBookType(int id)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();
            BookType bookType = db.BookTypes.Find(id);

            db.BookTypes.Attach(bookType);
            db.BookTypes.Remove(bookType);
            db.SaveChanges();

            
            return bookType.Name + " Was Successfully Deleted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }
    public String UpdateBookType( int id, BookType bookType)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();

            //Fetch
            BookType b = db.BookTypes.Find(id);

            b.Name = bookType.Name;


            db.SaveChanges();
            return bookType.Name + " Was Successfully Updated";

        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }
}