using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;

/// <summary>
/// Summary description for CartModel
/// </summary>
public class CartModel
{
	public String InsertCarts(Cart carts)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();
            db.Carts.Add(carts);
            db.SaveChanges();

            return carts.DatePurchased + " Was Successfully Inserted";
        }
        catch(Exception e)
        {
            return "Error:" + e;
        }
    }

    public String DeleteCarts(int id)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();
            Cart carts = db.Carts.Find(id);

            //db.Carts.Attach(carts);
            db.Carts.Remove(carts);
            db.SaveChanges();

            
            return carts.DatePurchased + " Was Successfully Deleted";
        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }
    
    public String UpdateCarts( int id, Cart carts)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();

            //Fetch
            Cart c = db.Carts.Find(id);

            c.DatePurchased = carts.DatePurchased;
            c.UserId = carts.UserId;
            c.Price = carts.Price;
            c.IsInCart = carts.IsInCart;
            c.BookId = carts.BookId;

            db.SaveChanges();
            return carts.DatePurchased + " Was Successfully Updated";

        }
        catch (Exception e)
        {
            return "Error:" + e;
        }
    }

    public List<Cart> GetOrderInCart(string userId)
    {
        c563316sp01g3Entities db = new c563316sp01g3Entities();
        List<Cart> orders = (from x in db.Carts
                             where x.UserId == userId 
                             && x.IsInCart == true
                             orderby x.DatePurchased
                             select x).ToList();

        return orders;
    }

    public int GetAmountOfOrder(string userId)
    {
        try
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();
            int amount = (int)(from x in db.Carts
                          where x.UserId == userId
                          && x.IsInCart == true
                          select x.Price).Sum();
            return amount;
        }
        catch
        {
            return 0;
        }
    }

    public void UpdateQuantity(int id, int quantity)
    {
        c563316sp01g3Entities db = new c563316sp01g3Entities();
        Cart cart = db.Carts.Find(id); 

        cart.Price =(int) quantity;

        db.SaveChanges();
    }

    public void MarkOrdersAsPaid(List<Cart> carts)
    {
        c563316sp01g3Entities db = new c563316sp01g3Entities();
        if(carts != null)
        {
            foreach( Cart cart in carts)
            {
                Cart oldcart = db.Carts.Find(cart.Id);
                oldcart.DatePurchased = DateTime.Now;
                oldcart.IsInCart = false;
            }

            db.SaveChanges();
        }
    }
}