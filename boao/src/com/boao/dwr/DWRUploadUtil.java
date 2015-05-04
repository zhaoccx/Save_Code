package com.boao.dwr;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.directwebremoting.WebContextFactory;
import org.directwebremoting.io.FileTransfer;
import org.springframework.stereotype.Component;

/**
 * CK编辑图片的工具，可以在CK中直接编辑图片<br/>
 * 
 * @author Administrator
 * 
 */
@Component("dwrUploadUtil")
public class DWRUploadUtil {

	/* Logger对象 */
	private Logger log = Logger.getLogger(DWRUploadUtil.class);
	// InputStream对象
	protected InputStream ins;
	// FileOutputStream对象
	protected FileOutputStream fos;

	/**
	 * 文件上传
	 * 
	 * @param FileTransfer
	 *            ( DWR封装的FileTransfer对象 )
	 * @param filePath
	 *            ( 文件上传路劲 )
	 * @return boolean ( 上传结果 )
	 * **/
	public String upload(FileTransfer transfer, String filePath) {
		// 返回结果
		String basePath = "FAIL";
		log.info("	======	DWR UPLOAD_FILE	Execute	!	======	");
		// 新生成的文件名称
		String fileName = this.formatFileName(transfer.getFilename());
		File dir = new File(this.getRealPath(filePath));
		if (!dir.exists()) {
			dir.mkdirs();
		}
		// 获取绝对路劲
		String realPath = this.getRealPath(filePath + "/" + fileName);
		// 构造文件对象
		File file = new File(realPath);
		log.info("realpath:" + realPath);
		// FileTransfer不为Null则执行文件读写
		if (transfer != null && transfer.getFilename().length() != 0) {
		}
		try {
			if (!file.createNewFile()) {
				log.error("创建文件失败");
			}
			// 构造FileTransfer的输入流
			ins = transfer.getInputStream();
			// 实例化FileOutputStream对象
			fos = new FileOutputStream(file);
			// 设置byte型缓冲区域的大小
			byte[] b = new byte[4096];
			// 开始拷贝
			while (ins.read(b) != -1) {
				fos.write(b);
			}
			HttpServletRequest request = WebContextFactory.get().getHttpServletRequest();
			// 修改并返回文件与服务器上的绝对路径
			basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + filePath + fileName;
			System.out.println("basePath: " + basePath);
		}
		catch (Exception e) {
			log.info(e.getMessage());
			e.printStackTrace();
		}
		finally {
			// 关闭所有流
			this.closeStream();
		}
		return basePath;
	}

	/**
	 * 获取文件于服务器上的绝对路劲
	 * 
	 * @param filePath
	 *            (保存的路径)
	 * @return String (realPath)
	 **/
	public String getRealPath(String filePath) {
		return WebContextFactory.get().getHttpServletRequest().getSession().getServletContext().getRealPath(filePath);
	}

	/**
	 * 获取文件的后缀(文件类型)
	 * 
	 * @param fileName
	 *            (文件的原始名称)
	 * @return Suffix
	 * **/
	public String getSuffix(String fileFileName) {
		String suffix = "";
		if (fileFileName.lastIndexOf(".") != -1) {
			suffix = fileFileName.substring(fileFileName.lastIndexOf("."));
		}
		return suffix;
	}

	/**
	 * 根据时分秒毫秒生成文件名
	 * 
	 * @param fileFileName
	 *            (传入的文件名)
	 * @return fileName (返回的文件名)
	 **/
	public String formatFileName(String fileFileName) {
		String suffix = this.getSuffix(fileFileName);
		String tmpRandom = new Random().nextInt(999) + "_";
		return new SimpleDateFormat("yyMMdd_HHmmss_SSSS_").format(new Date()) + tmpRandom + suffix;
	}

	/**
	 * 关闭输入输出流
	 **/
	public void closeStream() {
		try {
			if (fos != null) {
				// 立即喷射
				fos.flush();
				// 关闭
				fos.close();
			}
			if (ins != null) {
				// 关闭
				ins.close();
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
