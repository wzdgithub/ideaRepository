package com.wzd.utils;

import org.apache.struts2.ServletActionContext;

import java.io.*;

/**
 * Created by admin on 2016/2/24.
 */
public class UploadUtil {
    public static boolean upload(File file,String fileName) throws FileNotFoundException{
        FileInputStream in = new FileInputStream(file);
        String path = ServletActionContext.getServletContext().getRealPath("/") + "\\images\\" + fileName;
        FileOutputStream out = new FileOutputStream(path);
        byte[] b = new byte[1024];
        int i = 0;
        try {
            while((i = in.read(b)) > 0){
                out.write(b,0,i);
            }
            in.close();
            out.close();
            file.delete();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return true;
    }
}
