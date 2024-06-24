using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using workerFilterAPI.Models;

namespace workerFilterAPI.Data;

public partial class PeopleFilterDbContext : DbContext
{
    public PeopleFilterDbContext()
    {
    }

    public PeopleFilterDbContext(DbContextOptions<PeopleFilterDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<City> Cities { get; set; }

    public virtual DbSet<Conjuction> Conjuctions { get; set; }

    public virtual DbSet<Country> Countries { get; set; }

    public virtual DbSet<Profession> Professions { get; set; }

    public virtual DbSet<Worker> Workers { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=.;Database= peopleFilterDB; TrustServerCertificate=True; Trusted_Connection=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<City>(entity =>
        {
            entity.HasKey(e => e.CityId).HasName("PK__city__B4BEB95EDC19C735");

            entity.ToTable("city");

            entity.Property(e => e.CityId).HasColumnName("cityId");
            entity.Property(e => e.CityName)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("cityName");
        });

        modelBuilder.Entity<Conjuction>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__conjucti__3214EC075BCE82BA");

            entity.ToTable("conjuction");

            entity.Property(e => e.CityId).HasColumnName("cityId");
            entity.Property(e => e.CountryId).HasColumnName("countryId");
            entity.Property(e => e.ProfessionId).HasColumnName("professionId");
            entity.Property(e => e.WorkerId).HasColumnName("workerId");

            entity.HasOne(d => d.City).WithMany(p => p.Conjuctions)
                .HasForeignKey(d => d.CityId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_city");

            entity.HasOne(d => d.Country).WithMany(p => p.Conjuctions)
                .HasForeignKey(d => d.CountryId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_country");

            entity.HasOne(d => d.Profession).WithMany(p => p.Conjuctions)
                .HasForeignKey(d => d.ProfessionId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_professions");

            entity.HasOne(d => d.Worker).WithMany(p => p.Conjuctions)
                .HasForeignKey(d => d.WorkerId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("fk_worker");
        });

        modelBuilder.Entity<Country>(entity =>
        {
            entity.HasKey(e => e.CountryId).HasName("PK__country__D32076BC0CC56292");

            entity.ToTable("country");

            entity.Property(e => e.CountryId).HasColumnName("countryId");
            entity.Property(e => e.CountryName)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("countryName");
        });

        modelBuilder.Entity<Profession>(entity =>
        {
            entity.HasKey(e => e.ProfessionId).HasName("PK__professi__2FE388233D85F5EF");

            entity.ToTable("professions");

            entity.Property(e => e.ProfessionId).HasColumnName("professionId");
            entity.Property(e => e.ProfessionName)
                .HasMaxLength(30)
                .IsUnicode(false)
                .HasColumnName("professionName");
        });

        modelBuilder.Entity<Worker>(entity =>
        {
            entity.HasKey(e => e.WorkerId).HasName("PK__worker__3CF205918E867D58");

            entity.ToTable("worker");

            entity.Property(e => e.WorkerId).HasColumnName("workerId");
            entity.Property(e => e.Age).HasColumnName("age");
            entity.Property(e => e.Email)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.FirstName)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("firstName");
            entity.Property(e => e.Gender)
                .HasMaxLength(2)
                .IsUnicode(false)
                .IsFixedLength()
                .HasColumnName("gender");
            entity.Property(e => e.LastName)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("lastName");
            entity.Property(e => e.UrlBild)
                .HasMaxLength(200)
                .HasColumnName("urlBild");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
