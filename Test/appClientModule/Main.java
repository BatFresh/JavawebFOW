import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.collections.map.HashedMap;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class Main {
	public static String getOrderIdByUUId() {
        int machineId = 1;//���֧��1-9����Ⱥ��������
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if(hashCodeV < 0) {//�п����Ǹ���
            hashCodeV = - hashCodeV;
        }
        // 0 ����ǰ�油��0     
        // 4 ������Ϊ4     
        // d �������Ϊ������
        return machineId + String.format("%010d", hashCodeV);
    }
	public static void main(String[] args) throws ParseException {
//		Map<String,String> test = new HashMap<String,String>();
//		List<Map<String,String>> lista = new ArrayList<Map<String,String>>();
//		Map<String,String> test1 = new HashMap<String,String>();
//		test1.put("dd1", "ss");
//		test1.put("dd2", "s1s");
//		test.put("dd1", "sdas");
//		test.put("dd2", "sd1as");
//		lista.add(test);
//		lista.add(test1);
//		
//		String time = "2017-10-19 12:30:23";
//	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//yyyy-mm-dd, �����ʱ�䲻��, ��ΪСд��mm�Ǵ���: ��
//	    Date utilDate = sdf.parse(time);
//	    System.out.println(utilDate.get);//�鿴utilDate��ֵ
//	    Date date = new java.sql.Date(utilDate.getTime());
//	    System.out.println(date);//�鿴date��ֵ
		
		String str = "{	\"storeid\": 1,	\"sumprice\": 24,	\"ordertime\": "
				+ "\"2018-06-16 12:09:00\",	\"orderstatus\": 0,	\"foodlist\": [{		"
				+ "\"foodid\": 1,		\"foodname\": \"���ȶ���\",		\"selectnumber\": 2,		"
				+ "\"foodprice\": 12	}, {		\"foodid\": 1,		"
				+ "\"foodname\": \"���ȶ���\",		\"selectnumber\": 2,		\"foodprice\": 12	}]}";
		JSONObject a = new JSONObject().fromObject(str);
		System.out.println(a);

	}

	/* (non-Java-doc)
	 * @see java.lang.Object#Object()
	 */
	public Main() {
		super();
	}

}