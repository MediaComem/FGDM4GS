<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>planungszone</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>Commune</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>festlegung_stufe_typ_de</ogc:PropertyName>
                     <ogc:Literal>Gemeinde</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:MinScaleDenominator>1.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>2500001.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#e1beff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#c3aaf0</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Canton</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>festlegung_stufe_typ_de</ogc:PropertyName>
                     <ogc:Literal>Kanton</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:MinScaleDenominator>1.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>2500001.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ebd7ff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#c3aaf0</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>autres</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>festlegung_stufe_typ_de</ogc:PropertyName>
                     <ogc:Literal>andere</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:MinScaleDenominator>1.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>2500001.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#f3eeff</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#c3aaf0</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
