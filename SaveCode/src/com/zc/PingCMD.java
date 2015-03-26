package com.zc;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;

public class PingCMD {

	public static void main(String[] args) {

		// StringBuffer buf = new StringBuffer();
		// String s = "";
		// Process process;
		// try {
		// process = Runtime.getRuntime().exec("cmd /c " +
		// "ping 192.168.20.137");
		// BufferedReader br = new BufferedReader(new
		// InputStreamReader(process.getInputStream()));
		// while ((s = br.readLine()) != null) {
		// buf.append(s + "\r\n");
		// }
		//
		// process.waitFor();
		// System.out.println(buf);
		// } catch (Exception ex) {
		// ex.printStackTrace();
		// }
		String host = "192.168.20.";
		int timeOut = 1000;
		try {
			for (int i = 0; i < 255; i++) {

				boolean status = InetAddress.getByName(host + i).isReachable(timeOut);
				if (!status) {
					System.out.println(host + i);
				}
			}
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}

	}
}
