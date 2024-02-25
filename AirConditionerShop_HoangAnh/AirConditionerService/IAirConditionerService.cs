using AirConditionerBO.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerService
{
    public interface IAirConditionerService
    {
        public List<AirConditioner> GetAllAirConditioners();
        public bool AddAirConditioner(AirConditioner airConditioner);
        public AirConditioner GetAirConditionerById(int id);
        public bool DeleteAirConditioner(int id);
        public bool EditAirConditioner(AirConditioner airConditioner);
        public IEnumerable<SupplierCompany> GetSupplierCompanies();
        public List<AirConditioner> GetAirConditionersByName(string name);
    }
}
