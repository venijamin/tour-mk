package mk.ukim.finki.dians.diansproekt2.service.impl;

import mk.ukim.finki.dians.diansproekt2.model.Place;
import mk.ukim.finki.dians.diansproekt2.repository.PlaceRepository;
import mk.ukim.finki.dians.diansproekt2.service.PlaceService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PlaceServiceImpl implements PlaceService {
    private final PlaceRepository placeRepository;

    public PlaceServiceImpl(PlaceRepository placeRepository) {
        this.placeRepository = placeRepository;
    }


    @Override
    public List<Place> listAll() {
        return placeRepository.findAll();
    }

    @Override
    public Optional<Place> findById(String id) {
        return placeRepository.findById(id);
    }

    @Override
    public List<Place> findAllByNameLikeAndCategoryLikeAndStarRatingGreaterThanEqual(String name, String category, Float rating) {

        if(name != null)
            name = "%" + name + "%";
        if(category != null)
            category = "%" + category + "%";

        if(name != null && category != null && rating != null)
            return placeRepository.findAllByNameIgnoreCaseLikeAndCategoryIgnoreCaseLikeAndRatingGreaterThanEqual(name, category, rating);
        else if(name != null && category == null && rating != null)
            return placeRepository.findAllByNameIgnoreCaseLikeAndRatingGreaterThanEqual(name, rating);
        else if(name != null && category != null && rating == null)
            return placeRepository.findAllByNameIgnoreCaseLikeAndCategoryIgnoreCaseLike(name, category);
        else if(name != null && category == null && rating == null)
            return placeRepository.findAllByNameIgnoreCaseLike(name);
        else if(category != null && rating != null)
            return placeRepository.findAllByCategoryIgnoreCaseLikeAndRatingGreaterThanEqual(category, rating);
        else if(category != null && rating == null)
            return placeRepository.findAllByCategoryIgnoreCaseLike(category);
        else if(category == null && rating != null)
            return placeRepository.findAllByRatingGreaterThanEqual(rating);

        return placeRepository.findAll();
    }
}
