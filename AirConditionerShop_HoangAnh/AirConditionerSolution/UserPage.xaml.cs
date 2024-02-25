using AirConditionerBO.Models;
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
    /// Interaction logic for UserPage.xaml
    /// </summary>
    public partial class UserPage : Window
    {
        private readonly IAirConditionerService airConditionerService = null;
        private IEnumerable<SupplierCompany> _supplierCompany = null;
        public UserPage()
        {
            InitializeComponent();
            airConditionerService = new AirConditionersService();
            var airConditioner = airConditionerService.GetAllAirConditioners();

            LoadData();
        }
        private void LoadData()
        {
            try
            {              
                dtg_AirConditioner.ItemsSource = airConditionerService.GetAllAirConditioners();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Something is wrong! Contact support.");
            }
        }


        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            // Xử lý khi nút "Add" được nhấn
            MessageBox.Show("Add button clicked!");
        }

        private void ViewButton_Click(object sender, RoutedEventArgs e)
        {
            // Xử lý khi nút "View" được nhấn
            MessageBox.Show("View button clicked!");
        }
    }
}
