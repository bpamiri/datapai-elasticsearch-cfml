<cfoutput>
<div class="row border-bottom">
    <nav class="navbar navbar-fixed-top white-bg" role="navigation" style="margin-bottom: 0">
        <div class="col-xs-12 navbar-header">
            <!---<a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="##"><i class="fa fa-bars"></i> </a>--->
            #startFormTag(role="search",class="navbar-form",action="search",method="GET")#
                <div class="form-group col-xs-12">
                    #textFieldTag(class="form-control",id="top-search",Name="search_term",autofocus="autofocus",placeholder="Search for something...",value="#params.search_term#",autofocus="autofocus",style="width: 100%;")#
                </div>
            #endFormTag()#

        </div>
    <!---
        <ul class="nav navbar-top-links navbar-right">
            <li>
                <a href="##">
                    <i class="fa fa-sign-out"></i> Log out
                </a>
            </li>
        </ul>
    --->
    </nav>
</div>
</cfoutput>