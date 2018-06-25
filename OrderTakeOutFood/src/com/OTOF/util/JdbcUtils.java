package com.OTOF.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

  



public class JdbcUtils {
	private static DataSource  ds = null ;
	static {
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			//从JNDI容器中检索name为jdbc/datasource的数据源
			ds = (DataSource)envCtx.lookup("jdbc/datasource");
			
		}catch (Exception e)
		{
			throw new ExceptionInInitializerError();
		}
	}
	/*
     * 从数据源中获取数据库连接
     */
    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }
    
    /*
     * 返回连接池
     */
    public static DataSource getDataSource() {
        return ds;
    }
    /*
     * 释放资源
     */
    public static void release(Connection conn,Statement st,ResultSet rs){
        if(rs!=null){
            try{
                //关闭存储查询结果的ResultSet对象
                rs.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
            rs = null;
        }
        if(st!=null){
            try{
                //关闭负责执行SQL命令的Statement对象
                st.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        if(conn!=null){
            try{
                //将Connection连接对象还给数据库连接池
                conn.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
