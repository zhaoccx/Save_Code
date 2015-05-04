/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package init;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author zfsn
 */
public class Context {
	private static Context context = new Context();
	private Map<String, Object> system = new HashMap<String, Object>(0);

	private Context() {
		ContextInit.initComtext(this);
	}

	public static Context getInstance() {
		return context;
	}

	public void put(String key, Object value) {
		system.put(key, value);
	}

	public Object get(String key) {
		return system.get(key);
	}

}
