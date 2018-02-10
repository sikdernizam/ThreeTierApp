using System;
using Oracle.DataAccess.Client;
using System.Configuration;
using System.Data;
using System.Runtime.Remoting.Messaging;
using BusinessObject;


namespace DataAccess
{
    public class UserDA
    {
        //String _conStr = ConfigurationManager.ConnectionStrings["OracleConnection"].ConnectionString.ToString();
        public OracleConnection _con =
            new OracleConnection(ConfigurationManager.ConnectionStrings["OracleConnection"].ConnectionString.ToString());

        #region UserAdd

        public int AddUser(UserBO objDO)
        {
            try
            {
                using (OracleCommand cmd = new OracleCommand("fsp_insert_user", _con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@pname", objDO.Name);
                    cmd.Parameters.Add("@paddress", objDO.Address);
                    cmd.Parameters.Add("@pemail", objDO.Email);
                    cmd.Parameters.Add("@mob", objDO.Mobile);

                    _con.Open();
                    int result = cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    return result;
                }
            }
            catch (Exception ex)
            {
                string error = ex.Message;
            }
        }

        #endregion
    }
}
