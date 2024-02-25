using AirConditionerBO.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerDAO
{
    public class AirConditionersDAO
    {
        private readonly AirConditionerShop2023DBContext _db = null;
        private static AirConditionersDAO instance = null;

        public static AirConditionersDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new AirConditionersDAO();
                }
                return instance;
            }
        }

        public AirConditionersDAO()
        {
            _db = new AirConditionerShop2023DBContext();
        }

        public List<AirConditioner> GetAllAirConditioner()
        {
            return _db.AirConditioners.Include(p => p.Supplier).ToList();
        }

        public bool AddAirConditioner(AirConditioner airConditioner)
        {
            bool result = false;
            try
            {
                _db.Add(airConditioner);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                return result;
            }
            return result;
        }
        public List<AirConditioner> GetAirConditionersByName(string name)
        {
            return _db.AirConditioners.Where(m => m.AirConditionerName.Contains(name)).ToList();
        }
        public AirConditioner GetAirConditionerById(int id)
        {
            return _db.AirConditioners.FirstOrDefault(m => m.AirConditionerId.Equals(id));
        }
        public bool DeleteAirConditioner(int id)
        {
            bool result = false;
            AirConditioner deleteAir = GetAirConditionerById(id);
            try
            {
                _db.Remove(deleteAir);
                _db.SaveChanges();
                result = true;
            }catch (Exception ex)
            {
                return result;
            }
            return result;  
        }
        public bool EditAirConditioner(AirConditioner airConditioner)
        {
            bool result = false;
            try
            {
                _db.Update(airConditioner);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                return result;
            }
            return result;
        }

        

        public IEnumerable<SupplierCompany> GetSupplierCompanies() => _db.SupplierCompanies.ToList();



    }
}
