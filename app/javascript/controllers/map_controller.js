import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    artwork: String
  }

  static targets = ["artisant"]

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      zoom: 2
    });

    this.markers = [];
    this.map.on("click", this.#handleMapClick.bind(this));

    // this.#addMarkersToMap()
  }

  async #handleMapClick(event) {
    const { lng, lat } = event.lngLat;
    this.#removeAllMarkers();
    await this.#addMarker(lng, lat);
    console.log(`Longitude: ${lng}, Latitude: ${lat}`);
/*     this.#compareCoordinates(lat, lng);
 */  }

  async #addMarker(lng, lat) {
    try {
      const markerElement = document.createElement("div");
      markerElement.innerHTML = `<i class="fa-solid fa-location-dot fa-2x"></i>`; // Font Awesome icône
      markerElement.style.cursor = "pointer";

      const marker = new mapboxgl.Marker( { element: markerElement})
        .setLngLat([ lng, lat ])
        .addTo(this.map)
        this.markers.push(marker);
      } catch (error) {
        console.error("Error :", error);
    }
  }

  #removeAllMarkers() {
    this.markers.forEach((marker) => marker.remove());
    this.markers = [];
  }

  async #compareCoordinates(lat, lng) {
    // Récupérer la date du slider (assurez-vous que le slider a un ID spécifique)
  const userDate = document.getElementById('sliderValue').innerText; // Exemple : récupère la valeur du slider
  console.log("Lat: " + lat, "Lng: " + lng, "Artwork ID: " + this.artworkValue, "User Date: " + userDate);
    console.log(lat, lng, this.artworkValue, userDate);
    try {
      const response = await fetch('/challenges/compare', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
          body: JSON.stringify({ latitude: lat, longitude: lng, artwork_id: this.artworkValue, date: userDate   }) 
      });
  
      if (!response.ok) {
        console.error('Erreur lors de la comparaison');
        return;
      }
  
      const data = await response.json();
  
      // Afficher la distance
      const distanceMessageElement = document.getElementById('distance-message');
      distanceMessageElement.textContent = `Vous êtes à ${data.distance} km de la bonne réponse. Votre Geoscore est de ${data.geoscore}. Votre Time Score est de ${data.time_score}.`;
    } catch (error) {
      console.error('Erreur dans la requête de comparaison:', error);
    }
  }
}
