<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee
         http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd"
         version="3.1">


    <filter>
        <filter-name>CharsetFilter</filter-name>
        <filter-class>filters.CharsetFilter</filter-class>
        <init-param>
            <param-name>requestEncoding</param-name>
            <param-value>UTF-8</param-value>
        </init-param>
    </filter>

    <filter-mapping>
        <filter-name>CharsetFilter</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>
</web-app>