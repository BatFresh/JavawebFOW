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
			//��JNDI�����м���nameΪjdbc/datasource������Դ
			ds = (DataSource)envCtx.lookup("jdbc/datasource");
			
		}catch (Exception e)
		{
			throw new ExceptionInInitializerError();
		}
	}
	/*
     * ������Դ�л�ȡ���ݿ�����
     */
    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }
    
    /*
     * �������ӳ�
     */
    public static DataSource getDataSource() {
        return ds;
    }
    /*
     * �ͷ���Դ
     */
    public static void release(Connection conn,Statement st,ResultSet rs){
        if(rs!=null){
            try{
                //�رմ洢��ѯ�����ResultSet����
                rs.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
            rs = null;
        }
        if(st!=null){
            try{
                //�رո���ִ��SQL�����Statement����
                st.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        if(conn!=null){
            try{
                //��Connection���Ӷ��󻹸����ݿ����ӳ�
                conn.close();
            }catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
