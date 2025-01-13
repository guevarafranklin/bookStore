import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="revenue"
export default class extends Controller {
  connect() {
  const divElement = this.element;
  const data = JSON.parse(divElement.getAttribute('data-days-sells'));
  const barColors = ["red", "green","blue","orange","brown"];
  let book = [];
  let total = [];

  data.forEach(element => {
    book.push(element[0]);
    total.push(element[1]);
  });

    new Chart("revenueSells", {
      type: "pie",
      data: {
        labels: book,
        datasets: [{
          backgroundColor: barColors,
          data: total
        }]
      },
      options: {
        title: {
          display: true,
  
        }
      }
    });
  }
}
