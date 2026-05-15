package com.gamefinder.api.controller;

import com.gamefinder.api.dto.GameDetailDTO;
import com.gamefinder.api.dto.GameSummaryDTO;
import com.gamefinder.api.service.GameService;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.PagedModel;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/games")
@CrossOrigin(origins = "*")
public class GameController {

    private final GameService gameService;

    public GameController(GameService gameService) {
        this.gameService = gameService;
    }


    @GetMapping
    public ResponseEntity<PagedModel<EntityModel<GameSummaryDTO>>> findAll(
            @PageableDefault(size = 10, sort = "title", direction = Sort.Direction.ASC) Pageable pageable) {
        return ResponseEntity.ok(gameService.findAll(pageable));
    }


    @GetMapping("/{id}")
    public ResponseEntity<GameDetailDTO> findById(@PathVariable Long id) {
        return ResponseEntity.ok(gameService.findById(id));
    }


    @GetMapping("/genres/{genreId}")
    public ResponseEntity<List<GameDetailDTO>> findByGenre(@PathVariable Long genreId) {
        return ResponseEntity.ok(gameService.findByGenre(genreId));
    }


    @GetMapping("/platforms/{platformId}")
    public ResponseEntity<List<GameDetailDTO>> findByPlatform(@PathVariable Long platformId) {
        return ResponseEntity.ok(gameService.findByPlatform(platformId));
    }


    @GetMapping("/wishlist/{id}")
    public ResponseEntity<GameDetailDTO> toggleWishlist(@PathVariable Long id) {
        return ResponseEntity.ok(gameService.toggleWishlist(id));
    }


    @GetMapping("/wishlist")
    public ResponseEntity<List<GameDetailDTO>> findWishlist() {
        return ResponseEntity.ok(gameService.findWishlist());
    }
}
