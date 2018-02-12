<cfoutput>

<cfif isDefined("w1")>
	<cfif arrayLen(w1.hits.hits) eq 1>

		#includePartial("match_one")#

	<cfelseif arrayLen(w1.hits.hits) gt 1>

		#includePartial("match_many")#

	<cfelse>

		#includePartial("match_none")#

	</cfif>
</cfif>
	 
</cfoutput>