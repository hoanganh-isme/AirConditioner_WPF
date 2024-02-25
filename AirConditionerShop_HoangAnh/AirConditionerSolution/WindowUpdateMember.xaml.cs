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
    /// Interaction logic for WindowUpdateMember.xaml
    /// </summary>
    public partial class WindowUpdateMember : Window
    {
        private readonly IStaffMemberService staffMemberService = null;
        private StaffMember _selectedMember;
        public WindowUpdateMember(StaffMember selectedMember)
        {
            InitializeComponent();
            staffMemberService = new StaffMemberService();
            var members = staffMemberService.GetAllMembers();

            List<string> items = new List<string> { "Staff", "Member" };
            cbx_Role.ItemsSource = items;
            cbx_Role.SelectedIndex = 0;
            _selectedMember = selectedMember;
            txt_FullName.Text = selectedMember.FullName;
            txt_Email.Text = selectedMember.EmailAddress;
            cbx_Role.ItemsSource = items;

        }

        private void btn_Save_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(txt_FullName.Text) &&
            !string.IsNullOrEmpty(txt_Email.Text) &&
            cbx_Role.SelectedItem != null && cbx_Role.SelectedItem is string selectedRole)
            {
                string newEmailAddress = txt_Email.Text; // Lấy email mới nhập vào

                // Lấy danh sách tất cả các thành viên
                List<StaffMember> staffMembers = staffMemberService.GetAllMembers();

                // Kiểm tra xem email mới đã tồn tại trong danh sách thành viên hay chưa
                bool isEmailExists = staffMembers.Any(member => member.EmailAddress == newEmailAddress 
                                                       && member.MemberId != _selectedMember.MemberId);

                if (isEmailExists)
                {
                    MessageBox.Show("Email already exists!");
                }
                
                    // Email không tồn tại trong danh sách, tiếp tục thêm mới thành viên

                    StaffMember member = staffMemberService.GetMemberById(_selectedMember.MemberId);

                    // Không cần gán MemberId, database sẽ tự động tạo giá trị mới

                    // Tiếp tục gán giá trị cho các thuộc tính khác của đối tượng StaffMember
                    
                    member.FullName = txt_FullName.Text;
                    member.EmailAddress = txt_Email.Text;

                    if (selectedRole == "Staff")
                    {
                        member.Role = 2;
                    }
                    else if (selectedRole == "Member")
                    {
                        member.Role = 3;
                    }

                    // Thêm mới thành viên vào cơ sở dữ liệu
                    bool isSuccess = staffMemberService.UpdateMember(member);
                    if (isSuccess)
                    {
                        MessageBox.Show("Update Success!");
                    WindowMemberManagement mainWindow = new WindowMemberManagement();
                        mainWindow.Show();
                        Close();
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
