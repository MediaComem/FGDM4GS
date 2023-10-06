<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>ch.astra.strassenverkehrszaehlung-uebergeordnet</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>Réseau de base - aucun indicateur disponible</se:Name>
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
               <se:Name>Réseau de base - non classifié</se:Name>
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
               <se:Name>Réseau de base</se:Name>
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
               <se:Name>Réseau de base - SWISS10</se:Name>
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
               <se:Name>Réseau étendu - aucun indicateur disponible</se:Name>
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
               <se:Name>Réseau étendu - non classifié</se:Name>
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
               <se:Name>Réseau étendu</se:Name>
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
               <se:Name>Réseau étendu - SWISS10</se:Name>
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
               <se:Name>Autre réseau - aucun indicateur disponible</se:Name>
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
               <se:Name>Autre réseau - non classifié</se:Name>
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
               <se:Name>Autre réseau</se:Name>
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
               <se:Name>Autre réseau - SWISS10</se:Name>
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
