package com.OTOF.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

public class JsonUtils {
	public static JSONObject getRequestBodyData(HttpServletRequest request) throws IOException{ 
		request.setCharacterEncoding("utf8");
        BufferedReader bufferReader = new BufferedReader(request.getReader()); 
        StringBuilder sb = new StringBuilder(); 
        String line = null; 
        while ((line = bufferReader.readLine()) != null) { 
            sb.append(line); 
        } 
        
        return new JSONObject().fromObject(sb.toString());
    }

}
