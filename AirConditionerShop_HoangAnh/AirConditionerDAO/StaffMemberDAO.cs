using AirConditionerBO.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerDAO
{
    public class StaffMemberDAO
    {
        private readonly AirConditionerShop2023DBContext _db = null;
        private static StaffMemberDAO instance = null;

        public static StaffMemberDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new StaffMemberDAO();
                }
                return instance;
            }
        }
        public StaffMemberDAO()
        {
            _db = new AirConditionerShop2023DBContext();
        }

        public List<StaffMember> GetAllMembers() 
        { 
            return _db.StaffMembers.ToList();
        }
        public StaffMember GetMemberById(int id)
        {
            return _db.StaffMembers.FirstOrDefault(m => m.MemberId.Equals(id));
        }
        public bool AddMember(StaffMember member)
        {
            bool result = false;
            try
            {
                _db.Add(member);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                return result;
            }
            return result;
        }
        public bool DeleteMember(int id)
        {
            bool result = false;
            StaffMember deleteMember = GetMemberById(id);
            try
            {
                _db.Remove(deleteMember);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                return result;
            }
            return result;
        }
        public bool UpdateMember(StaffMember member)
        {
            bool result = false;
            try
            {
                _db.Update(member);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                return result;
            }
            return result;
        }
    }
}
