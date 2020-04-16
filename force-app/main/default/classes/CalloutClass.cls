public class CalloutClass 
{
    //This method is called  from the triggers asynchronously so it is called as future method
    @future(callout=true)
    public static void makeCallout()
    {
        HttpRequest request = new HttpRequest();
        // Set the endpoint URL.
        String endpoint = 'http://yourHost/yourService';
        request.setEndPoint(endpoint);
        // Set the HTTP verb to GET.
        request.setMethod('GET');
        // Send the HTTP request and get the response.
        HttpResponse response = new HTTP().send(request);
    }
}