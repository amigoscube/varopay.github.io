﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Varopay.Models
{
    public class Currency
    {
        public Guid CurrencyID { get; set; }

        [DataType(DataType.Currency)]
        public string CurrencyName { get; set; }
    }
}