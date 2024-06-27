using workerFilterAPI.Models;

namespace workerFilterUI.Components.Services
{
    public class WorkerServices : IWorkerServices
    {
        private readonly HttpClient httpClient;

        public WorkerServices(HttpClient _httpClient)
        {
            this.httpClient = _httpClient;
        }



        public async Task<IEnumerable<Worker>> GetDataServiceAsync(int countryid, int cityid, int professionid, int age)
        {
            var address = $"/api/Worker/Conjuctions/{countryid}/{cityid}/{professionid}/{age}";
            return await httpClient.GetFromJsonAsync<Worker[]>(address) ?? Enumerable.Empty<Worker>();  
        }

        public async Task<IEnumerable<Worker>> GetWorkerServiceAsync()

        {
            try
            {
            var address = $"api/Worker";
            return await httpClient.GetFromJsonAsync<Worker[]>(address) ?? Enumerable.Empty<Worker>();
            }
            catch (Exception)
            {

                return Enumerable.Empty<Worker>();
            }

        }

        public async Task<IEnumerable<Country>> GetCountriesServiceAsync()
        {
            var address = $"api/Worker/Countries";
            return await httpClient.GetFromJsonAsync<Country[]>(address) ?? Enumerable.Empty<Country>();
        }

        public async Task<IEnumerable<City>> GetCitiesServiceAsync()
        {
            var address = $"api/Worker/Cities";
            return await httpClient.GetFromJsonAsync<City[]>(address) ?? Enumerable.Empty<City>();
        }

        public async Task<IEnumerable<Profession>> GetProfessionsServiceAsync()
        {
            var address = $"api/Worker/Professions";
            return await httpClient.GetFromJsonAsync<Profession[]>(address) ?? Enumerable.Empty<Profession>();
        }
    }
}
