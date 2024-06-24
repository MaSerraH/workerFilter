using System;
using System.Collections.Generic;

namespace workerFilterAPI.Models;

public partial class City
{
    public int CityId { get; set; }

    public string CityName { get; set; } = null!;

    public virtual ICollection<Conjuction> Conjuctions { get; set; } = new List<Conjuction>();
}
