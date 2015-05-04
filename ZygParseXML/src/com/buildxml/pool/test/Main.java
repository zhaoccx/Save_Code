/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.buildxml.pool.test;

import java.sql.*;

/**
 * 
 * @author root
 */
public class Main {

	/**
	 * @param args
	 *            the command line arguments
	 */
	public static void main(String[] args) {
		DBConnectionPoolMgr dbmgr = new DBConnectionPoolMgr();
		System.out.println("**************");
		System.out.println("After InitConns()");
		System.out.println("active connNum:" + dbmgr.getActiveConnNum());
		System.out.println("open connNum:" + dbmgr.getOpendConnNum());

		for (int i = 0; i < 200; i++) {
			// System.err.println("IIIII"+i);
			Connection conn = dbmgr.getFreeConnection();
			// dbmgr.closeConnection(conn);
			if (conn == null) {
				System.err.println("the conn is null");
			}

		}

		System.out.println("After get and close :");
		System.out.println("active connNum:" + dbmgr.getActiveConnNum());
		System.out.println("open connNum:" + dbmgr.getOpendConnNum());

		dbmgr.releaseAll();
		System.out.println("After releaseAll()");
		System.out.println("active connNum:" + dbmgr.getActiveConnNum());
		System.out.println("open connNum:" + dbmgr.getOpendConnNum());

		System.out.println("**************");
	}

}