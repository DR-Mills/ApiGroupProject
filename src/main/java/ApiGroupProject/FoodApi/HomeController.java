package ApiGroupProject.FoodApi;

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
	public String showIndex(Model model) {

		try {
			DishPairingForWineResponse dishPerWine = wineApiService.getDishPairingForWineResponse("merlot");
			model.addAttribute("dishPerWine", dishPerWine);
		
		} catch (HttpClientErrorException e) {
			System.out.println("API Call Error. Check console output");
			model.addAttribute("msg", "API Error");
			return "testPage";
		}

		return "testPage";
	}
}
