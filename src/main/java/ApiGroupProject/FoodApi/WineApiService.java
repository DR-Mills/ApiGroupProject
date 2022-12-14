package ApiGroupProject.FoodApi;

import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class WineApiService {

	private RestTemplate restTemplate = new RestTemplate();
	
	@Value("${apiKey}")
	private String apiKey;

	
	// API Methods
	public List<String> getDishPairingForWine(String wineType) {
		
		String url = "https://api.spoonacular.com/food/wine/dishes?apiKey={apiKey}&wine={wineType}";
		
		DishPairingForWineResponse response = restTemplate.getForObject(url, DishPairingForWineResponse.class, apiKey, wineType);
	
		return response.getPairings();
	}
	
	
	public WinePairingResponse winePairingResponse(String food) {
		
		String url = "https://api.spoonacular.com/food/wine/pairing?apiKey={apiKey}&food={food}";
		
		WinePairingResponse response = restTemplate.getForObject(url, WinePairingResponse.class, apiKey, food);
	
		return response;
	}
	
	
	public String wineDescription(String wine) {
		
		String url = "https://api.spoonacular.com/food/wine/description?apiKey={apiKey}&wine={wine}";
		
		WineDescriptionResponse response = restTemplate.getForObject(url, WineDescriptionResponse.class, apiKey, wine);
		
		return response.getWineDescription();
	}
	

	public List<Wine> recommendedWineList(String wine) {
		
		String url = "https://api.spoonacular.com/food/wine/recommendation?apiKey={apiKey}&wine={wine}&number=3";

		WineRecommendationResponse response = restTemplate.getForObject(url, WineRecommendationResponse.class, apiKey, wine);
		
		return response.getWineList();
	}
	
}
