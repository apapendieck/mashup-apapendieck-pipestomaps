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


 
  
  <gm:template id="mySelectTemplate">
        <table class="blue-theme" style="width:250px">
          <tr repeat="true">
        <td>
          <gm:select ref="atom:title">
            <gm:option value="0" selected="true">Low</gm:option>
            <gm:option value="1">Medium</gm:option>
            <gm:option value="2">High</gm:option>
          </gm:select>
        </td>
          </tr>
    </table>
  </gm:template>
  
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
