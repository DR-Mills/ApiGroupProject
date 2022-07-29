package ApiGroupProject.FoodApi;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.HttpClientErrorException;

@Controller
public class HomeController {

	@Autowired
	WineApiService wineApiService;

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
}
