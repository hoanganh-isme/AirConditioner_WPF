using AirConditionerBO.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerRepository
{
    public interface IStaffMemberRepo
    {
        public List<StaffMember> GetAllMembers();
        public StaffMember GetMemberById(int id);
        public bool AddMember(StaffMember member);
        public bool DeleteMember(int id);
        public bool UpdateMember(StaffMember member);
    }
}
