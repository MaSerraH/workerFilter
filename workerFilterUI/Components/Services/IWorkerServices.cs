using workerFilterAPI.Models;

namespace workerFilterUI.Components.Services
{
    public interface IWorkerServices
    {
        Task<IEnumerable<Worker>> GetDataServiceAsync(int countryid, int cityid, int rofessionid, int age);

        Task<IEnumerable<Worker>> GetWorkerServiceAsync();

       Task<IEnumerable<Country>> GetCountriesServiceAsync();
        Task<IEnumerable<City>> GetCitiesServiceAsync();
        Task<IEnumerable<Profession>> GetProfessionsServiceAsync();
    }
}
