using System;
using System.Collections.Generic;

namespace workerFilterAPI.Models;

public partial class Country
{
    public int CountryId { get; set; }

    public string CountryName { get; set; } = null!;

    public virtual ICollection<Conjuction> Conjuctions { get; set; } = new List<Conjuction>();
}
