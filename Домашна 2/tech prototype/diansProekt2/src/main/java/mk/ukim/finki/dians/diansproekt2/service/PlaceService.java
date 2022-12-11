package mk.ukim.finki.dians.diansproekt2.service;

import mk.ukim.finki.dians.diansproekt2.model.Place;

import java.util.List;
import java.util.Optional;

public interface PlaceService {
    List<Place> listAll();

    Optional<Place> findById(String id);
}
