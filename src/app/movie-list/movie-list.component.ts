import { Component } from '@angular/core';

@Component({
  selector: 'app-movie-list',
  standalone: true,
  imports: [],
  templateUrl: './movie-list.component.html',
  styleUrl: './movie-list.component.scss'
})
export class MovieListComponent {
  movies = [
    {
      order: 1,
      title: "The Shawshank Redemption",
      link: "https://www.themoviedb.org/movie/278-the-shawshank-redemption"
    },
    {
      order: 2,
      title: "Interstellar",
      link: "https://www.themoviedb.org/movie/157336-interstellar"
    },
    {
      order: 3,
      title: "Gladiator",
      link: "https://www.themoviedb.org/movie/98-gladiator"
    },
    {
      order: 4,
      title: "Mad max: Fury road",
      link: "https://www.themoviedb.org/movie/76341-mad-max-fury-road"
    },
    {
      order: 5,
      title: "It's a wonderfull life",
      link: "https://www.themoviedb.org/movie/1585-it-s-a-wonderful-life"},
  ]
}
