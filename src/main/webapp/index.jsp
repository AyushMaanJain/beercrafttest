<!DOCTYPE html>
<html>
<head>
    <title>Beer Craft</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
     
  <link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
<% 
        int pg=1;
        String p="";
        try{p=request.getParameter("pg").trim();
        pg=Integer.parseInt(p);
        }
        catch(Exception e){
        	pg=1;
        }%>
    <div ng-app="myApp" ng-controller="myCtrl">
        <div id="head">
            <div id="heading">
                <div style="height:17px"></div>
                <input id="searchinput" type="text" ng-model="test" placeholder="write your shortcut here.">
                <div style="height:17px"></div>
            </div>
            
        </div>
<p></p>

        <div class="list" style="">
            <div ng-repeat="x in beer|limitTo:20:<%= (pg-1)*20%>">
                 
                    
                   <img src="{{img[$index%5].image}}"  />
                    <h1>{{x.name}}</h1>
                    <h2>{{x.style}}</h2>
                <p>alcohol by volume:{{x.abv}}<br>
                    International Bitterness Units scale:{{x.ibu}}
                
                </p>
            </div>
        </div>
<div id="bottom">
        
        
        <%
        if(pg>1){
        	out.print("<a id='prev' href='?pg="+(pg-1)+"' style='float:left'>previous</a>");
        }
        if(pg<121){
        	out.print("<a id='prev' href='?pg="+(pg+1)+"' style='float:right'>next</a>");
        }
        
        %>
    
    
    </div>
    </div>
    
    <script src="js/Data.js"></script>
    
    <script></script>
</body>
</html>