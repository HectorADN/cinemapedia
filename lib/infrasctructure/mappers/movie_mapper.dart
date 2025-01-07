import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrasctructure/models/moviedb/movie_moviedb.dart';



class MovieMapper {

  static Movie movieDBToEntity( MovieMovieDB moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500${  moviedb.backdropPath }'
        : 'https://www.ec-comercial.com/img/image-not-found.jpg',
    genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '')
      ? 'https://image.tmdb.org/t/p/7w500${  moviedb.posterPath }'
      : 'no-poster',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );

}