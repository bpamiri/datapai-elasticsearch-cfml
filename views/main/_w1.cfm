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
						<h4 class="no-margins">#dateFormat(w1.LastPriceChange,"m/d/yyyy")#</h4>
						<small>Last Price Change</small>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</cfoutput>