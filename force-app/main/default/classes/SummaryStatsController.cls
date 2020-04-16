public class SummaryStatsController {
    public Integer getVeryLargeSummaryStat() {
        Integer closedOpportunityStats = 
            [SELECT COUNT() FROM Opportunity WHERE Opportunity.IsClosed = true];
        return closedOpportunityStats;
    }
}