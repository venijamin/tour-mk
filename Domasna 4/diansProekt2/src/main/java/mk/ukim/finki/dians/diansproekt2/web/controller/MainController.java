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
                                @RequestParam(required = false) Float starRating, Model model){

        if(searchString != null && searchString.equals( ""))
            searchString = null;
        model.addAttribute("searchString", searchString);
        model.addAttribute("selectedTag", selectedTag);
        model.addAttribute("starRating", starRating);

        List<Place> placesToShow = placeService.findAllByNameLikeAndCategoryLikeAndStarRatingGreaterThanEqual(searchString, selectedTag, starRating);

        if(placesToShow.isEmpty())
            model.addAttribute("errorMessage", "No places with that name found.");
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
