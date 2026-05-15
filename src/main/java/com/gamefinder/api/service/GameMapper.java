package com.gamefinder.api.service;

import com.gamefinder.api.dto.GameDetailDTO;
import com.gamefinder.api.dto.GameSummaryDTO;
import com.gamefinder.api.dto.GenreDTO;
import com.gamefinder.api.dto.PlatformDTO;
import com.gamefinder.api.entity.Game;
import org.springframework.stereotype.Component;

@Component
public class GameMapper {

    public GameDetailDTO toDetailDTO(Game game) {
        GameDetailDTO dto = new GameDetailDTO();
        dto.setId(game.getId());
        dto.setTitle(game.getTitle());
        dto.setDescription(game.getDescription());
        dto.setReleaseDate(game.getReleaseDate());
        dto.setRating(game.getRating());
        dto.setCoverUrl(game.getCoverUrl());
        dto.setBackdropUrl(game.getBackdropUrl());
        dto.setInWishlist(game.isInWishlist());

        if (game.getGenre() != null) {
            dto.setGenre(new GenreDTO(game.getGenre().getId(), game.getGenre().getName()));
        }

        if (game.getPlatform() != null) {
            dto.setPlatform(new PlatformDTO(game.getPlatform().getId(), game.getPlatform().getName()));
        }

        return dto;
    }

    public GameSummaryDTO toSummaryDTO(Game game) {
        return new GameSummaryDTO(game.getId(), game.getTitle());
    }
}
