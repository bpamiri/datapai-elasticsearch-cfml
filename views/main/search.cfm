<cfoutput>

	#startFormTag(action="search",method="GET")#

	    #textFieldTag(label="SKU", Name="sku")#
	    #submitTag(value="Lookup Part")#

	#endFormTag()#

	<cfif isDefined("esresult")>
		<cfif esresult.hits.total eq 1>
			
<!---			<cfdump var="#esresult.hits.hits[1]._source#"> --->

			<cfset es = esresult.hits.hits[1]._source >

	<table cellspacing="0" cellpadding="0" width="950" align="center" border="0">
	 
	 
	  <tr>
	    <td>
	    	<table border="0" cellspacing="5" cellpadding="0" width="100%">
					<tr>
						<td>&nbsp;</td>
						<td style="TEXT-ALIGN: center">
							Previous Part: <a href="/main/search?sku=#es.PreviousPart#">#es.PreviousPart#</a>
						</td>
						<td colspan="2" style="TEXT-ALIGN: center">
							Next Part: <a href="/main/search?sku=#es.NextPart#">#es.NextPart#</a>
						</td>
					</tr>
					<tr>
						<td valign="top">
							<table border="0" cellspacing="0" cellpadding="0" width="90%">
								<tr class="Row">
									<td class="th" nowrap width="25%">Part No:</td>
									<td style="TEXT-ALIGN: right" width="75%" nowrap>#es.PartNumber#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>List Price:</td>
									<td style="TEXT-ALIGN: right">$#es.ListPrice#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Distributor:</td>
									<td style="TEXT-ALIGN: right">$#es.DealerPrice#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Master:</td>
									<td style="TEXT-ALIGN: right">$#es.MasterDistributorPrice#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Export:</td>
									<td style="TEXT-ALIGN: right">$#es.ExportPrice#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Core:</td>
									<td style="TEXT-ALIGN: right">#es.CorePrice#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Drop Ship:</td>
									<td style="TEXT-ALIGN: right">XXXX&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>HUAPAI:</td>
									<td style="TEXT-ALIGN: right">$XXXX&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Buyer:</td>
									<td>#es.Buyer# (#es.LabeledAt#)&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Last Cost:</td>
									<td style="TEXT-ALIGN: right">$#es.LandedCost#&nbsp;</td>
								</tr>
							</table>
						</td>
						<td valign="top" colspan="3">
							<table border="0" cellspacing="0" cellpadding="0" width="100%">
								<tr class="Row">
									<td colspan="8" style="TEXT-ALIGN: center"><strong>#es.SKU# #es.OEM# #es.Description# #es.SellPack#</strong>&nbsp;</td>
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
									<td>#es.CountryOfOrigin#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Inter-Brand:</td>
									<td>#es.Interbrand#&nbsp;</td>
									<td class="th" nowrap>QOH:</td>
									<td>#es.QuantityOnHand#&nbsp;</td>
									<td class="th" nowrap>Last Cost:</td>
									<td>$#es.LandedCost#&nbsp;</td>
									<td class="th" nowrap>New:</td>
									<td>#es.NewItemCode#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Price Change:</td>
									<td nowrap>#es.LastPriceChange#&nbsp;</td>
									<td class="th" nowrap>LTD:</td>
									<td>#es.LeadTime#&nbsp;</td>
									<td class="th" nowrap>LN:</td>
									<td>#es.LineCode#&nbsp;</td>
									<td class="th" nowrap>SLN:</td>
									<td nowrap>#es.SLN#&nbsp;&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Stock Level:</td>
									<td nowrap>#es.MinStockLevel# - #es.MaxStockLevel#&nbsp;</td>
									<td class="th" nowrap>CAT:</td>
									<td>#es.ClassificationCode#&nbsp;</td>
									<td class="th" nowrap>LTM:</td>
									<td>#Int((es.LeadTime/30)+.9)#&nbsp;</td>
									<td class="th" nowrap>SPK:</td>
									<td>#es.StandardPack#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Primary Bin:</td>
									<td>#es.PrimaryBin#&nbsp;</td>
									<td class="th" nowrap>UM:</td>
									<td>#es.SellUOM#&nbsp;</td>
									<td class="th" nowrap>Sell Pack:</td>
									<td>#es.SellPack#&nbsp;#es.UnitOfMeasure#&nbsp;</td>
									<td class="th" nowrap>Weight:</td>
									<td>#es.UnitWeight#&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Create Date:</td>
									<td>#es.StartDate#&nbsp;</td>
									<td class="th" nowrap>Blanket PO:</td>
									<td>#iif(es.BlanketPO,de("Yes"),de("No"))#</td>
									<td class="th" nowrap>Boxes:</td>
									<td>#es.BoxPartNumber#&nbsp;</td>
									<td class="th" nowrap>&nbsp;</td>
									<td>&nbsp;</td>
								</tr>
								<tr class="Row">
									<td class="th" nowrap>Sales Substitution:</td>
									<td colspan="7">#es.SalesSubstitution#</td>
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
									<td style="TEXT-ALIGN: right" nowrap>#es.QuantityOnHand#&nbsp;</td>
									<td style="TEXT-ALIGN: right" nowrap>
										<cfif es.QuantityCommitted eq "">
										  <cfset es.QuantityCommitted = 0>
										</cfif>
										#es.QuantityCommitted#&nbsp;
									</td>
									<td style="TEXT-ALIGN: right" nowrap>#es.QuantityOnHand - es.QuantityCommitted#&nbsp;</td>
									<td style="TEXT-ALIGN: right" nowrap>#es.QuantityOnOrder#&nbsp;</td>
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
									<td style="TEXT-ALIGN: right" class="ColumnLineL" nowrap>#es.MTDSales#&nbsp;</td>
									<td style="TEXT-ALIGN: right" class="ColumnLineL" nowrap>#es.YTDSales#&nbsp;</td>
									<td style="TEXT-ALIGN: right" class="ColumnLineL" nowrap>#es.12moSales#&nbsp;</td>
									<td style="TEXT-ALIGN: right" class="ColumnLineL" nowrap>#es.PriorYearSales#&nbsp;</td>
									<td style="TEXT-ALIGN: right" class="ColumnLineL" nowrap>#round(es.AverageSales)#&nbsp;</td>
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
								<cfloop index="i" from="1" to="#arrayLen(es.Interchanges)#"> 
	 								<tr class="Row">
										<td nowrap>#es.Interchanges[i].PartNumber#</td>
										<td style="TEXT-ALIGN: right">#es.Interchanges[i].W1QOH#&nbsp;</td>
										<td style="TEXT-ALIGN: right">XXXX&nbsp;</td>
										<td style="TEXT-ALIGN: right">#es.Interchanges[i].ExportPrice#&nbsp;</td>
										<td style="TEXT-ALIGN: right">#es.Interchanges[i].DomesticPrice#&nbsp;</td>
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
							<a target="invinqIFrame" href="invinqINCPH.php?s_PAI_part_no=CUP161600">(F1)<br>Sales</a>
						</li>
						<li class="yellow">
							<a target="invinqIFrame" href="invinqF2.php?s_PAI_part_no=CUP161600">(F2)<br>Notes</a>
						</li>
						<li class="gray">
							<a target="invinqIFrame" href="invinqF6.php?s_PAI_part_no=CUP161600">(F6)<br>Moves</a>
						</li>
						<li class="darkgreen">
							<a target="invinqIFrame" href="invinqF7.php?s_PAI_part_no=CUP161600">(F7)<br>Quotes</a>
						</li>
						<li class="crimson">
							<a target="invinqIFrame" href="invinqK.php?s_PAI_part_no=CUP161600">(K)<br>Kit</a>
						</li>
						<li class="darkred">
							<a target="invinqIFrame" href="invinqL.php?s_PAI_part_no=CUP161600">(L)<br>List</a>
						</li>
						<li class="brown">
							<a target="invinqIFrame" href="invinqC.php?s_PAI_part_no=CUP161600">(C)<br>Ctlg</a>
						</li>
						<li class="red">
							<a target="invinqIFrame" href="invinqR.php?s_PAI_part_no=CUP161600">(R)<br>Form</a>
						</li>
						<li class="blue">
							<a target="invinqIFrame" href="invinqM.php?s_PAI_part_no=CUP161600">(M)<br>Drw</a>
						</li>
						<li class="purple">
							<a target="invinqIFrame" href="invinqBH.php?s_PAI_part_no=CUP161600">(BH)<br>Bin Hist</a>
						</li>
						<li class="orange">
							<a target="invinqIFrame" href="invinqPartFigures.php?s_PAI_part_no=CUP161600">Fig<br>Chg</a>
						</li>
						<li class="coral">
							<a target="invinqIFrame" href="invinqO.php?s_PAI_part_no=CUP161600">(O)<br>Lost</a>
						</li>
						<li class="darkolivegreen">
							<a target="invinqIFrame" href="invinqOpenCustOrders.php?s_PAI_part_no=CUP161600">Open<br>Orders</a>
						</li>
						<li class="orange">
							<a target="invinqIFrame" href="invinqLC.php?s_PAI_part_no=CUP161600">Lot<br>Code</a>
						</li>
						<li class="deeppink">
							<a target="invinqIFrame" href="invinqSupport.php?s_PAI_part_no=CUP161600">Follow<br>Up</a>
						</li>
						<li class="yellow">
							<a target="invinqIFrame" href="invinqProImp.php?s_PAI_part_no=CUP161600">Quality<br>Notes</a>
						</li>
					</ul>
				</div>
			</td>
	  </tr>
	 
	  <tr>
	    <td><iframe frameborder="0" scrolling="auto" name="invinqIFrame" src="" width="100%" height="1"></iframe></td>
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
</cfoutput>
