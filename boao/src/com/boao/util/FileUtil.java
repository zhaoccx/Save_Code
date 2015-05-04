package com.boao.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.FileRenamePolicy;

public class FileUtil {

	private static Logger log = Logger.getLogger(FileUtil.class);

	/**
	 * 上传文件方法
	 * 
	 * @param dir
	 *            app.properties对应的key
	 * @param file
	 *            spring的文件封装类
	 * @param request
	 * @return 返回文件上传后的文件相对路径
	 */
	public static String uploadFile(String dir, MultipartFile file, HttpServletRequest request) {
		String fileName = getRandomFileName(file.getOriginalFilename());
		if (fileName != null) {
			String dir1 = AppConfig.readValue(dir);
			String path = getRealPath(dir1, request);
			log.info("路径是:" + path);
			File targetFile = new File(path, fileName);
			if (!targetFile.exists()) {
				targetFile.mkdirs();
			}
			// 保存
			try {
				file.transferTo(targetFile);
			}
			catch (Exception e) {
			}
			return dir1 + fileName;
		}
		else
			return null;
	}

	/**
	 * 判断路径是否存在，不存在就创建
	 * 
	 * @param path
	 */
	public static void pathExist(String path) {
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}
	}

	/**
	 * 使用cos.jar上传文件的方法
	 * 
	 * @param request
	 * @param path
	 *            写在app.properties中的相对路径
	 * @return MultipartRequest 这是cos.jar的封装对象
	 */
	public static MultipartRequest uploadFile(HttpServletRequest request, String path) {
		path = getRealPath(path, request);
		pathExist(path);
		MultipartRequest mr = null;
		try {
			mr = new MultipartRequest(request, path, 5242880, "UTF-8", new FileRenamePolicy() {

				public File rename(File file) {
					return new File(file.getParent(), getRandomFileName(file.getName()));
				}
			});
		}
		catch (Exception e) {
			log.error("上传文件失败");
			e.printStackTrace();
		}
		return mr;
	}

	/**
	 * 获得指定文件的物理路径
	 * 
	 * @param storeName
	 *            数据库中存储的路径
	 * @param request
	 * @return
	 */
	public static String getRealPath(String storeName, HttpServletRequest request) {
		return request.getSession().getServletContext().getRealPath(storeName);
	}

	/**
	 * 根据上传的旧的文件名，获得一个随机的唯一的文件名
	 * 
	 * @param oldFileName
	 * @return
	 */
	public static String getRandomFileName(String oldFileName) {
		if (StringUtils.isBlank(oldFileName))
			return null;
		int i = oldFileName.lastIndexOf(".");
		String suffix = oldFileName.substring(i, oldFileName.length());
		return UUID.randomUUID() + suffix;
	}

	/**
	 * 下载文件的方法
	 * 
	 * @param request
	 * @param response
	 * @param storeName
	 *            数据库中存放的路径
	 * @param realName
	 *            需要转换的文件名
	 * @throws Exception
	 */
	public static void download(HttpServletRequest request, HttpServletResponse response, String storeName, String realName) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		String downLoadPath = getRealPath(storeName, request);
		long fileLength = new File(downLoadPath).length();
		response.setContentType("application/octet-stream");
		response.setHeader("Content-disposition", "attachment; filename=" + new String(realName.getBytes("utf-8"), "ISO8859-1"));
		response.setHeader("Content-Length", String.valueOf(fileLength));
		bis = new BufferedInputStream(new FileInputStream(downLoadPath));
		bos = new BufferedOutputStream(response.getOutputStream());
		byte[] buff = new byte[2048];
		int bytesRead;
		while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
			bos.write(buff, 0, bytesRead);
		}
		bis.close();
		bos.close();
	}

	/**
	 * 删除文件
	 * 
	 * @param storePath
	 *            数据库中存的路径
	 */
	public static void delFile(String storePath, HttpServletRequest request) {
		String realPath = getRealPath(storePath, request);
		File file = new File(realPath);
		if (file.exists())
			file.delete();
	}
}
