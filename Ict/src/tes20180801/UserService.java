package tes20180801;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class UserService {
	public List<HashMap<String, String>> getUserList() {
		List<HashMap<String, String>> userList = new ArrayList<HashMap<String, String>>();
		for (int i = 1; i <= 20; i++) {
			HashMap<String, String> hm = new HashMap<String, String>();
			int rNum = (int) (Math.random() * 100);
			hm.put("DeName", "홍길동" + i);
			hm.put("DeCode", rNum + "");
			hm.put("DeCnt",rNum + "명");
			userList.add(hm);

		}
		return userList;
	}

}
