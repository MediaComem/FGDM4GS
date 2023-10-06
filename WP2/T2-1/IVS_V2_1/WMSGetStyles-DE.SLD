<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>ch.astra.ivs-nat</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>Nationale Bedeutung, Historischer Verlauf mit Substanz</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>ivs_signatur</ogc:PropertyName>
                     <ogc:Literal>302</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">4.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ffffff</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Nationale Bedeutung, Historischer Verlauf mit viel Substanz</se:Name>
               <ogc:Filter>
                  <ogc:PropertyIsEqualTo>
                     <ogc:PropertyName>ivs_signatur</ogc:PropertyName>
                     <ogc:Literal>303</ogc:Literal>
                  </ogc:PropertyIsEqualTo>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ff0000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">6.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ffffff</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
