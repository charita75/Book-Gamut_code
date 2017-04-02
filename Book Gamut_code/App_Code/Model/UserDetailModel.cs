using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;
namespace Models
{
    public class UserDetailModel
    {
        public UserDetail GetUserInformation(string guId)
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();
            var info = (from x in db.UserDetails
                        where x.GUID == guId
                        select x).FirstOrDefault();
            return info;
        }

        public void InsertUserDetail(UserDetail userDetail)
        {
            c563316sp01g3Entities db = new c563316sp01g3Entities();
            db.UserDetails.Add(userDetail);
            db.SaveChanges();
        }
        public string updateUserDetail(string email,UserDetail userDetails)
        {
            try
            {
                c563316sp01g3Entities db = new c563316sp01g3Entities();

                UserDetail user = db.UserDetails.Find(email);

                user.Address = userDetails.Address;
                user.FirstName = userDetails.FirstName;
                user.LastName = userDetails.LastName;
                user.PostalCode = userDetails.PostalCode;

                db.SaveChanges();
                return userDetails.FirstName +"'s Details Was Successfully Updated";
            }/*
                
                //Fetch
                Cart c = db.Carts.Find(id);

                c.DatePurchased = carts.DatePurchased;
                c.UserId = carts.UserId;
                c.Price = carts.Price;
                c.IsInCart = carts.IsInCart;
                c.BookId = carts.BookId;

                db.SaveChanges();
                return carts.DatePurchased + " Was Successfully Updated";
            
            }*/
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }
}