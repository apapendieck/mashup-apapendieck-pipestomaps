<gm:page title="Sample - Maps Mashup" authenticate="false">

<!--
The mashup application demonstrates taking a external RSS feed with
geo-location information and mapping it on a Google Map. Interaction
between a list and a map is also demonstrated via the handleEvent tag.
@author: GME Team
-->

<div class="gm-app-header">
<h1>Maps Mashup</h1>
</div>

<table width="100%">
<tr>
<td style="padding-right:10px; width:150px" valign="top">
<gm:list id="myList" data="http://pipes.yahoo.com/pipes/pipe.run?_id=a99d2102cf3cae1353021d69e81cc383&_render=rss"
pagesize="20" template="myListTemplate">
<gm:handleEvent event="select" src="myMap"/>
</gm:list>
</td>
<td valign="top">
<gm:map id="myMap" style="border:solid black 1px" control="large"
maptypes="true" data="${myList}" latref="geo:lat" lngref="geo:long"
infotemplate="myMapDetailsTemplate" height="600" witdth="600" >
<gm:handleEvent event="select" src="myList"/>
</gm:map>
</td>
</tr>
</table>


<gm:template id="myListTemplate">

<table class="blue-theme" style="width:250px">
<tr repeat="true">
<td><gm:text ref="atom:title"/></td>
</tr>
<tfoot>
<tr>
<td align="center"><gm:pager compact="true"/></td>
</tr>
</tfoot>
</table>
</gm:template>

<gm:template id="myMapDetailsTemplate">
<div repeat="true">
<b><gm:text ref="atom:title"/></b><br/>
Description: <gm:text ref="atom:summary"/><br/>
Lat: <gm:text ref="geo:lat"/><br/>
Long: <gm:text ref="geo:long"/>
</div>
</gm:template>

</gm:page>

