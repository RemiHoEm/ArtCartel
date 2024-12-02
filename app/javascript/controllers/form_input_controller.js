import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ["popup", "form", "latitude", "longitude", "art", "date"];

  connect() {
    console.log("Hello from our Stimulus controller");
    console.log(this.formTarget)
  }

  // Gather all data from the form
  async submit(event) {
    event.preventDefault();
    console.log('test')
    let long = document.getElementById("longitude").value;
    let lati = document.getElementById("latitude").value;
    let art = document.getElementById("artist").value;
    let date = document.getElementById("sliderValue").innerText;
    console.log(long, lati, art, date);
    let gameArtworkId = this.formTarget.dataset.gamesArtworkId;
    console.log(gameArtworkId)

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

      console.log(data);

      let sentence = document.getElementById("pop-text");
      let geoscore = document.getElementById("geo-score");
      let score = document.getElementById('pop-score');
      let time = document.getElementById('pop-time');
      let artist = document.getElementById('artist-score');
      let artist_guess = document.getElementById('artist-guess');
      let date_guess = document.getElementById('date-guess');
      sentence.textContent = `You are ${data.distance} km away`
      score.textContent = `Total score : ${data.total_score}`;
      time.textContent = `Time score : ${data.time_score}`;
      artist.textContent = `Artist score : ${data.artist_score}`;
      artist_guess.textContent = `${art}`;
      date_guess.textContent = `${date}`;
      geoscore.textContent = `Geoscore : ${data.geoscore}`;

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
}
