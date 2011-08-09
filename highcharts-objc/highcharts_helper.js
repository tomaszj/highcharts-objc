function createLineChart(chartTitle, yAxisTitle, dataTitle, dataPoints) {
    var chart;
    jQuery(function() {
        chart = new Highcharts.Chart({
            chart: {
                renderTo: 'container',
                defaultSeriesType: 'line',
                marginBottom: 50,
                height: window.height,
                width: window.width
            },
            title: {
                text: chartTitle,
                x: -20 //center
            },
//            subtitle: {
//                text: 'Source: WorldClimate.com',
//                x: -20
//            },
            xAxis: {
                labels: {
                    formatter: function() {
                        return this.value + "";
                    }
                },
                maxPadding: 0.05,
                showLastLabel: true
            },
            yAxis: {
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }],
                 title: {
                     text: yAxisTitle
                 }
            },
            tooltip: {
                formatter: function() {
                    return '<b>'+ 'Data' +'</b><br/>'+
                    this.x +': '+ this.y +' [units]';
                }
            },
            legend: {
                layout: 'horizontal',
                align: 'bottom',
                verticalAlign: 'top',
                x: -10,
                y: 20,
                borderWidth: 0
            },
            series: [{
                name: dataTitle,
                data: dataPoints
            }]
        });
        
        
    }); 
}

function createPieChart(chartTitle, dataArray) {
    var chart;
    var limit;
    $(document).ready(function() {
      limit = Math.floor(Math.min(window.innerHeight, window.innerWidth) * 0.66);
      chart = new Highcharts.Chart({
           chart: {
               renderTo: 'container',
               defaultSeriesType: 'pie',
                                   //               animation: false,
               margin: [0, 0, 0, 0],                                        
               height: window.height,
               width: window.width
           },
           tooltip: {
               formatter: function() {
                   return '<b>'+ this.point.name +'</b>: '+ this.y +' %';
               }

           },
           plotOptions: {
               pie: {
                   allowPointSelect: false,
                   center: [window.innerWidth/2, window.innerHeight*0.45],
                   animation: false,
                   size: limit,
                   cursor: 'pointer',
                   slicedOffset: 5,
                   dataLabels: {
                       enabled: false
                   },
                   showInLegend: true
               }
           },
        
                                   legend: {
                                       y: window.innerHeight * 0.75,
                                       verticalAlign: 'top'
                                   },
                                   
                                   
           title: {
               text: chartTitle,
               x: 0,
               y: 5
           },
           series: [{
                type: 'pie',
                name: 'Data',
                animation: false,
                data: dataArray
                }]
       });
  });
}

// prevent scrolling/bouncing
jQuery(function(){
   document.ontouchmove = function(e){ e.preventDefault(); }
});