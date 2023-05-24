namespace Woodrock_Animal_Rescue.DAL
{
    public class DataHandler
    {
        private string connectionString;
        private SqlCommand command;
        private SqlConnection connection;
        private SqlDataAdapter adapter;
        private DataTable dataTable;

        public DataHandler(string connectionStringParam = "default"){
            connectionString = @"Data Source=LAPTOP-QGS1VE14\SQLEXPRESS;Initial Catalog=WoodRock_Data;Integrated Security=True";
            connection = new SqlConnection(this.connectionString);
        }

        public void Update(string query){
            try{
                if(connection.State != ConnectionState.Open){
                    connection.Open();
                }

                command = new SqlCommand(query, connection);
                command.ExecuteNonQuery();
            }catch (exception){
                throw;
            }finally{
                connection.Close();
            }
        }
        public string SelectSingleItem(string query, string ColumnName)
        {
            string returnValue = "";
            try
            {
                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                command = new SqlCommand(query, connection);
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    returnValue = reader[ColumnName].ToString();
                }


            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }
            return returnValue;
        }

        public void Delete(string qeury)
        {

            try
            {
                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                command = new SqlCommand(qeury, connection);
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }

        }

        public void Insert(string qeury)
        {

            try
            {
                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                command = new SqlCommand(qeury, connection);
                command.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }

        }

        public DataTable Select(string qeury)
        {
            try
            {
                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                dataTable = new DataTable();
                command = new SqlCommand(qeury, connection);

                adapter = new SqlDataAdapter(command);
                adapter.Fill(dataTable);
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                connection.Close();
            }

            return dataTable;
        }

        
    }
}