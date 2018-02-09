<cfcomponent extends="Controller">

	<cffunction name="searchByID">
		<cfargument name="warehouse"> 
		<cfargument name="ID"> 

		<cfset elastic_url = "http://10.100.10.90:9200/#warehouse#inventory/inventory/_search">

		<cfset esquery = '{
											  "query": {
											    "term": {
											      "_id": {
											        "value": "#ID#"
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


	<cffunction name="searchByTerm">
		<cfargument name="warehouse"> 
		<cfargument name="search_terms"> 
		<cfargument name="start_item" default="1"> 

		<cfset elastic_url = "http://10.100.10.90:9200/#warehouse#inventory/inventory/_search">

		<cfset esquery = '{
												"from": "#start_item#",
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
		<cfparam name="current_page" default="1">
		<cfif StructKeyExists(params, "search_term")>
			<cfset search_terms = '\"' & replace(params.search_term, " ", '\"+\"') & '\"'> 
			<cfset start_item = ((current_page - 1) * 10 )>
			<cfset w1 = searchByTerm('w1',search_terms,start_item)>
			<cfif ArrayLen(w1.hits.hits) eq 1>
				<cfset w2 = searchByTerm('w2',search_terms,start_item)>
				<cfset w4 = searchByTerm('w4',search_terms,start_item)>
				<cfset w5 = searchByTerm('w5',search_terms,start_item)>
				<cfset w6 = searchByTerm('w6',search_terms,start_item)>
				<cfset w88 = searchByTerm('w88',search_terms,start_item)>
				<cfset w99 = searchByTerm('w99',search_terms,start_item)>
			<cfelseif ArrayLen(w1.hits.hits) gt 1>
				<cfset end_page = ceiling(w1.hits.total/10)>
				<cfset previous_page = current_page - 1>
				<cfset next_page = current_page + 1>
			</cfif>
		<cfelseif StructKeyExists(params,"ID")>
			<cfset w1 = searchByID('w1',ID)>
			<cfset w2 = searchByID('w2',ID)>
			<cfset w4 = searchByID('w4',ID)>
			<cfset w5 = searchByID('w5',ID)>
			<cfset w6 = searchByID('w6',ID)>
			<cfset w88 = searchByID('w88',ID)>
			<cfset w99 = searchByID('w99',ID)>
		</cfif>
	</cffunction>

</cfcomponent>
