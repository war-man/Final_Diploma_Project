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
    internal partial class Category
    {
    	
    	partial void ObjectPropertyChanged(string propertyName);
    
        public Category()
        {
            this.Products = new HashSet<Product>();
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
    	private string _description;
        public  string Description 
		{ 
			get
			{ 
				return _description; 
			} 
			set
			{
				_description = value;
				ObjectPropertyChanged("Description");
			}
		}
    
        public virtual ICollection<Product> Products { get; set; }
    }
}
