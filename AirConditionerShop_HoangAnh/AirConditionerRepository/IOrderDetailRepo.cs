using AirConditionerBO.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerRepository
{
    public interface IOrderDetailRepo
    {
        public List<OrderDetail> GetAll();
        public OrderDetail GetOrderDetailrById(int id);
        public bool InsertOrderDetail(OrderDetail orderDetail);
        public bool DeleteOrderDetail(int id); 
        
        public bool UpdateOrderDetail(OrderDetail orderDetail);
    }
}
