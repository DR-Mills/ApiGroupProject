package ApiGroupProject.FoodApi;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class WineApiService {

	private RestTemplate restTemplate = new RestTemplate();
	
	@Value("${apiKey}")
	private String apiKey;

	// API Methods
	DishPairingForWineResponse getDishPairingForWineResponse(String wineType) {
		
		//the unsafe way (tested=works)
		String url = "https://api.spoonacular.com/food/wine/dishes?" + apiKey + "&wine=" + wineType;
		System.out.println(url);

		//the safe way (currently not working...)
//		String url = "https://api.spoonacular.com/food/wine/dishes?apiKey={apiKey}&wine={wineType}";
		
		DishPairingForWineResponse response = restTemplate.getForObject(url, DishPairingForWineResponse.class, apiKey, wineType);

		return response;
	}

}
