package com.OTOF.util;

import java.io.InputStream;
import java.util.Properties;

import javax.sql.DataSource;  

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.commons.dbcp2.BasicDataSourceFactory;

@SuppressWarnings("static-access")
public class JdbcUtils {
	private static DataSource  ds;
	static {
		try {
			Properties pro = new Properties();
			InputStream in = JdbcUtils.class.getClassLoader().getResourceAsStream("dbcpconfig.properties");
			pro.load(in);
			BasicDataSourceFactory bs = new BasicDataSourceFactory();
			ds = (DataSource) bs.createDataSource(pro);
		}catch (Exception e)
		{
			throw new ExceptionInInitializerError();
		}
	}
	public static DataSource getDataSource() {
		return ds;
	}
}
