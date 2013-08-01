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
    internal partial class Menu
    {
    	
    	partial void ObjectPropertyChanged(string propertyName);
    
        public Menu()
        {
            this.MenuProducts = new HashSet<MenuProduct>();
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
    	private System.Guid _restaurantid;
        public  System.Guid RestaurantId 
		{ 
			get
			{ 
				return _restaurantid; 
			} 
			set
			{
				_restaurantid = value;
				ObjectPropertyChanged("RestaurantId");
			}
		}
    
        public virtual Restaurant Restaurant { get; set; }
        public virtual ICollection<MenuProduct> MenuProducts { get; set; }
    }
}