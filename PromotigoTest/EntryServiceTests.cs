using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using Promotigo_Winners.Data;
using Promotigo_Winners.Models;
using Promotigo_Winners.Services;
using Xunit;

namespace PromotigoTest
{
    public class EntryServiceTests
    {
        private readonly ApplicationDbContext _context;
        private readonly EntryService _service;

        public EntryServiceTests()
        {
            var options = new DbContextOptionsBuilder<ApplicationDbContext>()
                .UseInMemoryDatabase(databaseName: "TestDatabase")
                .Options;

            _context = new ApplicationDbContext(options);
            _service = new EntryService(_context);

            // Seed the database
            _context.Entries.AddRange(new List<Entry>
            {
                new Entry { FirstName = "John", LastName = "Doe", Email = "john.doe@example.com", PhoneNumber = "555-0101" },
                new Entry { FirstName = "Jane", LastName = "Smith", Email = "jane.smith@example.com", PhoneNumber = "555-0102" },
                new Entry { FirstName = "Alice", LastName = "Johnson", Email = "alice.johnson@example.com", PhoneNumber = "555-0103" },
                new Entry { FirstName = "Bob", LastName = "Brown", Email = "bob.brown@example.com", PhoneNumber = "555-0104" }
            });
            _context.SaveChanges();
        }

        [Fact]
        public void DrawWinners_Returns_CorrectNumberOfWinners()
        {
            // Arrange
            int numberOfWinners = 2;

            // Act
            var winners = _service.DrawWinners(numberOfWinners);

            // Assert
            Assert.Equal(numberOfWinners, winners.Count);
        }

        [Fact]
        public void DrawWinners_Returns_UniqueWinners()
        {
            // Arrange
            int numberOfWinners = 2;

            // Act
            var winners = _service.DrawWinners(numberOfWinners);

            // Assert
            Assert.Equal(winners.Distinct().Count(), winners.Count);
        }

        [Fact]
        public void ValidateEntryNumber_ZeroNumberOfWinners_ShouldReturnFalseWithErrorMessage()
        {
            // Arrange
            int numberOfWinners = 0;

            // Act
            var (isValid, message) = _service.ValidateEntryNumber(numberOfWinners);

            // Assert
            Assert.False(isValid);
            Assert.Equal("Number of winners must be greater than zero.", message);
        }

        [Fact]
        public void ValidateEntryNumber_ExceedingNumberOfWinners_ShouldReturnFalseWithErrorMessage()
        {
            // Arrange
            int numberOfWinners = _service.NumberOfEntries() + 1; 

            // Act
            var (isValid, message) = _service.ValidateEntryNumber(numberOfWinners);

            // Assert
            Assert.False(isValid);
            Assert.Equal("Number of winners must not exceed number of entries", message);
        }
    }
}
