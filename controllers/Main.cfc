<cfcomponent extends="Controller">


	<cffunction name="callElasticSearch">
		<cfargument name="warehouse"> 
		<cfargument name="search_terms"> 

		<cfset elastic_url = "http://10.100.10.90:9200/#warehouse#inventory/inventory/_search">

		<cfset esquery = '{
											  "query": {
											    "simple_query_string": {
											      "query": "#search_terms#",
											        "fields": [
											          "OEM",
											          "Keywords",
											          "PartNumber",
											          "SKU",
											          "ProductLine"
											        ],
											        "default_operator": "OR"
											      }
											    }
											  }
											}'>

		<cfhttp result="result" method="POST" charset="utf-8" url="#elastic_url#">
			<cfhttpparam type="header" name="Content-Type" value="application/json" />
    	<cfhttpparam type="body" value="#esquery#">
		</cfhttp>

		<cfreturn deserializeJSON(result.filecontent)>

	</cffunction>

	<cffunction name="search">
		<cfif StructKeyExists(params, "sku")>
			<cfset search_terms = '\"' & replace(params.sku, " ", '\"+\"') & '\"'> 

			<cfset esw1 = callElasticSearch('w1',search_terms)>

		</cfif>
	</cffunction>

</cfcomponent>
