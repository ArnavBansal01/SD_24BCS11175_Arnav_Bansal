<mxfile host="app.diagrams.net">
  <diagram name="Netflix System Design" id="netflixDesign2">
    <mxGraphModel dx="1600" dy="900" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="1700" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />

        <!-- Title -->
        <mxCell id="title1" value="Netflix - High Level System Design (Beginner Version)" style="text;html=1;fontSize=20;fontStyle=1;align=center;" vertex="1" parent="1">
          <mxGeometry x="460" y="10" width="600" height="30" as="geometry" />
        </mxCell>

        <!-- Functional Requirements box -->
        <mxCell id="frBox" value="Functional Requirements&#10;&#10;- Sign up / Log in&#10;- Multiple profiles per account&#10;- Browse and search content&#10;- Stream video&#10;- Get recommendations&#10;- Add to watchlist&#10;- Resume watching&#10;- Rate / review content&#10;- Admin uploads content&#10;- Subscription and billing" style="rounded=1;whiteSpace=wrap;html=1;align=left;verticalAlign=top;spacing=10;fontSize=13;fillColor=#f5f5f5;strokeColor=#666666;" vertex="1" parent="1">
          <mxGeometry x="20" y="50" width="380" height="260" as="geometry" />
        </mxCell>

        <!-- Non-Functional Requirements box -->
        <mxCell id="nfrBox" value="Non-Functional Requirements&#10;&#10;- High availability&#10;- Low latency streaming&#10;- Scalable to millions of users&#10;- Durable video storage&#10;- Strong security (DRM, payments)&#10;- Fault tolerant&#10;- Eventually consistent recommendations&#10;- Strongly consistent billing data" style="rounded=1;whiteSpace=wrap;html=1;align=left;verticalAlign=top;spacing=10;fontSize=13;fillColor=#f5f5f5;strokeColor=#666666;" vertex="1" parent="1">
          <mxGeometry x="1220" y="50" width="380" height="260" as="geometry" />
        </mxCell>

        <!-- Client Layer -->
        <mxCell id="web" value="Web Browser" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" vertex="1" parent="1">
          <mxGeometry x="290" y="350" width="140" height="60" as="geometry" />
        </mxCell>
        <mxCell id="mobile" value="Mobile App" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" vertex="1" parent="1">
          <mxGeometry x="460" y="350" width="140" height="60" as="geometry" />
        </mxCell>
        <mxCell id="tv" value="Smart TV App" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#dae8fc;strokeColor=#6c8ebf;" vertex="1" parent="1">
          <mxGeometry x="630" y="350" width="140" height="60" as="geometry" />
        </mxCell>

        <!-- Load Balancer -->
        <mxCell id="lb" value="Load Balancer" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="460" y="460" width="140" height="60" as="geometry" />
        </mxCell>

        <!-- API Gateway -->
        <mxCell id="gateway" value="API Gateway" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="460" y="570" width="140" height="60" as="geometry" />
        </mxCell>

        <!-- Microservices (User + Billing grouped together on the left, near their shared DB) -->
        <mxCell id="userSvc" value="User Service" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#ffe6cc;strokeColor=#d79b00;" vertex="1" parent="1">
          <mxGeometry x="20" y="690" width="140" height="60" as="geometry" />
        </mxCell>
        <mxCell id="billSvc" value="Billing Service" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#ffe6cc;strokeColor=#d79b00;" vertex="1" parent="1">
          <mxGeometry x="180" y="690" width="140" height="60" as="geometry" />
        </mxCell>
        <mxCell id="catalogSvc" value="Catalog Service" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#ffe6cc;strokeColor=#d79b00;" vertex="1" parent="1">
          <mxGeometry x="340" y="690" width="140" height="60" as="geometry" />
        </mxCell>
        <mxCell id="searchSvc" value="Search Service" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#ffe6cc;strokeColor=#d79b00;" vertex="1" parent="1">
          <mxGeometry x="500" y="690" width="140" height="60" as="geometry" />
        </mxCell>
        <mxCell id="recSvc" value="Recommendation Service" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#ffe6cc;strokeColor=#d79b00;" vertex="1" parent="1">
          <mxGeometry x="660" y="690" width="160" height="60" as="geometry" />
        </mxCell>
        <mxCell id="streamSvc" value="Streaming Service" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#ffe6cc;strokeColor=#d79b00;" vertex="1" parent="1">
          <mxGeometry x="840" y="690" width="150" height="60" as="geometry" />
        </mxCell>

        <!-- Message Queue -->
        <mxCell id="queue" value="Message Queue (Kafka)" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" vertex="1" parent="1">
          <mxGeometry x="660" y="830" width="330" height="50" as="geometry" />
        </mxCell>

        <!-- Databases -->
        <mxCell id="sqlDb" value="SQL Database&#10;(Users, Billing)" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;" vertex="1" parent="1">
          <mxGeometry x="60" y="940" width="240" height="60" as="geometry" />
        </mxCell>
        <mxCell id="noSqlDb" value="NoSQL Database&#10;(Video Catalog)" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;" vertex="1" parent="1">
          <mxGeometry x="340" y="940" width="140" height="60" as="geometry" />
        </mxCell>
        <mxCell id="cache" value="Cache&#10;(Redis)" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;" vertex="1" parent="1">
          <mxGeometry x="500" y="940" width="140" height="60" as="geometry" />
        </mxCell>

        <!-- Video Upload Pipeline (own lane on the right, below the NFR box) -->
        <mxCell id="upload" value="Content Upload&#10;(Admin / Studio)" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#e1d5e7;strokeColor=#9673a6;" vertex="1" parent="1">
          <mxGeometry x="1220" y="350" width="280" height="60" as="geometry" />
        </mxCell>
        <mxCell id="transcode" value="Video Transcoding Service" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#e1d5e7;strokeColor=#9673a6;" vertex="1" parent="1">
          <mxGeometry x="1220" y="490" width="280" height="60" as="geometry" />
        </mxCell>
        <mxCell id="storage" value="Object Storage&#10;(stores video files)" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#e1d5e7;strokeColor=#9673a6;" vertex="1" parent="1">
          <mxGeometry x="1220" y="630" width="280" height="60" as="geometry" />
        </mxCell>
        <mxCell id="cdn" value="CDN&#10;(Content Delivery Network)" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#e1d5e7;strokeColor=#9673a6;" vertex="1" parent="1">
          <mxGeometry x="1220" y="770" width="280" height="60" as="geometry" />
        </mxCell>
        <mxCell id="cdnNote" value="Delivers video straight to the user's device (fast, cached close to them)" style="text;html=1;fontSize=11;fontStyle=2;align=left;whiteSpace=wrap;" vertex="1" parent="1">
          <mxGeometry x="1220" y="840" width="280" height="40" as="geometry" />
        </mxCell>

        <!-- Client to Load Balancer -->
        <mxCell id="e1" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.3;entryY=0;" edge="1" parent="1" source="web" target="lb">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e2" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="mobile" target="lb">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e3" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.7;entryY=0;" edge="1" parent="1" source="tv" target="lb">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- LB to Gateway -->
        <mxCell id="e4" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="lb" target="gateway">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- Gateway to Microservices -->
        <mxCell id="e5" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="gateway" target="userSvc">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e6" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="gateway" target="billSvc">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e7" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="gateway" target="catalogSvc">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e8" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="gateway" target="searchSvc">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e9" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="gateway" target="recSvc">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e10" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="gateway" target="streamSvc">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- Services to DB -->
        <mxCell id="e11" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.3;entryY=0;" edge="1" parent="1" source="userSvc" target="sqlDb">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e12" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.7;entryY=0;" edge="1" parent="1" source="billSvc" target="sqlDb">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e13" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="catalogSvc" target="noSqlDb">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e14" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="searchSvc" target="cache">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- Services to Queue -->
        <mxCell id="e15" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.3;entryY=0;" edge="1" parent="1" source="recSvc" target="queue">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e16" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.7;entryY=0;" edge="1" parent="1" source="streamSvc" target="queue">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- Streaming Service to CDN -->
        <mxCell id="e17" value="get video URL" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=1;exitY=0.5;entryX=0;entryY=0.5;" edge="1" parent="1" source="streamSvc" target="cdn">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

        <!-- Video Upload Pipeline -->
        <mxCell id="e18" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="upload" target="transcode">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e19" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="transcode" target="storage">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="e20" style="edgeStyle=orthogonalEdgeStyle;rounded=0;html=1;endArrow=block;exitX=0.5;exitY=1;entryX=0.5;entryY=0;" edge="1" parent="1" source="storage" target="cdn">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>

      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
