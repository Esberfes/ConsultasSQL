using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using System.Xml;
using System.Xml.Serialization;

namespace ConsultasSQL
{

    public partial class MainWindow : Window
    {
        private MySqlConnection con;
        private User currentUser;
        private long timeStart;
        private int rowCount = 0;
        public MainWindow()
        {
            InitializeComponent();
            DispatcherTimer timer = new DispatcherTimer();
            timer.Interval = new TimeSpan(0, 0, 1);
            timer.Tick += dispatcherTimer_Tick;
            timer.Start();
            currentUser = MyDataManager.DeserializeXMLFileToObject<User>("config.xml");
            if (currentUser == null)
            {
                currentUser = new User();
            }
            txtUser.Text = currentUser.UserName;
            txtPass.Password = currentUser.UserPassword;
            txtBBDD.Text = currentUser.DataBaseName;
            txtURL.Text = currentUser.Url;

            MessageBox.Show("Configuaración cargada con exito");
        }

        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            if (con == null)
                labelState.Content = "Connector null";
            else
            {
                labelState.Content = con.State.ToString();
            }
        }
        private void testConnButton_Click(object sender, RoutedEventArgs e)
        {
            con = new MySqlConnection();
            con.ConnectionString = getConnectionString();
            try
            {
                con.Open();
                if (con.State == ConnectionState.Open)
                {
                    MessageBox.Show("Conectado");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }
        private void saveConfigButton_Click(object sender, RoutedEventArgs e)
        {

            currentUser.UserName = getUser();
            currentUser.UserPassword = getPass();
            currentUser.DataBaseName = getBBDD();
            currentUser.Url = getUrl();

            MyDataManager.Serialize<User>("config", currentUser);
            MessageBox.Show("Configuaración guardada con exito");
        }
        private void enviarButton_Click(object sender, RoutedEventArgs e)
        {
            timeStart = DateTime.Now.Millisecond;
            MySqlDataAdapter adapter = null;
            DataSet myDataSet = null;
            con = new MySqlConnection();

            con.ConnectionString = getConnectionString();
            txtResult.Text = "";
            try
            {
                con.Open();
                adapter = new MySqlDataAdapter(getQurey(), con);
               
                myDataSet = new DataSet(); 
                adapter.FillAsync(myDataSet);
                
                int tableCount = myDataSet.Tables.Count;
                int columnCount = myDataSet.Tables[0].Columns.Count;
                rowCount = myDataSet.Tables[0].Rows.Count;

                dataGrid1.ItemsSource = myDataSet.Tables[0].DefaultView;
                txtResult.Text += "El grado de la tabla resultado es: " + columnCount.ToString() + "\n";
                txtResult.Text += "La cardinalidad de la tabla resultado es: " + rowCount.ToString() + "\n";

                adapter.Dispose();
                myDataSet.Dispose();
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            long timeStop = DateTime.Now.Millisecond;
            long elapsedTime = timeStop - timeStart;

            txtResult.Text += "Tiempo de la consulta: " + elapsedTime.ToString() + " ms" + "\n";
        }
        private string getQurey()
        {
            string query = txtConsulta.Text;
            return query;
        }
        private string getUser()
        {
            string user = txtUser.Text;
            return user;
        }
        private string getPass()
        {
            string pass = txtPass.Password;
            return pass;
        }
        private string getBBDD()
        {
            string bbdd = txtBBDD.Text;
            return bbdd;
        }
        private string getUrl()
        {
            string url = txtURL.Text;
            return url;
        }
        private string getConnectionString()
        {
            string connection = "Server=" + getUrl() + ";Database=" + getBBDD() + ";Uid=" + getUser() + ";Pwd=" + getPass() + ";" + "Allow Zero Datetime=True;Convert Zero Datetime=False";
            return connection;
        }
    }
}
