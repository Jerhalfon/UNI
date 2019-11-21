import ApexCharts from 'apexcharts'

const displayMbti = () => {

  const stat = document.querySelector("#personality-stat")
  if (!stat) return null
  const stats = Object.values(stat.dataset)
  const statsInteger = stats.map((stat) =>{
    const yStat = parseFloat(stat);
    return (yStat > 50) ? yStat : (yStat + 40);
  });
  const maxStat = Math.max(...statsInteger);

  const profileAnnouncement = document.querySelector("#profile-announcement")
  const appear = (element) => {
  element.classList.add("opac");
  }

  const profileName = document.querySelector("#mbti-name")
  const profileImage = document.querySelector("#mbti-image")

  const basicOptions = {
      chart: {
        animations: {
          speed: 3000,
          animateGradually: {
            enabled: true,
            delay: 1
          },
          dynamicAnimation: {
            enabled: true,
            speed: 350
          }
        },
        height: 300,
        type: 'radialBar',
        toolbar: {
          show: false
        }
      },
      plotOptions: {
        radialBar: {
          startAngle: 0,
          endAngle: 360,
          hollow: {
            margin: 0,
            size: '65%',
            background: '#fff',
            image: undefined,
            imageOffsetX: 0,
            imageOffsetY: 0,
            position: 'front',

          },
          track: {
            background: '#f4f4f4',
            strokeWidth: '100%',
          margin: 0, // margin is in pixels
        },

        dataLabels: {
          showOn: 'always',
          name: {
            offsetY: -10,
            show: true,
            color: '#888',
            fontSize: '17px'
          },
          value: {
            formatter: function(val) {
              return parseInt(val);
            },
            color: '#111',
            fontSize: '36px',
            show: true,
          }
        }
      }
    },
    fill: {
      type: 'gradient',
      gradient: {
        shade: 'dark',
        type: 'horizontal',
        shadeIntensity: 0.5,
        gradientToColors: ['#4278D6'],
        inverseColors: true,
        opacityFrom: 1,
        opacityTo: 1,
        stops: [0, 100]
      }
    },
    stroke: {
      lineCap: 'round'
    },
  }

   const personalityStat1 = () => {
    var options = {
      ...basicOptions,
      chart: {
        ...basicOptions.chart,
        events: {
          animationEnd: function(chartContext, config) {
            if (parseFloat(statsInteger[0]) === maxStat) {
              appear(profileAnnouncement);
            }
          }
        },
      },
      series: [statsInteger[0]],
      labels: ['Openeness'],
    }

    var chart1 = new ApexCharts(
      document.querySelector("#chart1"),
      options
    );

    chart1.render();
  }

     const personalityStat2 = () => {
        var options = {
      ...basicOptions,
      chart: {
        ...basicOptions.chart,
        events: {
          animationEnd: function(chartContext, config) {
            if (parseFloat(statsInteger[1]) === maxStat) {
              appear(profileAnnouncement);
            }
          }
        },
      },
      series: [statsInteger[1]],
      labels: ['Conscientiousness'],
    }

      var chart2 = new ApexCharts(
        document.querySelector("#chart2"),
        options
      );

      chart2.render();
    }

   const personalityStat3 = () => {
        var options = {
      ...basicOptions,
      chart: {
        ...basicOptions.chart,
        events: {
          animationEnd: function(chartContext, config) {
            if (parseFloat(statsInteger[2]) === maxStat) {
              appear(profileAnnouncement);
            }
          }
        },
      },
      series: [statsInteger[2]],
      labels: ['Extraversion'],
    }

      var chart3 = new ApexCharts(
        document.querySelector("#chart3"),
        options
      );

      chart3.render();
    }

   const personalityStat4 = () => {
        var options = {
      ...basicOptions,
      chart: {
        ...basicOptions.chart,
        events: {
          animationEnd: function(chartContext, config) {
            if (parseFloat(statsInteger[3]) === maxStat) {
              appear(profileAnnouncement);
            }
          }
        },
      },
      series: [statsInteger[3]],
      labels: ['Agreeableness'],
    }

      var chart4 = new ApexCharts(
        document.querySelector("#chart4"),
        options
      );

      chart4.render();
    }

   const personalityStat5 = () => {
        var options = {
      ...basicOptions,
      chart: {
        ...basicOptions.chart,
        events: {
          animationEnd: function(chartContext, config) {
            if (parseFloat(statsInteger[4]) === maxStat) {
              appear(profileAnnouncement);
            }
          }
        },
      },
      series: [statsInteger[4]],
      labels: ['Emotional range'],
    }

      var chart5 = new ApexCharts(
        document.querySelector("#chart5"),
        options
      );

      chart5.render();
    }

  // sliderValue();
  personalityStat1();
  personalityStat2();
  personalityStat3();
  personalityStat4();
  personalityStat5();

  profileAnnouncement.addEventListener("transitionend", function(event) {
    profileName.classList.add("opac");
    profileImage.classList.add("opac");
  }, false);
}

displayMbti();


