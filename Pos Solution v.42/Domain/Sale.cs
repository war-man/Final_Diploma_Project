//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Domain
{
    using System;
    using System.Collections.Generic;
    
    using System.ComponentModel;
    internal abstract partial class Sale
    {
    	
    	partial void ObjectPropertyChanged(string propertyName);
    
        public Sale()
        {
            this.Payments = new HashSet<Payment>();
            this.SaleLineItems = new HashSet<SaleLineItem>();
        }
    
    	private System.Guid _id;
        public  System.Guid Id 
		{ 
			get
			{ 
				return _id; 
			} 
			set
			{
				_id = value;
				ObjectPropertyChanged("Id");
			}
		}
    	private System.Guid _registerid;
        public  System.Guid RegisterId 
		{ 
			get
			{ 
				return _registerid; 
			} 
			set
			{
				_registerid = value;
				ObjectPropertyChanged("RegisterId");
			}
		}
    	private System.Guid _userid;
        public  System.Guid UserId 
		{ 
			get
			{ 
				return _userid; 
			} 
			set
			{
				_userid = value;
				ObjectPropertyChanged("UserId");
			}
		}
    	private System.DateTime _date;
        public  System.DateTime Date 
		{ 
			get
			{ 
				return _date; 
			} 
			set
			{
				_date = value;
				ObjectPropertyChanged("Date");
			}
		}
    
        public virtual ICollection<Payment> Payments { get; set; }
        public virtual UserAccount UserAccount { get; set; }
        public virtual ICollection<SaleLineItem> SaleLineItems { get; set; }
        public virtual Register Register { get; set; }
    }
}