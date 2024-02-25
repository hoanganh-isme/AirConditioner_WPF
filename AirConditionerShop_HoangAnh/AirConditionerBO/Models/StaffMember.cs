using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace AirConditionerBO.Models
{
    public partial class StaffMember
    {
        public StaffMember()
        {
            Orders = new HashSet<Order>();
        }
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int MemberId { get; set; }
        public string Password { get; set; } = null!;
        public string FullName { get; set; } = null!;       
        public string? EmailAddress { get; set; }
        public int Role { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
    }
}
