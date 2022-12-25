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
}
