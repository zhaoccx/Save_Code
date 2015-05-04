/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package init;

import beans.Photo;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

import snow.Snow;

/**
 *
 * @author zfsn
 */
public class ContextInit {

	private static final String xmlPath = "InitData.xml";
	private static Document document;

	static {
		try {
			SAXReader reader = new SAXReader();
			document = reader.read(xmlPath);
		} catch (DocumentException ex) {
			Logger.getLogger(ContextInit.class.getName()).log(Level.SEVERE, null, ex);
		}
	}

	public static Document getDocument() throws DocumentException {
		if (document == null) {
			SAXReader reader = new SAXReader();
			document = reader.read(xmlPath);
		}
		return document;
	}

	@SuppressWarnings("unchecked")
	public static void initComtext(Context context) {

		String toName = document.selectSingleNode("//base/toName").getText();
		String sender = document.selectSingleNode("//base/sender").getText();
		String title = document.selectSingleNode("//base/title").getText();
		String[] textContent = document.selectSingleNode("//base/textContent").getText().split("#|，|。|？|！|,|!|\\.");
		context.put("sender", sender);
		context.put("textContent", textContent);
		context.put("title", title);
		context.put("toName", toName);

		List<Node> nodes = document.selectNodes("//base/photoes/photo");
		List<Photo> photoes = new ArrayList<Photo>();
		for (Node node : nodes) {
			String imgPath = node.getText();
			String msg = node.valueOf("@msg");
			Photo pt = new Photo(msg, imgPath);
			photoes.add(pt);
		}
		context.put("photoes", photoes);

		String music = document.selectSingleNode("//base/system/music").getText();
		String trayIco = document.selectSingleNode("//base/system/trayIco").getText();
		String snow = document.selectSingleNode("//base/system/snow").getText();
		String homeBg = document.selectSingleNode("//base/system/homeBg").getText();
		String exitBg = document.selectSingleNode("//base/system/exitBg").getText();

		context.put("music", music);
		context.put("trayIco", trayIco);
		context.put("snow", snow);
		context.put("homeBg", homeBg);
		context.put("exitBg", exitBg);

		String musicIco = document.selectSingleNode("//base/system/buttonIcoes/musicIco").getText();
		String exitIco = document.selectSingleNode("//base/system/buttonIcoes/exitIco").getText();
		String snowIco = document.selectSingleNode("//base/system/buttonIcoes/snowIco").getText();
		String backIco = document.selectSingleNode("//base/system/buttonIcoes/backIco").getText();
		String exitSureIco = document.selectSingleNode("//base/system/buttonIcoes/exitSureIco").getText();
		context.put("musicIco", musicIco);
		context.put("exitIco", exitIco);
		context.put("snowIco", snowIco);
		context.put("backIco", backIco);
		context.put("exitSureIco", exitSureIco);

	}

	public static void main(String[] args) {
		Context context = ContextFactory.getContext();
		String[] data = (String[]) context.get("textContent");
		for (String str : data) {
			System.out.println(str);
		}
		new Snow();
	}
}
