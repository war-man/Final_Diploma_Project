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
    internal abstract partial class Person
    {
    	
    	partial void ObjectPropertyChanged(string propertyName);
    
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
    	private string _firstname;
        public  string FirstName 
		{ 
			get
			{ 
				return _firstname; 
			} 
			set
			{
				_firstname = value;
				ObjectPropertyChanged("FirstName");
			}
		}
    	private string _lastname;
        public  string LastName 
		{ 
			get
			{ 
				return _lastname; 
			} 
			set
			{
				_lastname = value;
				ObjectPropertyChanged("LastName");
			}
		}
    	private string _contactnumber;
        public  string ContactNumber 
		{ 
			get
			{ 
				return _contactnumber; 
			} 
			set
			{
				_contactnumber = value;
				ObjectPropertyChanged("ContactNumber");
			}
		}
    	private string _email;
        public  string Email 
		{ 
			get
			{ 
				return _email; 
			} 
			set
			{
				_email = value;
				ObjectPropertyChanged("Email");
			}
		}
    
        public virtual Restaurant Restaurant { get; set; }
    }
}
