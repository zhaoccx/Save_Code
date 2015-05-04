package com.buildxml.area;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.buildxml.pool.test.DBConnectionPoolMgr;

@SuppressWarnings("rawtypes")
public class AreaManager implements AreaInterface {
	private DBConnectionPoolMgr dbmgr = new DBConnectionPoolMgr();

	/* (non-Javadoc)
	 * @see com.buildxml.area.AreaInterface#getProvinces()
	 */
	@Override
	public List getProvinces() {
		List<AreaInfo> provinceList = new ArrayList<AreaInfo>();
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			// conn = DBUtils.getConnection();
			conn = dbmgr.getFreeConnection();
			String sql = "select provinceno,provincename from province order by provinceno";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				AreaInfo areaInfo = new AreaInfo();
				areaInfo.setAreaNo(rs.getString(1));
				areaInfo.setAreaName(rs.getString(2));

				provinceList.add(areaInfo);
			}
			// 关闭资源
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			//
			e.printStackTrace();
		} finally {
			// 关闭连接
			dbmgr.closeConnection(conn);
		}

		return provinceList;
	}

	/* (non-Javadoc)
	 * @see com.buildxml.area.AreaInterface#getCitiesByProvinceNo(java.lang.String)
	 */
	@Override
	public List getCitiesByProvinceNo(String provinceNo) {
		List<AreaInfo> cityList = new ArrayList<AreaInfo>();
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			// conn = DBUtils.getConnection();
			conn = dbmgr.getFreeConnection();
			String sql = "select cityno,cityname from city where provinceno=? order by cityno";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, provinceNo);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				AreaInfo areaInfo = new AreaInfo();
				areaInfo.setAreaNo(rs.getString(1));
				areaInfo.setAreaName(rs.getString(2));
				cityList.add(areaInfo);
			}
			// 关闭资源
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			//
			e.printStackTrace();
		} finally {
			// 关闭连接
			dbmgr.closeConnection(conn);
		}

		return cityList;
	}

	/* (non-Javadoc)
	 * @see com.buildxml.area.AreaInterface#getCountriesByCityNo(java.lang.String)
	 */
	@Override
	public List getCountriesByCityNo(String cityNo) {
		List<AreaInfo> countryList = new ArrayList<AreaInfo>();
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			// conn = DBUtils.getConnection();
			conn = dbmgr.getFreeConnection();
			String sql = "select countryno,countryname from country where cityno=? order by countryno";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cityNo);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				AreaInfo areaInfo = new AreaInfo();
				areaInfo.setAreaNo(rs.getString(1));
				areaInfo.setAreaName(rs.getString(2));
				// System.out.println(rs.getString(2));
				countryList.add(areaInfo);
			}
			// 关闭资源
			rs.close();
			pstmt.close();
		} catch (SQLException e) {
			//
			e.printStackTrace();
		} finally {
			// 关闭连接
			dbmgr.closeConnection(conn);
		}
		return countryList;
	}
}
