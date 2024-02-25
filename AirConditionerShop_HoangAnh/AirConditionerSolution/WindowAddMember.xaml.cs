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
    /// Interaction logic for WindowAddMember.xaml
    /// </summary>
    public partial class WindowAddMember : Window
    {
        private readonly IStaffMemberService staffMemberService = null;
        public WindowAddMember()
        {
            InitializeComponent();
            staffMemberService = new StaffMemberService();
            var members = staffMemberService.GetAllMembers();

            List<string> items = new List<string> {"Staff", "Member" };
            cbx_Role.ItemsSource = items;
            cbx_Role.SelectedIndex = 0;
        }
        private void btn_Add_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(txt_Password.Text) &&
              !string.IsNullOrEmpty(txt_FullName.Text) &&
              !string.IsNullOrEmpty(txt_Email.Text) &&
              cbx_Role.SelectedItem != null && cbx_Role.SelectedItem is string selectedRole)
            {
                string newEmailAddress = txt_Email.Text; // Lấy email mới nhập vào

                // Lấy danh sách tất cả các thành viên
                List<StaffMember> staffMembers = staffMemberService.GetAllMembers();

                // Kiểm tra xem email mới đã tồn tại trong danh sách thành viên hay chưa
                bool isEmailExists = staffMembers.Any(member => member.EmailAddress == newEmailAddress);

                if (isEmailExists)
                {
                    MessageBox.Show("Email already exists!");
                }
                else
                {
                    // Email không tồn tại trong danh sách, tiếp tục thêm mới thành viên

                    StaffMember member = new StaffMember();

                    // Không cần gán MemberId, database sẽ tự động tạo giá trị mới

                    // Tiếp tục gán giá trị cho các thuộc tính khác của đối tượng StaffMember
                    member.Password = txt_Password.Text;
                    member.FullName = txt_FullName.Text;
                    member.EmailAddress = newEmailAddress;

                    if (selectedRole == "Staff")
                    {
                        member.Role = 2;
                    }
                    else if (selectedRole == "Member")
                    {
                        member.Role = 3;
                    }

                    // Thêm mới thành viên vào cơ sở dữ liệu
                    bool isSuccess = staffMemberService.AddMember(member);
                    if (isSuccess)
                    {
                        MessageBox.Show("Insert Success!");
                        WindowManagement mainWindow = new WindowManagement();
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

        private void btn_Back_Click(object sender, RoutedEventArgs e)
        {
            WindowMemberManagement window = new WindowMemberManagement();
            window.Show();
            Close();
        }
    }
}
