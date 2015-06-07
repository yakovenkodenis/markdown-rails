module ApplicationHelper
	def markdown(text)
		renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
		options = {
			autolink: true,
			no_intra_emphasis: 	true,
			lax_html_blocks: 	true,
			strikesthrough: 	true,
			filter_html: 		true,
			superscript: 		true,
			space_after_headers: true,
			fenced_code_blocks:  true
		}
		Redcarpet::Markdown.new(renderer, options).render(text).html_safe
	end
end
