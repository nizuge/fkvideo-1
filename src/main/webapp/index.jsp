<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>视频人脸提取</title>
    <link rel="stylesheet" href="static/css/index.css">
    <script src="static/js/jQuery-3.2.1.src.js" type="text/javascript"></script>
    <script type="text/javascript" src="static/grindPlayer/grindPlayer.js"></script>

    <script type="text/javascript">
        function width_h() {
            var width1 = $(".img_border").width();
            $(".img_border").css("height", width1);
            var width2 = $(".img_box").width();
            $(".img_box").css("height", width1 + 35);
            $(".max_box").css("height", $(".img_box").height() + 50)
            $(".thumbnail").css("height", $(".thumbnail").width());
        }

        $(function () {
            width_h();
            $(window).resize(function () {//当窗口大小发生变化时
                width_h()
            });
        })
    </script>
    <%--<script src="//cdn.bootcss.com/sockjs-client/1.0.3/sockjs.js"></script>--%>
    <!--WebSocket推送-->
    <!--=================================================-->
    <script>

    </script>
    <!--=================================================-->
<body>
<div class="main">
    <div class="top_box">
        <div class="top_left_box file_box">
            <div class="content_box">
                <div class="title_box">
                    上传视频文件
                </div>
                <div class="select_box">
                    <div class="file_text">选择视频：</div>
                    <div class="select_file">
                        <input type="file" id="file" name="myfile"/>

                    </div>
                </div>
                <div class="select_box">
                    <div class="file_text">进度条：</div>
                    <div class="file_progress">
                        <progress id="progressBar" value="0" max="100" style="width: 300px;"></progress>
                        <span id="percentage"></span><span id="time">
                        <%--<progress max="100" value="0" id="pg"></progress>--%>
                    </div>
                </div>
                <div class="btn_box">
                    <%--<button id="addVideo" class="btn btn-success">添加视频文件</button>&nbsp;--%>
                    <%--<input type="button" onclick="cancleUploadFile()" class="btn btn-danger" value="取消" />--%>
                    <div class="upload" id="addVideo">上传</div>
                    <div class="cancel" id="cancelUpload">取消</div>
                </div>
            </div>
        </div>
        <div class="top_middle_box file_box">
            <div class="content_box">
                <div class="title_box">
                    选择需要对比的视频
                </div>
                <div>
                    <input type="radio" name="fileType" value="file" checked>视频文件
                    <input type="radio" name="fileType" value="stream">视频流
                </div>
                <div class="select_video" id="videoList">
                    <%--<table>--%>
                    <%--<tr>--%>
                    <%--<td><input type="radio" name="video_"/></td>--%>
                    <%--<td>ghssdgd.mp4</td>--%>
                    <%--</tr>--%>
                    <%--</table>--%>
                </div>
                <div class="select_stream" id="streamInput">
                    视频流地址<input type="text" name="fileStream">
                </div>
            </div>
        </div>
        <div class="top_right_box file_box">
            <div class="content_box">
                <div class="title_box">
                    选择需要对比的图片
                </div>
                <div class="select_box">
                    <div class="file_text">选择图片：</div>
                    <div class="select_file">
                        <input id="photo" name="photo" type="file" class="pic"/>
                    </div>
                </div>
                <div class="select_box">
                    <div class="file_text">选择图片：</div>
                    <div class="select_file">
                        <input id="threshold" name="threshold" type="number" min="0" max="1" value="0.65" step="0.01"/>
                    </div>
                </div>
                <%--<div class="select_box">--%>
                <%--<div>设置阈值：</div>--%>
                <%--<div class="slippage"><input type="number" min="0" max="1" value="0.65" step="0.01"/></div>--%>
                <%--&lt;%&ndash;<input id="threshold" name="threshold" type="range" min="0" max="100"></div>&ndash;%&gt;--%>
                <%--<div class="text_border"><input type="number" value="0.01" step="0.5"/></div>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
    <div class="bottom_box">
        <div class="bottom_btn_box">
            <div class="logo_box"><img src="static/img/logo.png"/></div>
            <div id="beginIdentify" class="search_btn">开始搜索</div>
            <div id="endIdentify" class="over_btn">结束搜索</div>
            <img class="thumbnail" id="preImage"/>
        </div>
        <div class="results_box">
            <div class="results_title"><span>搜索结果</span></div>
            <div id="resultShowTip" class="tips"></div>
            <div class="content" id="resultShow">
            </div>


        </div>
        <div class="video_box" id="player">
            <embed src=static/grindPlayer/GrindPlayer.swf width="98%" height="98%" type=application/x-shockwave-flash
                   wmode="transparent" quality="high" ;></embed>
            <%--<img src="img/vedio.png"/>--%>
        </div>
    </div>
</div>
<script src="static/js/index.js" charset="utf-8" type="text/javascript"></script>
</body>
</html>