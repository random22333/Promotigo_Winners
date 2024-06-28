using Promotigo_Winners.Data;
using Promotigo_Winners.Models;
using Promotigo_Winners.Services.Interfaces;

namespace Promotigo_Winners.Services
{
    public class EntryService : IEntryService
    {
        private readonly ApplicationDbContext _context;

        public EntryService(ApplicationDbContext context)
        {
            _context = context;
        }

        public List<Entry> DrawWinners(int numberOfWinners)
        {
            //use the "randomness" of GUID creation
            return _context.Entries.OrderBy(r => Guid.NewGuid()).Take(numberOfWinners).ToList();
        }

        public List<Entry> DrawWinnersUsingRandom(int numberOfWinners)                   
        {
            //use framework Random
            var entries = _context.Entries.ToList();
            var random = new Random();
            var winners = entries.OrderBy(x => random.Next()).Take(numberOfWinners).ToList();
            return winners;
        }

        public int NumberOfEntries()                   
        {
            return _context.Entries.Count();
        }

        public(bool isValid, string message) ValidateEntryNumber(int numberOfWinners)
        {
            if (numberOfWinners <= 0)
            {
                return (false, "Number of winners must be greater than zero.");
            }

            if (numberOfWinners > NumberOfEntries())
            {
                return (false, "Number of winners must not exceed number of entries");
            }

            return (true, "");
        }
    }
}
