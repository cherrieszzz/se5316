## 1 JDBC原理

jdbc是oracle公司开发的用来实现java代码连接并操作数据库的一套标准，可以连接不同的数据库，本课程常见的为MySql 因为要做到连接不同的数据库 JDBC需要对应厂商的数据库驱动才可以正常工作，所以使用JDBC的第一步，往往是导入第三方的database驱动jar包。
![asd](https://pic4.zhimg.com/80/v2-4ff6bf526433472db64fd3859e63f7bf_720w.jpg))

## 2 注册驱动

### Mysql 8.0以下版本

```
Class.forName(com.mysql.jdbc.Driver);
``` 
### Mysql 8.0以上版本

```
Class.forName(com.mysql.cj.jdbc.Driver)
```

## 3 操作JDBC

### 3.1 建立连接

注册完了驱动，就可以用JDBC中的类来操作数据库了，第一步要连接数据库，首先实例化`Connection` 对象:
```
Connection con = null;
```
实例化Stataement:
```
Statement stmt = null;
```
连接数据库:
```
coon = DriverManager.getConnection(url , username, passwd);
```
这其中 
url为mysql数据库的链接代码，一般格式为:
`"jdbc:mysql://localhost:3306/DATABASENAME?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC"`

username为数据库用户或管理员的名称, 教学阶段一般为root

passwd为用户密码
### 3.2 获取statement对象

创建用于发送sql语句的statement对象:
```
stmt = coon.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE)
```

执行查询语句并导出到结果

我们定义一个sql语句字符串为:`String sql = "select * from table*"`;
并用stmt对象操作sql语句,创建一个Resulset结果集接受其返回的参数：
```
ResultSet rs = stmt.executeQuery(sql);
```
 
### 3.3 读取结果集中的数据
ResultSet 对象是 JDBC 中最重要的单个对象。从本质上讲，它是对一个一般宽度和未知长度的表的一种抽象。几乎所有的方法和查询都将数据作为 ResultSet 返回。

如果想要访问ResultSet中表的行和列等相关数据,还需要创建ResultSetmetaData对象,此对象获得列的数目和类型以及每一列的名称:
```
ResultSetMetaData metaData = rs.getMetaData();
```
获取列的个数：
```
int ColumnCount = metaData.getColumuCount();
```
获取列名
```
String ColumnName = mataData.getColumName(i); // i表示列的顺序
```
通过getString获得每行单个数据的具体值
```
rs.getString(j) // j表示列数,也就是行中的第j位
```

通过next()来切换到下一行
```
rs.next()
```

