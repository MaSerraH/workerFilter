using workerFilterAPI.Models;

namespace workerFilterAPI.Repositories.Interface
{
    public interface IWorkerRepository
    {
        Task<IEnumerable<Worker>>GetAllWorkersAsync();
        Task<IEnumerable<Country>> GetAllCountriesAsync();
        Task<IEnumerable<City>> GetAllCitiesAsync();
        Task<IEnumerable<Profession>> GetAllProfessionsAsync();

        Task<IEnumerable<Worker>> GetAllDataAsync(int countryid, int cityid, int professionid, int age);
        Worker? GetWorkerById(int workerid);

        Profession? GetProfessionById(int professionid);

    }
}
