using AirConditionerService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace AirConditionerSolution
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        private readonly IStaffMemberService staffMemberService = null;
        public Login()
        {
            staffMemberService = new StaffMemberService();
            InitializeComponent();
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
            return;
        }
        private void Border_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }
        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            if (txt_Email.Text == "")
            {
                MessageBox.Show("Ban phai nhap Email");
                txt_Email.Focus();
                return;
            }


            if (txt_Password.Password == "")
            {
                MessageBox.Show("Ban phai nhap Mat khau");
                txt_Password.Focus();
                return;
            }

            var member = staffMemberService.GetAllMembers().FirstOrDefault(m=> m.EmailAddress == txt_Email.Text 
            && m.Password == txt_Password.Password);
            if (member == null)
            {
                MessageBox.Show("Email or Pass invalid...");
                txt_Email.Focus();
                return;
            }
            else
            {
                if (member.Role == 1)
                {
                    WindowManagement admin = new WindowManagement();
                    admin.Show();
                    Close();
                }
                else if (member.Role == 2)
                {
                    MainWindow Manager = new();
                    Manager.Show();
                    Close();
                }
                else
                {
                    UserPage userPage = new UserPage();
                    userPage.Show();
                    Close();
                }
            }
        }
    }
}
