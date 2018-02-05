<cfcomponent extends="Controller">

	<cffunction name="search">
		<cfif StructKeyExists(params, "sku")>
			<cfset search_term = params.sku>

			<cfset elastic_url = "http://10.100.10.90:9200/w1inventory/inventory/_search">

			<cfset esquery = '{
												  "query": {
												    "term": {
												      "SKU": {
												        "value": "#search_term#"
												      }
												    }
												  }
												}'>

			<cfhttp result="result" method="POST" charset="utf-8" url="#elastic_url#">
				<cfhttpparam type="header" name="Content-Type" value="application/json" />
	    	<cfhttpparam type="body" value="#esquery#">
			</cfhttp>

			<cfset esresult = deserializeJSON(result.filecontent)>

		</cfif>
	</cffunction>

</cfcomponent>
