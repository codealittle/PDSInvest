//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PDSDataAccessor
{
    using System;
    using System.Collections.Generic;
    
    public partial class ServiceCenter
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ServiceCenter()
        {
            this.Stations = new HashSet<Station>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public int RegionId { get; set; }
    
        public virtual Region Region { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Station> Stations { get; set; }
    }
}