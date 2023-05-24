using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Windows.Forms;

namespace First_Web_App
{

    public class DataBase
    {
        string ConnectionSoucre = "Data Source = (localdb)\\MSSQLLocalDB;Initial Catalog =EMS_DB ;Integrated Security = true;";
        SqlConnection connect;
        SqlCommand command;
        SqlDataReader reader;
        SqlDataAdapter adapter;
        DataSet ds;
        object[] temp;
        List<object[]> list;
        public DataBase()
        {
            connect = new SqlConnection(ConnectionSoucre);

            connect.Open();
        }

        public object[] LoginValidate(string name,string passwd)
        {
            int x = 0;
            command = new SqlCommand("LoginDetails", connect);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("user", name);
            command.Parameters.AddWithValue("passwd", passwd);
            reader = command.ExecuteReader();
            int count = reader.FieldCount;
            while (reader.Read())
            {
                temp = new object[count];
                x = reader.GetValues(temp);
            }
            reader.Close();
            return temp;
        }

        public object[] EditBasicInfo(int eid)
        {
            command = new SqlCommand("GetBacicData", connect);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("eid", eid);
            reader = command.ExecuteReader();
            int count = reader.FieldCount;
            while (reader.Read())
            {
                temp = new object[count];
                int x = reader.GetValues(temp);
            }
            reader.Close();
            return temp;
        }

        public DataTable LoadEmployee(string id)
        {
            adapter = new SqlDataAdapter("select * from Emp_Leave_Info where eid ="+id, connect);
            DataTable td = new DataTable();
            adapter.Fill(td);
            return td;
        }

        public object[] ShowSalaryResult(int id)
        {
            command = new SqlCommand("SearchSalary", connect);
            command.CommandType = CommandType.StoredProcedure;

            command.Parameters.AddWithValue("@eid", id);
            reader = command.ExecuteReader();
            int count = reader.FieldCount;

            while (reader.Read())
            {
                temp = new object[count];
                int x = reader.GetValues(temp);

            }
            reader.Close();
            return temp;
        }

        public int GetLeaveDays(int eid)
        {
            int days = 0;
            try
            {
                command = new SqlCommand("GetLeaveDate", connect);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("eid", eid);
                reader = command.ExecuteReader();
                int count = reader.FieldCount;
                while (reader.Read())
                {
                    temp = new object[count];
                    int x = reader.GetValues(temp);
                    DateTime from = (DateTime)temp[0];
                    DateTime To = (DateTime)temp[1];
                    TimeSpan Diff = To.Subtract(from);
                    days += Diff.Days;
                }
                //MessageBox.Show(temp[0].ToString() + "" + temp[1].ToString());
                //MessageBox.Show(days.ToString());
                reader.Close();
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message);
            }
            return days;
        }

    }
}