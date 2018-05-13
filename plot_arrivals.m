%plot_arrivals(flow, atimes, bits);

function flow_plot = plot_arrivals(flow, atimes, bits, legendset)

	% atimes = x
	% bits = y
	%plot([x, x], [0, y], flow_color, 'LineWidth', 2);
	%hold on;
	%plot(PACKET_ATIMES(1,:), PACKET_BITS(1,:))
	
	color_vector = ['r', 'b', 'g', 'c', 'm'];
	flow_colour = color_vector(flow);
	
	%bar(atimes, bits, 'FaceColor', [1 0 0], 'BarWidth', 5);
	%bar(atimes, bits, 2, 'r');

	for pkt = 1:length(atimes)
		x1 = atimes(1,pkt);
		y1 = bits(1,pkt);
		
		% plot a vertical line
		%flow_plot = plot( [x1, x1], [0 y1], flow_colour, 'LineWidth', 2, 'UserData', 'blue lines');
		flow_plot = plot( [x1, x1], [0 y1], flow_colour, 'LineWidth', 2);
		hold on;
	end
	
	%test = get(legend(gca)) % get legend from current axes.
	
	%if ( length(test) == 0)
	%	test = '';
	
	%legend_title = sprintf('Flow %d', flow);
	%legend(legend_title, 'testing');
	%legend(get(gca, 'children'), get(get(gca, 'children'), 'userdata'))
	%legend(gca,'show')
	%legend('-DynamicLegend');
	%legend(flow_plot, legendset);
end