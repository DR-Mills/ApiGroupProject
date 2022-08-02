package ApiGroupProject.FoodApi;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.HttpClientErrorException;

@Controller
public class HomeController {

	@Autowired
	WineApiService wineApiService;
	
	@Autowired
	private WineRepository repo;

	@RequestMapping("/testDishPairing")
	public String showIndexTest1(Model model) {

		try {
			List<String> dishList = wineApiService.getDishPairingForWine("pinot_noir");
			model.addAttribute("dishList", dishList);

		} catch (HttpClientErrorException e) {
			System.out.println("API Call Error.");
			model.addAttribute("msg", "API Error. Check console output");
			return "testPage";
		}

		return "testPage";
	}

	@RequestMapping("/testWinePairing")
	public String showIndexTest2(Model model) {

		try {
			WinePairingResponse winePerDish = wineApiService.winePairingResponse("steak");
			model.addAttribute("winePerDish", winePerDish);

		} catch (HttpClientErrorException e) {
			System.out.println("API Call Error.");
			model.addAttribute("msg", "API Error. Check console output");
			return "testPage";
		}

		return "testPage";
	}

	@RequestMapping("/")
	public String showHomePage(Model model) {

		try {

		} catch (HttpClientErrorException e) {
			System.out.println("API Call Error.");
			model.addAttribute("msg", "API Error. Check console output");
			return "/testPage";
		}

		return "index";
	}

	@RequestMapping("/searchResults")
	public String showSearchResults(Model model, @RequestParam String wineSearch) {

		try {
			List<String> dishList = wineApiService.getDishPairingForWine(wineSearch);
			model.addAttribute("dishList", dishList);

//			WinePairingResponse wineList = wineApiService.winePairingResponse(foodSearch);
//			model.addAttribute("wineList", wineList);

		} catch (HttpClientErrorException e) {
			System.out.println("API Call Error.");
			model.addAttribute("msg", "API Error. Check console output");
			return "/testPage";
		}

		return "searchResults";
	}

	@RequestMapping("/wineResults")
	public String showFoodResults(Model model, @RequestParam String foodSearch) {

		try {

			WinePairingResponse wineList = wineApiService.winePairingResponse(foodSearch);
			model.addAttribute("wineList", wineList);

		} catch (HttpClientErrorException e) {
			System.out.println("API Call Error.");
			model.addAttribute("msg", "API Error. Check console output");
			return "/testPage";
		}

		return "wineResults";
	}
	
	@RequestMapping("/recommendations")
	public String showRecommendations(Model model, @RequestParam String wine) {
		
		List<Wine> recommendList = wineApiService.recommendedWineList(wine);
		model.addAttribute("recommendList", recommendList);
		
		return "recommendations";
	}
	
	@RequestMapping("/saveToFavorites")
	public String saveToFavorites(Model model, @RequestParam int id,
			@RequestParam String title,
			@RequestParam double averageRating, @RequestParam String description,
			@RequestParam String price) {
		
		Wine newWine = new Wine(id, title, averageRating, description, price);
		
		
		repo.save(newWine);
		
		return "index";//need to update this eventually
	}

	
	
	
	
//	@RequestMapping("/testwinepairinglist")
//	public String showIndexTest3(Model model) {
//		TreeMap<String, List<String>> responseList = new TreeMap<>();
//		for (String wine : WineGuideList.WINEGUIDE) {
//			List<String> dishList = wineApiService.getDishPairingForWine(wine);
//			responseList.put(wine, dishList);
//			if (dishList != null) {
//				dishList.clear();
//			}
//			try {
//				Thread.sleep(2000);
//			} catch (InterruptedException ex) {
//				Thread.currentThread().interrupt();
//			}
//		}
//		System.out.println(responseList);
//		model.addAttribute("mapList", responseList);
//		return "testPage";
//	}
}
