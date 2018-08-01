package tes20180801;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DeparService {
	private static DeparService ds;
	private List<HashMap<String, String>> departList;

	public static DeparService getdeparService() {
		if (ds == null) {
			ds = new DeparService();
		}
		return ds;
	}

	public List<HashMap<String, String>> getDepartList(String searchStr)

	{
		if (searchStr == null || departList == null) {
			return getDepartList();
		}
		List<HashMap<String, String>> departList2 = new ArrayList<String, String>();
		for(HashMap<String, String> hm :departList) {
			if(hm.get("decode").indexOf(searchStr)!=-1) {
				departList2.add(hm);
			}
		}

		
		
		departList = new ArrayList<HashMap<String, String>>();
		for (int i = 1; i <= 10; i++) {
			HashMap<String, String> hm = new HashMap<String, String>();
			int rNum = (int) (Math.random() * 20);

		}

	}
}
