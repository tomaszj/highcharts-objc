function createLineScopingChart(chartTitle, yAxisTitle, dataTitle, dataString) {
    jQuery(function() {
       // Create the chart	
       window.chart = new Highcharts.StockChart({
            chart: {
            renderTo: 'container',
            backgroundColor: 'rgba(255,255,255,0)',
                                                //margin: [0,0,0,0]
            },
            
            rangeSelector: {
            selected: 5,
            inputEnabled: false
            },
            
            title: {
            text: chartTitle
            },
            
            xAxis: {
            maxZoom: 14 * 24 * 3600000 // fourteen days
            },
            yAxis: {
            title: {
            text: yAxisTitle
            }
            },
    
            
            series: [{
                     name: dataTitle,
                     data: dataString
                     }]
            });
       });
}

function setSeries(seriesName, seriesData) {
    window.chart.series = [{
        name: seriesName,
        data: seriesData
    }]
}