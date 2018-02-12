<cfset w1 = w1.hits.hits[1]._source >
<!--- <cfdump var="#w1#"> --->
<cfoutput>
<div class="row">
	<div class="col-xs-12">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<h5>Pricing Details</h5>
			</div>
			<div class="ibox-content">
				<div class="row">
					<div class="col-xs-2">
						<h1 class="no-margins">#numberFormat(w1.ListPrice,"$,0.00")#</h1>
						<small>List Price</small>
					</div>
					<div class="col-xs-2">
						<h1 class="no-margins">#numberFormat(w1.DealerPrice,"$,0.00")#</h1>
						<small>Dealer Price</small>
					</div>
					<div class="col-xs-2">
						<h1 class="no-margins">#numberFormat(w1.MasterDistributorPrice,"$,0.00")#</h1>
						<small>Master Distributor Price</small>
					</div>
					<div class="col-xs-2">
						<h1 class="no-margins">#numberFormat(w1.ExportPrice,"$,0.00")#</h1>
						<small>Export Price</small>
					</div>
					<div class="col-xs-2">
						<h1 class="no-margins">#numberFormat(w1.CorePrice,"$,0.00")#</h1>
						<small>Core Price</small>
					</div>
					<div class="col-xs-2">
						<h1 class="no-margins">#numberFormat(w1.LastCost,"$,0.00")#</h1>
						<small>Last Cost</small><p></p>
						<h4 class="no-margins">
							<cfif structKeyExists(w1, "LastPriceChange")>
								#dateFormat(w1.LastPriceChange,"m/d/yyyy")#
							<cfelse>
								&nbsp;
							</cfif>
						</h4>
						<small>Last Price Change</small>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="ibox float-e-margins">
			<div class="ibox-title">
				<span class="pull-right">
					<a href="/main/search?search_term=#w1.PreviousPart#" class="btn btn-info btn-xs vcenter" role="button">
						<i class="fa fa-arrow-left"></i> #w1.PreviousPart#
					</a>
					<a href="/main/search?search_term=#w1.NextPart#" class="btn btn-info btn-xs" role="button">
						#w1.NextPart# <i class="fa fa-arrow-right"></i>
					</a>
				</span>
				<h5>Pricing Details</h5>
			</div>
			<div class="ibox-content">
				<div class="row">
					<div class="col-xs-12">
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</cfoutput>