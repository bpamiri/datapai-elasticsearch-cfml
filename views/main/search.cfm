<cfoutput>

<div class="container-fluid">

	<div align="center" style="padding: 20px">
		#startFormTag(action="search",method="GET")#

		    #textFieldTag(Name="sku")#
		    #submitTag(value="P")#

		#endFormTag()#
	</div>
	<cfif isDefined("esw1")>
		<cfif esw1.hits.total eq 1>
			
<!---			<cfdump var="#esresult.hits.hits[1]._source#"> --->

	<cfset w1 = esw1.hits.hits[1]._source >
	
	<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
	 
	 
	  <tr>
	    <td>
	    	<table border="0" cellspacing="5" cellpadding="0" width="100%">
					<tr>
						<td>&nbsp;</td>
						<td style="TEXT-ALIGN: center">
							Previous Part: <a href="/main/search?sku=#w1.PreviousPart#">#w1.PreviousPart#</a>
						</td>
						<td colspan="2" style="TEXT-ALIGN: center">
							Next Part: <a href="/main/search?sku=#w1.NextPart#">#w1.NextPart#</a>
						</td>
					</tr>
					<tr>
						<td valign="top">
							<table class="table table-bordered">
								<tr class="Row">
									<th scope="row">Part No:</td>
									<td style="TEXT-ALIGN: right" width="75%" nowrap>#w1.PartNumber#&nbsp;</td>
								</tr>
								<tr class="Row">
									<th scope="row">List Price:</td>
									<td style="TEXT-ALIGN: right">$#w1.ListPrice#&nbsp;</td>
								</tr>
								<tr class="Row">
									<<th scope="row">Distributor:</td>
									<td style="TEXT-ALIGN: right">$#w1.DealerPrice#&nbsp;</td>
								</tr>
								<tr class="Row">
									<th scope="row">Master:</td>
									<td style="TEXT-ALIGN: right">$#w1.MasterDistributorPrice#&nbsp;</td>
								</tr>
								<tr class="Row">
									<th scope="row">Export:</td>
									<td style="TEXT-ALIGN: right">$#w1.ExportPrice#&nbsp;</td>
								</tr>
								<tr class="Row">
									<th scope="row">Core:</td>
									<td style="TEXT-ALIGN: right">#w1.CorePrice#&nbsp;</td>
								</tr>
								<tr class="Row">
									<th scope="row">Drop Ship:</td>
									<td style="TEXT-ALIGN: right">XXXX&nbsp;</td>
								</tr>
								<tr class="Row">
									<th scope="row">HUAPAI:</td>
									<td style="TEXT-ALIGN: right">$XXXX&nbsp;</td>
								</tr>
								<tr class="Row">
									<th scope="row">Buyer:</td>
									<td style="TEXT-ALIGN: right">#w1.Buyer# (#w1.LabeledAt#)&nbsp;</td>
								</tr>
								<tr class="Row">
									<th scope="row">Last Cost:</td>
									<td style="TEXT-ALIGN: right">$#w1.LandedCost#&nbsp;</td>
								</tr>
							</table>
						</td>
						<td valign="top" colspan="3">
							<table border="0" cellspacing="0" cellpadding="0" width="100%">
								<tr class="Row">
									<td colspan="8" style="TEXT-ALIGN: center"><strong>#w1.SKU# #w1.OEM# #w1.Description# #w1.SellPack#</strong>&nbsp;</td>
								</tr>
								<tr class="Row">
									<td colspan="8" style="TEXT-ALIGN: center"><strong>(Last PO: XXXX)</strong></td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Exp. Arrival:</td>
									<td><font color="##009000">Detail</font></td>
									<td class="th" nowrap>Max Kit Build:</td>
									<td>XXXX</td>
									<td class="th" nowrap>Quotes:</td>
									<td>Detail</td>
									<td class="th" nowrap>Country:</td>
									<td>#w1.CountryOfOrigin#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Inter-Brand:</td>
									<td>#w1.Interbrand#&nbsp;</td>
									<td class="th" nowrap>QOH:</td>
									<td>#w1.QuantityOnHand#&nbsp;</td>
									<td class="th" nowrap>Last Cost:</td>
									<td>$#w1.LandedCost#&nbsp;</td>
									<td class="th" nowrap>New:</td>
									<td>#w1.NewItemCode#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Price Change:</td>
									<td nowrap>#w1.LastPriceChange#&nbsp;</td>
									<td class="th" nowrap>LTD:</td>
									<td>#w1.LeadTime#&nbsp;</td>
									<td class="th" nowrap>LN:</td>
									<td>#w1.LineCode#&nbsp;</td>
									<td class="th" nowrap>SLN:</td>
									<td nowrap>#w1.SLN#&nbsp;&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Stock Level:</td>
									<td nowrap>#w1.MinStockLevel# - #w1.MaxStockLevel#&nbsp;</td>
									<td class="th" nowrap>CAT:</td>
									<td>#w1.ClassificationCode#&nbsp;</td>
									<td class="th" nowrap>LTM:</td>
									<td>
										<cfif w1.LeadTime neq "">
											#Int((w1.LeadTime/30)+.9)#&nbsp;
										</cfif>
									</td>
									<td class="th" nowrap>SPK:</td>
									<td>#w1.StandardPack#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Primary Bin:</td>
									<td>#w1.PrimaryBin#&nbsp;</td>
									<td class="th" nowrap>UM:</td>
									<td>#w1.SellUOM#&nbsp;</td>
									<td class="th" nowrap>Sell Pack:</td>
									<td>#w1.SellPack#&nbsp;#w1.UnitOfMeasure#&nbsp;</td>
									<td class="th" nowrap>Weight:</td>
									<td>#w1.UnitWeight#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Create Date:</td>
									<td>#w1.StartDate#&nbsp;</td>
									<td class="th" nowrap>Blanket PO:</td>
									<td>#iif(w1.BlanketPO,de("Yes"),de("No"))#</td>
									<td class="th" nowrap>Boxes:</td>
									<td>#w1.BoxPartNumber#&nbsp;</td>
									<td class="th" nowrap>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Sales Substitution:</td>
									<td colspan="7">#w1.SalesSubstitution#</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td valign="top">
							<br>
							<table cellspacing="0" cellpadding="0">
								<tr class="Caption">
									<th scope="col" style="TEXT-ALIGN: center">LOC</th>
									<th scope="col" style="TEXT-ALIGN: center">QOH</th>
									<th scope="col" style="TEXT-ALIGN: center">CBO</th>
									<th scope="col" style="TEXT-ALIGN: center">AVL</th>
									<th scope="col" style="TEXT-ALIGN: center">QOO</th>
								</tr>
								<tr class="Row">
									<td nowrap><strong>W1</strong>&nbsp;</td>
									<td style="TEXT-ALIGN: right" nowrap>#w1.QuantityOnHand#&nbsp;</td>
									<td style="TEXT-ALIGN: right" nowrap>
										<cfif w1.QuantityCommitted eq "">
										  <cfset w1.QuantityCommitted = 0>
										</cfif>
										#w1.QuantityCommitted#&nbsp;
									</td>
									<td style="TEXT-ALIGN: right" nowrap>#w1.QuantityOnHand - w1.QuantityCommitted#&nbsp;</td>
									<td style="TEXT-ALIGN: right" nowrap>#w1.QuantityOnOrder#&nbsp;</td>
								</tr>
							</table>
						</td>
						<td valign="top">
							<table cellspacing="0" cellpadding="0">
								<tr class="Caption">
									<th scope="col" style="TEXT-ALIGN: center">CURR<br>SALES</th>
									<th scope="col" style="TEXT-ALIGN: center">Y-T-D<br>SALES</th>
									<th scope="col" style="TEXT-ALIGN: center">12-MO<br>SALES</th>
									<th scope="col" style="TEXT-ALIGN: center">PR. YR<br>SALES</th>
									<th scope="col" style="TEXT-ALIGN: center">MTHLY<br>SALES</th>
								</tr>
								<tr class="Row">
									<td style="TEXT-ALIGN: right" class="ColumnLineL" nowrap>#w1.MTDSales#&nbsp;</td>
									<td style="TEXT-ALIGN: right" class="ColumnLineL" nowrap>#w1.YTDSales#&nbsp;</td>
									<td style="TEXT-ALIGN: right" class="ColumnLineL" nowrap>#w1.12moSales#&nbsp;</td>
									<td style="TEXT-ALIGN: right" class="ColumnLineL" nowrap>#w1.PriorYearSales#&nbsp;</td>
									<td style="TEXT-ALIGN: right" class="ColumnLineL" nowrap>#round(w1.AverageSales)#&nbsp;</td>
								</tr>
							</table>
						</td>
						<td valign="top">
							<br>
							<table cellspacing="0" cellpadding="0" width="100%">
								<tr class="Caption">
									<th scope="col">INTERCHANGES</th>
									<th scope="col" style="TEXT-ALIGN: center">W1</th>
									<th scope="col" style="TEXT-ALIGN: center">W99</th>
									<th scope="col" style="TEXT-ALIGN: center">EXP</th>
									<th scope="col" style="TEXT-ALIGN: center">DOM</th>
								</tr>
								<cfloop index="i" from="1" to="#arrayLen(w1.Interchanges)#"> 
	 								<tr class="Row">
										<td nowrap>#w1.Interchanges[i].PartNumber#</td>
										<td style="TEXT-ALIGN: right">#w1.Interchanges[i].W1QOH#&nbsp;</td>
										<td style="TEXT-ALIGN: right">XXXX&nbsp;</td>
										<td style="TEXT-ALIGN: right">#w1.Interchanges[i].ExportPrice#&nbsp;</td>
										<td style="TEXT-ALIGN: right">#w1.Interchanges[i].DomesticPrice#&nbsp;</td>
									</tr>
								</cfloop> 
							</table>
						</td>
						<td style="TEXT-ALIGN: center" valign="top">
							<br>
						</td>
					</tr>
					<tr>
						<td width="25%">&nbsp;</td>
						<td width="25%">&nbsp;</td>
						<td width="25%">&nbsp;</td>
						<td width="25%">&nbsp;</td>
					</tr>
				</table>
			</td>
	  </tr>
	 
	  <tr>
	    <td>
	    	<div class="mattblacktabs">
					<ul>
						<li class="green">
							<a target="invinqIFrame" onclick="changeUrl('invinqINCPH.php?s_PAI_part_no=#w1.PartNumber#')">(F1)<br>Sales</a>
						</li>
						<li class="yellow">
							<a target="invinqIFrame" onclick="changeUrl('invinqF2.php?s_PAI_part_no=#w1.PartNumber#')">(F2)<br>Notes</a>
						</li>
						<li class="gray">
							<a target="invinqIFrame" onclick="changeUrl('invinqF6.php?s_PAI_part_no=#w1.PartNumber#')">(F6)<br>Moves</a>
						</li>
						<li class="darkgreen">
							<a target="invinqIFrame" onclick="changeUrl('invinqF7.php?s_PAI_part_no=#w1.PartNumber#')">(F7)<br>Quotes</a>
						</li>
						<li class="crimson">
							<a target="invinqIFrame" onclick="changeUrl('invinqK.php?s_PAI_part_no=#w1.PartNumber#')">(K)<br>Kit</a>
						</li>
						<li class="darkred">
							<a target="invinqIFrame" onclick="changeUrl('invinqL.php?s_PAI_part_no=#w1.PartNumber#')">(L)<br>List</a>
						</li>
						<li class="brown">
							<a target="invinqIFrame" onclick="changeUrl('invinqC.php?s_PAI_part_no=#w1.PartNumber#')">(C)<br>Ctlg</a>
						</li>
						<li class="red">
							<a target="invinqIFrame" onclick="changeUrl('invinqR.php?s_PAI_part_no=#w1.PartNumber#')">(R)<br>Form</a>
						</li>
						<li class="blue">
							<a target="invinqIFrame" onclick="changeUrl('invinqM.php?s_PAI_part_no=#w1.PartNumber#')">(M)<br>Drw</a>
						</li>
						<li class="purple">
							<a target="invinqIFrame" onclick="changeUrl('invinqBH.php?s_PAI_part_no=#w1.PartNumber#')">(BH)<br>Bin Hist</a>
						</li>
						<li class="orange">
							<a target="invinqIFrame" onclick="changeUrl('invinqPartFigurw1.php?s_PAI_part_no=#w1.PartNumber#')">Fig<br>Chg</a>
						</li>
						<li class="coral">
							<a target="invinqIFrame" onclick="changeUrl('invinqO.php?s_PAI_part_no=#w1.PartNumber#')">(O)<br>Lost</a>
						</li>
						<li class="darkolivegreen">
							<a target="invinqIFrame" onclick="changeUrl('invinqOpenCustOrders.php?s_PAI_part_no=#w1.PartNumber#')">Open<br>Orders</a>
						</li>
						<li class="orange">
							<a target="invinqIFrame" onclick="changeUrl('invinqLC.php?s_PAI_part_no=#w1.PartNumber#')">Lot<br>Code</a>
						</li>
						<li class="deeppink">
							<a target="invinqIFrame" onclick="changeUrl('invinqSupport.php?s_PAI_part_no=#w1.PartNumber#')">Follow<br>Up</a>
						</li>
						<li class="yellow">
							<a target="invinqIFrame" onclick="changeUrl('invinqProImp.php?s_PAI_part_no=#w1.PartNumber#')">Quality<br>Notes</a>
						</li>
					</ul>
				</div>
			</td>
	  </tr>
	 
	  <tr>
	    <td>
	    		<iframe frameborder="0" scrolling="auto" name="invinqIFrame" src="" width="100%" height="2000"></iframe>
	    </td>
	  </tr>
	</table>



		<cfelseif esresult.hits.total gt 1>
			<table cellspacing="0" cellpadding="0" width="100%">
				<tr class="Caption">
					<th scope="col">Part Number</th>
					<th scope="col">Product Line</th>
					<th scope="col">Product Group</th>
					<th scope="col">Product Class</th>
					<th scope="col">Description</th>
				</tr>
				<cfloop index="currentIndex" array="#esresult.hits.hits#"> 
					<tr class="Row">
						<td><a href="/main/search?sku=#currentIndex._source.PartNumber#">#currentIndex._source.PartNumber#</a></td>
						<td>#currentIndex._source.ProductLine#</td>
						<td>#currentIndex._source.ProductGroup#</td>
						<td>#currentIndex._source.ProductClass#</td>
						<td>#currentIndex._source.Description#</td>
					</tr>
				</cfloop> 
			</table>
		<cfelse>
			No records were found	
		</cfif>
	</cfif>

	<script>
		function changeUrl(buttonURL) {
	    var baseURL = "http://paiintranet.paiindustriw1.com/datapai/" + buttonURL;
	    var innerText = '<p style="text-align:center"><img src="../../images/loading.gif"></p><script>window.location.replace("' + baseURL + '");<' + '/script>';
	    document.getElementsByName('invinqIFrame')[0].srcdoc = innerText;
		}
	</script>
</div>
</cfoutput>