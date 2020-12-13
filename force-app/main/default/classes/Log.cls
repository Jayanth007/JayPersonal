public with sharing class Log {
  private static Log currentInstance;
  private list<LogMessage> buffer;

  private Log() {
    buffer = new List<LogMessage>();
  }
  public static Log get() {
    if (currentInstance == null) {
      currentInstance = new Log();
    }
    return currentInstance;
  }
  private LogMessage logMessage = new LogMessage();

  public void add(string messgaeToLog) {
    this.add(messgaeToLog, null);
  }
  public void add(string messgaeToLog, LogSeverity severity) {
    logMessage msg = new logMessage(messgaeToLog);
    if (severity != null) {
      msg.severity = severity;
    }
    buffer.add(msg);
  }
  public void add(Exception exceptionToLog) {
    this.add(exceptionToLog, null);
  }
  public void add(Exception exceptionToLog, LogSeverity severity) {
    logMessage msg = new logMessage(exceptionToLog);
    if (severity != null) {
      msg.severity = severity;
    }
    buffer.add(msg);
  }
  public void publish() {
    List<SObject> runLogs = new List<SObject>();
    for (LogMessage msg : this.buffer) {
      runLogs.add(msg.toEvent());
    }
    Eventbus.publish(runLogs);
    this.buffer.clear();
  }
  public void publish(Exception execeptionToLog) {
  }
  public void publish(string messageToLog) {
  }
}
