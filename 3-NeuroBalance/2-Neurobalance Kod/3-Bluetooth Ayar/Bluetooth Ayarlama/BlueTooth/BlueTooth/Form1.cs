using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO.Ports;
using System.Windows.Forms;


namespace BlueTooth
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SerialPort serialPort2;
        string port2;

        private void Form1_Load(object sender, EventArgs e)
        {
            Control.CheckForIllegalCrossThreadCalls = false;
            string[] portlar2 = SerialPort.GetPortNames();
            comboBox1.Items.Clear();
            foreach (string prt2 in portlar2)
            {
                comboBox1.Items.Add(prt2);
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                label1.Text = "";
                port2 = comboBox1.SelectedItem.ToString();
                int baud = Convert.ToInt32(comboBox2.SelectedItem.ToString());
                label1.Text = ("Port: " + port2);
                serialPort2 = new SerialPort(port2, baud, Parity.None, 8, StopBits.One);
                serialPort2.DataReceived += new SerialDataReceivedEventHandler(serialPort2_DataReceived);
                serialPort2.Open();
                button1.BackColor = Color.LightGreen;
                button1.Text = "BAĞLI";
                serialPort2.Encoding = UTF8Encoding.UTF8;
            }
            catch
            {
                label1.Text = (" Bağlantı Hatası !!!");
            }

        }
        private void serialPort2_DataReceived(object sender2, SerialDataReceivedEventArgs e)
        {
            string abb = serialPort2.ReadExisting();
            listBox1.Items.Add(abb + "\r\n");
            //  aa = Convert.ToChar(serialPort2.ReadChar());

        }

        private void button3_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            string[] portlar = SerialPort.GetPortNames();
            comboBox1.Items.Clear();
            foreach (string prt in portlar)
            {
                comboBox1.Items.Add(prt);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            serialPort2.Close();
            button1.BackColor = Color.WhiteSmoke;
            button1.Text = "BAĞLAN";
            label1.Text = "";
            label1.Text = ("Bağlantı Kapatıldı!");

        }

        private void button4_Click(object sender, EventArgs e)
        {
            serialPort2.Write("AT" + "\r\n");
        }

        private void button6_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            string isim = textBox1.Text;
            string gonder = ("AT+NAME=" + isim + "\r\n");
            serialPort2.Write(gonder);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            string sifre = textBox2.Text;
            string gndr = ("AT+PSWD?" + "\r\n");
            serialPort2.Write(gndr);
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button10_Click(object sender, EventArgs e)
        {
            string isim = textBox5.Text;
            string gonder = ("AT+NAME" + isim);// + "\r\n");
            serialPort2.Write(gonder);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            string sifre = textBox6.Text;
            string gndr = ("AT+PIN" + sifre);// + "\r\n");
            serialPort2.Write(gndr);
        }
    }
}
