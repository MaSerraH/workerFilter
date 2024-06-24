using System;
using System.Collections.Generic;

namespace workerFilterAPI.Models;

public partial class Conjuction
{
    public int Id { get; set; }

    public int WorkerId { get; set; }

    public int CountryId { get; set; }

    public int CityId { get; set; }

    public int ProfessionId { get; set; }

    public virtual City City { get; set; } = null!;

    public virtual Country Country { get; set; } = null!;

    public virtual Profession Profession { get; set; } = null!;

    public virtual Worker Worker { get; set; } = null!;
}
