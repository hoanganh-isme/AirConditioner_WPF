﻿using System;
using System.Collections.Generic;

namespace AirConditionerBO.Models
{
    public partial class SupplierCompany
    {
        public SupplierCompany()
        {
            AirConditioners = new HashSet<AirConditioner>();
        }

        public string SupplierId { get; set; } = null!;
        public string SupplierName { get; set; } = null!;
        public string? SupplierDescription { get; set; }
        public string? PlaceOfOrigin { get; set; }

        public virtual ICollection<AirConditioner> AirConditioners { get; set; }
    }
}
