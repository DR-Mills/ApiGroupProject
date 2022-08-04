package ApiGroupProject.FoodApi;

import java.util.List;
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

	@Autowired
	private WineListRepository listRepo;

	
	@RequestMapping("/")
	public String showHomePage(Model model) {

		try {
			List<WineList> wineList = listRepo.findAll();
			model.addAttribute("wineList", wineList);

		} catch (Exception e) {
			System.out.println("Error in showHomePage");
			model.addAttribute("msg", "Database Error");
		}

		return "index";
	}

	
	@RequestMapping("/foodResults")
	public String showFoodResults(Model model, @RequestParam String wine) {

		try {
			List<String> dishList = wineApiService.getDishPairingForWine(wine);
			model.addAttribute("dishList", dishList);

		} catch (HttpClientErrorException e) {
			System.out.println("Error in showSearchResults");
			model.addAttribute("msg", "API Error");
		}

		return "foodResults";
	}

	
	@RequestMapping("/wineResults")
	public String showWineResults(Model model, @RequestParam String food) {

		try {
			WinePairingResponse wineList = wineApiService.winePairingResponse(food);
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
	public String saveToFavorites(Model model, @RequestParam int id, @RequestParam String title,
			@RequestParam double averageRating, @RequestParam String description, @RequestParam String price) {

		Wine newWine = new Wine(id, title, averageRating, description, price);

		repo.save(newWine);
		List<Wine> favoriteList = repo.findAll();
		model.addAttribute("favorite", favoriteList);
		model.addAttribute("msg", title + " successfully added to your favorites");

		return "favorites";
	}
	@RequestMapping("/favorites")
	public String displayFavorites(Model model) {
		List<Wine> favoriteList = repo.findAll();
		model.addAttribute("favorite", favoriteList);
		return "favorites";
	}
	@RequestMapping("/deleteFavorite")
	public String deleteFavorites(@RequestParam int id) {
		repo.deleteById(id);
		return "redirect:favorites";
	}
}
