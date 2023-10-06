<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>ch.are.wohnungsinventar-zweitwohnungsanteil</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>Est soumise aux dispositions du droit des constructions de la LRS</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>status</ogc:PropertyName>
                     <ogc:Literal>1</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#0084a8</se:SvgParameter>
                  </se:Fill>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#cccccc</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>N'est pas soumise aux dispositions du droit des constructions de la LRS</se:Name>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
                  </se:Fill>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#cccccc</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">1.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
