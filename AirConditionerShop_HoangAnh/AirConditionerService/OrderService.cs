using AirConditionerBO.Models;
using AirConditionerRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerService
{
    public class OrderService : IOrderService
    {
        private readonly IOrderRepo orderRepo = null;
        public OrderService()
        {
            orderRepo = new OrderRepo();
        }
        public bool DeleteOrder(int id)
        {
            return orderRepo.DeleteOrder(id);
        }

        public List<Order> GetAll()
        {
            return orderRepo.GetAll();
        }

        public Order GetOrderById(int id)
        {
            return orderRepo.GetOrderById(id);
        }

        public bool InsertOrder(Order order)
        {
            return orderRepo.InsertOrder(order);
        }

        public bool UpdateOrder(Order order)
        {
            return orderRepo.UpdateOrder(order);
        }
    }
}
