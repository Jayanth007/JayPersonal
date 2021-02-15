public with sharing class LogMessage {
  public string requestId {
    get {
      if (requestId == null) {
        requestId = Request.getCurrent().getRequestId();
      }
      return requestId;
    }
    private set;
  }
  public string quiddity {
    get {
      if (quiddity == null) {
        quiddity = Request.getCurrent().getQuiddity().name();
      }
      return quiddity;
    }
    private set;
  }
  public string message { get; set; }
  public LogSeverity severity { get; set; }

  public Sobject toEvent() {
    Log__e logE = new Log__e();
    logE.Log_Message__c = this.message;
    logE.Request_Id__c = this.requestId;
    LogE.Quiddity__c = this.quiddity;
    logE.Severity__c = string.valueOf(this.severity);
    return logE;
  }
  public LogMessage() {
  }
  public LogMessage(string message) {
    this.message = message;
    this.severity = LogSeverity.INFO;
  }
  public LogMessage(Exception ex) {
    /*
    this.message = string.format(
      EXCEPTION_STRING_FORMAT,
      new List<String>{
        ex.getTypeName(),
        ex.getMessage(),
        ex.getStackTraceString()
      }
    );
    */
    this.message =
      'Exception :[' +
      ex.getTypeName() +
      ']: ' +
      ex.getMessage() +
      '\n stacktrace: ' +
      ex.getStackTraceString();
    this.severity = LogSeverity.ERROR;
  }
}