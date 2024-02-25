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
    /// Interaction logic for WindowManagement.xaml
    /// </summary>
    public partial class WindowManagement : Window
    {
        public WindowManagement()
        {
            InitializeComponent();
        }

        private void btnMember_Click(object sender, RoutedEventArgs e)
        {
            WindowMemberManagement windowMemberManagement = new WindowMemberManagement();
            windowMemberManagement.Show();
            Close();
        }

        private void btnAirConditioner_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Close();
        }

        private void btnLogout_Click(object sender, RoutedEventArgs e)
        {
            Login loginWindow = new Login(); // Tạo một instance mới của trang login
            loginWindow.Show(); // Hiển thị trang login
            Close();
        }
    }
}
