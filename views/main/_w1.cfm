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
					<div class="col-md-2">
						<h1 class="no-margins">#numberFormat(w1.ListPrice,"$,0.00")#</h1>
						<small>List Price</small>
					</div>
					<div class="col-md-2">
						<h1 class="no-margins">#numberFormat(w1.DealerPrice,"$,0.00")#</h1>
						<small>Dealer Price</small>
					</div>
					<div class="col-md-2">
						<h1 class="no-margins">#numberFormat(w1.MasterDistributorPrice,"$,0.00")#</h1>
						<small>Master Distributor Price</small>
					</div>
					<div class="col-md-2">
						<h1 class="no-margins">#numberFormat(w1.ExportPrice,"$,0.00")#</h1>
						<small>Export Price</small>
					</div>
					<div class="col-md-2">
						<h1 class="no-margins">#numberFormat(w1.CorePrice,"$,0.00")#</h1>
						<small>Core Price</small>
					</div>
					<div class="col-md-2">
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
					<a href="/main/search?search_term=#w1.PreviousPart#" class="btn btn-info btn-xs" role="button">
						<i class="fa fa-arrow-left"></i> #w1.PreviousPart#
					</a>
					<a href="/main/search?search_term=#w1.NextPart#" class="btn btn-info btn-xs" role="button">
						#w1.NextPart# <i class="fa fa-arrow-right"></i>
					</a>
				</span>
				<h5>Part Details</h5>
			</div>
			<div class="ibox-content">
				<div class="row">
					<div class="col-md-3">
						<h4 class="no-margins">#w1.Description# &nbsp;</h4>
						<small>Description</small>
					</div>
					<div class="col-sm-2">
						<h4 class="no-margins">#w1.OEM#</h4>
						<small>OEM</small>
					</div>
					<div class="col-md-1">
						<h4 class="no-margins">#w1.SellPack# #w1.SellUOM#</h4>
						<small>Sell Pack</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.Interbrand# &nbsp;</h4>
						<small>Interbrand</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.ShowOnWebsite#</h4>
						<small>Show on Web</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.TariffClass#</h4>
						<small>Tariff Class</small>
					</div>
				</div>
<!---
			</div>
			<div class="ibox-content">
--->
				<p></p>
				<div class="row">
					<div class="col-md-3">
						<h4 class="no-margins">#w1.WebDescription# &nbsp;</h4>
						<small>Web Description</small>
					</div>
					<div class="col-sm-2">
						<h4 class="no-margins">#w1.SLN#</h4>
						<small>SLN</small>
					</div>
					<div class="col-md-1">
						<h4 class="no-margins">#w1.StandardPack# #w1.UnitOfMeasure#</h4>
						<small>Standard Pack</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.SalesSubstitution# &nbsp;</h4>
						<small>Sales Substitution</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.ShowComponents#</h4>
						<small>Show Components</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.ScheduleB#</h4>
						<small>Schedule B</small>
					</div>
				</div>
				<p></p>
				<div class="row">
					<div class="col-md-3">
						<h4 class="no-margins">#w1.SpanishDescription# &nbsp;</h4>
						<small>Spanish Description</small>
					</div>
					<div class="col-sm-2">
						<h4 class="no-margins">#w1.LineCode#</h4>
						<small>Line Code</small>
					</div>
					<div class="col-md-1">
						<h4 class="no-margins">#w1.UnitWeight#</h4>
						<small>Unit Weight</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.HPSourcePart# &nbsp;</h4>
						<small>HP Source Part</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.FeaturedPart#</h4>
						<small>Featured Part</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.ImageFileName# &nbsp;</h4>
						<small>Image File Name</small>
					</div>
				</div>
				<p></p>
				<div class="row">
					<div class="col-md-3">
						<h4 class="no-margins">#w1.WebDetails#</h4>
						<small>Web Details</small>
					</div>
					<div class="col-sm-2">
						<h4 class="no-margins">#w1.CountryOfOrigin#</h4>
						<small>Country of Origin</small>
					</div>
					<div class="col-md-1">
						<h4 class="no-margins">#w1.StartDate#</h4>
						<small>Start Date</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.BoxPartNumber#  &nbsp;</h4>
						<small>Box Part Number</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.BuyerName# (#w1.Buyer#)</h4>
						<small>Buyer Name</small>
					</div>
					<div class="col-md-2">
						<h4 class="no-margins">#w1.LabeledAt# &nbsp;</h4>
						<small>Labeled At</small>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</cfoutput>