liquibase --driver=com.mysql.cj.jdbc.Driver --classpath="C:\Program Files (x86)\MySQL\Connector J 8.0\mysql-connector-j-8.0.33.jar" --changeLogFile=db-with-sample-data.xml --url="jdbc:mysql://localhost:3306/prueba" --username=root --password=toor rollbackCount 1