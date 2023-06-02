===========================
Illustrate Mermaid Diagrams
===========================


Flowcharts graph
=================
The graph below gives an overview of the interactions between some **Atlas services** in the **Mazars ecosystem**:

.. tab:: The beautiful Flowchart

  .. mermaid::

    flowchart LR
        subgraph Datacenter Region X
          webapp(Web Application)-- REST ---api(API)--- api_db[(API Database)]
          api---redis[(Redis Database)]---consumer(Consumer)
        end
        subgraph Main Datacenter
          hub(Hub)---hub_db[(Hub Database)]
          hub---hub_fs[(Document Storage)]
        end
        subgraph Astraviz
          thegate(Gate)-- SSO ---webapp
          thegate-- Token Verification ---api
          dms(DMS)-- HTTP ---api
          dms-- HTTP ---hub
          mailer(Mailer)---api
        end
        webapp-- REST ---hub
        api-- REST readonly ---hub

.. tab:: show me the 17 lines of low code to create it

  .. code::

    .. mermaid::

      flowchart LR
          subgraph Datacenter Region X
            webapp(Web Application)-- REST ---api(API)--- api_db[(API Database)]
            api---redis[(Redis Database)]---consumer(Consumer)
          end
          subgraph Main Datacenter
            hub(Hub)---hub_db[(Hub Database)]
            hub---hub_fs[(Document Storage)]
          end
          subgraph Astraviz
            thegate(Gate)-- SSO ---webapp
            thegate-- Token Verification ---api
            dms(DMS)-- HTTP ---api
            dms-- HTTP ---hub
            mailer(Mailer)---api
          end

          webapp-- REST ---hub
          api-- REST readonly ---hub

sequenceDiagram
==================
Serious software should consume his own API REST or GraphQL, this API should
has to be correctly documented in term of **sequenceDiagram** including the
Token security layer.

.. tab:: Astraviz sequenceDiagram

  .. mermaid::

    sequenceDiagram

      App1 ->>+ Gate: Request Access token
      Gate -->>- App1: Access Token
      App1 ->>+ API Gateway: api/engagements/webhook + Access Token
      API Gateway ->>+ Gate: Validate token
      Gate -->>- API Gateway: Token information
      alt Token is valid
          API Gateway->> API Gateway: Identify consumer
      else Token is invalid or consumer is unknown
          API Gateway-->> App1: Not Authorized
      end
      API Gateway->>+ App2: Forward api/engagements/webhook + Access Token
      App2 ->>+ Gate: Validate token
      Gate -->>- App2: Token information
      alt Token is valid
          App2 ->> App2: Authorize consumer
          App2 -->> API Gateway: Response payload (ACK/NACK)
          API Gateway-->> App1: Forward Response payload (ACK/NACK)
          App2 ->> App1: Execute request
      else Token is invalid or consumer is unknown
          App2 -->>- API Gateway: Not Authorized
          API Gateway-->>- App2: Not Authorized
      end

.. tab:: Astraviz sequenceDiagram only 23 lines of low code ;)

  .. code::

    .. mermaid::

      sequenceDiagram

        App2 ->>+ Gate: Request Access token
        Gate -->>- App2: Access Token
        AtlasBlue ->>+ API Gateway: api/engagements/webhook + Access Token
        API Gateway ->>+ Gate: Validate token
        Gate -->>- API Gateway: Token information
        alt Token is valid
            API Gateway->> API Gateway: Identify consumer
        else Token is invalid or consumer is unknown
            API Gateway-->> App2: Not Authorized
        end
        API Gateway->>+ App2: Forward api/engagements/webhook + Access Token
        App2 ->>+ Gate: Validate token
        Gate -->>- App2: Token information
        alt Token is valid
            App2 ->> App2: Authorize consumer
            App2 -->> API Gateway: Response payload (ACK/NACK)
            API Gateway-->> App2: Forward Response payload (ACK/NACK)
            App2 ->> App2: Execute request
        else Token is invalid or consumer is unknown
            App2 -->>- API Gateway: Not Authorized
            API Gateway-->>- App2: Not Authorized
        end

Gantt Diagram
================
.. tab:: To have the project done on time

  .. mermaid::

    gantt
      title My Super Assistant Planning
      dateFormat  YY-MM-DD
      axisFormat  %Y-%m

      section main
        Input / Mapping (From RA)      :active, map1,  21-12-10,    1w
        Input / Mapping (from AnaBlue) :active, map2, after ex_1,   5w
        Input / Mapping (from AnaBlue) :active, map3, after spring, 2w

      section Holidays
        Christmas                 :done,   chris,  21-12-22, 22-01-02
        spring                    :done,   spring, 22-03-21, 22-04-05

      section Core Model
        Core FSA                  :active, core,  after clas,   3w
        T1 Simples                :active, t1,    after core,   4w
        T2 External Files + samp  :active, t2, after fsa_1, 3w
        T3 JE + duplicate         :active, t3, after fsa_4   , 5w

      section FSA Tresorerie
        FSA.tests all             :active, fsa_1, after chris,    2w
        Workpaper Excel           :active, ex_1,  after fsa_1, 4w

      section FSA AACE
        FSA.tests T1 T2      :active, fsa_3, after fsa_2,    2w
        Workpaper Excel      :active, ex_3,  after fsa_3, 2w

      section Fournisseurs
        FSA.tests T1 T2      :active, fsa_4, after fsa_3, 2w
        Workpaper Excel      :active, ex_4,  after fsa_4, 2w

.. tab:: Gantt only 25 lines of low code ;)

  .. code::

    .. mermaid::

      gantt
        title My Super Assistant Planning
        dateFormat  YY-MM-DD
        axisFormat  %Y-%m

        section main
          Input / Mapping (From RA)      :active, map1,  21-12-10,    1w
          Input / Mapping (from AnaBlue) :active, map2, after ex_1,   5w
          Input / Mapping (from AnaBlue) :active, map3, after spring, 2w

        section Holidays
          Christmas                 :done,   chris,  21-12-22, 22-01-02
          spring                    :done,   spring, 22-03-21, 22-04-05

        section Core Model
          Core FSA                  :active, core,  after clas,   3w
          T1 Simples                :active, t1,    after core,   4w
          T2 External Files + samp  :active, t2, after fsa_1, 3w
          T3 JE + duplicate         :active, t3, after fsa_4   , 5w

        section FSA Tresorerie
          FSA.tests all             :active, fsa_1, after chris,    2w
          Workpaper Excel           :active, ex_1,  after fsa_1, 4w

        section FSA AACE
          FSA.tests T1 T2      :active, fsa_3, after fsa_2,    2w
          Workpaper Excel      :active, ex_3,  after fsa_3, 2w

        section Fournisseurs
          FSA.tests T1 T2      :active, fsa_4, after fsa_3, 2w
          Workpaper Excel      :active, ex_4,  after fsa_4, 2w


References
=============

- https://mermaid-js.github.io/mermaid/#/flowchart
- https://github.com/mermaid-js/mermaid-cli

