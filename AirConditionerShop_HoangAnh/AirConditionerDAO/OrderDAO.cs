using AirConditionerBO.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AirConditionerDAO
{
    public class OrderDAO
    {
        private readonly AirConditionerShop2023DBContext _db = null;
        private static OrderDAO instance = null;

        public static OrderDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new OrderDAO();
                }
                return instance;
            }
        }
        public OrderDAO()
        {
            _db = new AirConditionerShop2023DBContext();
        }
        public List<Order> GetAll()
        {
            return _db.Orders.ToList();
        }
        public Order GetOrderById(int id)
        {
            return _db.Orders.FirstOrDefault(m => m.OrderId.Equals(id));
        }
        public bool InsertOrder(Order order)
        {
            bool result = false;
            try
            {
                _db.Add(order);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                return result;
            }
            return result;
        }
        public bool DeleteOrder(int id)
        {
            bool result = false;
            Order deleteOrder = GetOrderById(id);
            try
            {
                _db.Remove(deleteOrder);
                _db.SaveChanges();
                result = true;
            }
            catch (Exception ex)
            {
                return result;
            }
            return result;
        }
        public bool UpdateOrder(Order order)
        {
            bool result = false;
            try
            {
                _db.Update(order);
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
