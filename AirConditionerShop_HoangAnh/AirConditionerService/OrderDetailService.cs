using AirConditionerBO.Models;
using AirConditionerRepository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerService
{
    public class OrderDetailService : IOrderDetailService
    {
        private readonly IOrderDetailRepo orderDetailRepo;
        public OrderDetailService()
        {
            orderDetailRepo = new OrderDetailRepo();
        }
        public bool DeleteOrderDetail(int id)
        {
            return orderDetailRepo.DeleteOrderDetail(id);
        }

        public List<OrderDetail> GetAll()
        {
            return orderDetailRepo.GetAll();
        }

        public OrderDetail GetOrderDetailrById(int id)
        {
            return orderDetailRepo.GetOrderDetailrById(id);
        }

        public bool InsertOrderDetail(OrderDetail orderDetail)
        {
            return orderDetailRepo.InsertOrderDetail(orderDetail);
        }

        public bool UpdateOrderDetail(OrderDetail orderDetail)
        {
            return orderDetailRepo.UpdateOrderDetail(orderDetail);
        }
    }
}
