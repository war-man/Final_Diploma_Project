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
    internal partial class UserAccount
    {
    	
    	partial void ObjectPropertyChanged(string propertyName);
    
        public UserAccount()
        {
            this.Sales = new HashSet<Sale>();
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
    	private int _password;
        public  int Password 
		{ 
			get
			{ 
				return _password; 
			} 
			set
			{
				_password = value;
				ObjectPropertyChanged("Password");
			}
		}
    	private int _stateid;
        public  int StateId 
		{ 
			get
			{ 
				return _stateid; 
			} 
			set
			{
				_stateid = value;
				ObjectPropertyChanged("StateId");
			}
		}
    
        public virtual Employee Employee { get; set; }
        public virtual ICollection<Sale> Sales { get; set; }
    }
}
