<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>ch.astra.nationalstrassenachsen_line</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>Stammachse</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>bgdi_type</ogc:PropertyName>
                     <ogc:Literal>stammachse</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1.50</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Rampenachse (&lt; 1:100'000)</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>bgdi_type</ogc:PropertyName>
                     <ogc:Literal>rampenachse</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:MaxScaleDenominator>37800.000000</se:MaxScaleDenominator>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#c500ff</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1.50</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Zubringerachse (&lt; 1:100'000)</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>bgdi_type</ogc:PropertyName>
                     <ogc:Literal>zubringerachse</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:MaxScaleDenominator>37800.000000</se:MaxScaleDenominator>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ff6400</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1.50</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Anschlussachse (&lt; 1:100'000)</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>bgdi_type</ogc:PropertyName>
                     <ogc:Literal>anschlussachse</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:MaxScaleDenominator>37800.000000</se:MaxScaleDenominator>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ff73df</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1.50</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
   <NamedLayer>
      <se:Name>ch.astra.nationalstrassenachsen_point</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>Bezugspunkt Anfang/Ende (&lt; 1:50'000)</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>zwischensektor</ogc:PropertyName>
                     <ogc:Literal>0</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:MaxScaleDenominator>18900.000000</se:MaxScaleDenominator>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>circle</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#ffe708</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>8</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
               <se:TextSymbolizer>
                  <se:Label>
                     <ogc:PropertyName>name</ogc:PropertyName>
                  </se:Label>
                  <se:Font>
                     <se:SvgParameter name="font-family">ariali</se:SvgParameter>
                     <se:SvgParameter name="font-size">9</se:SvgParameter>
                  </se:Font>
                  <se:LabelPlacement>
                     <se:PointPlacement>
                        <se:AnchorPoint>
                           <se:AnchorPointX>1.0</se:AnchorPointX>
                           <se:AnchorPointY>1.0</se:AnchorPointY>
                        </se:AnchorPoint>
                        <se:Displacement>
                           <se:DisplacementX>2</se:DisplacementX>
                           <se:DisplacementY>2</se:DisplacementY>
                        </se:Displacement>
                     </se:PointPlacement>
                  </se:LabelPlacement>
                  <se:Fill>
                     <se:SvgParameter name="fill">#000000</se:SvgParameter>
                  </se:Fill>
               </se:TextSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Bezugspunkt Mitte (&lt; 1:50'000)</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>zwischensektor</ogc:PropertyName>
                     <ogc:Literal>1</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:MaxScaleDenominator>18900.000000</se:MaxScaleDenominator>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>square</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#ffe708</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>8</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
               <se:TextSymbolizer>
                  <se:Label>
                     <ogc:PropertyName>name</ogc:PropertyName>
                  </se:Label>
                  <se:Font>
                     <se:SvgParameter name="font-family">ariali</se:SvgParameter>
                     <se:SvgParameter name="font-size">9</se:SvgParameter>
                  </se:Font>
                  <se:LabelPlacement>
                     <se:PointPlacement>
                        <se:AnchorPoint>
                           <se:AnchorPointX>1.0</se:AnchorPointX>
                           <se:AnchorPointY>1.0</se:AnchorPointY>
                        </se:AnchorPoint>
                     </se:PointPlacement>
                  </se:LabelPlacement>
                  <se:Fill>
                     <se:SvgParameter name="fill">#000000</se:SvgParameter>
                  </se:Fill>
               </se:TextSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
