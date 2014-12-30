package com.okay.k3client;

import java.awt.datatransfer.SystemFlavorMap;
import java.util.LinkedHashMap;
import java.util.Map;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

/**
 * Unit test for simple App.
 */
public class AppTest 
    extends TestCase
{
    /**
     * Create the test case
     *
     * @param testName name of the test case
     */
    public AppTest( String testName )
    {
        super( testName );
    }

    /**
     * @return the suite of tests being tested
     */
    public static Test suite()
    {
        return new TestSuite( AppTest.class );
    }

    /**
     * Rigourous Test :-)
     */
    public void testApp()
    {
        assertTrue( true );
        
        ClientConfiguration config = new ClientConfiguration();
        K3Client client = new K3Client(config);
        Map<String, Object> reqcontent = new LinkedHashMap<String, Object>();

        reqcontent.put("fields", "date,,3");
        String action = "voucheradd.asp";
        String rs = client.doService(action,reqcontent);
        System.out.println(rs);
        //assertEquals("11068", rs);
    }
    
    public void testM(){
    	int count = 100;
    	long t1 = System.currentTimeMillis();
    	for (int i = 0; i < count; i++) {
    		testApp();
		}
    	long t2 = System.currentTimeMillis();
    	System.out.println((1.0*count)/(t2-t1)*1000);
    }
}
