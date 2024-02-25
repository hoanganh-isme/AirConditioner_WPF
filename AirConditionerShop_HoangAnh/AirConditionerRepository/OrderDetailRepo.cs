using AirConditionerBO.Models;
using AirConditionerDAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerRepository
{
    public class OrderDetailRepo : IOrderDetailRepo
    {
        public bool DeleteOrderDetail(int id) => OrderDetailDAO.Instance.DeleteOrderDetail(id);

        public List<OrderDetail> GetAll() => OrderDetailDAO.Instance.GetAll();

        public OrderDetail GetOrderDetailrById(int id) => OrderDetailDAO.Instance.GetOrderDetailrById(id);

        public bool InsertOrderDetail(OrderDetail orderDetail) => OrderDetailDAO.Instance.InsertOrderDetail(orderDetail);

        public bool UpdateOrderDetail(OrderDetail orderDetail) => OrderDetailDAO.Instance.UpdateOrderDetail(orderDetail);
    }
}
