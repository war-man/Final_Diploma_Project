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
    internal partial class Table
    {
    	
    	partial void ObjectPropertyChanged(string propertyName);
    
        public Table()
        {
            this.TableSales = new HashSet<TableSale>();
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
    	private System.Guid _areaid;
        public  System.Guid AreaId 
		{ 
			get
			{ 
				return _areaid; 
			} 
			set
			{
				_areaid = value;
				ObjectPropertyChanged("AreaId");
			}
		}
    	private string _tablenumber;
        public  string TableNumber 
		{ 
			get
			{ 
				return _tablenumber; 
			} 
			set
			{
				_tablenumber = value;
				ObjectPropertyChanged("TableNumber");
			}
		}
    
        public virtual Area Area { get; set; }
        public virtual ICollection<TableSale> TableSales { get; set; }
    }
}
