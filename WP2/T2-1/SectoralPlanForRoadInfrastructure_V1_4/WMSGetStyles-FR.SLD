<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.1.0/StyledLayerDescriptor.xsd">
   <NamedLayer>
      <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft_polygons</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_fest_anlage.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-01</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MinScaleDenominator>25000.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>499999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_zwischenergebnis_anlage.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-01</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MinScaleDenominator>25000.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>499999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_vororientierung_anlage.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-01</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl3</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MinScaleDenominator>25000.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>499999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_fest_planung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-02</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MinScaleDenominator>25000.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>499999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_zwischenergebnis_planung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-02</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MinScaleDenominator>25000.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>499999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_vororientierung_planung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-02</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl3</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MinScaleDenominator>25000.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>499999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_standort_rot.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-03</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MinScaleDenominator>25000.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>499999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_standort_orange.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-03</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MinScaleDenominator>25000.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>499999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_standort_gelb.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-03</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl3</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MinScaleDenominator>25000.000000</se:MinScaleDenominator>
               <se:MaxScaleDenominator>499999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
   <NamedLayer>
      <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft_polygons_raster</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_fest_anlage.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-01</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MaxScaleDenominator>24999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_zwischenergebnis_anlage.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-01</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MaxScaleDenominator>24999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_vororientierung_anlage.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-01</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl3</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MaxScaleDenominator>24999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_fest_planung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-02</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MaxScaleDenominator>24999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_zwischenergebnis_planung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-02</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MaxScaleDenominator>24999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_vororientierung_planung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-02</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl3</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MaxScaleDenominator>24999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
               <se:PolygonSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_standort_rot.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-03</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MaxScaleDenominator>24999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_standort_orange.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-03</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MaxScaleDenominator>24999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.pl_standort_gelb.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-03</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl3</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:MaxScaleDenominator>24999.000000</se:MaxScaleDenominator>
               <se:PolygonSymbolizer>
                  <se:Fill>
                     <se:SvgParameter name="fill">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="fill-opacity">0.60</se:SvgParameter>
                  </se:Fill>
               </se:PolygonSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
   <NamedLayer>
      <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft_fac_lines</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.nationalstrasseoffen_besthende.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-01</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">11.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#0066cc</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">8.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.nationalstrasseoffen_anpassung.name</se:Name>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">11.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#00e1e1</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">8.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.nationalstrasseoffen_neubau.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-01</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">11.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#4daf4a</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">8.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.tunnel_besthende.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-02</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">11.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">8.00 4.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#0066cc</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">8.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">8.00 4.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">8.00 4.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.tunnel_anpassung.name</se:Name>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">11.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">8.00 4.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#00e1e1</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">8.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">8.00 4.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">8.00 4.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.tunnel_neubau.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-02</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">11.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">8.00 4.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#4daf4a</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">8.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">8.00 4.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">2.00</se:SvgParameter>
                     <se:SvgParameter name="stroke-dasharray">8.00 4.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.uberdeckung_besthende.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-07</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#0066cc</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">10.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.uberdeckung_anpassung.name</se:Name>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#00e1e1</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">10.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.uberdeckung_neubau.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-07</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#4daf4a</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">10.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.anlage_aufhebung.name</se:Name>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">5.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
   <NamedLayer>
      <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft_pl_lines</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.aufhebung_festsetzung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-04</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">5.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#e2001a</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">14.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.aufhebung_zwischenergebnis.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-04</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">5.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ee7e22</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">14.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.aufhebung_vororientung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-04</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl3</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#000000</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">5.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
               <se:LineSymbolizer>
                  <se:Stroke>
                     <se:SvgParameter name="stroke">#ffed00</se:SvgParameter>
                     <se:SvgParameter name="stroke-width">14.00</se:SvgParameter>
                  </se:Stroke>
               </se:LineSymbolizer>
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
   <NamedLayer>
      <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft_points_1_01</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.anschluss_bestehend.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-03</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.anschluss_anpassung.name</se:Name>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.anschluss_neu.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-03</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.halbanschluss_bestehend.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-04</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.halbanschluss_anpassung.name</se:Name>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.halbanschluss_neu.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-04</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.abstellplatz_bestehend.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-05</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.abstellplatz_anpassung.name</se:Name>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.abstellplatz_neu.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-05</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.wildtierquerung_bestehend.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-06</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.wildtierquerung_anpassung.name</se:Name>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.wildtierquerung_neu.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-06</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.verzweigung_bestehend.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-08</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.verzweigung_anpassung.name</se:Name>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.verzweigung_neu.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-08</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.anschluss_aufhebung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-03</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs5</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.halbanschluss_aufhebung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-04</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs5</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.abstellplatz_aufhebung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-05</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs5</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.wildtierquerung_aufhebung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-06</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs5</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.verzweigung_aufhebung.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>fackind_tid</ogc:PropertyName>
                        <ogc:Literal>72-F-08</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>facstatus_tid</ogc:PropertyName>
                        <ogc:Literal>fs5</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
   <NamedLayer>
      <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft_points_1_02</se:Name>
      <UserStyle>
         <se:FeatureTypeStyle>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.aufhebung_rot.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-04</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl1</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.aufhebung_orange.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-04</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl2</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
               <se:PointSymbolizer />
            </se:Rule>
            <se:Rule>
               <se:Name>ch.astra.sachplan-infrastruktur-strasse_kraft.aufhebung_gelb.name</se:Name>
               <ogc:Filter>
                  <ogc:And>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>meastype_tid</ogc:PropertyName>
                        <ogc:Literal>72-M-04</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                     <ogc:PropertyIsEqualTo>
                        <ogc:PropertyName>coordlevel_tid</ogc:PropertyName>
                        <ogc:Literal>cl3</ogc:Literal>
                     </ogc:PropertyIsEqualTo>
                  </ogc:And>
               </ogc:Filter>
               <se:PointSymbolizer />
               <se:PointSymbolizer />
               <se:PointSymbolizer />
            </se:Rule>
         </se:FeatureTypeStyle>
      </UserStyle>
   </NamedLayer>
</StyledLayerDescriptor>
