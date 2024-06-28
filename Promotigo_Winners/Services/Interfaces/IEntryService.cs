using Promotigo_Winners.Models;

namespace Promotigo_Winners.Services.Interfaces
{
    public interface IEntryService
    {
        List<Entry> DrawWinners(int numberOfWinners);

        List<Entry> DrawWinnersUsingRandom(int numberOfWinners);
        int NumberOfEntries();
        (bool isValid, string message) ValidateEntryNumber(int numberOfWinners);
    }
}
