<%@ WebHandler Language="C#" Class="ghUploadFile" %>

using System;
using System.Web;
using System.IO;
using DTO;
using CTR;

public class ghUploadFile : IHttpHandler
{
            
    Log _Log = new Log();
    public void ProcessRequest(HttpContext context)
    {
        _Log.CustomWriteOnLog("RegistrarMoldura", "Entro a metodo ashx");
        try
        {
            if (context.Request.Files.Count > 0)
            {
                CtrMoldura oBLAPISol = new CtrMoldura();
                _Log.CustomWriteOnLog("RegistrarMoldura", "1");
                string ID = context.Request.QueryString["Id"].ToString();

                byte[] fileData = null;
                _Log.CustomWriteOnLog("RegistrarMoldura", " 2");
                using (var binaryReader = new BinaryReader(context.Request.Files[0].InputStream))
                {
                    fileData = binaryReader.ReadBytes(context.Request.Files[0].ContentLength);
                }
                _Log.CustomWriteOnLog("RegistrarMoldura", "3");
                _Log.CustomWriteOnLog("RegistrarMoldura", "Valor de Id a actualizar es" + ID);

                oBLAPISol.registrarImgMoldura(fileData, int.Parse(ID));
                _Log.CustomWriteOnLog("RegistrarMoldura", "4");
            }
            _Log.CustomWriteOnLog("RegistrarMoldura", "5");

        }
        catch (Exception ex)
        {
            _Log.CustomWriteOnLog("PropiedadMoldura", "Error" + ex.Message);
        }

    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}