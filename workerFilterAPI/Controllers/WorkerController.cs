using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using workerFilterAPI.Models;
using workerFilterAPI.Repositories.Interface;

namespace workerFilterAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class WorkerController : ControllerBase
    {
        private readonly IWorkerRepository workerRepository;

        public WorkerController(IWorkerRepository workerRepository)
        {
            this.workerRepository = workerRepository;
        }

        [HttpGet]

        public async Task<IActionResult> GetTheWorkers()
        {
            var workers = await workerRepository.GetAllWorkersAsync();

            if (workers is null) { return NotFound(); }
            var response = new List<Worker>();

            foreach (var worker in workers)
            {
                response.Add(new Worker
                {
                    WorkerId = worker.WorkerId,
                    FirstName = worker.FirstName,
                    LastName = worker.LastName,
                    Email = worker.Email,
                    Age = worker.Age,
                    Gender = worker.Gender,
                    UrlBild = worker.UrlBild,
                });
            }
            return Ok(response);
        }


        [HttpGet("Countries")]

        public async Task<IActionResult> GetTheCountries()
        {
            var countries = await workerRepository.GetAllCountriesAsync();

            if (countries is null) { return NotFound(); }
            var response = new List<Country>();

            foreach (var country in countries)
            {
                response.Add(new Country
                { 
                    CountryId  = country.CountryId,
                    CountryName = country.CountryName
        
                });
            }
            return Ok(response);
        }

        [HttpGet("Cities")]

        public async Task<IActionResult> GetTheCities()
        {
            var cities = await workerRepository.GetAllCitiesAsync();

            if (cities is null) { return NotFound(); }
            var response = new List<City>();

            foreach (var city in cities)
            {
                response.Add(new City
                {
                    CityId= city.CityId,
                    CityName = city.CityName,
                });
            }
            return Ok(response);
        }

        [HttpGet("Professions")]

        public async Task<IActionResult> GetTheProfessions()
        {
            var professions = await workerRepository.GetAllProfessionsAsync();

            if (professions is null) { return NotFound(); }
            var response = new List<Profession>();

            foreach (var prof in professions)
            {
                response.Add(new  Profession
                {
                    ProfessionId = prof.ProfessionId,
                    ProfessionName = prof.ProfessionName,
                });
            }
            return Ok(response);
        }


        [HttpGet("Conjuctions/{countryid:int}/{cityid:int}/{professionid:int}/{age:int}")]

        public async Task<IActionResult> GetAllDataConjuction([FromRoute] int countryid, int cityid, int professionid, int age)
        {
            var conjuctions = await workerRepository.GetAllDataAsync(countryid, cityid, professionid, age);

            if (conjuctions is null) { return NotFound(); }
            var response = new List<Worker>();

            foreach (var conj in conjuctions)
            {
                response.Add(new Worker
                {
                    WorkerId = conj.WorkerId,
                    FirstName = conj.FirstName,
                    LastName = conj.LastName,
                    Email = conj.Email,
                    Gender = conj.Gender,
                    Age = conj.Age,
                    UrlBild = conj.UrlBild,

                });
            }
            return Ok(response);
        }

        [HttpGet]
        [Route("{workerid:int}")]

        public Task<IActionResult> GetWorker([FromRoute] int workerid)
        {
            var worker = workerRepository.GetWorkerById(workerid);

            if (worker == null) { return Task.FromResult<IActionResult>(NotFound()); }
            var response = new Worker();
            response = new Worker
            {
                WorkerId = workerid,
                FirstName = worker.FirstName,
                LastName = worker.LastName,
                Email = worker.Email,
                Gender = worker.Gender,
                Age = worker.Age,
                UrlBild = worker.UrlBild,
                Conjuctions = worker.Conjuctions.Select(x => new Conjuction
                {
                    WorkerId=x.WorkerId,
                    CityId=x.CityId,
                    CountryId=x.CountryId,
                    ProfessionId=x.ProfessionId                
                }).ToList()

            };

            return Task.FromResult<IActionResult>(Ok(response));
        }
    }
}
