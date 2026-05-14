package com.gamefinder.api.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.hateoas.RepresentationModel;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GameDetailDTO extends RepresentationModel<GameDetailDTO> {

    private Long id;
    private String title;
    private String description;
    private LocalDate releaseDate;
    private Double rating;
    private GenreDTO genre;
    private PlatformDTO platform;
    private String coverUrl;
    private String backdropUrl;
    private boolean inWishlist;

}
