<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">  
    <html xmlns="http://www.w3.org/1999/xhtml">  
    <head>  
        <title>百度地图-驾车/公交查询</title>  
        <meta charset="utf-8">
        <link href="/staticfile/css/map.css" rel="stylesheet" type="text/css" />  
        <script type="text/javascript" src="/staticfile/js/jquery-1.4.2.js"></script> 
        <!-- http://api.map.baidu.com/api?v=2.0&ak=您的密钥" -->  
        <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=0B3c1575c78bfb0d1c52a0660cae3491"></script>  
    </head>  
    <body>  
        <div class="maincontain" id="test">  
            <div class="eMapsInfo">  
                <!--搜索控制-->  
                <div class="eMapsTop">  
                    <span>线路查询</span> 从  
                    <input class="txt" type="text" value="昌地火炬大厦" id="fromPlace" />  
                    到<input class="txt" type="text" value="${hotelAddress}" id="endInput" /> 

                    <!-- <select id="endInput">  
                        <option value="虹桥T1" selected="selected">虹桥T1</option>  
                        <option value="虹桥T2">虹桥T2</option>  
                        <option value="浦东机场">浦东机场</option>  
                    </select> -->  
                    驾车<input type="radio" name="rdo" checked="checked" value="0"> 
                    公交<input type="radio" name="rdo" value="1" >  
                    <input type="button" value="查询" id="btnSearch" />  
                </div>  
                <!--地图-->  
                <div class="eMaps">  
                    <div class="boxmap" id="container">  
                    </div>  
                </div>  
                <!--右侧选项-->  
                <div class="boxpanel" id="box">  
                    <h5>路线均为实时信息</h5>
                    <div id="startPanel"></div>  
                    <div id="drivingPanel"></div>  
                </div>  
                <div class="clear"></div>  
            </div>  
        </div>  
        <script type="text/javascript">  
      
            var setindex = 0;  
            var map = new BMap.Map("container");            // 创建Map实例  
            var point = new BMap.Point(120.216,30.253);    // 创建点坐标   
            var marker = new BMap.Marker(point);  // 创建标注  
            map.addOverlay(marker);              // 将标注添加到地图中  
            map.centerAndZoom(point, 12);         // 初始化地图,设置中心点坐标和地图级别。 
            map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放  
            map.addControl(new BMap.MapTypeControl({ anchor: BMAP_ANCHOR_TOP_RIGHT, offset: new BMap.Size(10, 10) }));  
            map.addControl(new BMap.NavigationControl());               // 添加平移缩放控件  
            map.addControl(new BMap.ScaleControl());                    // 添加比例尺控件  
            map.addControl(new BMap.OverviewMapControl());              //添加缩略地图控件 
            map.addControl(new BMap.OverviewMapControl({ anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1 }));  
            var sContent =  
    "<h4 style='margin:0 0 5px 0;padding:0.2em 0'>杭州城中香格里拉大酒店  </h4>" +  
    "<p style='margin:0;line-height:1.5;font-size:13px;'>地址：杭州市下城区延安路353号杭州嘉里中心F2 <br/>电话：(0571)87338888</p>" +  
    "</div>";  
            var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象  
            map.openInfoWindow(infoWindow, map.getCenter());      // 打开信息窗口 
            function getInfoW(obj) {  
                var startInfowin = new BMap.InfoWindow("</br>" + obj.title + "</br>" + obj.address + "<p class='t-c'><input value='选为起点' type='button'    onclick='startDeter();' /></p>");  
                return startInfowin;  
            }  
            function getInfoW_M(obj) {  
                startPoint = obj.point;  
                map.openInfoWindow(getInfoW(obj), obj.point);  
            }  
      
            var startResults = null;  
            var startPoint;  
            var driving = new BMap.DrivingRoute(map, { renderOptions: { map: map, autoViewport: true, panel: 'drivingPanel'} });  
            var driving_trans = new BMap.TransitRoute(map, { renderOptions: { map: map, autoViewport: true, panel: 'drivingPanel'} });  
            var startOption = {  
                onSearchComplete: function (results) {  
                    // 判断状态是否正确  
                    if (startSearch.getStatus() == BMAP_STATUS_SUCCESS) {  
                        startResults = results;  
                        // var s = [];  
                        map.clearOverlays();  
                        for (var i = 0; i < results.getCurrentNumPois(); i++) {  
                            // s.push("<div><p><a onmouseover='getInfoW_M(startResults.getPoi(" + i + "))' href='#'>");  
                            // s.push(results.getPoi(i).title);  
                            // s.push("</a></p><p>");  
                            // s.push(results.getPoi(i).address);  
                            // s.push("</p></div>");  
                            var marker_c = new BMap.Marker(results.getPoi(i).point);  
                            (function () {  
                                var cur = i;  
                                var mak = marker_c;  
                                mak.addEventListener("click", function () {  
                                    startPoint = results.getPoi(cur).point;  
                                    this.openInfoWindow(getInfoW(results.getPoi(cur)));      // 打开信息窗口  
                                });  
                            })();  
      
                            map.addOverlay(marker_c);              // 将标注添加到地图中  
                        }  
                        // document.getElementById("startPanel").innerHTML = s.join(""); s 
                    } else { startResults = null; alert("没有搜索到路线，请确定起点是否有效!"); }  
                }  
            };  
      
            //取得交通方式  
            function getType() {  
                var value = "";  
                var radio = document.getElementsByName("rdo");  
                for (var i = 0; i < radio.length; i++) {  
                    if (radio[i].checked == true) {  
                        value = radio[i].value;  
                        break;  
                    }  
                }  
                return value;  
            }  
            function startDeter() {  
                map.clearOverlays();  
                var marker = new BMap.Marker(startPoint);  
                map.addOverlay(marker);  
                map.addOverlay(new BMap.Marker(point));  
                if (setindex == 0) {  
                    driving.search(startPoint, point);  
                } else {  
                    driving_trans.search(startPoint, point);  
                }  
                document.getElementById("startPanel").style.display = "none";  
            }  
      
            //创建2个搜索实例  
            var startSearch = new BMap.LocalSearch(map, startOption);  
              
            //搜索按钮  
            $("#btnSearch").click(function () {  
                setindex = getType();  
                var fromPlace = document.getElementById("fromPlace").value;  
                startSearch.search(fromPlace);  
                var toPlace = $("#endInput").val();  
                switch (setindex) {  
                    case "0":  
                        driving.search(fromPlace, toPlace);  
                        break;  
                    case "1":  
                        driving_trans.search(fromPlace, toPlace);  
                        break;  
                }  
      
                document.getElementById("box").style.display = "block";  
                document.getElementById("startPanel").style.display = "block";  
            });  
      
            //控制收起/展开  
            $("#btnExpand").click(function () {  
                $(this).text($(this).text() == "(收起)" ? "(展开)" : "(收起)");  
                if ($(this).text() == "(收起)") {  
                    $("#startPanel").show();  
                } else {  
                    $("#startPanel").hide();  
                }  
      
            });  
        </script>  
    </body>  
    </html>  