package com.lyae.workbook.sample;

import com.lyae.workbook.springex.sample.SampleService;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@Log4j2
@ExtendWith(SpringExtension.class)  //JUnit5 버전에서 'spring-test'를 사용 (JUnit4버전에서는 @Runwith)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/root-context.xml")
public class SampleTests {

    @Autowired
    private SampleService sampleService;

    @Autowired
    private DataSource dataSource;

    @Test void testService1() {
        log.info("sampleService : " + sampleService);
        Assertions.assertNotNull(sampleService);
    }

    @Test void testConnection() throws SQLException {
        Connection connection = dataSource.getConnection();
        log.info("connection : " + connection);
        Assertions.assertNotNull(connection);

        connection.close();

    }
}
