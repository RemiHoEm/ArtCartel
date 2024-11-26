import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

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
  }

  async #addMarker(lng, lat) {
    try {
      const markerElement = document.createElement("div");
      markerElement.className = "custom-marker";
      markerElement.style.width = "30px";
      markerElement.style.height = "30px";
      markerElement.style.backgroundColor = "red";
      markerElement.style.borderRadius = "50%";
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
  }



    // #addMarkersToMap() {
    //   this.markersValue.forEach((marker) => {
    //     new mapboxgl.Marker()
    //       .setLngLat([ marker.lng, marker.lat ])
    //       .addTo(this.map)
    //   })
    // }
