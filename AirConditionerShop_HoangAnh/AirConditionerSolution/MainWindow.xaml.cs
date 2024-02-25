using AirConditionerBO.Models;
using AirConditionerRepository;
using AirConditionerService;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace AirConditionerSolution
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly IAirConditionerService airConditionerService = null;
        private IEnumerable<SupplierCompany> _supplierCompany = null;
        public MainWindow()
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
            LoadData();
        }

        private void MainGUI_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void btn_LoadFile_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                loadSupplierCompanyToCombo();
                dtg_AirConditioner.ItemsSource = airConditionerService.GetAllAirConditioners();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Something is wrong ! Contact to 113!");
            }

        }
        private void LoadData()
        {
            try
            {
                loadSupplierCompanyToCombo();
                dtg_AirConditioner.ItemsSource = airConditionerService.GetAllAirConditioners();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Something is wrong! Contact support.");
            }
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
           AirConditionDetail addAir = new AirConditionDetail();
            addAir.Show();
            Close();
        }

        private void txt_Search_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void btn_Search_Click(object sender, RoutedEventArgs e)
        {
            if (txt_Search.Text.Length > 0)
            {
                string searchText = txt_Search.Text;

                // Kiểm tra xem có phải là một số nguyên hay không
                if (int.TryParse(searchText, out int id))
                {
                    AirConditioner foundAir = airConditionerService.GetAirConditionerById(id);
                    if (foundAir != null)
                    {
                        List<AirConditioner> studentList = new List<AirConditioner> { foundAir };
                        dtg_AirConditioner.ItemsSource = studentList;
                    }
                    else
                    {
                        dtg_AirConditioner.ItemsSource = null; // Clear the DataGrid
                        MessageBox.Show("Can't find!");
                    }
                }
            }
            else
            {
                MessageBox.Show("Please enter a code for searching!");
            }
        }
        private void btn_SearchByName_Click(object sender, RoutedEventArgs e)
        {
            if(txt_SearchByName.Text.Length > 0)
            {
                string searchName = txt_SearchByName.Text;
                if(searchName != null)
                {
                    List<AirConditioner> foundAir = airConditionerService.GetAirConditionersByName(searchName);
                    if(foundAir != null)
                    {                       
                        dtg_AirConditioner.ItemsSource = foundAir;
                    }
                    else
                    {
                        dtg_AirConditioner.ItemsSource = null; // Clear the DataGrid
                        MessageBox.Show("Can't find the AirConditioner!");
                    }
                }
            }
            else
            {
                MessageBox.Show("Please enter the name!");
            }
        }

        private void btn_Delete_Click(object sender, RoutedEventArgs e)
        {
            string searchText = txt_AirConditionerId.Text;

            // Kiểm tra xem có phải là một số nguyên hay không
            if (int.TryParse(searchText, out int id))
            {
                AirConditioner deleteAir = airConditionerService.GetAirConditionerById(id);
                if (deleteAir != null)
                {
                    bool issuccess = airConditionerService.DeleteAirConditioner(id);
                    if (issuccess)
                    {
                        MessageBox.Show("Delete Success!");
                        dtg_AirConditioner.ItemsSource = airConditionerService.GetAllAirConditioners();
                    }
                    else
                    {
                        MessageBox.Show("Delete Fail!");
                    }

                }
            }
            else
            {
                MessageBox.Show("Can't find the code!");
            }
        }


        private void btn_Edit_Click(object sender, RoutedEventArgs e)
        {
            string searchText = txt_AirConditionerId.Text;

            // Kiểm tra xem có phải là một số nguyên hay không
            if (int.TryParse(searchText, out int id))
            {
                AirConditioner editAir = airConditionerService.GetAirConditionerById(id);
                if (editAir != null)
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
                        editAir.AirConditionerId = int.TryParse(txt_AirConditionerId.Text, out var parsedValue) ? parsedValue : editAir.AirConditionerId;
                        editAir.AirConditionerName = txt_AirConditionerName.Text;
                        editAir.Warranty = txt_Warranty.Text;
                        editAir.SoundPressureLevel = txt_SoundPressureLevel.Text;
                        editAir.FeatureFunction = txt_FeatureFunction.Text;
                        editAir.Quantity = int.Parse(txt_Quantity.Text);
                        editAir.DollarPrice = double.Parse(txt_DollarPrice.Text);
                        if (cbx_SupplierId.SelectedItem is SupplierCompany selectedSupplier)
                        {
                            editAir.SupplierId = selectedSupplier.SupplierId;
                        }

                        bool isSuccess = airConditionerService.EditAirConditioner(editAir);
                        if (isSuccess)
                        {
                            MessageBox.Show("Edit Success!");
                            dtg_AirConditioner.ItemsSource = airConditionerService.GetAllAirConditioners();
                        }
                    }
                    else
                    {
                        MessageBox.Show("Edit Fail, Please fill the blank!");
                    }
                }
            }
            else
            {
                MessageBox.Show("Edit Fail, Can't find code!");
            }
        }

        private void btn_Logout_Click(object sender, RoutedEventArgs e)
        {
            Login loginWindow = new Login(); // Tạo một instance mới của trang login
            loginWindow.Show(); // Hiển thị trang login
            Close();
        }

        
    }
}