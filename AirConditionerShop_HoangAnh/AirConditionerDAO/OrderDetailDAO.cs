using AirConditionerBO.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerDAO
{
    public class OrderDetailDAO
    {
        private readonly AirConditionerShop2023DBContext _db = null;
        private static OrderDetailDAO instance = null;

        public static OrderDetailDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new OrderDetailDAO();
                }
                return instance;
            }
        }
        public OrderDetailDAO()
        {
            _db = new AirConditionerShop2023DBContext();
        }
        public List<OrderDetail> GetAll()
        {
            return _db.OrderDetails.ToList();
        }
        public OrderDetail GetOrderDetailrById(int id)
        {
            return _db.OrderDetails.FirstOrDefault(m => m.OrderId.Equals(id));
        }
        public bool InsertOrderDetail(OrderDetail orderDetail)
        {
            bool result = false;
            try
            {
                _db.Add(orderDetail);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                return result;
            }
            return result;
        }
        public bool DeleteOrderDetail(int id)
        {
            bool result = false;
            OrderDetail deleteOrderDetail = GetOrderDetailrById(id);
            try
            {
                _db.Remove(deleteOrderDetail);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                return result;
            }
            return result;
        }
        public bool UpdateOrderDetail(OrderDetail orderDetail)
        {
            bool result = false;
            try
            {
                _db.Update(orderDetail);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                return result;
            }
            return result;
        }
    }
}
