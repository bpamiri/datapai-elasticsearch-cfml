<cfoutput>
<div class="row wrapper border-bottom white-bg page-header">
	<div class="col-xs-12">
		<h2>Part Inquiry</h2>
		<small>Your search matched <strong>#w1.hits.total#</strong> records.</small>
		<p></p>
	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-md-12">
			<div class="inbox float-e-margins">
				<div class="ibox-content">
					<div class="table-responsive">
						<table class="table table-sm table-hover border">
							<thead>
								<tr>
									<th scope="col" class="col-xs-2">Part Number</th>
									<th scope="col" class="col-xs-2">Product Line</th>
									<th scope="col" class="col-xs-1">Product Group</th>
									<th scope="col" class="col-xs-4">Product Class</th>
									<th scope="col" class="col-xs-3">Description</th>
								</tr>
							</thead>
							<tbody>
								<cfloop index="currentIndex" array="#w1.hits.hits#"> 
									<tr>
										<td><a href="/main/search?id=#currentIndex._id#">#currentIndex._source.PartNumber#</a></td>
										<td>#currentIndex._source.ProductLine#</td>
										<td>#currentIndex._source.ProductGroup#</td>
										<td>#currentIndex._source.ProductClass#</td>
										<td>#currentIndex._source.Description#</td>
									</tr>
								</cfloop> 
							</tbody>
						</table>
						<p></p>
						<span class="pull-right">
						  <ul class="pagination">
						  	<cfif previous_page neq 0>
						    	<li class="page-item"><a class="page-link" href="/main/search?search_term=#search_term#&current_page=#previous_page#">Previous</a></li>
						    <cfelse>
							    <li class="page-item disabled"><span class="page-link">Previous</span></li>
							  </cfif>

						    <cfloop index="i" from="1" to="#end_page#">
						    	<cfif current_page eq i>
								    <li class="page-item active"><a class="page-link" href="##">#i# <span class="sr-only">(current)</span></a></li>
						    	<cfelse>
								    <li class="page-item"><a class="page-link" href="/main/search?search_term=#search_term#&current_page=#i#">#i#</a></li>
								  </cfif>
								</cfloop>

						  	<cfif next_page lte end_page>
						    	<li class="page-item"><a class="page-link" href="/main/search?search_term=#search_term#&current_page=#next_page#">Next</a></li>
						    <cfelse>
							    <li class="page-item disabled"><span class="page-link">Next</span></li>
							  </cfif>
						  </ul>
						</span>
					</div>
			</div>
		</div>
	</div>
</div>
</cfoutput>