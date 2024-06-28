using Microsoft.EntityFrameworkCore;
using workerFilterAPI.Data;
using workerFilterAPI.Models;
using workerFilterAPI.Repositories.Interface;

namespace workerFilterAPI.Repositories.Implementation
{
    public class WorkerRepository : IWorkerRepository
    {
        private readonly PeopleFilterDbContext dbContext;

        public WorkerRepository(PeopleFilterDbContext dbContext)
        {
            this.dbContext = dbContext;
        }

        public async Task<IEnumerable<Worker>> GetAllWorkersAsync()
        {
            return await dbContext.Workers.ToListAsync();
        }

        public async Task<IEnumerable<Country>> GetAllCountriesAsync()
        {
            return await dbContext.Countries.ToListAsync();
        }

        public async Task<IEnumerable<City>> GetAllCitiesAsync()
        {
            return await dbContext.Cities.ToListAsync();
        }

        public async Task<IEnumerable<Profession>> GetAllProfessionsAsync()
        {
            return await dbContext.Professions.ToListAsync();
        }

        public async Task<IEnumerable<Worker>> GetAllDataAsync(int countryid, int cityid, int professionid, int age)
        {
            return await dbContext.Workers.Include(w => w.Conjuctions).Where(x => x.Conjuctions.Any(y => y.CountryId == countryid || countryid == 0)).Where(a => a.Conjuctions.Any(b => b.CityId == cityid || cityid == 0)).Where(c => c.Conjuctions.Any(d => d.ProfessionId == professionid || professionid == 0)).Where(e => e.Age <= age).ToListAsync();
        }

        public  Worker? GetWorkerById(int workerid)
        {
            return  dbContext.Workers.Include(x => x.Conjuctions).Where(y => y.WorkerId == workerid).FirstOrDefault();
        }
    }
}
