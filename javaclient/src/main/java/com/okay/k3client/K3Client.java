package com.okay.k3client;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;


public class K3Client {

	public K3Client(ClientConfiguration config) {
	}

	public String doService(String action, Map<String, Object> reqcontent) {
		CloseableHttpClient httpclient = HttpClients.createDefault();  
		String url = "http://192.168.1.31/KDWebService2/"+action;
		String rs = ClientConfiguration.EMPTY;
		HttpPost httppost = new HttpPost(url);  
		// 创建参数队列    
        List<NameValuePair> formparams = new ArrayList<NameValuePair>();
        for(Map.Entry<String, Object> entry:reqcontent.entrySet()){    
            //System.out.println(entry.getKey()+"--->"+entry.getValue());
            formparams.add(new BasicNameValuePair(entry.getKey(), entry.getValue().toString()));
            
       }   
        //formparams.add(new BasicNameValuePair("fields", "st"));
        //formparams.add(new BasicNameValuePair("st", "123456"));  
        UrlEncodedFormEntity uefEntity;  
        try {  
            uefEntity = new UrlEncodedFormEntity(formparams, "UTF-8");  
            httppost.setEntity(uefEntity);  
            //System.out.println("executing request " + httppost.getURI());  
            CloseableHttpResponse response = httpclient.execute(httppost);  
            try {  
                HttpEntity entity = response.getEntity();  
                if (entity != null) {  
//                    System.out.println("--------------------------------------");  
//                    System.out.println("Response content: " + EntityUtils.toString(entity, "UTF-8"));  
//                    System.out.println("--------------------------------------");  
                	rs = EntityUtils.toString(entity, "UTF-8");
                }  
            } finally {  
                response.close();  
            }  
        } catch (ClientProtocolException e) {  
            e.printStackTrace();  
        } catch (UnsupportedEncodingException e1) {  
            e1.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        } finally {  
            // 关闭连接,释放资源    
            try {  
                httpclient.close();  
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
        }  
        
		//return ClientConfiguration.EMPTY+rs.length();
        return rs;
	}

}
