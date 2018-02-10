using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BusinessObject;
using DataAccess;


namespace BusinessLogic
{
    public class UserBL
    {
        public int SaveUser(UserBO ObjBL)
        {
            try
            {
                UserDA objUserDa = new UserDA();
                return objUserDa.AddUser(ObjBL);
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}
