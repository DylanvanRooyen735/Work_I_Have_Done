using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
//using System.Windows.Forms;


namespace Woodrock_Animal_Rescue
{
    public class DBAccess
    {
        SqlConnectionStringBuilder connection = new SqlConnectionStringBuilder();

        #region DBAccess

        public DBAccess()
        {
            connection.DataSource = @"LAPTOP-R4JA00JT\SQLEXPRESS";
            connection.InitialCatalog = "SmartSchoolS";
            connection.IntegratedSecurity = true;
        }

        #endregion


        #region Read Data
        public DataSet ReadData(string tableName)
        {
            DataSet rawData = new DataSet();
            SqlConnection conn = new SqlConnection(connection.ToString());
            string qry = string.Format("SELECT * FROM {0}", tableName);
            try
            {
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(qry, conn);
                adapter.FillSchema(rawData, SchemaType.Source, tableName);
                adapter.Fill(rawData, tableName);
            }
            catch (Exception se)
            {
                MessageBox.Show(se.Message);
            }
            finally
            {
                conn.Close();
            }
            return rawData;
        }




        #endregion


        #region Insert Data

        public void Insert(string qry) //Insert a new client into the system. 
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(qry, conn);
                comm.ExecuteReader();
            }
            catch (SqlException se)
            {
                MessageBox.Show(se.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public void InsertAnimal(string tableName, ArrayList input)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            string qry = string.Format("INSERT INTO {0} (ID,Name,Surname,Role,Status,WorkingOn) VALUES ('{1}','{2}','{3}','{4}','{5}','{6}')",
                tableName,input[0],input[1], input[2], input[3], input[4], input[5]);
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(qry, conn);
                comm.ExecuteReader();
            }
            catch (SqlException se)
            {
                MessageBox.Show(se.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public void InsertEmployee(string tableName, ArrayList input)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            string qry = string.Format("INSERT INTO {0} (TeacherID,Name,Surname,Gender,Subject,TeacherClass) VALUES ('{1}','{2}','{3}','{4}','{5}','{6}')", tableName,input[0], input[1], input[2], input[3], input[4], input[5]);
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(qry, conn);
                comm.ExecuteReader();
            }
            catch (SqlException se)
            {
                MessageBox.Show(se.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        #endregion


        #region Update Data

        public void UpdateStudent(string tableName, ArrayList inputData)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            string qry = string.Format("UPDATE {0} SET Name='{1}', Surname='{2}', Gender='{3}',IDNumber='{4}',Balance='{5}',ParentName='{6}', ParentSurname='{7}', Product='{8}', Location='{9}' WHERE StudentID={10}",
                tableName,inputData[0],inputData[1], inputData[2], inputData[3], inputData[4], inputData[5], inputData[6], inputData[7], inputData[8], inputData[9]);
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(qry, conn);
                comm.ExecuteNonQuery();
            }
            catch (SqlException se)
            {
                MessageBox.Show(se.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public void UpdateTechnician(string tableName, ArrayList inputData)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            string qry = string.Format("UPDATE {0} SET Name='{1}', Surname='{2}', Role='{3}', Status='{4}', WorkingOn='{5}' WHERE ID={6}",
                tableName,inputData[0], inputData[1], inputData[2], inputData[3], inputData[4], inputData[5]);
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(qry, conn);
                comm.ExecuteNonQuery();
            }
            catch (SqlException se)
            {
                MessageBox.Show(se.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public void UpdateTeacher(string tableName, ArrayList inputData)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            string qry = string.Format("UPDATE {0} SET Name='{1}', Surname='{2}', Gender='{3}', Subject='{4}', TeacherClass='{5}' WHERE TeacherID={6}",
                tableName, inputData[0], inputData[1], inputData[2], inputData[3], inputData[4], inputData[5]);
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(qry, conn);
                comm.ExecuteNonQuery();
            }
            catch (SqlException se)
            {
                MessageBox.Show(se.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        #endregion


        #region Delete Data

        public void DeleteStudent(string tableName, int IDNum)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            string qry = string.Format("DELETE FROM {0} WHERE StudentID={1}", tableName, IDNum);
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(qry, conn);
                comm.ExecuteNonQuery();
            }
            catch (SqlException se)
            {
                MessageBox.Show(se.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public void DeleteTechnician(string tableName, int IDNum)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            string qry = string.Format("DELETE FROM {0} WHERE ID={1}", tableName, IDNum);
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(qry, conn);
                comm.ExecuteNonQuery();
            }
            catch (SqlException se)
            {
                MessageBox.Show(se.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public void DeleteTeacher(string tableName, int IDNum)
        {
            SqlConnection conn = new SqlConnection(connection.ToString());
            string qry = string.Format("DELETE FROM {0} WHERE TeacherID={1}", tableName, IDNum);
            try
            {
                conn.Open();
                SqlCommand comm = new SqlCommand(qry, conn);
                comm.ExecuteNonQuery();
            }
            catch (SqlException se)
            {
                MessageBox.Show(se.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        #endregion

    }
}
