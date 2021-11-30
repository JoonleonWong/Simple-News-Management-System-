package com.upc.sshnews.pojo;

import java.util.List;

public class ChartModel {

    private String title;

    private List<String> legendData;

    private List<String> xData;

    private List<Integer> serieData;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<String> getLegendData() {
        return legendData;
    }

    public void setLegendData(List<String> legendData) {
        this.legendData = legendData;
    }

    public List<String> getxData() {
        return xData;
    }

    public void setxData(List<String> xData) {
        this.xData = xData;
    }

    public List<Integer> getSerieData() {
        return serieData;
    }

    public void setSerieData(List<Integer> serieData) {
        this.serieData = serieData;
    }


}
