<%@ page contentType= "text/html;charset=utf-8" %>
<HTML>
<head>
    <title>case03</title>
    <style>
        .container {
            margin: 0 auto;
            width: 30rem;
            display: flex;
            justify-content: center;
            align-content: center;
        }

        .contaienr .form {
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            align-content: center;
        }

    </style>
</head>
<body>
    <div class="container">
        <form action= "word" method= post class="form">
            <h2>请输入英文句子</h2>
            <textArea name='english' rows= 5 cols= 30></textArea >
            <input type = submit value="提交">
        </form>

    </div>

</body>

</HTML>
