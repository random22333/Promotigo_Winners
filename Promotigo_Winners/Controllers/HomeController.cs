using Microsoft.AspNetCore.Mvc;
using Promotigo_Winners.Models;
using Promotigo_Winners.Services.Interfaces;
using System.Diagnostics;

namespace Promotigo_Winners.Controllers
{
    public class HomeController : Controller
    {                            
        private readonly IEntryService _entryService;

        public HomeController(IEntryService entryService)
        {                  
            _entryService = entryService;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult DrawWinners(int numberOfWinners)
        {
            var (isValid, message) = _entryService.ValidateEntryNumber(numberOfWinners);

            return isValid
                ? Json(_entryService.DrawWinners(numberOfWinners))
                : BadRequest(new { message });

        }

        public IActionResult Privacy()
        {
            return View();
        }

    }
}
