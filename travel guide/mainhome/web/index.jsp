<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
  <title>出行那些事儿...</title>
  <meta name="description" content="How to create a parallax scrolling effect with jQuery, HTML and CSS">
  <meta name="author" content="Richard Shepherd, Smashing Magazine">

  <script type="text/javascript" src="script/jquery.js"></script>
  <script type="text/javascript" src="script/index.js"></script>
  <script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
  <script src="js/gooey.min.js"></script>
  <%----%>
  <script type="text/javascript" src="jquery-1.11.3.js"></script>
  <%----%>
  <link rel="stylesheet" href="js/reset.css">
  <link rel="stylesheet" href="js/style.css">
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

  <link rel="stylesheet" type="text/css" href="style/style.css" />
  <link href=" http://localhost:63342/f/index.html" rel="stylesheet" type="style/style.css">
  <link type="text/css" rel="stylesheet" href="css/datouwang.css" />
  <link rel="stylesheet" href="style/bootstrap.min.css">
  <link rel="stylesheet" href="style/font-awesome.min.css">
  <link rel="stylesheet" href="style/gooey.min.css">
  <link rel="stylesheet" href="style/livedemo.css">

  <style type="text/css">

    .sub_menu_frame {
      position: fixed;
      top: 200px;
      /*width: 280px;*/
      /*height:400px;*/
      right:20px;
      /*left:200px;*/
      overflow:auto;
      background:white;
      Opacity:0.6;
      border-radius: 40px;
      z-index:1;
    }
    .avtive{}

    .prettyprint ol.linenums > li {
      list-style-type: decimal;
    }
    #l-map{height:600px;width:750px;border:15px inset #c0c0c0;border-radius: 40px; margin:-200px 620px auto;}
    #m-result{font-size:16px;font-style:normal;width:200px;height:400px;}
    /*.demo{font-size:18px;font-style:normal;width:850px;height:40px;margin:40px; margin-right:40px;}*/
    .div{ display:none;}
    a { display:block}
    .radmenu{margin:auto auto auto auto;}
  </style>

  <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script>

</head>

<body>

<div id="main" role="main">
  <%--<div class="form-wrapper"   style="width:0px;height:0px;">--%>
    <div class="sub_menu_frame">
      <ul class="sub_menu">
        <li class='icbtn'><a href="#second"><img src="images/biao1.png" /></a></li>
        <li class='icbtn'><a href="#third"><img src="images/biao2.png" /></a></li>
        <li class='icbtn'><a href="#fourth"><img src="images/biao3.png" /></a></li>
        <li class='icbtn'><a href="#five"><img src="images/biao4.png" /></a></li>
      </ul>
    </div>
  <%--</div>--%>

  <section id="second" class="story" data-speed="8" data-type="background" style="background-position: 50% -200px;color:#000;">
    <div class="mainbanner"style="margin:-50px">
      <div class="mainbanner_window">
        <div class="form-wrapper" style="Opacity:0.8;height:50px;width:500px;margin:370px;margin-left:auto;magin-right:auto;">
          <%--<br/>--%>
          <div ><input id="txtView" size="20" value="" placeholder="The City U Want to Go:" style="width:400px;font-size:16px;margin:5px;color:#000;"  autofocus x-webkit-speech /> <button style="height:28px ;width:50px;font-size:16px;border-radius: 5px;Opacity:0.8;" onClick="getPoint2()">GO</button> </div>
        </div>

        <ul id="slideContainer">

          <li><a ><img src="images/back1.jpg" width="2000" height="1000"   /></a></li>
          <li><a ><img src="images/back2.jpg" width="2000" height="1000"   /></a></li>
          <li><a ><img src="images/back3.jpg" width="2000" height="1000"   /></a></li>
          <li><a ><img src="images/back4.jpg" width="2000" height="1000"  /></a></li>
          <li><a ><img src="images/back5.jpg" width="2000" height="1000"  /></a></li>
          <li><a ><img src="images/back6.jpg" width="2000" height="1000"  /></a></li>

        </ul>

      </div>
      <ul class="mainbanner_list"style="margin:130px;margin-left:-80px;">
        <li ><a href="javascript:void(0);">1</a></li>
        <li><a href="javascript:void(0);">2</a></li>
        <li><a href="javascript:void(0);">3</a></li>
        <li><a href="javascript:void(0);">4</a></li>
        <li><a href="javascript:void(0);">5</a></li>
        <li><a href="javascript:void(0);">6</a></li>
      </ul>
    </div>
    <%--<div id="r-result">The City U Want to Go:<input id="txtView" size="20" value="" style="width:150px;" /> <button  onClick="getPoint2()">GO</button> </div>--%>
    <div id="searchResultPanel" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;color:#000"></div>
  </section>

  <section id="third" class="story" data-speed="4" data-type="background" data-offsety="250" style="background-position: 50% -25px;">
    <div class="container"style="font-size:24px;">
      <section>
        <div class="tabs tabs-style-fillup">
          <nav>
            <ul>
              <li><a href="#weather1" class="icon icon-home"><span>Weather</span></a></li>
              <li><a href="#others" class="icon icon-gift"><span>Others</span></a></li>
            </ul>
          </nav>

          <div class="content-wrap">
            <input  id="city" style="background-color:transparent;color:white;font-size:40px;border:none;width:290px;margin-top: 5px;text-align: center;">
            <section id="weather1">
              <div id="va-accordion" class="va-container" style="margin:40px;margin-left:22px;">
                <%--<input  id="city" style="background-color:transparent;color:white;font-size:40px;border:none;width:290px;margin-top: 5px;text-align: center;">--%>
                <div class="va-nav">
                  <span class="va-nav-prev">Previous</span>
                  <span class="va-nav-next">Next</span>
                </div>
                <!--以上表示上下两个箭头-->
                <div class="va-wrapper">

                  <div class="va-slice va-slice-1">
                    <h3 class="va-title" style="font-size:24px;font-weight:700;text-align:left;">CURRENT TIME</h3>
                    <div class="va-content"style="text-align:left;">
                      <img id="big" src="">

                      <p  id="deg"  style="margin-left:25px"></p>

                    </div>
                  </div>

                  <div class="va-slice va-slice-2" >
                    <h3 class="va-title"  id="forecast0"style="font-size:24px;font-weight:700;text-align:left;"></h3>
                    <div class="va-content"style="text-align:left;">
                      <img id="forecastimg0" src="">
                      <p id="forecastdeg0"></p>
                    </div>
                  </div>

                  <div class="va-slice va-slice-3">
                    <h3 class="va-title" id="forecast1"style="font-size:24px;font-weight:700;text-align:left;"></h3>
                    <div class="va-content"style="text-align:left;">
                      <img id="forecastimg1" src="" >
                      <p id="forecastdeg1"></p>
                    </div>
                  </div>

                  <div class="va-slice va-slice-4">
                    <h3 class="va-title" id="forecast2"style="font-size:24px;font-weight:700;text-align:left;"></h3>
                    <div class="va-content"style="text-align:left;">
                      <img id="forecastimg2" src="">
                      <p id="forecastdeg2"></p>
                    </div>
                  </div>

                  <div class="va-slice va-slice-5">
                    <h3 class="va-title" id="forecast3"style="font-size:24px;font-weight:700;text-align:left;"></h3>
                    <div class="va-content"style="text-align:left;">
                      <img id="forecastimg3" src="">
                      <p id="forecastdeg3"></p>
                    </div>
                  </div>


                </div>
              </div>
            </section>
          </div>

          <div class="content-wrap">
            <section id="others">
              <nav>
                <ul>
                  <li><a class="icon icon-home"><span>Sunrise</span></a></li>
                  <li><a class="icon icon-gift"><span>Sunset</span></a></li>
                  <li><a class="icon icon-upload"><span>Speed</span></a></li>
                  <li><a class="icon icon-coffee"><span>Humidity</span></a></li>
                  <li><a class="icon icon-config"><span>Visibility</span></a></li>
                </ul>
              </nav>
              <div class="information" style="margin-top:100px;width:1300px;color:#fff">
                <div id="sunrise" style="margin-left:-1080px;margin-top: 0px;"></div>
                <div id="sunset" style="margin-left:-600px;margin-top: -85px;"></div>
                <div id="speed" style="margin-left:-150px;margin-top: -85px;"></div>
                <div id="humidity" style="margin-left:300px;margin-top: -85px;"></div>
                <div id="visibility" style="margin-left:750px;margin-top: -85px;"></div>
                <!-- <input  id="city" style="background-color:transparent;color:white;font-size:40px;border:none;width:290px;margin-top: 5px;text-align: center;"> -->
              </div>
            </section>
          </div>
          <!-- /content -->
        </div><!-- /tabs -->
      </section>

    </div>
  </section>

  <section id="fourth" class="story" data-speed="4" data-type="background" data-offsety="250" style="background-position: 50% -25px;">
    <div id="m-result">
      <div class="form-wrapper" style="Opacity:0.6;height:60px;width:500px;margin:190px;margin-left:-735px;">
        <div style="color:#000"id="m-result1" onclick=getresult1()></div>
      </div>
      <div class="form-wrapper" style="Opacity:0.6;height:60px;width:500px;margin:260px;margin-left:-735px;">
        <div style="color:#000"id="m-result2" onclick=getresult2()></div>
      </div>
      <div class="form-wrapper" style="Opacity:0.6;height:60px;width:500px;margin:330px;margin-left:-735px;">
        <div style="color:#000"id="m-result3" onclick=getresult3()></div>
      </div>
      <div class="form-wrapper" style="Opacity:0.6;height:60px;width:500px;margin:400px;margin-left:-735px;">
        <div style="color:#000"id="m-result4" onclick=getresult4()></div>
      </div>
      <div class="form-wrapper" style="Opacity:0.6;height:60px;width:500px;margin:470px;margin-left:-735px;">
        <div style="color:#000"id="m-result5" onclick=getresult5()></div>
      </div>
      <div class="form-wrapper" style="Opacity:0.6;height:60px;width:500px;margin:540px;margin-left:-735px;">
        <div style="color:#000"id="m-result6" onclick=getresult6()></div>
      </div>
    </div>
    <div class="form-wrapper" style="Opacity:0.6;height:130px;width:500px;margin:250px;margin-left:-735px;padding:0em;font-size:18px;font-weight:400;">
      <p style="text-indent:0.6em;">  What we Bring to U?</p>
      <p style="text-indent:0.6em;">   Just write down the View U Love:</p>
      <p style="text-indent:0.6em;"> <input id="txtCity" type="text"style="width:400px;"/> <button  onClick="setPlace1()"style="width:50px;border-radius: 5px;">GO</button></p>
      <div id="searchResultPanel1" style="border:1px solid #C0C0C0;width:150px;height:auto; display:none;color:#000"></div>
    </div>
    <div id="l-map"></div>
  </section>

  <section id="five" class="story" data-speed="4" data-type="background" data-offsety="250" style="background-position: 50% -50px;">
    <div style="text-align:center;clear:both">
      <script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
      <script src="/follow.js" type="text/javascript"></script>
    </div>
    <input id="button1" name="name" type="button" onclick="toggle('div1')" value="video" style="display:none;Opacity:0.8;margin-bottom:10px;margin-right:10px;">
    <div id="div1" class="div">
      <video src="v.mp4" autoplay="autoplay" onended="endd()"></video>
    </div>
    <div class="radmenu"><a href="#" class="show"  style="font-size:20px;">ABOUT US</a>
      <ul>
        <li>
          <a href="#" class=""><img src="images/v.png" alt=""  onclick="buttonon()"/></a>
        </li>
        <li>
          <a href="#"><img src="images/lwy.png" alt="" /></a>
          <ul>
            <li><a href="#"style="font-size:20px;">氧气青年</a></li>
            <li><a href="#"style="font-size:20px;">林婉莹</a></li>
            <li><a href="#"style="font-size:20px;">呆呆</a></li>
            <li><a href="#"style="font-size:20px;">呆萌</a></li>
            <li><a href="#"style="font-size:20px;">网页设计</a></li>
          </ul>
        </li>
        <li>
          <a href="#"><img src="images/ly.png" alt="" /></a>
          <ul>
            <li><a href="#"style="font-size:20px;">文艺青年</a></li>
            <li><a href="#"style="font-size:20px;">李彦</a></li>
            <li><a href="#"style="font-size:20px;">图图</a></li>
            <li><a href="#"style="font-size:20px;">文静</a></li>
            <li><a href="#"style="font-size:20px;">网页设计</a></li>
          </ul>
        </li>
        <li>
          <a href="#"><img src="images/liuy.png" alt="" /></a>
          <ul>
            <li><a href="#"style="font-size:20px;">奋发青年</a></li>
            <li><a href="#"style="font-size:20px;">刘莹</a></li>
            <li><a href="#"style="font-size:20px;">皇上</a></li>
            <li><a href="#"style="font-size:20px;">幽默</a></li>
            <li><a href="#"style="font-size:20px;">网页设计</a></li>
          </ul>
        </li>
        <li>
          <a href="#">  <img src="images/yy.png" alt="121" /></a>
          <ul>
            <li><a href="#"style="font-size:20px;">理想青年</a></li>
            <li><a href="#"style="font-size:20px;">Meg Yu</a></li>
            <li><a href="#"style="font-size:20px;">None</a></li>
            <li><a href="#"style="font-size:20px;">开朗</a></li>
            <li><a href="#"style="font-size:20px;">网页设计</a></li>
          </ul>
        </li>
      </ul>
    </div>

  </section>

</div>

<%----%>
<script type="text/javascript">
  $(function(){
    $(".sub_menu li a").click(function(){
      $(".sub_menu li a").removeClass('avtive');
      $(this).addClass('avtive');
    });
  });
  $( window ).scroll(function() {
    var hh=$( 'h2' );
    var sctop = $(this).scrollTop();
    hh.each(function(){
      var park=$(this).offset().top-sctop;
      if(park<1300 && park>0)
      {
        $(".sub_menu li a").removeClass('avtive');
        var inde=$(this).index()-1;
        $(".sub_menu li:eq("+inde+") a").addClass('avtive');
        console.log($(this).index()+$(this).html());
      }
    });
  });
</script>
<%----%>
<script type="text/javascript">

  var myIcon = new BMap.Icon("images/location1.png", new BMap.Size(45,45));
  var mPoint = new BMap.Point(116.404, 39.915);

  // 百度地图API功能
  var map = new BMap.Map("l-map");            // 创建Map实例
  map.centerAndZoom("北京",12);                   // 初始化地图,设置城市和地图级别。
  map.enableScrollWheelZoom();

  var geoCtrl = new BMap.GeolocationControl({
    showBar       :false
    ,showAddressBar       :  false//是否显示
    , enableAutoLocation :  true//首次是否进行自动定位
    , offset              : new BMap.Size(0,0)
    //, locationIcon     : icon //定位的icon图标
  });

  //监听定位成功事件
  var p=1;
  geoCtrl.addEventListener("locationSuccess",function(p){
    console.log(p);
  });

  //监听定位失败事件
  geoCtrl.addEventListener("lpocationError",function(p){
    console.log(p);
  });


  // 将定位控件添加到地图
  map.addControl(geoCtrl);

  //创建鱼骨控件
  var navCtrl = new BMap.NavigationControl({
    anchor: BMAP_ANCHOR_TOP_LEFT //设置鱼骨控件的位置
  });
  // 将鱼骨添加到地图当中
  map.addControl(navCtrl);

  var acc = new BMap.Autocomplete(    //建立一个自动完成的对象
          {"input" : "txtCity"
            ,"location" : map
          });

  acc.addEventListener("onhighlight", function(p) {  //鼠标放在下拉列表上的事件
    var str1 = "";
    var _value1 = p.fromitem.value;
    var value1 = "";
    if (p.fromitem.index > -1) {
      value1 = _value1.province +  _value1.city +  _value1.district +  _value1.street +  _value1.business;
    }
    str1 = "FromItem<br />index = " + p.fromitem.index + "<br />value = " + value1;

    value1 = "";
    if (p.toitem.index > -1) {
      _value1 = e.toitem.value;
      value1 = _value1.province +  _value1.city +  _value1.district +  _value1.street +  _value1.business;
    }
    str1 += "<br />ToItem<br />index = " + p.toitem.index + "<br />value = " + value1;
    G("searchResultPanel1").innerHTML = str1;
    G("searchResultPanel1").style.color = "000000";
  });

  var myValue1;
  acc.addEventListener("onconfirm", function(p) {    //鼠标点击下拉列表后的事件
    var _value1 = p.item.value;
    myValue1 = _value1.province +  _value1.city +  _value1.district +  _value1.street +  _value1.business;
    G("searchResultPanel1").innerHTML ="onconfirm<br />index = " + p.item.index + "<br />myValue1 = " + myValue1;
//    setPlace1();
  });

  function setPlace1(){
    map.clearOverlays();    //清除地图上所有覆盖物
    function myFun1(){
      var pp1 = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
      map.centerAndZoom(pp1, 18);
//      map.addOverlay(new BMap.Marker(pp1));    //添加标注
      myIcon = new BMap.Icon("images/location1.png", new BMap.Size(45,45));
      map.addOverlay(new BMap.Marker(pp1,{icon:myIcon}));    //添加标注

    }
    var local = new BMap.LocalSearch(map, { //智能搜索
      onSearchComplete: myFun1
    });
    local.search(myValue1);
    mPoint= myValue1;
  }

  function G(id) {
    return document.getElementById(id);
  }
  // 添加带有定位的导航控件

  var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
          {"input" : "txtView"
            ,"location" : map
          });

  ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
    var str = "";
    var _value = e.fromitem.value;
    var value = "";
    if (e.fromitem.index > -1) {
      value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
    }
    str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

    value = "";
    if (e.toitem.index > -1) {
      _value = e.toitem.value;
      value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
    }
    str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
    G("searchResultPanel").innerHTML = str;
  });

  var myValue;
  ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
    var _value = e.item.value;
    myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
    G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
    G("searchResultPanel").style.color = "000000";
    setPlace();
  });

  function setPlace(){
    map.clearOverlays();    //清除地图上所有覆盖物
    function myFun(){
      var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
      map.centerAndZoom(pp, 11);
//      map.addOverlay(new BMap.Marker(pp));    //添加标注
    }
    var local = new BMap.LocalSearch(map, { //智能搜索
      onSearchComplete: myFun
    });
    local.search(myValue);
    mPoint = myValue;
  }

  var navigationControl = new BMap.NavigationControl({
    // 靠左上角位置
    anchor: BMAP_ANCHOR_TOP_LEFT,
    // LARGE类型
    type: BMAP_NAVIGATION_CONTROL_LARGE,
    // 启用显示定位
    enableGeolocation: true
  });

  map.addControl(navigationControl);

  var myGeo = new BMap.Geocoder();
  var total=[];
  var str = ["m-result1","m-result2","m-result3","m-result4","m-result5","m-result6"];
  var options = {
    onSearchComplete: function(results){
      // 判断状态是否正确
      var myGeo = new BMap.Geocoder();
      for (var i = 0; i < 6 ; i ++){
        var s = results.getPoi(i).title + "<br/>" + results.getPoi(i).address;
        total[i] = results.getPoi(i).title + results.getPoi(i).address;
        document.getElementById(str[i]).innerHTML = s;

        var add=results.getPoi(i).address;
        geocodeSearch(add);
        function geocodeSearch(add){ map
          myGeo.getPoint(add, function(point){
            if (point) {
              var address = new BMap.Point(point.lng, point.lat);
              addMarker(address);
            }
          }, map);
        }
        function addMarker(point){
//          var marker = new BMap.Marker(point);
//          map.addOverlay(marker);
          myIcon = new BMap.Icon("images/location1.png", new BMap.Size(45,45));
          map.addOverlay(new BMap.Marker(point,{icon:myIcon}));    //添加标注

        }
      }
    }
  };
  var local2 =  new BMap.LocalSearch("北京市",options);
  local2.search("景点");
  //推荐景点
  var local2 =  new BMap.LocalSearch(map,options);
  function  getPoint2(){
    local2.search("景点");
  }

  // 将地址解析结果显示在地图上,并调整地图视野
  function getresult1(){

    myGeo.getPoint(total[0], function(point){
      if (point) {
        map.centerAndZoom(point, 16);
//        map.addOverlay(new BMap.Marker(point));
        myIcon = new BMap.Icon("images/location1.png", new BMap.Size(45,45));
        var marker2 = new BMap.Marker(point,{icon:myIcon});  // 创建标注
        map.addOverlay(marker2);
        mPoint = point;
      }else{
        alert("您选择地址没有解析到结果!");
      }
    }, map);
  }
  function getresult2(){

    myGeo.getPoint(total[1], function(point){
      if (point) {
        map.centerAndZoom(point, 16);
//        map.addOverlay(new BMap.Marker(point));
        myIcon = new BMap.Icon("images/location1.png", new BMap.Size(45,45));
        var marker2 = new BMap.Marker(point,{icon:myIcon});  // 创建标注
        map.addOverlay(marker2);

        mPoint = point;
      }else{
        alert("您选择地址没有解析到结果!");
      }
    }, map);
  }
  function getresult3(){

    myGeo.getPoint(total[2], function(point){
      if (point) {
        map.centerAndZoom(point, 16);
//        map.addOverlay(new BMap.Marker(point));
        myIcon = new BMap.Icon("images/location1.png", new BMap.Size(45,45));
        var marker2 = new BMap.Marker(point,{icon:myIcon});  // 创建标注
        map.addOverlay(marker2);

        mPoint = point;
      }else{
        alert("您选择地址没有解析到结果!");
      }
    }, map);
  }
  function getresult4(){

    myGeo.getPoint(total[3], function(point){
      if (point) {
        map.centerAndZoom(point, 16);
//        map.addOverlay(new BMap.Marker(point));
        myIcon = new BMap.Icon("images/location1.png", new BMap.Size(45,45));
        var marker2 = new BMap.Marker(point,{icon:myIcon});  // 创建标注
        map.addOverlay(marker2);

        mPoint = point;
      }else{
        alert("您选择地址没有解析到结果!");
      }
    }, map);
  }
  function getresult5(){

    myGeo.getPoint(total[4], function(point){
      if (point) {
        map.centerAndZoom(point, 16);
//        map.addOverlay(new BMap.Marker(point));
        myIcon = new BMap.Icon("images/location1.png", new BMap.Size(45,45));
        var marker2 = new BMap.Marker(point,{icon:myIcon});  // 创建标注
        map.addOverlay(marker2);

        mPoint = point;
      }else{
        alert("您选择地址没有解析到结果!");
      }
    }, map);
  }
  function getresult6(){

    myGeo.getPoint(total[5], function(point){
      if (point) {
        map.centerAndZoom(point, 16);
//        map.addOverlay(new BMap.Marker(point));
        myIcon = new BMap.Icon("images/location1.png", new BMap.Size(45,45));
        var marker2 = new BMap.Marker(point,{icon:myIcon});  // 创建标注
        map.addOverlay(marker2);

        mPoint = point;
      }else{
        alert("您选择地址没有解析到结果!");
      }
    }, map);
  }


  var title2;
  var title1 = new Array();
  //var content = new Array();


  //var address1 = new Array();
  //var phoneNumber1 = new Array();
  var options1 = {
    onSearchComplete: function(results){
      // 判断状态是否正确
      //     var index = 0;
      var myGeo = new BMap.Geocoder();
      for (var i = 0; i < results.getCurrentNumPois(); i ++){
        var ti=results.getPoi(i).title+'<br/>'+"电话："+results.getPoi(i).phoneNumber;
        var add=results.getPoi(i).address;
//		document.getElementById(str[i]).innerHTML = add;
        geocodeSearch(add,ti);
        function geocodeSearch(add,ti){
          myGeo.getPoint(add, function(point){
            if (point) {
              var address = new BMap.Point(point.lng, point.lat);
              var total = ti+'<br/>'+"地址："+add;
              addMarker(address,total);
            }
          }, map);
        }
        function addMarker(point,add){
          var marker = new BMap.Marker(point,{icon:myIcon});   //添加标注
          map.addOverlay(marker);
          addClickHandler(add,marker);
        }
      }
    }
  };
  var opts = {
    width : 250,     // 信息窗口宽度
    height: 100,     // 信息窗口高度
    title :title2 , // 信息窗口标题
    enableMessage:true,//设置允许信息窗发送短息
    panel  : "panel",         //检索结果面板
    enableCloseOnClick:true,
  };
  function addClickHandler(content1,marker){
    marker.addEventListener("click",function(e){
      openInfo(content1,e)});
  }
  function openInfo(content1,e){
    var p = e.target;
    var point1 = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
    var infoWindow = new BMap.InfoWindow(content1,opts);  // 创建信息窗口对象
    map.openInfoWindow(infoWindow,point1); //开启信息窗口
  }

  function ZoomControl(){
    // 默认停靠位置和偏移量
    this.defaultAnchor = BMAP_ANCHOR_TOP_RIGHT;
    this.defaultOffset = new BMap.Size(10, 10);
  }

  // 通过JavaScript的prototype属性继承于BMap.Control
  ZoomControl.prototype = new BMap.Control();

  // 自定义控件必须实现自己的initialize方法,并且将控件的DOM元素返回
  // 在本方法中创建个div元素作为控件的容器,并将其添加到地图容器中
  ZoomControl.prototype.initialize = function(map){
    // 创建一个DOM元素
    var div = document.createElement("div");
    // 添加文字说明
    div.appendChild(document.createTextNode(""));
    // 设置样式
    div.style.height="45px";
    div.style.width="45px";
    div.style.marginleft="80px";
    div.style.cursor = "pointer";
    div.style.color = "#000000";
    //div.style.border = "1px solid gray";
    div.style.backgroundColor = "white";
    div.style.background="url(images/res3.png)";

    // 绑定事件,点击一次放大两级
    div.onclick = function(e){
//	    map.clearOverlays();
//        var local4 =  new BMap.LocalSearch(map, {renderOptions: {map: map, autoViewport: true}});
//        local4.searchNearby('餐馆',mPoint,1000);



      map.clearOverlays();
      myIcon = new BMap.Icon("images/2.png", new BMap.Size(42,42));
      var local4 =  new BMap.LocalSearch(map,options1);
      local4.searchNearby('餐馆',mPoint,1000);

    }

    // 添加DOM元素到地图中
    map.getContainer().appendChild(div);
    // 将DOM元素返回
    return div;
  }

  // 创建控件
  var myZoomCtrl = new ZoomControl();
  // 添加到地图当中
  map.addControl(myZoomCtrl);

  function ZoomControl1(){
    // 默认停靠位置和偏移量
    this.defaultAnchor = BMAP_ANCHOR_TOP_RIGHT;
    this.defaultOffset = new BMap.Size(65, 10);
  }

  // 通过JavaScript的prototype属性继承于BMap.Control
  ZoomControl1.prototype = new BMap.Control();

  ZoomControl1.prototype.initialize = function(map){

    // 创建一个DOM元素
    var div1 = document.createElement("div");
    // 添加文字说明
    div1.appendChild(document.createTextNode(""));
    // 设置样式

    div1.style.height="45px";
    div1.style.width="45px";
    div1.style.marginleft="80px";
    div1.style.cursor = "pointer";
//	  div.style.color = "#000000";
    //div.style.border = "1px solid gray";
    div1.style.backgroundColor = "white";
    div1.style.background="url(images/hotel3.png)"
    // 绑定事件
    div1.onclick = function(e){
      map.clearOverlays();
      myIcon = new BMap.Icon("images/3.png", new BMap.Size(43,43));
      var local5 =  new BMap.LocalSearch(map,options1);
      local5.searchNearby('酒店',mPoint,1000);
    }
    // 添加DOM元素到地图中
    map.getContainer().appendChild(div1);
    // 将DOM元素返回
    return div1;
  }
  // 创建控件
  var myZoomCtrl1 = new ZoomControl1();
  // 添加到地图当中
  map.addControl(myZoomCtrl1);

  function ZoomControl2(){
    // 默认停靠位置和偏移量
    this.defaultAnchor = BMAP_ANCHOR_TOP_RIGHT;
    this.defaultOffset = new BMap.Size(120, 10);
  }

  // 通过JavaScript的prototype属性继承于BMap.Control
  ZoomControl2.prototype = new BMap.Control();

  ZoomControl2.prototype.initialize = function(map){
    // 创建一个DOM元素
    var div2 = document.createElement("div");
    // 添加文字说明
    div2.appendChild(document.createTextNode(""));
    // 设置样式
    div2.style.height="44px";
    div2.style.width="44px";
    div2.style.cursor = "pointer";
//	  div2.style.border = "1px solid gray";
    div2.style.backgroundColor = "white";
    div2.style.background="url(images/toilet2.png)";
    // 绑定事件,点击一次放大两级
    div2.onclick = function(e){
      map.clearOverlays();
      myIcon = new BMap.Icon("images/4.png", new BMap.Size(43,43));
      var local6 =  new BMap.LocalSearch(map,options1);
//	    var local6 =  new BMap.LocalSearch(map, {renderOptions: {map: map, autoViewport: true}});
      local6.searchNearby('厕所',mPoint,1000);
    }
    // 添加DOM元素到地图中
    map.getContainer().appendChild(div2);
    // 将DOM元素返回
    return div2;
  }
  // 创建控件
  var myZoomCtrl2 = new ZoomControl2();
  // 添加到地图当中
  map.addControl(myZoomCtrl2);
</script>

<%----%>
<script language="JavaScript" type="text/JavaScript">
  aaa=0;
  function buttonon(){
    aaa+=1;
    if (aaa%2==1)
    {document.getElementById("button1").style.display="block";}
    else
    {document.getElementById("button1").style.display="none";}
  }


  function toggle(targetid){
    if (document.getElementById){
      target=document.getElementById(targetid);
      if (target.style.display=="block"){
        target.style.display="none";
      } else {
        target.style.display="block";
      }
    }
  }

  function endd(){
    target.style.display="none";
    document.getElementById("button1").style.display="none";
  }
</script>
<script src="js/index.js"></script>

<%----%>
<!--公告样式-->
<link rel="stylesheet" type="text/css" href="csss/normalize.css" />
<link rel="stylesheet" type="text/css" href="csss/demo2.css" />

<!--必要样式-->
<link rel="stylesheet" type="text/css" href="csss/tabs.css" />
<link rel="stylesheet" type="text/css" href="csss/tabstyles.css" />

<script src="jss/modernizr.custom.js"></script>

<script type="text/javascript" src="jquery-1.11.3.js"></script>

<script type="text/javascript">
  $(document).ready(function() {
    var baseYahooURL = "https://query.yahooapis.com/v1/public/yql?q="
    var selectedCity = "Beijing";
    var placeholder = "";
    var unit = "c"
    init();

    function init() {
      getWoeid(selectedCity);
      //根据城市获得国家
      $("#city").keypress(function () {
        if (event.which == 13) {
          selectedCity = $("#city").val();
          getWoeid(selectedCity);
          $("#city").blur();
        }
      });
      //如果按键是回车，就把“城市”返回给选定的城市，根据选定的城市获得城市的编码。如果焦点模糊，则什么都不返回

      $("#city").focus(function (event) {
        placeholder = $("#city").val();
        $("#city").val("");
      });

      $("#city").blur(function (event) {
        if ($("#city").val() == "") {
          $("#city").val(placeholder);
        }
      });
    }
    //如果点击空白处，也就是焦点模糊的地方，则依旧返回原有城市名。否砸，返回空白。
    function getWoeid(city) {
      var woeidYQL = 'select woeid from geo.placefinder where text="' + city + '"&format=json';
      var jsonURL = baseYahooURL + woeidYQL;
      $.getJSON(jsonURL, woeidDownloaded);
    }

    //通过调用谷歌定位获得城市所在的位置，并载入相关信息
    function woeidDownloaded(data) {
      var woeid = null;

      if (data.query.count <= 0) {
        $("#city").val("No city found");
        $('#deg').html("Error");
        $('wind').html("Error")
        var temp=setImage(999);
        $("#big").attr("src",temp)
        for (var i = 0; i <= 3; i++) {
          $('#forecast' + i).html("");
          var temp1=setImage(999);
          $("#forecastimg" + i).attr("src",temp1)
          $('#forecastdeg' + i).html("Error");
          $('#forecastwind' + i).html("Error");
        }
        return;
      } else if (data.query.count == 1) {
        woeid = data.query.results.Result.woeid;
      } else {
        woeid = data.query.results.Result[0].woeid;
      }
      getWeatherInfo(woeid);
    }
    alert(woeid)
    //如果返回的数据信息为0，则返回“该城市不存在”信息给“城市”，返回“空白”给“温度显示”，并且未来4天天气都调用错误图片显示
    //如果返回的数据信息为1，则说明该城市存在，并将这一信息赋值给woeid，如果返回的数据信息为其他值，则将结果初始化为0，认为城市不存在
    function getWeatherInfo(woeid) {
      var weatherYQL = 'select * from weather.forecast where woeid=' + woeid + ' and u = "' + unit + '" &format=json';
      var jsonURL = baseYahooURL + weatherYQL
      $.getJSON(jsonURL, weaterInfoDownloaded);
    }

    console.debug("->debug:");
    //根据woeid的信息调用天气预报数据库，载入相关城市的天气信息
    function weaterInfoDownloaded(data) {
      $("#city").val(data.query.results.channel.location.city);//获得城市名字（英文）
      $("#deg").html(data.query.results.channel.item.condition.temp + "°" + unit.toUpperCase());//对应城市实时温度
      $("#speed").html("风速"+":"+"<br/>"+data.query.results.channel.wind.speed+ " km/h");
      $("#humidity").html("湿度"+":"+"<br/>"+data.query.results.channel.atmosphere.humidity+" %");
      $("#visibility").html("可见度"+":"+"<br/>"+data.query.results.channel.atmosphere.visibility+ " km");
      $("#sunrise").html("日出"+":"+"<br/>"+data.query.results.channel.astronomy.sunrise);
      $("#sunset").html("日落"+":"+"<br/>"+data.query.results.channel.astronomy.sunset);
      ;                //$("#temp")
      var temp3=setImage(data.query.results.channel.item.condition.code);//对应城市实时天气图片
      $("#big").attr("src",temp3)

      for (var i = 0; i <= 3; i++) {
        var fc = data.query.results.channel.item.forecast[i];
        $("#forecast" + i).html(fc.day);
        $("#forecastinf" +i).html(fc.text);
        setImage(fc.code);
        var temp2=setImage(fc.code);
        $("#forecastimg" + i).attr("src",temp2)

        $("#forecastdeg" + i).html(parseInt(fc.low)+ " °" + unit.toUpperCase()+"～" + parseInt(fc.high)+" °" + unit.toUpperCase());
      }

    }
    //得到相关城市的天气预报信息并调用图片
    function setImage(code) {
      var url="";
      switch (parseInt(code)) {
        case 0:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Tornado.svg"
          return url;
        case 1:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Lightning.svg"
          return url;
        case 2:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Wind.svg"
          return url;
        case 3:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Lightning.svg"
          return url;
        case 4:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Lightning.svg"
          return url;
        case 5:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Snow-Alt.svg"
          return url;
        case 6:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Rain-Alt.svg"
          return url;
        case 7:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Snow-Alt.svg"
          return url;
        case 8:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Drizzle-Alt.svg"
          return url;
        case 9:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Drizzle-Alt.svg"
          return url;
        case 10:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Drizzle-Alt.svg"
          return url;
        case 11:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Drizzle-Alt.svg"
          return url;
        case 12:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Drizzle-Alt.svg"
          return url;
        case 13:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Snow-Alt.svg"
          return url;
        case 14:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Snow-Alt.svg"
          return url;
        case 15:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Snow-Alt.svg"
          return url;
        case 16:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Snow-Alt.svg"
          return url;
        case 17:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Hail-Alt.svg"
          return url;
        case 18:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Hail-Alt.svg"
          return url;
        case 19:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Hail-Alt.svg"
          return url;
        case 20:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Fog.svg"
          return url;
        case 21:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Fog.svg"
          return url;
        case 22:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Fog.svg"
          return url;
        case 23:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Fog.svg"
          return url;
        case 24:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Wind.svg"
          return url;
        case 25:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Thermometer-Zero"
          return url;
        case 26:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud.svg"
          return url;
        case 27:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Moon.svg"
          return url;
        case 28:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud.svg"
          return url;
        case 29:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Moon.svg"
          return url;
        case 30:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Sun.svg"
          return url;
        case 31:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Moon.svg"
          return url;
        case 32:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Sun.svg"
          return url;
        case 33:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Moon.svg"
          return url;
        case 34:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Sun.svg"
          return url;
        case 35:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Hail-Alt.svg"
          return url;
        case 36:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Sun.svg"
          return url;
        case 37:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Lightning.svg"
          return url;
        case 38:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Lightning.svg"
          return url;
        case 39:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Lightning.svg"
          return url;
        case 40:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Rain.svg"
          return url;
        case 41:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Snow-Alt.svg"
          return url;
        case 42:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Snow-Alt.svg"
          return url;
        case 43:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Snow-Alt.svg"
          return url;
        case 44:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud.svg"
          return url;
        case 45:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Lightning.svg"
          return url;
        case 46:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Snow-Alt.svg"
          return url;
        case 47:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Cloud-Lightning.svg"
          return url;
        case 3200:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Moon-New.svg"
          return url;
        case 999:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Compass.svg"
          return url;
        default:
          url = "http://student.howest.be/enzo.eghermanne/codepen/images/icons/Moon-New.svg"
          return url;
      }
    }


    //调用对应天气图片
  });
</script>

<link rel="stylesheet" type="text/css" href="csss/demo.css" />
<link rel="stylesheet" type="text/css" href="csss/style.css" />
<link href='http://fonts.useso.com/css?family=Open+Sans:600,400' rel='stylesheet' type='text/css' />
<script type="text/javascript" src="http://www.lanrenzhijia.com/ajaxjs/1.6.2/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="jss/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="jss/jquery.mousewheel.js"></script>
<script type="text/javascript" src="jss/jquery.vaccordion.js"></script>
<script type="text/javascript">
  $(function() {
    $('#va-accordion').vaccordion({
      visibleSlices   : 4,
      expandedHeight  : 250,
      animOpacity     : 0.1,
      contentAnimSpeed: 100
    });
  });
</script>
<script type="text/javascript" src="jss/cbpFWTabs.js"></script>
<script type="text/javascript">
  (function() {

    [].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
      new CBPFWTabs( el );
    });

  })();
</script>
<%----%>
</body>
</html>


