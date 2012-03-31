data = [ 15, 46, 45, 38, 59 ];

w = 400
h = 300

x = d3.scale.linear()
            .domain([0, d3.max(data)])
            .range([0, w])

y = d3.scale.ordinal()
            .domain(d3.range(data.length))
            .rangeBands([0, h], 0.3)

vis = d3.select("svg")
bars = vis.selectAll("rect.bar").data(data)

bars.enter()
    .append("svg:rect")
    .attr("fill", "#a00")
    .attr("stroke", "#100")
    .attr("stroke-width", 1)
    .attr("width", x)
    .attr("height", y.rangeBand())
    .attr("transform", (d,i) => "translate(0," + y(i) + ")")