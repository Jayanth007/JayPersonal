global class findSmithAccounts {
	global final List<Account> accounts;

	global findSmithAccounts() {
		accounts = [select Name from Account where Name LIKE 'Smith_%'];
	}

	global List<Account> getSmithAccounts() {
		return accounts;
	}
}