<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>ch.astra.strassenverkehrszaehlung-uebergeordnet</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>Grundnetz - keine Kennzahlen verfügbar</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>Grundnetz</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>dtv</ogc:PropertyName>
                        <ogc:Literal />
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>circle</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Grundnetz - nicht klassifiziert</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>Grundnetz</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_classification</ogc:PropertyName>
                        <ogc:Literal>nicht klassifiziert</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>circle</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#007a3f</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Grundnetz</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>Grundnetz</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsNotEqualTo>
                        <ogc:PropertyName>dtv</ogc:PropertyName>
                        <ogc:Literal />
                     </ogc:PropertyIsNotEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>circle</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#007a3f</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Grundnetz - SWISS10</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>Grundnetz</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_classification</ogc:PropertyName>
                        <ogc:Literal>SWISS10</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>circle</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#d7a6ff</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Ergänzungsnetz - keine Kennzahlen verfügbar</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>Ergänzungsnetz</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>dtv</ogc:PropertyName>
                        <ogc:Literal />
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>square</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Ergänzungsnetz - nicht klassifiziert</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>Ergänzungsnetz</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_classification</ogc:PropertyName>
                        <ogc:Literal>nicht klassifiziert</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>square</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#007a3f</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Ergänzungsnetz</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>Ergänzungsnetz</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsNotEqualTo>
                        <ogc:PropertyName>dtv</ogc:PropertyName>
                        <ogc:Literal />
                     </ogc:PropertyIsNotEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>square</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#007a3f</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Ergänzungsnetz - SWISS10</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>Ergänzungsnetz</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_classification</ogc:PropertyName>
                        <ogc:Literal>SWISS10</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>square</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#d7a6ff</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Ausserhalb des Grund- bzw. Ergänzungsnetzes - keine Kennzahlen verfügbar</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>ausserhalb des Grund- bzw. Ergänzungsnetzes</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>dtv</ogc:PropertyName>
                        <ogc:Literal />
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>triangle</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#ffffff</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Ausserhalb des Grund- bzw. Ergänzungsnetzes - nicht klassifiziert</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>ausserhalb des Grund- bzw. Ergänzungsnetzes</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_classification</ogc:PropertyName>
                        <ogc:Literal>nicht klassifiziert</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>triangle</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#007a3f</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Ausserhalb des Grund- bzw. Ergänzungsnetzes</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>ausserhalb des Grund- bzw. Ergänzungsnetzes</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsNotEqualTo>
                        <ogc:PropertyName>dtv</ogc:PropertyName>
                        <ogc:Literal />
                     </ogc:PropertyIsNotEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>triangle</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#007a3f</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>Ausserhalb des Grund- bzw. Ergänzungsnetzes - SWISS10</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_networktype</ogc:PropertyName>
                        <ogc:Literal>ausserhalb des Grund- bzw. Ergänzungsnetzes</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>de_classification</ogc:PropertyName>
                        <ogc:Literal>SWISS10</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer>
                  <se:Graphic>
                     <se:Mark>
                        <se:WellKnownName>triangle</se:WellKnownName>
                        <se:Fill>
                           <se:SvgParameter name="fill">#d7a6ff</se:SvgParameter>
                        </se:Fill>
                     </se:Mark>
                     <se:Size>10</se:Size>
                  </se:Graphic>
               </se:PointSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
