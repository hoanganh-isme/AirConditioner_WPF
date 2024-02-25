using AirConditionerBO.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerService
{
    public interface IOrderService
    {
        public List<Order> GetAll();
        public Order GetOrderById(int id);
        public bool InsertOrder(Order order);
        public bool DeleteOrder(int id);
        public bool UpdateOrder(Order order);
    }
}
