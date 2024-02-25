using AirConditionerBO.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Threading.Tasks;
using AirConditionerDAO;

namespace AirConditionerRepository
{
    public class AirConditionerRepo : IAirConditionerRepo
    {
        public bool AddAirConditioner(AirConditioner airConditioner) => AirConditionersDAO.Instance.AddAirConditioner(airConditioner);


        public bool DeleteAirConditioner(int id) => AirConditionersDAO.Instance.DeleteAirConditioner(id);

        public bool EditAirConditioner(AirConditioner airConditioner) => AirConditionersDAO.Instance.EditAirConditioner(airConditioner);

        public AirConditioner GetAirConditionerById(int id)=> AirConditionersDAO.Instance.GetAirConditionerById(id);

        public List<AirConditioner> GetAllAirConditioners() => AirConditionersDAO.Instance.GetAllAirConditioner();

        public IEnumerable<SupplierCompany> GetSupplierCompanies() => AirConditionersDAO.Instance.GetSupplierCompanies();
        public List<AirConditioner> GetAirConditionersByName(string name) => AirConditionersDAO.Instance.GetAirConditionersByName(name);
    }
}
