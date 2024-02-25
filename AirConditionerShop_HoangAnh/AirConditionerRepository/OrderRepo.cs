using AirConditionerBO.Models;
using AirConditionerDAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerRepository
{
    public class OrderRepo : IOrderRepo
    {
        public bool DeleteOrder(int id) => OrderDAO.Instance.DeleteOrder(id);

        public List<Order> GetAll() => OrderDAO.Instance.GetAll();

        public Order GetOrderById(int id) => OrderDAO.Instance.GetOrderById(id);

        public bool InsertOrder(Order order) => OrderDAO.Instance.InsertOrder(order);

        public bool UpdateOrder(Order order) => OrderDAO.Instance.UpdateOrder(order);
    }
}
