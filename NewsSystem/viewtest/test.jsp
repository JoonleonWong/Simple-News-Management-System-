<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/12/14
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
* @Author: OriginalCoder
* @Date: 2020-10-14 13:29:07
* @version:
* @LastEditTime: 2020-10-15 11:20:03
* @LastEditors: OriginalCoder
* @Description:
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>腾讯新闻</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/mycss/test.css" />
</head>
<body>
<!-- 整个页面布局居中 -->
<div class="page">
    <!-- 头部的logo和搜索等 -->
    <div class="header">
        <!-- logo图片 -->
        <div class="clear txlogo">
            <img class="top_logo" src="../txnews/img/logo.png" alt="" />
        </div>
        <!-- 搜索 -->
        <div class="search clear">
            <div class="web">
                网页
                <i></i>
            </div>
            <input class="top-input" type="text" />
            <button class="search-btn">搜狗搜索</button>
        </div>
        <!-- 其他按钮：分享、登录等 -->
        <div class="top-login">
            <div class="items">
                <a href="#" class="q-icons l-qzone" target="blank">
                    <img class="icon" src="./img/qzone.png" alt="" />
                </a>
                <a href="#" class="q-icons l-qmail" target="blank">
                    <img class="icon" src="./img/qmail.png" alt="" />
                </a>
                <a href="#" class="q-icons l-qlo" target="blank">
                    <button class="login-btn">登录</button>
                </a>
            </div>
        </div>
    </div>
    <!-- 导航条 -->
    <div class="nav">
        <a href="#">新闻</a>
        <a href="#">视频</a>
        <a href="#">图片</a>
        <a href="#">军事</a>
        <a href="#">体育</a>
        <a href="#">NBA</a>
        <a href="#">娱乐</a>
        <a href="#">财经</a>
        <a href="#">科技</a>
        <a href="#">时尚</a>
        <a href="#">汽车</a>
        <a href="#">房产</a>
        <a href="#">教育</a>
        <a href="#">文化</a>
        <a href="#">星座</a>
        <a href="#">游戏</a>
        <a href="#"
        >更多
            <img class="bottom" src="./img/arrowbottom.png" alt="" />
        </a>
    </div>

    <!-- 空白区域 -->
    <div class="security">
        <img class="txsecurity" src="./img/txsecurity.png" alt="" />
    </div>

    <!-- 新闻列表 -->
    <div class="news clear">
        <div class="left col-1">
            左边新闻
            <div class="news-title">
                <div class="hd">
                    <h2 class="tit-1">
                        <a href="#">要闻</a>
                    </h2>
                    <span class="tit-line"></span>
                    <h2 class="tit">
                        <a href="#">抗肺炎</a>
                    </h2>
                    <span class="tit-line"></span>
                    <h2 class="tit">
                        <a href="#">湖北新闻</a>
                    </h2>
                    <h2 class="tit-2">武汉</h2>
                    <img class="weather" src="./img/weather.png" alt="" />
                    <p class="txt">19℃</p>
                </div>
                <div class="bd">
                    <div class="tab-news">
                        <ul class="news-top">
                            <li class="bold">
                                <a href="#"
                                >习近平：在深圳经济特区建立40周年庆祝大会上的讲话...</a
                                >
                            </li>
                            <li class="bold">
                                <a href="#"
                                >“京彩”网络正能量精品评选活动作品征集入口</a
                                >
                            </li>
                            <li class="">
                                <a href="#"
                                >经济特区40年 以深圳先行先试推动改革开放向纵深发展</a
                                >
                            </li>
                            <li class="">
                                <a href="#"
                                >生态环境部：10月下半月全国大部空气质量总体较好</a
                                >
                            </li>
                            <li class="">
                                <a href="#">秉持以人民为中心的人权理念 </a>
                            </li>
                            <li class="">
                                <a href="#"
                                >前三季度进出口增长0.7％,“期待智中深入拓展能源合作”</a
                                >
                            </li>
                            <li class="">
                                <a href="#">王毅同新加坡外长维文举行会谈</a>
                            </li>
                            <li class="">
                                <a href="#"
                                >世卫组织总干事强调——应通过精准防控措施防止疫情蔓</a
                                >
                            </li>
                            <li class="">
                                <a href="#"
                                >男子全款买了栋小洋楼 收房时傻眼：四面都是围墙</a
                                >
                            </li>
                            <li class="news-pic-txt cf">
                                <img
                                        style="
                        width: 188px;
                        height: 106px;
                        float: left;
                        border-radius: 5px;
                      "
                                        src="./img/news1.webp"
                                        alt=""
                                />
                                <div class="text fl f14">
                                    <a href="#">机动车开进汤逊湖绿道 违停还影响市民散步</a>
                                </div>
                            </li>
                            <li class="">
                                <a href="#">复兴之路上的“深圳里程碑”</a>
                            </li>
                            <li class="">
                                <a href="#">新影像丨深圳，奇迹开始的地方</a>
                            </li>
                            <li class="">
                                <a href="#"
                                >400元赌资牵出数十亿元大案，90后赌徒半年狂输3000万!</a
                                >
                            </li>
                            <li class="">
                                <a href="#">美国新冠肺炎确诊病例超783万例</a>
                            </li>
                            <li class="">
                                <a href="#">网络调查：您对当下网络诚信状况满意吗？</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="middle col-2">
            中间新闻
            <div class="today-topic">
                <div class="hd">
                    <h2 class="tit-1">
                        <a href="#">今日话题</a>
                    </h2>
                </div>
                <div class="bd">
                    <ul class="tab-news">
                        <li class="bold">
                            <a href="#">这十条“深”改经验，“圳”好！</a>
                        </li>
                        <li class="">
                            <a class="bold" href="#">侠客岛</a>
                            <span class="tit-line"></span>
                            <a href="#">郑永年：深圳的成功可以给香港哪些借鉴？</a>
                        </li>
                        <li class="">
                            <a class="bold" href="#">中新</a>
                            <span class="tit-line"></span>
                            <a href="#">蓄洪区的新问题：1.6万吨草料被洪水“洗劫”之后</a>
                        </li>
                        <li class="">
                            <a class="bold" href="#">深网</a>
                            <span class="tit-line"></span>
                            <a href="#">首款5G iPhone 发布，苹果梦回乔布斯时代</a>
                        </li>
                        <li class="">
                            <a class="bold" href="#">新闻哥</a>
                            <span class="tit-line"></span>
                            <a href="#">看到她们对假靳东的告白，我笑不出来</a>
                        </li>
                        <li class="">
                            <a class="bold" href="#">较真</a>
                            <span class="tit-line"></span>
                            <a href="#">将裸眼视力考核纳入中考总分，真的科学吗？</a>
                        </li>
                        <li class="">
                            <a class="bold" href="#">棱镜</a>
                            <span class="tit-line"></span>
                            <a href="#">经济学奖得主“不差钱”：为政府设计竞拍</a>
                        </li>
                    </ul>
                    <div class="mod">
                        <div class="invite" style="height: 50px">
                            <img class="talk" src="./img/talk_with.png" alt="" />
                        </div>
                        <li class="news-pic-txt-2 cf">
                            <img
                                    style="
                      width: 188px;
                      height: 106px;
                      float: left;
                      border-radius: 5px;
                    "
                                    src="./img/2.jpg"
                                    alt=""
                            />
                            <div class="text fl f14">
                                <a href="#"
                                >陌生人丨这个宠物医生自称“疯子”
                                    喊话宠主：你们别想在我这里找安慰
                                </a>
                            </div>
                        </li>
                        <li class="kandian-1 f14 kandian-top">
                            <a href="#"
                            >[看点]不愿养就让医院安乐死！这些处死宠物的理由让人震惊</a
                            >
                        </li>
                        <li class="kandian-1 f14">
                            <a href="#"
                            >[看点]女主人宠物医院走廊崩溃大哭！因不舍十七岁“儿子”</a
                            >
                        </li>
                        <li class="f14">
                            <img class="play" src="./img/play.png" alt="" />
                            <a href="#">向上之路</a>
                            <span class="tit-line"></span>
                            <a href="#">为什么318国道是此生必驾？不仅是因为美丽</a>
                        </li>
                        <li class="f14">
                            <img class="play" src="./img/play.png" alt="" />
                            <a href="#">财约你</a>
                            <span class="tit-line"></span>
                            <a href="#">徐立：AI技术发展并非连续性而是跳跃式进步</a>
                        </li>
                        <li class="f14">
                            <img class="play" src="./img/play.png" alt="" />
                            <a href="#">你不对</a>
                            <span class="tit-line"></span>
                            <a href="#">清华美女爱狗心切，投喂流浪狗却被指伪善？</a>
                        </li>
                    </div>
                </div>
            </div>
        </div>
        <div class="right col-3">
            右边新闻
            <div class="product">
                <ul class="list f14 fl">
                    <li class="q-icons prod-1">
                        <a href="#">新闻APP</a>
                        <a href="#">体育APP</a>
                        <a href="#">企鹅号</a>
                        <a href="#">快报</a>
                        <a href="#">视频</a>
                        <a href="#">浏览器</a>
                        <a href="#">微视</a>
                    </li>
                    <li class="q-icons prod-2">
                        <a href="#">微信</a>
                        <a href="#">QQ</a>
                        <a href="#">空间</a>
                        <a href="#">企业微信</a>
                        <a href="#">邮箱</a>
                        <a href="#">腾讯云</a>
                        <a href="#">电脑管家</a>
                        <a href="#">会员</a>
                    </li>
                    <li class="q-icons prod-3">
                        <a href="#">LOL</a>
                        <a href="#">DNF</a>
                        <a href="#">CF</a>
                        <a href="#">王者</a>
                        <a href="#">单机游戏</a>
                        <a href="#">火影OL</a>
                        <a href="#">天刀</a>
                        <a href="#">爱玩</a>
                        <a href="#">逆战</a>
                    </li>
                    <li class="q-icons prod-4">
                        <a href="#">软件</a>
                        <a href="#">Q币</a>
                        <a href="#">京东</a>
                        <a href="#">腾讯地图</a>
                        <a href="#">腾讯文档</a>
                        <a href="#">理财通</a>
                    </li>
                </ul>
            </div>
            <div class="hot-race">
                <div class="hd-hot">
                    <h2 class="tit-1 fl">
                        <a href="#">热门赛事</a>
                        <div class="fr">
                            <span class="time">10月14日</span>
                            <span class="tit-line"></span>
                            <span class="tips">晚上好，今天有24场热门比赛 &nbsp;》</span>
                        </div>
                    </h2>
                </div>
                <div class="bd">
                    <ul class="news-list">
                        <li class="video-box">
                            <img class="poster" src="./img/poster.jpg" alt="" />
                            <!-- <a class="poster-txt" href="#"
                              >詹姆斯第四冠微纪录片《光荣之路》 紫金生涯新的里程碑</a
                            > -->
                        </li>
                        <li class="title-1 f14">
                            <img class="play" src="./img/play.png" alt="" />
                            <a href="#">CBA季前赛北京险胜福建 双塔首秀合力贡献22分</a>
                        </li>
                        <li class="f14">
                            <img class="play" src="./img/play.png" alt="" />
                            <a href="#"
                            >内马尔国家队进球超越大罗 露兔牙摇手指致敬外星人</a
                            >
                        </li>
                        <li class="f14">
                            <img class="play" src="./img/play.png" alt="" />
                            <a href="#"
                            >输球赖球衣？李毅不当言论被罚：我们穿黄色球衣没赢过</a
                            >
                        </li>
                        <li class="f14">
                            <img class="play" src="./img/play.png" alt="" />
                            <a href="#"
                            >武磊周记：最近有伤在身 半场被换下是与教练的约定</a
                            >
                        </li>
                        <li class="f14">
                            <img class="play" src="./img/play.png" alt="" />
                            <a href="#"
                            >《漫游NBA》波什揭秘三巨头组建过程 他是真正幕后推手</a
                            >
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>


