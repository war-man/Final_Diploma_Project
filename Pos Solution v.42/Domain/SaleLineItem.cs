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
    internal partial class SaleLineItem
    {
    	
    	partial void ObjectPropertyChanged(string propertyName);
    
    	private System.Guid _saleid;
        public  System.Guid SaleId 
		{ 
			get
			{ 
				return _saleid; 
			} 
			set
			{
				_saleid = value;
				ObjectPropertyChanged("SaleId");
			}
		}
    	private System.Guid _menuproductid;
        public  System.Guid MenuProductId 
		{ 
			get
			{ 
				return _menuproductid; 
			} 
			set
			{
				_menuproductid = value;
				ObjectPropertyChanged("MenuProductId");
			}
		}
    	private int _quantity;
        public  int Quantity 
		{ 
			get
			{ 
				return _quantity; 
			} 
			set
			{
				_quantity = value;
				ObjectPropertyChanged("Quantity");
			}
		}
    	private string _message;
        public  string Message 
		{ 
			get
			{ 
				return _message; 
			} 
			set
			{
				_message = value;
				ObjectPropertyChanged("Message");
			}
		}
    
        public virtual MenuProduct MenuProduct { get; set; }
        public virtual Sale Sale { get; set; }
    }
}