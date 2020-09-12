defmodule LiveChartWeb.LiveColumnComponent do
  alias LiveChart.Chart
  use Phoenix.LiveComponent

  def render(assigns) do
    ~L"""
    <div data-testid="lc-live-column-component">
    <figure>
    <svg class="columns__chart" aria-labelledby="chartTitle chartDeesc" role="group" width="100%" height="100%" viewBox="0 0 700 400">
      <title id="chartTitle"><%= Chart.title(@chart) %></title>
      <desc id="chartDeesc">watch my data come alive</desc>

      <svg id="title-y-labels" class="columns__y-labels" width="8%" height="100%" y="0" x="0">
        <svg x="0" y="16%" height="20px" width="100%">
           <svg width="100%" height="100%">
            <text x="50%" y="50%" alignment-baseline="middle" text-anchor="middle">2000</text>
          </svg>
        </svg>
        <svg x="0" y="35%" height="20px" width="100%">
           <svg width="100%" height="100%">
            <text x="50%" y="50%" alignment-baseline="middle" text-anchor="middle">1500</text>
          </svg>
        </svg>
        <svg x="0" y="53%" height="20px" width="100%">
           <svg width="100%" height="100%">
            <text x="50%" y="50%" alignment-baseline="middle" text-anchor="middle">1000</text>
          </svg>
        </svg>
        <svg x="0" y="72%" height="20px" width="100%">
           <svg width="100%" height="100%">
            <text x="50%" y="50%" alignment-baseline="middle" text-anchor="middle">500</text>
          </svg>
        </svg>
       </svg>

       <svg id="title-x-labels" class="columns__x-labels" width="92%" height="8%" y="92%" x="9.5%">
        <svg x="5%" y="0%" height="auto" width="10%">
           <svg width="100%" height="100%">
            <text x="50%" y="50%" alignment-baseline="middle" text-anchor="middle">Bar One</text>
          </svg>
        </svg>
         <svg x="25%" y="0%" height="auto" width="10%">
           <svg width="100%" height="100%">
            <text x="50%" y="50%" alignment-baseline="middle" text-anchor="middle">Bar Two</text>
          </svg>
        </svg>
         <svg x="45%" y="0%" height="auto" width="10%">
           <svg width="100%" height="100%">
            <text x="50%" y="50%" alignment-baseline="middle" text-anchor="middle">Bar Three</text>
          </svg>
        </svg>
         <svg x="65%" y="0%" height="auto" width="10%">
           <svg width="100%" height="100%">
            <text x="50%" y="50%" alignment-baseline="middle" text-anchor="middle">Bar Four</text>
          </svg>
        </svg>
         <svg x="85%" y="0%" height="auto" width="10%">
           <svg width="100%" height="100%">
            <text x="50%" y="50%" alignment-baseline="middle" text-anchor="middle">Bar Five</text>
          </svg>
        </svg>
       </svg>

      <svg id="title-graph" class="columns__graph" width="90%" height="92%" x="10%" y="0">
        <g id="chart-lines" class="columns__lines">
          <line x1="0%" y1="0%" x2="0%" y2="100%" stroke="#c0c0c0" stroke-width="2px" stroke-linecap="round" />
          <line x1="0%" y1="100%" x2="100%" y2="100%" stroke="#c0c0c0" stroke-width="4px" stroke-linecap="round" />
          <line x1="0%" y1="20%" x2="100%" y2="20%" stroke="#c0c0c0" stroke-width="2px" stroke-linecap="round" />
          <line x1="0%" y1="40%" x2="100%" y2="40%" stroke="#c0c0c0" stroke-width="2px" stroke-linecap="round" />
          <line x1="0%" y1="60%" x2="100%" y2="60%" stroke="#c0c0c0" stroke-width="2px" stroke-linecap="round" />
          <line x1="0%" y1="80%" x2="100%" y2="80%" stroke="#c0c0c0" stroke-width="2px" stroke-linecap="round" />
          <line x1="0%" y1="0%" x2="100%" y2="0%" stroke="#c0c0c0" stroke-width="4px" stroke-linecap="round" />
        </g>
        <svg id"title-results" class="columns__results" width="100%" height="96%" x="0%" y="2%">
          <g>
          <rect id="column-one" class="column" width="10%" height="30%" x="5%" y="70%" rx="10" ry="10" fill="url(#roseGradient)">
            <animate attributeName="height" values="0;30%" dur="1s" repeatCount="freeze" />
            <animate attributeName="y" values="100%;70%" dur="1s" repeatCount="freeze" />
          </rect>
          <rect id="column-two" class="column" width="10%" height="60%" x="25%" y="40%" rx="10" ry="10" fill="url(#roseGradient)">
            <animate attributeName="height" values="0;60%" dur="1s" repeatCount="freeze" />
            <animate attributeName="y" values="100%;40%" dur="1s" repeatCount="freeze" />
          </rect>
          <rect id="column-three" class="column" width="10%" height="100%" x="45%" y="0%" rx="10" ry="10" fill="url(#roseGradient)">
            <animate attributeName="height" values="0;100%" dur="1s" repeatCount="freeze" />
            <animate attributeName="y" values="100%;0%" dur="1s" repeatCount="freeze" />
          </rect>
          <rect id="column-four" class="column" width="10%" height="35%" x="65%" y="65%" rx="10" ry="10" fill="url(#roseGradient)">
            <animate attributeName="height" values="0;35%" dur="1s" repeatCount="freeze" />
            <animate attributeName="y" values="100%;65%" dur="1s" repeatCount="freeze" />
          </rect>
          <rect id="column-five" class="column" width="10%" height="75%" x="85%" y="25%" rx="10" ry="10" fill="url(#roseGradient)">
            <animate attributeName="height" values="0;75%" dur="1s" repeatCount="freeze" />
            <animate attributeName="y" values="100%;25%" dur="1s" repeatCount="freeze" />
          </rect>
          </g>
      </svg>

      <defs>
      <linearGradient id="roseGradient">
        <stop stop-color="#642B73" offset="0%"/>
        <stop stop-color="#C6426E" offset="100%"/>
      </linearGradient>
      </defs>
    </svg>
    </figure>
    </div>
    """
  end
end
