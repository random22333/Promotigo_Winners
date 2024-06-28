using Microsoft.EntityFrameworkCore;
using Promotigo_Winners.Models;

namespace Promotigo_Winners.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }

        public DbSet<Entry> Entries { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Entry>().HasData(
                new Entry { Id = 1, FirstName = "John", LastName = "Doe", Email = "john.doe@example.com", PhoneNumber = "+44 1234 567890" },
                new Entry { Id = 2, FirstName = "Jane", LastName = "Smith", Email = "jane.smith@example.com", PhoneNumber = "+44 1234 567891" },
                new Entry { Id = 3, FirstName = "Alice", LastName = "Johnson", Email = "alice.johnson@example.com", PhoneNumber = "+44 1234 567892" },
                new Entry { Id = 4, FirstName = "Bob", LastName = "Brown", Email = "bob.brown@example.com", PhoneNumber = "+44 1234 567893" },
                new Entry { Id = 5, FirstName = "Charlie", LastName = "Davis", Email = "charlie.davis@example.com", PhoneNumber = "+44 1234 567894" },
                new Entry { Id = 6, FirstName = "David", LastName = "Miller", Email = "david.miller@example.com", PhoneNumber = "+44 1234 567895" },
                new Entry { Id = 7, FirstName = "Eve", LastName = "Wilson", Email = "eve.wilson@example.com", PhoneNumber = "+44 1234 567896" },
                new Entry { Id = 8, FirstName = "Frank", LastName = "Moore", Email = "frank.moore@example.com", PhoneNumber = "+44 1234 567897" },
                new Entry { Id = 9, FirstName = "Grace", LastName = "Taylor", Email = "grace.taylor@example.com", PhoneNumber = "+44 1234 567898" },
                new Entry { Id = 10, FirstName = "Hank", LastName = "Anderson", Email = "hank.anderson@example.com", PhoneNumber = "+44 1234 567899" },
                new Entry { Id = 11, FirstName = "Ivy", LastName = "Thomas", Email = "ivy.thomas@example.com", PhoneNumber = "+44 1234 567900" },
                new Entry { Id = 12, FirstName = "Jack", LastName = "Jackson", Email = "jack.jackson@example.com", PhoneNumber = "+44 1234 567901" },
                new Entry { Id = 13, FirstName = "Kathy", LastName = "White", Email = "kathy.white@example.com", PhoneNumber = "+44 1234 567902" },
                new Entry { Id = 14, FirstName = "Leo", LastName = "Harris", Email = "leo.harris@example.com", PhoneNumber = "+44 1234 567903" },
                new Entry { Id = 15, FirstName = "Mia", LastName = "Clark", Email = "mia.clark@example.com", PhoneNumber = "+44 1234 567904" },
                new Entry { Id = 16, FirstName = "Nina", LastName = "Lewis", Email = "nina.lewis@example.com", PhoneNumber = "+44 1234 567905" },
                new Entry { Id = 17, FirstName = "Oscar", LastName = "Walker", Email = "oscar.walker@example.com", PhoneNumber = "+44 1234 567906" },
                new Entry { Id = 18, FirstName = "Paul", LastName = "Hall", Email = "paul.hall@example.com", PhoneNumber = "+44 1234 567907" },
                new Entry { Id = 19, FirstName = "Quinn", LastName = "Allen", Email = "quinn.allen@example.com", PhoneNumber = "+44 1234 567908" },
                new Entry { Id = 20, FirstName = "Rose", LastName = "Young", Email = "rose.young@example.com", PhoneNumber = "+44 1234 567909" },
                new Entry { Id = 21, FirstName = "Steve", LastName = "King", Email = "steve.king@example.com", PhoneNumber = "+44 1234 567910" },
                new Entry { Id = 22, FirstName = "Tina", LastName = "Scott", Email = "tina.scott@example.com", PhoneNumber = "+44 1234 567911" },
                new Entry { Id = 23, FirstName = "Uma", LastName = "Green", Email = "uma.green@example.com", PhoneNumber = "+44 1234 567912" },
                new Entry { Id = 24, FirstName = "Victor", LastName = "Adams", Email = "victor.adams@example.com", PhoneNumber = "+44 1234 567913" },
                new Entry { Id = 25, FirstName = "Wendy", LastName = "Baker", Email = "wendy.baker@example.com", PhoneNumber = "+44 1234 567914" },
                new Entry { Id = 26, FirstName = "Xander", LastName = "Nelson", Email = "xander.nelson@example.com", PhoneNumber = "+44 1234 567915" },
                new Entry { Id = 27, FirstName = "Yara", LastName = "Carter", Email = "yara.carter@example.com", PhoneNumber = "+44 1234 567916" },
                new Entry { Id = 28, FirstName = "Zane", LastName = "Mitchell", Email = "zane.mitchell@example.com", PhoneNumber = "+44 1234 567917" },
                new Entry { Id = 29, FirstName = "Amy", LastName = "Perez", Email = "amy.perez@example.com", PhoneNumber = "+44 1234 567918" },
                new Entry { Id = 30, FirstName = "Brian", LastName = "Roberts", Email = "brian.roberts@example.com", PhoneNumber = "+44 1234 567919" },
                new Entry { Id = 31, FirstName = "Catherine", LastName = "Turner", Email = "catherine.turner@example.com", PhoneNumber = "+44 1234 567920" },
                new Entry { Id = 32, FirstName = "Daniel", LastName = "Phillips", Email = "daniel.phillips@example.com", PhoneNumber = "+44 1234 567921" },
                new Entry { Id = 33, FirstName = "Elaine", LastName = "Campbell", Email = "elaine.campbell@example.com", PhoneNumber = "+44 1234 567922" }
            );
        }
    }
}
