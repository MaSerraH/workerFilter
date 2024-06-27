using System;
using System.Collections.Generic;

namespace workerFilterAPI.Models;

public partial class Worker
{
    public int WorkerId { get; set; }

    public string? FirstName { get; set; }

    public string? LastName { get; set; }

    public string? Email { get; set; }

    public string? Gender { get; set; }

    public int Age { get; set; }

    public string? UrlBild { get; set; }

    public virtual ICollection<Conjuction> Conjuctions { get; set; } = new List<Conjuction>();
}
