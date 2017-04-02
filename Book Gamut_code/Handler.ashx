<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.IO;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string isbn = context.Request.QueryString["isbn"];

        ImageModel imgmodel = new ImageModel();
        Img i = new Img();
        byte[] viewImg;
        i = imgmodel.GetBook(isbn);
        viewImg = i.Images;
        Stream strm = new MemoryStream(viewImg);
        context.Response.ContentType = "image/jpg";
        context.Response.BinaryWrite(viewImg);
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}