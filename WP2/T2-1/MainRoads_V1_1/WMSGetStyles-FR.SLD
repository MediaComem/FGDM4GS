<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>ch.astra.hauptstrassennetz</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>ch.astra.hauptstrassennetz.Hauptstrasse.name</se:Name>
               <se:MinScaleDenominator>300000.000000</se:MinScaleDenominator>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#a87000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.hauptstrassennetz.Hauptstrasse.name</se:Name>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#a87000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:TextSymbolizer>
                  <se:Label>
                     <ogc:PropertyName>roadnumber</ogc:PropertyName>
                  </se:Label>
                  <se:Font>
                     <se:SvgParameter name="font-family">arialbd</se:SvgParameter>
                     <se:SvgParameter name="font-size">12</se:SvgParameter>
                  </se:Font>
                  <se:LabelPlacement>
                     <se:PointPlacement>
                        <se:AnchorPoint>
                           <se:AnchorPointX>0.5</se:AnchorPointX>
                           <se:AnchorPointY>1.0</se:AnchorPointY>
                        </se:AnchorPoint>
                        <se:Displacement>
                           <se:DisplacementX>17</se:DisplacementX>
                           <se:DisplacementY>17</se:DisplacementY>
                        </se:Displacement>
                     </se:PointPlacement>
                  </se:LabelPlacement>
                  <se:Fill>
                     <se:SvgParameter name="fill">#a87000</se:SvgParameter>
                  </se:Fill>
               </se:TextSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
