package com.gamefinder.api.repository;

import com.gamefinder.api.entity.Game;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GameRepository extends JpaRepository<Game, Long> {

    Page<Game> findAll(Pageable pageable);

    List<Game> findByGenreId(Long genreId);

    List<Game> findByPlatformId(Long platformId);

    List<Game> findByInWishlistTrue();
}
