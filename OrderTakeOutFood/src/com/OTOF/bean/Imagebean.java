package com.OTOF.bean;

import java.io.File;

import javax.servlet.http.Part;

public class Imagebean {
	public static String createimagepath(Part storepicture,String uploadpath)
	{
		String header = storepicture.getHeader("content-dispostion");
		String filename = ((header.split(";")[2]).split("=")[1].replaceAll("\"", ""));
		String extname = filename.substring(filename.lastIndexOf('.'+1));
		
		String newfilename = System.currentTimeMillis() + extname;
		
		return uploadpath + File.separator + newfilename;
		
		
	}
}
