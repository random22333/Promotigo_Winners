using Microsoft.AspNetCore.Mvc;
using Promotigo_Winners.Models;
using Promotigo_Winners.Services.Interfaces;
using System.Diagnostics;
using Moq;
using System.Collections.Generic;
using Promotigo_Winners.Controllers;
using Promotigo_Winners.Services;
using Xunit;
using Microsoft.Extensions.Logging;

namespace PromotigoTest
{
    public class HomeControllerTests
    {
        private readonly Mock<IEntryService> _mockEntryService;          
        private readonly HomeController _controller;

        public HomeControllerTests()
        {             
            _mockEntryService = new Mock<IEntryService>();
            _controller = new HomeController(_mockEntryService.Object);
        }

        [Fact]
        public void Index_Returns_ViewResult()
        {
            // Act
            var result = _controller.Index();

            // Assert
            Assert.IsType<ViewResult>(result);
        }

        [Fact]
        public void DrawWinners_Returns_CorrectNumberOfWinners()
        {
            // Arrange
            int numberOfWinners = 3;
            var expectedWinners = new List<Entry>
            {
                new Entry { FirstName = "John", LastName = "Doe", Email = "john.doe@example.com", PhoneNumber = "555-0101" },
                new Entry { FirstName = "Jane", LastName = "Smith", Email = "jane.smith@example.com", PhoneNumber = "555-0102" },
                new Entry { FirstName = "Alice", LastName = "Johnson", Email = "alice.johnson@example.com", PhoneNumber = "555-0103" }
            };

            _mockEntryService.Setup(service => service.ValidateEntryNumber(numberOfWinners))
                             .Returns((true, ""));
            _mockEntryService.Setup(service => service.DrawWinners(numberOfWinners))
                             .Returns(expectedWinners);

            // Act
            var result = _controller.DrawWinners(numberOfWinners) as JsonResult;
            var winners = result.Value as List<Entry>;

            // Assert
            Assert.NotNull(result);
            Assert.IsType<JsonResult>(result);
            Assert.NotNull(winners);
            Assert.Equal(numberOfWinners, winners.Count);
            Assert.Equal(expectedWinners[0].FirstName, winners[0].FirstName);
            Assert.Equal(expectedWinners[0].LastName, winners[0].LastName);
            Assert.Equal(expectedWinners[0].Email, winners[0].Email);
            Assert.Equal(expectedWinners[0].PhoneNumber, winners[0].PhoneNumber);
            Assert.Equal(expectedWinners[1].FirstName, winners[1].FirstName);
            Assert.Equal(expectedWinners[1].LastName, winners[1].LastName);
            Assert.Equal(expectedWinners[1].Email, winners[1].Email);
            Assert.Equal(expectedWinners[1].PhoneNumber, winners[1].PhoneNumber);
            Assert.Equal(expectedWinners[2].FirstName, winners[2].FirstName);
            Assert.Equal(expectedWinners[2].LastName, winners[2].LastName);
            Assert.Equal(expectedWinners[2].Email, winners[2].Email);
            Assert.Equal(expectedWinners[2].PhoneNumber, winners[2].PhoneNumber);
        }

    }
}
