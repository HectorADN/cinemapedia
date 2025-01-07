import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/infrasctructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrasctructure/repositories/movie_repository_impl.dart';


final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl( MoviedbDatasource() );
});



