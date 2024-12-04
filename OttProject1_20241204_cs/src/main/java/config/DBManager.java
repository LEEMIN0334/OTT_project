package config;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBManager {
    private static DBManager instance = new DBManager();
    private SqlSessionFactory sqlSessionFactory;

    private DBManager() {
        try {
            InputStream inputStream = Resources.getResourceAsStream("config/mybatis-config.xml");
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("MyBatis 설정 파일 로드 실패: " + e.getMessage());
        }
    }

    public static DBManager getInstance() {
        return instance;
    }

    public SqlSession getSession() {
        return sqlSessionFactory.openSession(true);
    }
}
