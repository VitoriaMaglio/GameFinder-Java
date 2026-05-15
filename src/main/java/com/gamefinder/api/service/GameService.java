package com.gamefinder.api.service;

import com.gamefinder.api.controller.GameController;
import com.gamefinder.api.dto.GameDetailDTO;
import com.gamefinder.api.dto.GameSummaryDTO;
import com.gamefinder.api.entity.Game;
import com.gamefinder.api.repository.GameRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.PagedModel;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.stream.Collectors;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;

@Service
public class GameService {

    private final GameRepository gameRepository;
    private final GameMapper gameMapper;
    private final PagedResourcesAssembler<GameSummaryDTO> pagedResourcesAssembler;

    public GameService(GameRepository gameRepository,
                       GameMapper gameMapper,
                       PagedResourcesAssembler<GameSummaryDTO> pagedResourcesAssembler) {
        this.gameRepository = gameRepository;
        this.gameMapper = gameMapper;
        this.pagedResourcesAssembler = pagedResourcesAssembler;
    }

    public PagedModel<EntityModel<GameSummaryDTO>> findAll(Pageable pageable) {
        Page<Game> gamePage = gameRepository.findAll(pageable);
        Page<GameSummaryDTO> dtoPage = gamePage.map(gameMapper::toSummaryDTO);
        return pagedResourcesAssembler.toModel(dtoPage);
    }

    public GameDetailDTO findById(Long id) {
        Game game = gameRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Game not found with id: " + id));

        GameDetailDTO dto = gameMapper.toDetailDTO(game);
        addLinks(dto, game);
        return dto;
    }

    public List<GameDetailDTO> findByGenre(Long genreId) {
        return gameRepository.findByGenreId(genreId).stream()
                .map(game -> {
                    GameDetailDTO dto = gameMapper.toDetailDTO(game);
                    addLinks(dto, game);
                    return dto;
                })
                .collect(Collectors.toList());
    }

    public List<GameDetailDTO> findByPlatform(Long platformId) {
        return gameRepository.findByPlatformId(platformId).stream()
                .map(game -> {
                    GameDetailDTO dto = gameMapper.toDetailDTO(game);
                    addLinks(dto, game);
                    return dto;
                })
                .collect(Collectors.toList());
    }

    public GameDetailDTO toggleWishlist(Long id) {
        Game game = gameRepository.findById(id)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Game not found with id: " + id));

        game.setInWishlist(!game.isInWishlist());
        game = gameRepository.save(game);

        GameDetailDTO dto = gameMapper.toDetailDTO(game);
        addLinks(dto, game);
        return dto;
    }

    public List<GameDetailDTO> findWishlist() {
        return gameRepository.findByInWishlistTrue().stream()
                .map(game -> {
                    GameDetailDTO dto = gameMapper.toDetailDTO(game);
                    addLinks(dto, game);
                    return dto;
                })
                .collect(Collectors.toList());
    }

    private void addLinks(GameDetailDTO dto, Game game) {
        // self link
        dto.add(Link.of(
                linkTo(methodOn(GameController.class).findById(game.getId())).toUri().toString(),
                "self"
        ).withTitle(game.getTitle()));

        // same-genre link
        if (game.getGenre() != null) {
            dto.add(Link.of(
                    linkTo(methodOn(GameController.class).findByGenre(game.getGenre().getId())).toUri().toString(),
                    "same-genre"
            ).withTitle("Games in " + game.getGenre().getName() + " genre"));
        }

        // same-platform link
        if (game.getPlatform() != null) {
            dto.add(Link.of(
                    linkTo(methodOn(GameController.class).findByPlatform(game.getPlatform().getId())).toUri().toString(),
                    "same-platform"
            ).withTitle("Games on " + game.getPlatform().getName()));
        }

        // wishlist toggle link
        if (game.isInWishlist()) {
            dto.add(Link.of(
                    linkTo(methodOn(GameController.class).toggleWishlist(game.getId())).toUri().toString(),
                    "remove-from-wishlist"
            ).withTitle("Remove " + game.getTitle() + " from wishlist").withType("GET"));
        } else {
            dto.add(Link.of(
                    linkTo(methodOn(GameController.class).toggleWishlist(game.getId())).toUri().toString(),
                    "add-to-wishlist"
            ).withTitle("Add " + game.getTitle() + " to wishlist").withType("GET"));
        }
    }
}
