using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ImageModel
/// </summary>
public class ImageModel
{
	public ImageModel()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void InsertImage(Img img)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();
            db.Imgs.Add(img);
            db.SaveChanges();

        }
        catch (Exception e)
        {
            // "Error:" + e;
        }
    }
    public Img GetBook(string ISBN)
    {
        try
        {
            using (c563316sp01g3Entities db = new c563316sp01g3Entities())
            {
                Img imgs = db.Imgs.Find(ISBN);

//                Book book = db.Books.Find(ISBN);
                return imgs;
            }
        }
        catch
        {
            return null;
        }
    }
}