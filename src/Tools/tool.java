package Tools;

import java.io.*;

public class tool {
    public FileInputStream insertPic(String url) throws FileNotFoundException {
        File file=new File(url);
        FileInputStream fileInputStream=new FileInputStream(file);
        return fileInputStream;
    }
    public void showPic(InputStream inputStream) throws Exception {
        String upLoadPath= "web/picture";
        File file=new File(upLoadPath+File.separator+inputStream);
        FileOutputStream fileOutputStream=new FileOutputStream(file);
        byte[] bytes=new byte[1024];
        int len=0;
        while((len=inputStream.read(bytes))!=-1){
            fileOutputStream.write(bytes,0,len);
        }
    }
}
