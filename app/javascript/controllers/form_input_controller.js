import { Controller } from '@hotwired/stimulus'
import mapboxgl from 'mapbox-gl'

export default class extends Controller {
  static targets = ["popup", "form", "latitude", "longitude", "art", "date"];

  connect() {
    // console.log("Hello from our Stimulus controller");
    // console.log(this.formTarget)
  }

  // Gather all data from the form
  async submit(event) {
    event.preventDefault();
    // console.log('test')
    let long = document.getElementById("longitude").value;
    let lati = document.getElementById("latitude").value;
    let art = document.getElementById("artist")?.value;
    let date = document.getElementById("sliderValue").innerText;
    // console.log(long, lati, art, date);
    let gameArtworkId = this.formTarget.dataset.gamesArtworkId;
    // console.log(gameArtworkId)

    try {
      const response = await fetch(`/games_artworks/${gameArtworkId}/challenges`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
          body: JSON.stringify({ latitude: lati, longitude: long, games_artwork_id: gameArtworkId, creation_date: date, artist: art   })
      });

      if (!response.ok) {
        console.error('Erreur lors de la comparaison');
        return;
      }

      const data = await response.json();

      let sentence = document.getElementById("pop-text");
      let geoscore = document.getElementById("geo-score");
      let score = document.getElementById('pop-score');
      let time = document.getElementById('pop-time');
      let artist = document.getElementById('artist-score');

      this.buildMap(data);

      sentence.textContent = `You are ${data.distance} km away. Geoscore : ${data.geoscore}`

      let artist_guess = document.getElementById('artist-guess');
      let date_guess = document.getElementById('date-guess');
      sentence.textContent = `You are ${data.distance} km away`

      score.textContent = `Total points : ${data.total_score}`;
      time.textContent = `${data.time_score} pts`;
      artist.textContent = `${data.artist_score} pts`;
      artist_guess.textContent = `${art}`;
      date_guess.textContent = `${date}`;
      geoscore.textContent = `${data.geoscore} pts`;

      let next = document.getElementById('next')
      let end = document.getElementById('end-game')

      if (data.is_last === true) {
        next.classList.add("d-none");
        end.classList.remove("d-none");
      }

      if (data.correct_artist_name === true) {
        document.getElementById('correct_artist').classList.remove('d-none');
      } else {
        document.getElementById('incorrect_artist').classList.remove('d-none');
      }

      if (data.correct_date === true) {
        document.getElementById('correct_date').classList.remove('d-none');
      } else {
        document.getElementById('incorrect_date').classList.remove('d-none');
      }

      if (data.total_score > 9600) {
        document.getElementById('fivestar').classList.remove('d-none');
      } else if (data.total_score > 7200 && data.total_score <= 9600) {
        document.getElementById('fourstar').classList.remove('d-none');
      } else if (data.total_score > 4800 && data.total_score <= 7200) {
        document.getElementById('threestar').classList.remove('d-none');
      } else if (data.total_score > 2400 && data.total_score <= 4800) {
        document.getElementById('twostar').classList.remove('d-none');
      } else {
        document.getElementById('onestar').classList.remove('d-none');
      };

      // Afficher la distance
      // const distanceMessageElement = document.getElementById('distance-message');
      // distanceMessageElement.textContent = `Vous êtes à ${data.distance} km de la bonne réponse. Votre Geoscore est de ${data.geoscore}. Votre Time Score est de ${data.time_score}.`;
    } catch (error) {
      console.error('Erreur dans la requête de comparaison:', error);
    }
    // Put it into a fetch request Post to create end point
    // In create method of challenge controller compute all the data + score + persist db
    // Answer the response with score for user
    this.popupTarget.click();
    // Update the pop up ui with received score
  }

  buildMap(data) {
    const userCoordinates = JSON.parse(data.user_coordinates);
    const artworkCoordinates = JSON.parse(data.artwork_coordinates);
    this.mapElement = document.getElementById('results-map');

    this.map = new mapboxgl.Map({
      container: this.mapElement,
      style: "mapbox://styles/mapbox/streets-v10",
      zoom: 2
    });

    this.markers = [];

    const userMarkerElement = document.createElement("div");
    userMarkerElement.innerHTML = `<i class="fa-solid fa-location-dot fa-2x"></i>`;
    userMarkerElement.style.cursor = "pointer";
    userMarkerElement.style.color = "#ED6856";
    this.userMarker = new mapboxgl.Marker({ element: userMarkerElement })
      .setLngLat([ userCoordinates.lng, userCoordinates.lat ])
      .addTo(this.map);

    const artworkMarkerElement = document.createElement("div");
    artworkMarkerElement.innerHTML = `<i class="fa-solid fa-location-dot fa-2x"></i>`;
    artworkMarkerElement.style.cursor = "pointer";
    artworkMarkerElement.style.color = "#79CEB8"
    this.artworkMarker = new mapboxgl.Marker({ element: artworkMarkerElement })
      .setLngLat([ artworkCoordinates.lng, artworkCoordinates.lat ])
      .addTo(this.map);

    this.#fitMapToMarkers(userCoordinates, artworkCoordinates);
    this.#addLineBetweenMarkers(userCoordinates, artworkCoordinates);
  }

  #fitMapToMarkers(userCoordinates, artworkCoordinates) {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([ userCoordinates.lng, userCoordinates.lat ])
    bounds.extend([ artworkCoordinates.lng, artworkCoordinates.lat ])
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  #addLineBetweenMarkers(userCoordinates, artworkCoordinates) {
    // Vérifiez si la source existe déjà pour éviter les doublons
    if (this.map.getSource('line')) {
        this.map.removeLayer('line');
        this.map.removeSource('line');
    }

    // Attendre que la carte soit complètement chargée
    this.map.on('load', () => {
        // Ajouter une source GeoJSON pour la ligne
        this.map.addSource('line', {
            type: 'geojson',
            data: {
                type: 'Feature',
                geometry: {
                    type: 'LineString',
                    coordinates: [
                        [userCoordinates.lng, userCoordinates.lat],
                        [artworkCoordinates.lng, artworkCoordinates.lat]
                    ]
                }
            }
        });

        // Ajouter une couche pour afficher la ligne en pointillés
        this.map.addLayer({
            id: 'line',
            type: 'line',
            source: 'line',
            paint: {
                'line-color': '#808080', // Gris
                'line-width': 3, // Largeur de la ligne
                'line-dasharray': [4, 2] // Pointillés : 2px trait, 4px espace
            }
        });
    });
  }

}
