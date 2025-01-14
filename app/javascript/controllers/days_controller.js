import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="days"
export default class extends Controller {
  connect() {

  const divElement = this.element;
  const data = JSON.parse(divElement.getAttribute('data-days-sells'));
  const barColors = ["red", "green","blue","purple","gray", "yellow", "white"];
  let days = [];
  let total = [];

  data.forEach(element => {
    days.push(element[0]);
    total.push(element[1]);
  });

  new Chart("daySells", {
      type: "bar",
      data: {
        labels: days,
        datasets: [{
          backgroundColor: barColors,
          data: total
        }]
      },
      options: {
        legend: { display: false },
        title: {
          display: false,

        },
      }
    });
  }
}