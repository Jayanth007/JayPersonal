public class cacheTest {

    public string getCache()
    {
        // Get partition
Cache.SessionPartition sessionPart = Cache.Session.getPartition('local.CurrencyCache');

// Add cache value to the partition
sessionPart.put('FavoriteCurrency', 'JPY');

// Retrieve cache value from the partition
String cachedRate = (String)sessionPart.get('FavoriteCurrency');
    return cachedRate;
    }
}