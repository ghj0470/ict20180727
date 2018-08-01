package tes20180801;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

public class CarService {
	private static CarService cs;
	private List<HashMap<String, String>> carList;

	public static CarService getCarService() {
		if (cs == null) {
			cs = new CarService();
		}
		return cs;
	}

	public List<HashMap<String, String>> getCarList() {
		if (carList == null) {
			carList = new ArrayList<HashMap<String, String>>();
			for (int i = 1; i <= 10; i++) {
				HashMap<String, String> hm = new HashMap<String, String>();
				int rNum = (int) (Math.random() * 20);
				hm.put("carName", "" + i);
				String deCode = StringUtils.leftPad(rNum + "", 3, '0');
				hm.put("deCode", deCode);
				hm.put("deCnt", rNum + "");

				carList.add(hm);
			}
		}
		return carList;
	}

	public List<HashMap<String, String>> getCarList(String[] types, String searchStr) {
		if (types == null || carList == null) {
			return getCarList();
		}
		List<HashMap<String, String>> carList2 = new ArrayList<HashMap<String, String>>();
		for (HashMap<String, String> hm : carList) {

			for (String type : types) {
				if (hm.get(type).indexOf(searchStr) != -1) {
					if (carList2.indexOf(hm) == -1) {
						carList2.add(hm);
					}
				}
			}
		}
		return carList2;
	}
}
