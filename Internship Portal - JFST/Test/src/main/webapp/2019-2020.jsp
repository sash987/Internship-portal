<html lang="en">
   <head> 
      <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
      <meta http-equiv="X-UA-Compatible" content="ie=edge"> 
      <script src="https://code.jquery.com/jquery-3.3.1.js"></script> 
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script> 
      <title>Document</title> 
      <style>
      
      </style>
      <script>
        $(window.onload = function () {
var ctx = document.getElementById("canvas1").getContext('2d');
var options1 = {
title: {
text: "2024 Batch Interns Intake "              
},
data: [              
{
// Change type to "doughnut", "line", "splineArea", etc.
type: "column",
dataPoints: [
{ y: 11, label: "Microsoft" },
{ y: 5, label: "Intuit" },
{ y: 4, label: "DE SHAW" },
{ y: 30, label: "CITI" },
{ y: 11, label: "Deutesche Bank" },
{ y: 16, label: "Mastercard" },
{ y: 20, label: "Pepsi Co" },
{ y: 11, label: "JP Morgan" },
{ y: 11, label: "Myntra" },
{ y: 6, label: "Nike" },
{ y: 5, label: "Amazon" },
{ y: 7, label: "Flipkart" },
{ y: 25, label: "Dell" },
{ y: 28, label: "Oracle" },
{ y: 18, label: "Optum" },
{ y: 10, label: "Boeing" },
{ y: 26, label: "Infosis" },
{ y: 28, label: "Barclays" }
]
}
]

};




var ctx_2 = document.getElementById("canvas2").getContext('2d');
var options2 = {
animationEnabled: true,
theme: "light2",
title:{
text: "2024 batch vs 2023 batch"
},
axisX:{
valueFormatString: "DD MMM"
},
axisY: {
title: "Number of Sales",
suffix: "K",
minimum: 30
},
toolTip:{
shared:true
},  
legend:{
cursor:"pointer",
verticalAlign: "bottom",
horizontalAlign: "left",
dockInsidePlotArea: true,
itemclick: toogleDataSeries
},
data: [{
type: "line",
showInLegend: true,
name: "2024",
markerType: "square",
axisYType: "secondary",
color: "#F08080",
axisYType: "secondary",
dataPoints: [
{ y: 11, label: "Microsoft" },
{ y: 5, label: "Intuit" },
{ y: 4, label: "DE SHAW" },
{ y: 30, label: "CITI" },
{ y: 11, label: "Deutesche Bank" },
{ y: 16, label: "Mastercard" },
{ y: 20, label: "Pepsi Co" },
{ y: 11, label: "JP Morgan" },
{ y: 11, label: "Myntra" },
{ y: 6, label: "Nike" },
{ y: 5, label: "Amazon" },
{ y: 7, label: "Flipkart" },
{ y: 25, label: "Dell" },
{ y: 28, label: "Oracle" },
{ y: 18, label: "Optum" },
{ y: 10, label: "Boeing" },
{ y: 26, label: "Infosis" },
{ y: 28, label: "Barclays" }
]
},
{
type: "line",
showInLegend: true,
name: "2023",
lineDashType: "dash",
axisYType: "secondary",
dataPoints: [
{ y: 8, label: "Microsoft" },
{ y: 1, label: "Intuit" },
{ y: 2, label: "DE SHAW" },
{ y: 24, label: "CITI" },
{ y: 9, label: "Deutesche Bank" },
{ y: 11, label: "Mastercard" },
{ y: 19, label: "Pepsi Co" },
{ y: 9, label: "JP Morgan" },
{ y: 7, label: "Myntra" },
{ y: 6, label: "Nike" },
{ y: 5, label: "Amazon" },
{ y: 6, label: "Flipkart" },
{ y: 25, label: "Dell" },
{ y: 28, label: "Oracle" },
{ y: 16, label: "Optum" },
{ y: 8, label: "Boeing" },
{ y: 25, label: "Infosis" },
{ y: 20, label: "Barclays" }
]
}]
};
$("#chartContainer2").CanvasJSChart(options2);
function toogleDataSeries(e){
if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
e.dataSeries.visible = false;
} else{
e.dataSeries.visible = true;
}
e.chart.render();
}
$("#chartContainer1").CanvasJSChart(options1);

});
    </script> 
   </head> 

   <body> 
      <div>
      <canvas id="canvas1" width="240px" height="240px"></canvas> 
         <div id="chartContainer1" style="height: 400px; width: 100%;"></div>
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
<h3>Companies visiting Cummins College of Engineering and the number of candidates taken by each company for the academic year 2022-2023.</h3>
</div> 
      <div> 
      <canvas id="canvas2" width="240px" height="240px"></canvas>
        <div id="chartContainer2" style="height: 300px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>     
</div>  
   </body>
</html>
