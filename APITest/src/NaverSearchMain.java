import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.PublicKey;
import java.util.Scanner;

public class NaverSearchMain {

	public static void main(String[] args) {
		  Scanner sc = new Scanner(System.in);
		  
		  System.out.println("검색어 입력 : ");
		  System.out.println(naverNewsSearch(sc.nextLine()));
	}

	public static String naverNewsSearch(String text) {
		String clientId = "AGRd6Xu2ZEHb9yusp65F"; //애플리케이션 클라이언트 아이디
        String clientSecret = "2pKXs1B_5n";
        
		StringBuilder sb = new StringBuilder();
		
		try {
			text = URLEncoder.encode(text,"UTF-8");
					String apiURL = "https://openapi.naver.com/v1/search/news?query=" + text;
			URL url = new URL(apiURL);
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();

	        conn.setRequestMethod("GET");
	        conn.addRequestProperty("X-Naver-Client-Id", clientId);
	        conn.addRequestProperty("X-Naver-Client-Secret", clientSecret);
	        
	        // 200 정상, 404 경로X, 401 인증X, 403 접속 권한X
	        int responseCode = conn.getResponseCode();
	        
	        if(responseCode != 200) {
	        	throw new Exception("호출 오류");
	        }
	        

	        try (BufferedReader br = new BufferedReader(
	        		new InputStreamReader(conn.getInputStream()))){
	        	String str = "";
	        	
	        	while ((str = br.readLine())!=null) {
					sb.append(str);
					
				}
	        
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return sb.toString();
	}
}
}