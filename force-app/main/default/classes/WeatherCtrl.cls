global class WeatherCtrl {
    public WeatherCtrl() {

    }
    @AuraEnabled (cacheable=true)
        global static WeatherForecateData performCallout(String loc) {
            HttpRequest req = new HttpRequest();
            req.setEndpoint('callout:WeatherForecasteAPI?city=' + loc + '&key=f8de91b22f444abcb274d86eea12c5a4');
            req.setMethod('GET');
            Http http = new Http();
            HTTPResponse res = http.send(req);
            JSONParser parser = JSON.createParser(res.getBody());
     
            WeatherForecateData currentWeather = new WeatherForecateData();
     
            while (parser.nextToken() != null) {
                if(parser.getCurrentToken() == JSONToken.FIELD_NAME) {
                    parser.nextValue();
                    if (parser.getCurrentName() == 'temp') {
                        currentWeather.cityTemp = Decimal.valueOf(parser.getText());
                    } else if (parser.getCurrentName() == 'city_name') {
                        currentWeather.cityName = parser.getText();
                    } else if (parser.getCurrentName() == 'state_code') {
                        currentWeather.state = parser.getText();
                    } else if (parser.getCurrentName() == 'timezone') {
                        currentWeather.cityTimeZone = parser.getText();
                    } else if (parser.getCurrentName() == 'wind_spd') {
                        currentWeather.cityWindSpeed = Decimal.valueOf(parser.getText());
                    } else if (parser.getCurrentName() == 'lat') {
                        currentWeather.cityLat = parser.getText();
                    } else if (parser.getCurrentName() == 'lon') {
                        currentWeather.cityLong = parser.getText();
                    } else if (parser.getCurrentName() == 'precip') {
                        currentWeather.cityPrecip = Decimal.valueOf(parser.getText());
                    }
                }
            }
            return currentWeather;
        }
         
     
        global class WeatherForecateData {
            @AuraEnabled public String cityName;
            @AuraEnabled public String cityTimeZone;
            @AuraEnabled public Decimal cityTemp;
            @AuraEnabled public String state;
            @AuraEnabled public Decimal cityWindSpeed;
            @AuraEnabled public String cityLat;
            @AuraEnabled public String cityLong;
            @AuraEnabled public Decimal cityPrecip;
        }
    
}