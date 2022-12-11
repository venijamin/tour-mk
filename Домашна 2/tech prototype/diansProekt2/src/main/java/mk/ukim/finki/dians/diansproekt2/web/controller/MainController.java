package mk.ukim.finki.dians.diansproekt2.web.controller;

import mk.ukim.finki.dians.diansproekt2.model.Place;
import mk.ukim.finki.dians.diansproekt2.service.PlaceService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("")
public class MainController {

    private final PlaceService placeService;

    public MainController(PlaceService placeService) {
        this.placeService = placeService;
    }

    @GetMapping("/home")
    public String getHomePage(){
        return "homePage";
    }

    @GetMapping("/places")
    public String getPlacesPage(@RequestParam(required = false) String searchString,
                                @RequestParam(required = false) String selectedTag,
                                @RequestParam(required = false) String starRating, Model model){
        model.addAttribute("searchString", searchString);
        model.addAttribute("selectedTag", selectedTag);
        model.addAttribute("starRating", starRating);

        List<Place> placesToShow = placeService.listAll();

        //add filter for searchString and selectedTag
        if(searchString != null && searchString != ""){
            placesToShow.removeIf(x -> !x.getName().toLowerCase().contains(searchString.toLowerCase()));
        }

        if(selectedTag != null && selectedTag != ""){
            placesToShow.removeIf(x -> x.getCategory() == null || x.getCategory() == "" ||
                    !x.getCategory().toLowerCase().contains(selectedTag.toLowerCase()));
        }

        if(starRating != null && !starRating.equals("")){
            float sR = (float)Float.parseFloat(starRating);
            placesToShow.removeIf(x -> x.getStarRating() < sR);
        }

        model.addAttribute("places", placesToShow);
        return "placesPage";
    }

    @GetMapping("/place/{id}")
    public String getPlacePage(@PathVariable String id, Model model){
        Place placeToShow = placeService.findById(id).get();
        model.addAttribute("place", placeToShow);
        return "placeDetailsPage";
    }

    @GetMapping("/about-us")
    public String getAboutUsPage(){
        return "aboutUs";
    }

}
