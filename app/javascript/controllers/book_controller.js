import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="book"
export default class extends Controller {
  connect() {
    const divElement = this.element;
    const data = JSON.parse(divElement.getAttribute('data-book-sells'));
    const id = divElement.getAttribute('book-id');
    const barColors = ["red", "green","blue","orange","brown"];
    let xValues = [];
  
    for (let i = 0; i < data.length; i++) {
      xValues.push(i);
    }

    new Chart(`book_chart_${id}`, {
      type: "line",
      data: {
        labels: xValues,
        datasets: [{
          fill: false,
          lineTension: 0,
          backgroundColor:"rgba(0,0,255,1.0)",
          borderColor: "rgba(255,255,255,255)",
          data: data
        }]
      },
      options:{
        legend:{
          display:false
        },
        title:{
          display:false
      },
    }
    });
  }
}
