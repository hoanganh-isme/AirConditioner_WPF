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
    /// Interaction logic for AirConditionDetail.xaml
    /// </summary>
    public partial class AirConditionDetail : Window
    {
        private readonly IAirConditionerService airConditionerService = null;
        private IEnumerable<SupplierCompany> _supplierCompany = null;
        public AirConditionDetail()
        {
            InitializeComponent();
            airConditionerService = new AirConditionersService();
            var airConditioner = airConditionerService.GetAllAirConditioners();


            loadSupplierCompanyToCombo();

            // Lấy giá trị mặc định cho ComboBox
            var defaultSupplier = airConditioner.Select(s => new { SupplierId = s.SupplierId, SupplierName = s.Supplier.SupplierName })
                                                .Distinct()
                                                .FirstOrDefault();

            // Gán giá trị mặc định cho ComboBox
            cbx_SupplierId.SelectedItem = defaultSupplier;
        }

         private void loadSupplierCompanyToCombo()
        {
            _supplierCompany = airConditionerService.GetSupplierCompanies();

            // Gán danh sách trực tiếp vào ItemsSource
            cbx_SupplierId.ItemsSource = _supplierCompany;

            // Thiết lập DisplayMemberPath để chỉ định thuộc tính hiển thị
            cbx_SupplierId.DisplayMemberPath = "SupplierName";

            // Chọn phần tử đầu tiên nếu có
            if (cbx_SupplierId.Items.Count > 0)
            {
                cbx_SupplierId.SelectedIndex = 0;
            }

        }
        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(txt_AirConditionerId.Text) &&
               !string.IsNullOrEmpty(txt_AirConditionerName.Text) &&
               !string.IsNullOrEmpty(txt_Warranty.Text) &&
               !string.IsNullOrEmpty(txt_SoundPressureLevel.Text) &&
               !string.IsNullOrEmpty(txt_FeatureFunction.Text) &&
               !string.IsNullOrEmpty(txt_Quantity.Text) &&
               !string.IsNullOrEmpty(txt_DollarPrice.Text) &&
               cbx_SupplierId.SelectedItem != null)
            {
                AirConditioner airConditioner = new AirConditioner();
                if (int.TryParse(txt_AirConditionerId.Text, out int airConditionerId))
                {
                    airConditioner.AirConditionerId = airConditionerId;
                    // Tiếp tục gán giá trị cho các thuộc tính khác của đối tượng AirConditioner
                    airConditioner.AirConditionerName = txt_AirConditionerName.Text;
                    airConditioner.Warranty = txt_Warranty.Text;
                    airConditioner.SoundPressureLevel = txt_SoundPressureLevel.Text;
                    airConditioner.FeatureFunction = txt_FeatureFunction.Text;
                    airConditioner.Quantity = int.Parse(txt_Quantity.Text);
                    airConditioner.DollarPrice = double.Parse(txt_DollarPrice.Text);
                    if (cbx_SupplierId.SelectedItem is SupplierCompany selectedSupplier)
                    {
                        airConditioner.SupplierId = selectedSupplier.SupplierId;
                    }


                    // Bạn có thể tiếp tục xử lý đối tượng airConditioner ở đây
                    bool isSuccess = airConditionerService.AddAirConditioner(airConditioner);
                    if (isSuccess)
                    {
                        MessageBox.Show("Insert Success!");
                        MainWindow mainWindow = new MainWindow();
                        mainWindow.Show();
                        Close();
                    }
                }
            }
            else
            {
                MessageBox.Show("Insert Fail, Please fill the blank!");
            }
        }

        private void btn_Close_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            Close();
        }
    }
}
