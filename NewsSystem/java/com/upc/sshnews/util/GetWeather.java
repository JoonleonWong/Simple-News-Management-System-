package com.upc.sshnews.util;


import weather.service.WeatherWS;
import weather.service.WeatherWSSoap;

import java.util.List;

public class GetWeather {
    public List<String> getWeatherService(){
        WeatherWS ws = new WeatherWS();
        WeatherWSSoap soap = ws.getPort(WeatherWSSoap.class);
        List<String> list = soap.getWeather("青岛",null).getString();
        return list;
    }
 }
