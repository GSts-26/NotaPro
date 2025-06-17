package db;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class database {

    private static database instancia;
    private static HikariDataSource dataSource;

    private database() {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("No se pudo cargar el driver JDBC de PostgreSQL", e);
        }

        HikariConfig config = new HikariConfig();
        config.setJdbcUrl("jdbc:postgresql://aws-0-us-west-1.pooler.supabase.com:5432/postgres?sslmode=require");
        config.setUsername("postgres.isrgkeshkkxizxukbnfq");
        config.setPassword("Uni_2610261026");
        config.addDataSourceProperty("cachePrepStmts", "true");
        config.addDataSourceProperty("prepStmtCacheSize", "250");
        config.addDataSourceProperty("prepStmtCacheSqlLimit", "2048");
        config.setMaximumPoolSize(5);

        dataSource = new HikariDataSource(config);

        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            if (dataSource != null && !dataSource.isClosed()) {
                System.out.println("Cerrando la conexión de la base de datos...");
                dataSource.close();
                System.out.println("Conexión de la base de datos cerrada.");
            }
        }));
    }

    public static synchronized database getInstancia() {
        if (instancia == null) {
            instancia = new database();
        }
        return instancia;
    }

    public Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }
}
