using AirConditionerBO.Models;
using AirConditionerDAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerRepository
{
    public class StaffMemberRepo : IStaffMemberRepo
    {
        public bool AddMember(StaffMember member) => StaffMemberDAO.Instance.AddMember(member);

        public bool DeleteMember(int id) => StaffMemberDAO.Instance.DeleteMember(id);

        public List<StaffMember> GetAllMembers() => StaffMemberDAO.Instance.GetAllMembers();

        public StaffMember GetMemberById(int id) => StaffMemberDAO.Instance.GetMemberById(id);

        public bool UpdateMember(StaffMember member) => StaffMemberDAO.Instance.UpdateMember(member);
    }
}
