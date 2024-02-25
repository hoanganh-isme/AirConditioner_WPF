using AirConditionerBO.Models;
using AirConditionerService;
using System;
using System.Collections.Generic;
using System.Globalization;
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
    /// Interaction logic for WindowMemberManagement.xaml
    /// </summary>
    public partial class WindowMemberManagement : Window
    {
        private readonly IStaffMemberService staffMemberService = null;
        public WindowMemberManagement()
        {
            InitializeComponent();
            staffMemberService = new StaffMemberService();
            var staffmember = staffMemberService.GetAllMembers();
            LoadData();
        }

        private void LoadData()
        {
            try
            {
                //var members = staffMemberService.GetAllMembers();
                //var membersWithRoleText = members.Select(member => new
                //{
                //    MemberId = member.MemberId,
                //    FullName = member.FullName,
                //    EmailAddress = member.EmailAddress,
                //    Role = GetRoleText(member.Role) // Chuyển đổi Role sang văn bản
                //}).ToList();

                var members = staffMemberService.GetAllMembers();
                var filteredMembers = members.Where(member => member.Role != 1).ToList();
                dtg_Member.ItemsSource = filteredMembers;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Something is wrong! Contact support.");
            }
        }

        private string GetRoleText(int role)
        {
            switch (role)
            {
                case 1:
                    return "Admin";
                case 2:
                    return "Staff";
                case 3:
                    return "User";
                default:
                    return "Unknown";
            }
        }
        private void btnMember_Click(object sender, RoutedEventArgs e)
        {
            WindowAddMember windowAddManagement = new WindowAddMember();
            windowAddManagement.Show();
            Close();
        }
        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            var selectedMember = dtg_Member.SelectedItem as StaffMember;

            // Kiểm tra xem selectedMember có null hay không
            if (selectedMember != null)
            {
                int memberIdToEdit = selectedMember.MemberId;

                // Tạo một instance của WindowAddMember và truyền selectedMember vào constructor
                WindowUpdateMember windowAddMember = new WindowUpdateMember(selectedMember);
                windowAddMember.Show();
                Close();
            }
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            // Lấy hàng đang được chọn từ DataGrid
            var selectedMember = dtg_Member.SelectedItem as StaffMember;

            // Kiểm tra xem selectedMember có null hay không 
            if (selectedMember != null)
            {
                int memberIdToDelete = selectedMember.MemberId;
                // Làm bất cứ điều gì bạn muốn với memberIdToDelete, chẳng hạn như gọi phương thức xóa
                // staffMemberService.DeleteMember(memberIdToDelete);
                StaffMember deleteMember = staffMemberService.GetMemberById(memberIdToDelete);
                if (deleteMember != null)
                {
                    bool issuccess = staffMemberService.DeleteMember(memberIdToDelete);
                    if (issuccess)
                    {
                        MessageBox.Show("Delete Success!");
                        LoadData();
                    }
                    else
                    {
                        MessageBox.Show("Delete Fail!");
                    }

                }
            }
        }
        private void dtg_Member_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dtg_Member.SelectedItem != null)
            {
                // Thực hiện mã xử lý khi có dòng được chọn
            }
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            WindowManagement window = new WindowManagement();
            window.Show();
            Close();
        }
    }
}
