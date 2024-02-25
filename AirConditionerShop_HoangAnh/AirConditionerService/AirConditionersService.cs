using AirConditionerBO.Models;
using AirConditionerRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerService
{
    public class AirConditionersService : IAirConditionerService
    {
        private readonly IAirConditionerRepo airConditionerRepo = null;
        public AirConditionersService()
        {
            airConditionerRepo = new AirConditionerRepo();
        }

        public bool AddAirConditioner(AirConditioner airConditioner)
        {
            return airConditionerRepo.AddAirConditioner(airConditioner);
        }

        public bool DeleteAirConditioner(int id)
        {
            return airConditionerRepo.DeleteAirConditioner(id);
        }

        public bool EditAirConditioner(AirConditioner airConditioner)
        {
            return airConditionerRepo.EditAirConditioner(airConditioner);
        }

        public AirConditioner GetAirConditionerById(int id)
        {
            return airConditionerRepo.GetAirConditionerById(id);
        }

        public List<AirConditioner> GetAirConditionersByName(string name)
        {
            return airConditionerRepo.GetAirConditionersByName(name);
        }

        public List<AirConditioner> GetAllAirConditioners()
        {
            return airConditionerRepo.GetAllAirConditioners();
        }

        public IEnumerable<SupplierCompany> GetSupplierCompanies()
        {
            return airConditionerRepo.GetSupplierCompanies();
        }
    }
}
