<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>ch.astra.baulinien-nationalstrassen_area</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>Baubeschränkungsfläche</se:Name>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#008200</se:SvgParameter>
                  </se:Fill>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#00e600</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">0.25</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
   <NamedLayer>
      <se:Name>ch.astra.baulinien-nationalstrassen_line</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>Baulinie in Kraft</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>status</ogc:PropertyName>
                     <ogc:Literal>inForce</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#00e600</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">4.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">24.40 4.80 3.20 4.80</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Bestehende Baulinie</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>status</ogc:PropertyName>
                     <ogc:Literal>existing</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#01a8ff</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">4.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">24.40 4.80 3.20 4.80</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Baulinie in Genehmigung</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>status</ogc:PropertyName>
                     <ogc:Literal>inApproval</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">4.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">24.40 4.80 3.20 4.80</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Aufzuhebende Bauline</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>status</ogc:PropertyName>
                     <ogc:Literal>inRepeal</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#00e600</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">4.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">24.40 4.80 3.20 4.80</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">16.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
