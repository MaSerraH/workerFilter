using System;
using System.Collections.Generic;

namespace workerFilterAPI.Models;

public partial class Profession
{
    public int ProfessionId { get; set; }

    public string ProfessionName { get; set; } = null!;
    public virtual ICollection<Conjuction> Conjuctions { get; set; } = new List<Conjuction>();
}
