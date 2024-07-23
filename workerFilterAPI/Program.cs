
using Microsoft.EntityFrameworkCore;
using workerFilterAPI.Data;
using workerFilterAPI.Repositories.Implementation;
using workerFilterAPI.Repositories.Interface;

namespace workerFilterAPI
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.

            builder.Services.AddControllers();
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();
            builder.Services.AddDbContext<PeopleFilterDbContext>(options =>
            {
                options.UseSqlServer(builder.Configuration.GetConnectionString("ApplikationConnectionStrings"));
            }
           );
            builder.Services.AddScoped<IWorkerRepository,WorkerRepository>();

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            app.UseSwagger();
            //if (app.Environment.IsDevelopment())
            //{
            //    app.UseSwagger();
            //    app.UseSwaggerUI();
            //}

            app.UseSwaggerUI(options =>
            {
                options.SwaggerEndpoint("/swagger/v1/swagger.json", "v1");
                if (app.Environment.IsDevelopment())
                {
                    options.RoutePrefix = "swagger";
                }
                else
                    options.RoutePrefix = string.Empty;
            });

            app.UseHttpsRedirection();

            app.UseAuthorization();


            app.MapControllers();

            app.Run();
        }
    }
}
