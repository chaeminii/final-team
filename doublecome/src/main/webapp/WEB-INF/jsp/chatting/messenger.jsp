<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/chatting/chatting.css" />">
<title>Insert title here</title>
</head>
<body>
	 <div class="wrapper">
        <div class="main_container">
            <div class="left_container">
                <div class="left_top_field">
                    <input type="text" placeholder="Search" />
                    <a href="javascript:;" class="search"></a>
                </div>
                <div class="left_people_field">
                    <ul class="people">
                        <li class="person" data-chat="person1">
                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/382994/thomas.jpg" alt="" />
                            <span class="name">Thomas Bangalter</span>
                            <span class="time">2:09 PM</span>
                            <span class="preview">I was wondering...</span>
                        </li>
                        <li class="person" data-chat="person2">
                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/382994/dog.png" alt="" />
                            <span class="name">Dog Woofson</span>
                            <span class="time">1:44 PM</span>
                            <span class="preview">I've forgotten how it felt before</span>
                        </li>
                        <li class="person" data-chat="person3">
                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/382994/louis-ck.jpeg" alt="" />
                            <span class="name">Louis CK</span>
                            <span class="time">2:09 PM</span>
                            <span class="preview">But we’re probably gonna need a new carpet.</span>
                        </li>
                        <li class="person" data-chat="person4">
                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/382994/bo-jackson.jpg" alt="" />
                            <span class="name">Bo Jackson</span>
                            <span class="time">2:09 PM</span>
                            <span class="preview">It’s not that bad...</span>
                        </li>
                        <li class="person" data-chat="person5">
                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/382994/michael-jordan.jpg" alt="" />
                            <span class="name">Michael Jordan</span>
                            <span class="time">2:09 PM</span>
                            <span class="preview">Wasup for the third time like is you blind bitch</span>
                        </li>
                        <li class="person" data-chat="person6">
                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/382994/drake.jpg" alt="" />
                            <span class="name">Drake</span>
                            <span class="time">2:09 PM</span>
                            <span class="preview">howdoyoudoaspace</span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="right_container">
                <div class="right_top_field"><span>To: <span class="name">Dog Woofson</span></span></div>
                <div class="right_message_field">
                    <div class="chat" data-chat="person2">
                        <div class="conversation-start">
                            <span>Today, 6:48 AM</span>
                        </div>
                        <div class="bubble you">
                            Hello,
                        </div>
                        <div class="bubble you">
                            it's me.
                        </div>
                        <div class="bubble you">
                            I was wondering...
                        </div>
                    </div>
                    <div class="chat" data-chat="person2">
                        <div class="conversation-start">
                            <span>Today, 5:38 PM</span>
                        </div>
                        <div class="bubble you">
                            Hello, can you hear me?
                        </div>
                        <div class="bubble you">
                            I'm in California dreaming
                        </div>
                        <div class="bubble me">
                            ... about who we used to be.
                        </div>
                        <div class="bubble me">
                            Are you serious?
                        </div>
                        <div class="bubble you">
                            When we were younger and free...
                        </div>
                        <div class="bubble you">
                            I've forgotten how it felt before
                        </div>
                    </div>
                    <div class="chat" data-chat="person3">
                        <div class="conversation-start">
                            <span>Today, 3:38 AM</span>
                        </div>
                        <div class="bubble you">
                            Hey human!
                        </div>
                        <div class="bubble you">
                            Umm... Someone took a shit in the hallway.
                        </div>
                        <div class="bubble me">
                            ... what.
                        </div>
                        <div class="bubble me">
                            Are you serious?
                        </div>
                        <div class="bubble you">
                            I mean...
                        </div>
                        <div class="bubble you">
                            It’s not that bad...
                        </div>
                        <div class="bubble you">
                            But we’re probably gonna need a new carpet.
                        </div>
                    </div>
                    <div class="chat" data-chat="person4">
                        <div class="conversation-start">
                            <span>Yesterday, 4:20 PM</span>
                        </div>
                        <div class="bubble me">
                            Hey human!
                        </div>
                        <div class="bubble me">
                            Umm... Someone took a shit in the hallway.
                        </div>
                        <div class="bubble you">
                            ... what.
                        </div>
                        <div class="bubble you">
                            Are you serious?
                        </div>
                        <div class="bubble me">
                            I mean...
                        </div>
                        <div class="bubble me">
                            It’s not that bad...
                        </div>
                    </div>
                    <div class="chat" data-chat="person5">
                        <div class="conversation-start">
                            <span>Today, 6:28 AM</span>
                        </div>
                        <div class="bubble you">
                            Wasup
                        </div>
                        <div class="bubble you">
                            Wasup
                        </div>
                        <div class="bubble you">
                            Wasup for the third time like is <br />you blind bitch
                        </div>
        
                    </div>
                    <div class="chat" data-chat="person6">
                        <div class="conversation-start">
                            <span>Monday, 1:27 PM</span>
                        </div>
                        <div class="bubble you">
                            So, how's your new phone?
                        </div>
                        <div class="bubble you">
                            You finally have a smartphone :D
                        </div>
                        <div class="bubble me">
                            Drake?
                        </div>
                        <div class="bubble me">
                            Why aren't you answering?
                        </div>
                        <div class="bubble you">
                            howdoyoudoaspace
                        </div>
                    </div>
                    <div class="write">
                        <input type="text" />             
                        <a href="javascript:;" class="write-link send"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="<c:url value="/resources/js/chatting/chatting.js" />"></script>
</body>
</html>