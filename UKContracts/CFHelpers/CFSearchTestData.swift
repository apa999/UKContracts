let TestDataString = """
{
    "uri": "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/Search?publishedTo=2022-10-20T09:43:52+01:00&limit=100",
    "version": "1.1",
    "extensions": [
        "https://standard.open-contracting.org/profiles/eu/master/en/extension.json",
        "https://raw.githubusercontent.com/portaledcahn/ocds_tenderDatePublished_extension/master/extension.json",
        "https://raw.githubusercontent.com/open-contracting-extensions/ocds_budget_breakdown_extension/master/extension.json",
        "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_awards_datePublished_extension/main/extension.json",
        "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_partyDetails_vcse_extension/main/extension.json",
        "https://raw.githubusercontent.com/Crown-Commercial-Service/ocds_tender_suitability_extension/main/extension.json",
        "https://raw.githubusercontent.com/open-contracting-extensions/ocds_pagination_extension/master/extension.json"
    ],
    "publishedDate": "2022-10-20T09:42:13+01:00",
    "publisher": {
        "name": "Cabinet Office",
        "scheme": "GB-GOR",
        "uid": "D2",
        "uri": "https://www.gov.uk/government/organisations/cabinet-office"
    },
    "license": "http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/",
    "publicationPolicy": "https://www.gov.uk/government/publications/open-contracting",
    "releases": [
        {
            "ocid": "ocds-b5fd17-7d067852-1260-448e-b84a-186d028f9991",
            "id": "7d005747-1320-456e-b1fb-79919a74e44f-582356",
            "language": "en",
            "date": "2022-10-20T09:42:13+01:00",
            "tag": [
                "awardUpdate"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CON-00000309: Peakon ApS Staff survey services",
                "title": "CON-00000309: Peakon ApS Staff survey services",
                "description": "The G-Cloud Call-off contract was awarded to one supplier",
                "status": "planned",
                "classification": {
                    "scheme": "CPV",
                    "id": "48000000",
                    "description": "Software package and information systems"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "London",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 36254.4,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 145017.8,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2020-10-16T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2020-10-22T00:00:00+01:00",
                    "endDate": "2022-10-21T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/FxGd77hQ",
                    "name": "NURSING AND MIDWIFERY COUNCIL",
                    "identifier": {
                        "legalName": "NURSING AND MIDWIFERY COUNCIL",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/FxGd77hQ"
                    },
                    "address": {
                        "streetAddress": "23 Portland Place",
                        "locality": "LONDON",
                        "postalCode": "W1B1PZ",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Tanya Kalina",
                        "email": "tanya.kalina@nmc-uk.org",
                        "telephone": "07811267195"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-154774",
                    "name": "Peakon ApS",
                    "identifier": {
                        "legalName": "Peakon ApS"
                    },
                    "address": {
                        "streetAddress": "Frederiksberggade 11, 1\\nKbenhavn K\\nHovedstaden\\n1459\\nDK"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/FxGd77hQ",
                "name": "NURSING AND MIDWIFERY COUNCIL"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-7d067852-1260-448e-b84a-186d028f9991-1",
                    "status": "active",
                    "date": "2020-10-16T00:00:00+01:00",
                    "datePublished": "2020-11-10T11:04:19Z",
                    "value": {
                        "amount": 72508.8,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-154774",
                            "name": "Peakon ApS"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2020-10-22T00:00:00+01:00",
                        "endDate": "2022-10-21T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/7d005747-1320-456e-b1fb-79919a74e44f",
                            "datePublished": "2020-11-10T11:04:19Z",
                            "dateModified": "2022-10-20T09:42:13+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-8af6ed71-be4a-4cf4-bb4b-bbb35e04cbfa",
            "id": "97e3ebe6-fac5-49c8-90cb-461e530a3505-582357",
            "language": "en",
            "date": "2022-10-20T09:41:49+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-100-3649-P0917 - AWARD",
                "title": "P0917 DOLPHIN CENTRE BUILDING IMPROVEMENT WORKS - AWARD",
                "description": "The Council wishes to establish a contract for building improvements works at the Dolphin Centre, Ward End Park.\\n      \\n      The Contract will be for a construction period of up to 8 months (unless terminated under the terms and conditions of contract). \\n      \\n      The contract will be awarded to a single supplier.\\n      \\n      European Regional Development Fund\\n      The whole project, including this building project and the aligned landscape project, is receiving funding from the England European Regional Development Fund as part of the European Structural and Investment Funds Growth Programme 2014-2020. The Department for Levelling Up, Housing and Communities is the Managing Authority for the European Regional Development Fund. Established by the European Union, the European Regional Development Fund helps local areas stimulate their economic development by investing in projects which will support innovation, businesses, create jobs and local community regenerations. For more information visit https://www.gov.uk/european-growth-funding.\\n      \\n      Midlands Engine \\n      The government is committed to making the Midlands an Engine for Growth in the UK, increasing economic growth and improving the quality of life for everyone. The Midlands is home to over 10 million people and over 780,000 businesses. Its economy is worth £217.7 billion.  Alongside over €750 million of European Regional Development Fund support for businesses and communities across the Midlands, the government has awarded £1.9 billion in three rounds of Growth Deals.",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "71315000",
                    "description": "Building services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "45112712",
                        "description": "Landscaping work for gardens"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45112700",
                        "description": "Landscaping work"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45210000",
                        "description": "Building construction work"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45212000",
                        "description": "Construction work for buildings relating to leisure, sports, culture, lodging and restaurants"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45211350",
                        "description": "Multi-functional buildings construction work"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "B4 7DJ"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "selective",
                "procurementMethodDetails": "Negotiated procedure",
                "tenderPeriod": {
                    "endDate": "2022-05-20T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-06-28T01:00:00+01:00",
                    "endDate": "2023-04-04T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "works"
            },
            "parties": [
                {
                    "id": "GB-CFS-43899",
                    "name": "Birmingham City Council",
                    "identifier": {
                        "legalName": "Birmingham City Council"
                    },
                    "address": {
                        "streetAddress": "1 Lancaster Circus, Birmingham",
                        "locality": "West Midlands",
                        "postalCode": "B4 7DJ",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Tina Nandra",
                        "email": "Tina.K.Nandra@birmingham.gov.uk",
                        "telephone": "0121 303 0020"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224746",
                    "name": "Building Services NOW",
                    "identifier": {
                        "legalName": "Building Services NOW"
                    },
                    "address": {
                        "streetAddress": "Dudley Court South,, Waterfront East, Level Street, United Kingdom, DY5 1XN"
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-43899",
                "name": "Birmingham City Council"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-8af6ed71-be4a-4cf4-bb4b-bbb35e04cbfa-1",
                    "status": "active",
                    "date": "2022-06-28T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:41:49+01:00",
                    "value": {
                        "amount": 1875000,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224746",
                            "name": "Building Services NOW"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-06-28T00:00:00+01:00",
                        "endDate": "2023-04-04T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/97e3ebe6-fac5-49c8-90cb-461e530a3505",
                            "datePublished": "2022-10-20T09:41:49+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-81c29e70-03bd-443f-89b9-893b5558fd4c",
            "id": "21c21591-9f65-4468-a4f4-a187ecc0411e-582355",
            "language": "en",
            "date": "2022-10-20T09:41:36+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ANI010",
                "title": "Assessing nutrient impacts on lakes from birds",
                "description": "When looking at the various nutrient inputs to lakes, bird faeces are often cited as a conspicuous source of nutrients, and a potential reason for not reaching favourable condition on SSSIs lakes that are designated for their lake-habitat interest.  We don't currently know the nutrient loads from birds at SSSI lakes or how significant a source of nutrients this is. \\n\\nThis project aims to produce a tool to calculate the nutrient inputs to SSSI lakes from birds. The aim is to be able to use WEBS and other available bird data, in conjunction with known  concentrations of nutrients in faeces from different bird species (the contractor will need to find this information from the literature), to calculate nutrient (Total N & P) loads in kg/ha from birds for all the lake-habitat SSSIs (a list of these will be supplied). The relative importance of the nutrient contribution from the birds at each site also needs to be understood. \\n\\nAs many SSSI lakes are currently not reaching their nutrient targets this needs to be understood from two perspectives.\\n\\n1)The proportion of the current total nutrient load, which is calculated as coming from the current bird populations\\n\\n2)The proportion of the total nutrient load, which would be low enough for the lakes to reach their nutrient targets, which is calculated as coming from the current bird populations.  \\n\\nThe Outputs from the project will be:\\n\\n•Outputs calculated for 161 individual SSSI lakes designated for lake habitat (subject to bird data being available from WEBS or other data sources). This can be presented as an excel tool populated with individual lake parameters and outputs. In which case there should be an excel output for each lake.\\n\\n•A report explaining the methodology used to calculate the nutrient contributions, a guide to using the tool and main findings about the contribution of birds to lake nutrient concentration in English SSSIs.\\n\\n•The tool must be designed so that it can be easily updated with new data on bird species and abundance  utilising a particular (SSSI) lake. \\n\\n•The priority application for this tool is to determine impact on SSSI lakes. However, it should be designed so that it could be easily used for other non-designated site lakes (subject to supporting data being available) \\n\\n•The tool should be able to run independently on a laptop, using standard Microsoft products (ideally Excel) so it can be easily used and shared across Natural England and with other colleagues.\\n\\n•The user-interface should be easy to use, with a simple guide to accompany the tool.\\n\\n•One recorded teams call where the tool will be demonstrated, so it can be used as a future training resource.   Please see the full RFQ and specification for further information.\\n\\nAdditional information: Quotations are requested to provide information required in the RFQ. The timeline given in the RFQ will be followed to enable the project to be delivered by end of March 2023.",
                "datePublished": "2022-10-05T15:34:44+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "73210000",
                    "description": "Research consultancy services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 5000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 24999,
                    "currency": "GBP"
                },
                "procurementMethod": "limited",
                "procurementMethodDetails": "Competitive quotation (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-04T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-14T00:00:00Z",
                    "endDate": "2023-03-28T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/21c21591-9f65-4468-a4f4-a187ecc0411e",
                        "datePublished": "2022-10-05T15:34:44+01:00",
                        "dateModified": "2022-10-20T09:41:36+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "3",
                        "documentType": "biddingDocuments",
                        "description": "RFQ Document",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/388c4a62-31c3-4a10-9303-3216d7aeca3d",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/hWvd872d",
                    "name": "Natural England",
                    "identifier": {
                        "legalName": "Natural England",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/hWvd872d"
                    },
                    "address": {
                        "streetAddress": "Natural England, Guildbourne House, Chatsworth",
                        "locality": "Worthing",
                        "postalCode": "BN11  1LD",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Glen Cooper",
                        "email": "glen.cooper@naturalengland.org.uk",
                        "telephone": "+447789050916"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/hWvd872d",
                "name": "Natural England"
            }
        },
        {
            "ocid": "ocds-b5fd17-81c29e70-03bd-443f-89b9-893b5558fd4c",
            "id": "21c21591-9f65-4468-a4f4-a187ecc0411e-582336",
            "language": "en",
            "date": "2022-10-20T09:40:02+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ANI010",
                "title": "Assessing nutrient impacts on lakes from birds",
                "description": "When looking at the various nutrient inputs to lakes, bird faeces are often cited as a conspicuous source of nutrients, and a potential reason for not reaching favourable condition on SSSIs lakes that are designated for their lake-habitat interest.  We don't currently know the nutrient loads from birds at SSSI lakes or how significant a source of nutrients this is. \\n\\nThis project aims to produce a tool to calculate the nutrient inputs to SSSI lakes from birds. The aim is to be able to use WEBS and other available bird data, in conjunction with known  concentrations of nutrients in faeces from different bird species (the contractor will need to find this information from the literature), to calculate nutrient (Total N & P) loads in kg/ha from birds for all the lake-habitat SSSIs (a list of these will be supplied). The relative importance of the nutrient contribution from the birds at each site also needs to be understood. \\n\\nAs many SSSI lakes are currently not reaching their nutrient targets this needs to be understood from two perspectives.\\n\\n1)The proportion of the current total nutrient load, which is calculated as coming from the current bird populations\\n\\n2)The proportion of the total nutrient load, which would be low enough for the lakes to reach their nutrient targets, which is calculated as coming from the current bird populations.  \\n\\nThe Outputs from the project will be:\\n\\n•Outputs calculated for 161 individual SSSI lakes designated for lake habitat (subject to bird data being available from WEBS or other data sources). This can be presented as an excel tool populated with individual lake parameters and outputs. In which case there should be an excel output for each lake.\\n\\n•A report explaining the methodology used to calculate the nutrient contributions, a guide to using the tool and main findings about the contribution of birds to lake nutrient concentration in English SSSIs.\\n\\n•The tool must be designed so that it can be easily updated with new data on bird species and abundance  utilising a particular (SSSI) lake. \\n\\n•The priority application for this tool is to determine impact on SSSI lakes. However, it should be designed so that it could be easily used for other non-designated site lakes (subject to supporting data being available) \\n\\n•The tool should be able to run independently on a laptop, using standard Microsoft products (ideally Excel) so it can be easily used and shared across Natural England and with other colleagues.\\n\\n•The user-interface should be easy to use, with a simple guide to accompany the tool.\\n\\n•One recorded teams call where the tool will be demonstrated, so it can be used as a future training resource.   Please see the full RFQ and specification for further information.\\n\\nAdditional information: Quotations are requested to provide information required in the RFQ. The timeline given in the RFQ will be followed to enable the project to be delivered by end of March 2023.",
                "datePublished": "2022-10-05T15:34:44+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "73210000",
                    "description": "Research consultancy services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 5000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 24999,
                    "currency": "GBP"
                },
                "procurementMethod": "limited",
                "procurementMethodDetails": "Competitive quotation (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-04T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-14T00:00:00Z",
                    "endDate": "2023-03-28T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/21c21591-9f65-4468-a4f4-a187ecc0411e",
                        "datePublished": "2022-10-05T15:34:44+01:00",
                        "dateModified": "2022-10-20T09:40:02+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/hWvd872d",
                    "name": "Natural England",
                    "identifier": {
                        "legalName": "Natural England",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/hWvd872d"
                    },
                    "address": {
                        "streetAddress": "Natural England, Guildbourne House, Chatsworth",
                        "locality": "Worthing",
                        "postalCode": "BN11  1LD",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Glen Cooper",
                        "email": "glen.cooper@naturalengland.org.uk",
                        "telephone": "+447789050916"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/hWvd872d",
                "name": "Natural England"
            }
        },
        {
            "ocid": "ocds-b5fd17-6cc1fffd-3481-4b95-b724-adf1be3dd1a8",
            "id": "552c8041-de65-46f7-a75b-9f5594b99753-582354",
            "language": "en",
            "date": "2022-10-20T09:39:52+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "HOUNSLOW001-DN638669-24899570",
                "title": "Special Educational Needs and Disabilities (SEND) Employment Pathways",
                "description": "The London Borough of Hounslow requires an experienced Public Sector consultant to set out the business case for both the sustainability and potential expansion of Hounslow's delivery of DFN Project SEARCH with a clear 18 month to 2-year business plan.\\nIn order to build and sustain a robust Project SEARCH offer, we need to understand future demand for the programme, the barriers and solutions to access, as well how we might best work with local Employers going forward to build sustainable employer engagement that enhances the offer of work experience, internships and employment pathways for young people. In developing the business case the consultant will need to:\\n• Set out a clear strategy for supported internship places to be maximised for and by Hounslow residents\\n• Develop a clear communication and engagement plan for young people with SEND and their families that raises awareness of Project SEARCH as a pathway into employment as a key element of Preparing for Adulthood (PfA)\\n• Recommend/set out how new opportunities available through Internships Work (a collaboration being launched between DFN Project SEARCH, British Association of Supported Employment and the National Development Team for Inclusion) could build and sustain Employer engagement in the programme\\n\\nFor further details please refer to the specification contained within the request for quote document",
                "datePublished": "2022-10-20T09:39:52+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "73000000",
                    "description": "Research and development services and related consultancy services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "79000000",
                        "description": "Business services: law, marketing, consulting, recruitment, printing and security"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 30000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-17T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-01-09T00:00:00Z",
                    "endDate": "2023-04-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/552c8041-de65-46f7-a75b-9f5594b99753",
                        "datePublished": "2022-10-20T09:39:52+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Advert",
                        "url": "https://procontract.due-north.com/Advert?advertId=ccd8d4ad-8f4f-ed11-811a-005056b64545"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-123209",
                    "name": "London Borough of Hounslow",
                    "identifier": {
                        "legalName": "London Borough of Hounslow"
                    },
                    "address": {
                        "streetAddress": "Hounslow House, Bath Road, Hounslow",
                        "locality": "London",
                        "postalCode": "TW3 3EB",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "email": "tracey.williams@hounslow.gov.uk"
                    },
                    "details": {
                        "url": "http://www.hounslow.gov.uk/"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-123209",
                "name": "London Borough of Hounslow"
            }
        },
        {
            "ocid": "ocds-b5fd17-2558e931-bb6b-4919-8dbb-80d6e2cfc865",
            "id": "3192eb94-59fd-4866-b34d-6a479a6ca21d-582353",
            "language": "en",
            "date": "2022-10-20T09:39:00+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-1132500D0O000000rwimUAA",
                "title": "Recovery Houses L&SC",
                "description": "Lancashire & South Cumbria NHS Foundation Trust (LSCFT, the @Authority@) is issuing this invitation to tender (@ITT@) in connection with the competitive procurement of RECOVERY HOUSE services\\n\\nTender information and documents can be located at https://health-family.force.com/s/Welcome",
                "datePublished": "2022-10-20T09:39:00+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "85000000",
                    "description": "Health and social work services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "PR5 6AW"
                            },
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 2800000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-18T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-04-01T00:00:00+01:00",
                    "endDate": "2026-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/3192eb94-59fd-4866-b34d-6a479a6ca21d",
                        "datePublished": "2022-10-20T09:39:00+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-219971",
                    "name": "Lancashire and South Cumbria NHS Foundation Trust",
                    "identifier": {
                        "legalName": "Lancashire and South Cumbria NHS Foundation Trust"
                    },
                    "address": {
                        "streetAddress": "Sceptre Point Sceptre Way Walton Summit",
                        "locality": "Preston",
                        "postalCode": "PR5 6AW",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Stephen McGarry",
                        "email": "procurement@lscft.nhs.uk",
                        "telephone": "01772773850"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-219971",
                "name": "Lancashire and South Cumbria NHS Foundation Trust"
            }
        },
        {
            "ocid": "ocds-b5fd17-04fcfbd0-8947-40fc-9c9c-e33457412b63",
            "id": "bacbe7ea-97e1-4afe-8cd1-06cdf5007886-582349",
            "language": "en",
            "date": "2022-10-20T09:38:34+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for projects 10043338, 10042854",
                "title": "ITT for projects 10043338, 10042854",
                "description": "ITT for projects 10043338, 10042854",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 2700,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-27T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-01-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-06841377",
                    "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                    "identifier": {
                        "legalName": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                        "scheme": "GB-COH",
                        "id": "06841377"
                    },
                    "address": {
                        "streetAddress": "Castle Hill\\nNewport\\nIsle of Wight\\nPO30 1XZ"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-04fcfbd0-8947-40fc-9c9c-e33457412b63-1",
                    "status": "active",
                    "date": "2022-10-03T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:38:34+01:00",
                    "value": {
                        "amount": 2700,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-06841377",
                            "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-01-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/bacbe7ea-97e1-4afe-8cd1-06cdf5007886",
                            "datePublished": "2022-10-20T09:38:34+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-c2ae3681-9d55-4dee-a1c4-adfb3217c049",
            "id": "440f27d3-3dc8-44fb-8d34-f89c5f2e4760-582352",
            "language": "en",
            "date": "2022-10-20T09:38:16+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "tender_319755/1116009",
                "title": "Africa Hub - Nairobi - Provision of Broadband Internet Services",
                "description": "Broadband and Internet Services for the British High Commission and compounds in Nairobi, Kenya",
                "datePublished": "2022-10-20T09:38:16+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "72410000",
                    "description": "Provider services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 80000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-09T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-01-01T00:00:00Z",
                    "endDate": "2025-12-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/440f27d3-3dc8-44fb-8d34-f89c5f2e4760",
                        "datePublished": "2022-10-20T09:38:16+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-151067",
                    "name": "Foreign Commonwealth and Development Office",
                    "identifier": {
                        "legalName": "Foreign Commonwealth and Development Office"
                    },
                    "address": {
                        "streetAddress": "King Charles Street",
                        "locality": "London",
                        "postalCode": "SW1A 2AH",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "wilhelm.holtmann@fcdo.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-151067",
                "name": "Foreign Commonwealth and Development Office"
            }
        },
        {
            "ocid": "ocds-b5fd17-012064c6-36aa-4e1e-9a54-65837156535d",
            "id": "0366f0a2-6611-4204-a2de-2901f6c6aad6-582347",
            "language": "en",
            "date": "2022-10-20T09:38:11+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10046861",
                "title": "ITT for project 10046861",
                "description": "ITT for project 10046861",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1350,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-26T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-04-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-09438364",
                    "name": "OAKHEART SERVICES LTD.",
                    "identifier": {
                        "legalName": "OAKHEART SERVICES LTD.",
                        "scheme": "GB-COH",
                        "id": "09438364"
                    },
                    "address": {
                        "streetAddress": "Ancaster Avenue\\nGrimsby\\nNE Lincs\\nDN33 3LH"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-012064c6-36aa-4e1e-9a54-65837156535d-1",
                    "status": "active",
                    "date": "2022-10-03T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:38:11+01:00",
                    "value": {
                        "amount": 1350,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-09438364",
                            "name": "OAKHEART SERVICES LTD."
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-04-30T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/0366f0a2-6611-4204-a2de-2901f6c6aad6",
                            "datePublished": "2022-10-20T09:38:11+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-11e623d7-8775-43dd-b7eb-c192eee95179",
            "id": "dbd44b7a-8af7-40d6-86bd-664031f94a04-582350",
            "language": "en",
            "date": "2022-10-20T09:37:36+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-1099500D0O000000rwimUAA",
                "title": "Soft Facilities Management Services",
                "description": "Soft Facilities Management Services\\n\\nFull details of the tender can be found at \\nhttps://health-family.force.com/s/Welcome",
                "datePublished": "2022-10-20T09:37:36+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79993100",
                    "description": "Facilities management services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "PR5 6AW"
                            },
                            {
                                "region": "North West",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-04T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-02-01T00:00:00Z",
                    "endDate": "2026-01-31T23:59:59Z"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/dbd44b7a-8af7-40d6-86bd-664031f94a04",
                        "datePublished": "2022-10-20T09:37:36+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-224745",
                    "name": "Lancashire & South Cumbria Foundation Trust",
                    "identifier": {
                        "legalName": "Lancashire & South Cumbria Foundation Trust"
                    },
                    "address": {
                        "streetAddress": "Sceptre Way",
                        "locality": "Preston",
                        "postalCode": "PR5 6AW",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Tony Ashcroft",
                        "email": "tony.ashcroft@lscft.nhs.uk",
                        "telephone": "07580168704"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-224745",
                "name": "Lancashire & South Cumbria Foundation Trust"
            }
        },
        {
            "ocid": "ocds-b5fd17-1df3cc80-7b5c-4992-bd1e-2b25b00af90b",
            "id": "be7e7e74-f6bb-421c-bcc3-ffc986f452d8-582346",
            "language": "en",
            "date": "2022-10-20T09:35:35+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10042803",
                "title": "ITT for project 10042803",
                "description": "ITT for project 10042803",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1350,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-01-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-06841377",
                    "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                    "identifier": {
                        "legalName": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                        "scheme": "GB-COH",
                        "id": "06841377"
                    },
                    "address": {
                        "streetAddress": "Castle Hill\\nNewport\\nIsle of Wight\\nPO30 1XZ"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-1df3cc80-7b5c-4992-bd1e-2b25b00af90b-1",
                    "status": "active",
                    "date": "2022-10-03T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:35:35+01:00",
                    "value": {
                        "amount": 1350,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-06841377",
                            "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-01-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/be7e7e74-f6bb-421c-bcc3-ffc986f452d8",
                            "datePublished": "2022-10-20T09:35:35+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-72bd1ec6-c130-4542-bc20-532c5e97ae00",
            "id": "2bd165e2-aff6-4ea9-9236-d8948bb9dca4-582345",
            "language": "en",
            "date": "2022-10-20T09:33:38+01:00",
            "tag": [
                "awardUpdate"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CCTS22A82.",
                "title": "Provision of IGOTM Support",
                "description": "HM Treasury requires specialist supplier to provide management and support of the authority's Inter-Government Tax Benefit Model (IGOTM).  This tool is business-critical and it is therefore essential that a suitable support model is in place to avoid disr",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "48000000",
                    "description": "Software package and information systems"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Guernsey"
                            },
                            {
                                "countryName": "Jersey"
                            },
                            {
                                "countryName": "Anguilla"
                            },
                            {
                                "countryName": "Bermuda"
                            },
                            {
                                "countryName": "British Antarctic Territory"
                            },
                            {
                                "countryName": "British Indian Ocean Territory"
                            },
                            {
                                "countryName": "British Virgin Islands"
                            },
                            {
                                "countryName": "Cayman Islands"
                            },
                            {
                                "countryName": "Falkland Islands"
                            },
                            {
                                "countryName": "Gibraltar"
                            },
                            {
                                "countryName": "Montserrat"
                            },
                            {
                                "countryName": "Pitcairn, Henderson, Ducie and Oeno Islands"
                            },
                            {
                                "countryName": "Saint Helena, Ascension and Tristan da Cunha"
                            },
                            {
                                "countryName": "South Georgia and South Sandwich Islands"
                            },
                            {
                                "countryName": "Turks and Caicos Islands"
                            },
                            {
                                "countryName": "Albania"
                            },
                            {
                                "countryName": "Austria"
                            },
                            {
                                "countryName": "Belgium"
                            },
                            {
                                "countryName": "Bulgaria"
                            },
                            {
                                "countryName": "Croatia"
                            },
                            {
                                "countryName": "Cyprus"
                            },
                            {
                                "countryName": "Czechia"
                            },
                            {
                                "countryName": "Denmark"
                            },
                            {
                                "countryName": "Estonia"
                            },
                            {
                                "countryName": "Finland"
                            },
                            {
                                "countryName": "France"
                            },
                            {
                                "countryName": "Germany"
                            },
                            {
                                "countryName": "Greece"
                            },
                            {
                                "countryName": "Hungary"
                            },
                            {
                                "countryName": "Iceland"
                            },
                            {
                                "countryName": "Ireland"
                            },
                            {
                                "countryName": "Italy"
                            },
                            {
                                "countryName": "Latvia"
                            },
                            {
                                "countryName": "Liechtenstein"
                            },
                            {
                                "countryName": "Lithuania"
                            },
                            {
                                "countryName": "Luxembourg"
                            },
                            {
                                "countryName": "Malta"
                            },
                            {
                                "countryName": "Montenegro"
                            },
                            {
                                "countryName": "Netherlands"
                            },
                            {
                                "countryName": "North Macedonia"
                            },
                            {
                                "countryName": "Norway"
                            },
                            {
                                "countryName": "Poland"
                            },
                            {
                                "countryName": "Portugal"
                            },
                            {
                                "countryName": "Romania"
                            },
                            {
                                "countryName": "Serbia"
                            },
                            {
                                "countryName": "Slovakia"
                            },
                            {
                                "countryName": "Slovenia"
                            },
                            {
                                "countryName": "Spain"
                            },
                            {
                                "countryName": "Sweden"
                            },
                            {
                                "countryName": "Switzerland"
                            },
                            {
                                "countryName": "Turkey"
                            },
                            {
                                "countryName": "Afghanistan"
                            },
                            {
                                "countryName": "Algeria"
                            },
                            {
                                "countryName": "American Samoa"
                            },
                            {
                                "countryName": "Andorra"
                            },
                            {
                                "countryName": "Angola"
                            },
                            {
                                "countryName": "Antarctica"
                            },
                            {
                                "countryName": "Antigua and Barbuda"
                            },
                            {
                                "countryName": "Argentina"
                            },
                            {
                                "countryName": "Armenia"
                            },
                            {
                                "countryName": "Aruba"
                            },
                            {
                                "countryName": "Australia"
                            },
                            {
                                "countryName": "Azerbaijan"
                            },
                            {
                                "countryName": "Bahrain"
                            },
                            {
                                "countryName": "Bangladesh"
                            },
                            {
                                "countryName": "Barbados"
                            },
                            {
                                "countryName": "Belarus"
                            },
                            {
                                "countryName": "Belize"
                            },
                            {
                                "countryName": "Benin"
                            },
                            {
                                "countryName": "Bhutan"
                            },
                            {
                                "countryName": "Bolivia"
                            },
                            {
                                "countryName": "Bonaire, Sint Eustatius and Saba"
                            },
                            {
                                "countryName": "Bosnia and Herzegovina"
                            },
                            {
                                "countryName": "Botswana"
                            },
                            {
                                "countryName": "Bouvet Island"
                            },
                            {
                                "countryName": "Brazil"
                            },
                            {
                                "countryName": "Brunei"
                            },
                            {
                                "countryName": "Burkina Faso"
                            },
                            {
                                "countryName": "Burundi"
                            },
                            {
                                "countryName": "Cambodia"
                            },
                            {
                                "countryName": "Cameroon"
                            },
                            {
                                "countryName": "Canada"
                            },
                            {
                                "countryName": "Cape Verde"
                            },
                            {
                                "countryName": "Central African Republic"
                            },
                            {
                                "countryName": "Chad"
                            },
                            {
                                "countryName": "Chile"
                            },
                            {
                                "countryName": "China"
                            },
                            {
                                "countryName": "Christmas Island"
                            },
                            {
                                "countryName": "Clipperton"
                            },
                            {
                                "countryName": "Cocos (Keeling) Islands"
                            },
                            {
                                "countryName": "Colombia"
                            },
                            {
                                "countryName": "Comoros"
                            },
                            {
                                "countryName": "Congo"
                            },
                            {
                                "countryName": "Congo (Democratic Republic)"
                            },
                            {
                                "countryName": "Cook Islands"
                            },
                            {
                                "countryName": "Costa Rica"
                            },
                            {
                                "countryName": "Cuba"
                            },
                            {
                                "countryName": "Curaçao"
                            },
                            {
                                "countryName": "Djibouti"
                            },
                            {
                                "countryName": "Dominica"
                            },
                            {
                                "countryName": "Dominican Republic"
                            },
                            {
                                "countryName": "East Timor"
                            },
                            {
                                "countryName": "Ecuador"
                            },
                            {
                                "countryName": "Egypt"
                            },
                            {
                                "countryName": "El Salvador"
                            },
                            {
                                "countryName": "Equatorial Guinea"
                            },
                            {
                                "countryName": "Eritrea"
                            },
                            {
                                "countryName": "Eswatini"
                            },
                            {
                                "countryName": "Ethiopia"
                            },
                            {
                                "countryName": "Faroe Islands"
                            },
                            {
                                "countryName": "Fiji"
                            },
                            {
                                "countryName": "French Polynesia"
                            },
                            {
                                "countryName": "French Southern Territories"
                            },
                            {
                                "countryName": "Gabon"
                            },
                            {
                                "countryName": "Georgia"
                            },
                            {
                                "countryName": "Ghana"
                            },
                            {
                                "countryName": "Greenland"
                            },
                            {
                                "countryName": "Grenada"
                            },
                            {
                                "countryName": "Guam"
                            },
                            {
                                "countryName": "Guatemala"
                            },
                            {
                                "countryName": "Guinea"
                            },
                            {
                                "countryName": "Guinea-Bissau"
                            },
                            {
                                "countryName": "Guyana"
                            },
                            {
                                "countryName": "Haiti"
                            },
                            {
                                "countryName": "Heard Island and McDonald Islands"
                            },
                            {
                                "countryName": "Honduras"
                            },
                            {
                                "countryName": "Hong Kong"
                            },
                            {
                                "countryName": "India"
                            },
                            {
                                "countryName": "Indonesia"
                            },
                            {
                                "countryName": "Iran"
                            },
                            {
                                "countryName": "Iraq"
                            },
                            {
                                "countryName": "Israel"
                            },
                            {
                                "countryName": "Ivory Coast"
                            },
                            {
                                "countryName": "Jamaica"
                            },
                            {
                                "countryName": "Japan"
                            },
                            {
                                "countryName": "Jordan"
                            },
                            {
                                "countryName": "Kazakhstan"
                            },
                            {
                                "countryName": "Kenya"
                            },
                            {
                                "countryName": "Kiribati"
                            },
                            {
                                "countryName": "Kosovo"
                            },
                            {
                                "countryName": "Kuwait"
                            },
                            {
                                "countryName": "Kyrgyzstan"
                            },
                            {
                                "countryName": "Laos"
                            },
                            {
                                "countryName": "Lebanon"
                            },
                            {
                                "countryName": "Lesotho"
                            },
                            {
                                "countryName": "Liberia"
                            },
                            {
                                "countryName": "Libya"
                            },
                            {
                                "countryName": "Macao"
                            },
                            {
                                "countryName": "Madagascar"
                            },
                            {
                                "countryName": "Malawi"
                            },
                            {
                                "countryName": "Malaysia"
                            },
                            {
                                "countryName": "Maldives"
                            },
                            {
                                "countryName": "Mali"
                            },
                            {
                                "countryName": "Marshall Islands"
                            },
                            {
                                "countryName": "Mauritania"
                            },
                            {
                                "countryName": "Mauritius"
                            },
                            {
                                "countryName": "Mexico"
                            },
                            {
                                "countryName": "Micronesia"
                            },
                            {
                                "countryName": "Moldova"
                            },
                            {
                                "countryName": "Monaco"
                            },
                            {
                                "countryName": "Mongolia"
                            },
                            {
                                "countryName": "Morocco"
                            },
                            {
                                "countryName": "Mozambique"
                            },
                            {
                                "countryName": "Myanmar (Burma)"
                            },
                            {
                                "countryName": "Namibia"
                            },
                            {
                                "countryName": "Nauru"
                            },
                            {
                                "countryName": "Nepal"
                            },
                            {
                                "countryName": "New Caledonia"
                            },
                            {
                                "countryName": "New Zealand"
                            },
                            {
                                "countryName": "Nicaragua"
                            },
                            {
                                "countryName": "Niger"
                            },
                            {
                                "countryName": "Nigeria"
                            },
                            {
                                "countryName": "Niue"
                            },
                            {
                                "countryName": "Norfolk Island"
                            },
                            {
                                "countryName": "North Korea"
                            },
                            {
                                "countryName": "Northern Mariana Islands"
                            },
                            {
                                "countryName": "Occupied Palestinian Territories"
                            },
                            {
                                "countryName": "Oman"
                            },
                            {
                                "countryName": "Pakistan"
                            },
                            {
                                "countryName": "Palau"
                            },
                            {
                                "countryName": "Panama"
                            },
                            {
                                "countryName": "Papua New Guinea"
                            },
                            {
                                "countryName": "Paraguay"
                            },
                            {
                                "countryName": "Peru"
                            },
                            {
                                "countryName": "Philippines"
                            },
                            {
                                "countryName": "Puerto Rico"
                            },
                            {
                                "countryName": "Qatar"
                            },
                            {
                                "countryName": "Russia"
                            },
                            {
                                "countryName": "Rwanda"
                            },
                            {
                                "countryName": "Saint Barthélemy"
                            },
                            {
                                "countryName": "Saint Pierre and Miquelon"
                            },
                            {
                                "countryName": "Samoa"
                            },
                            {
                                "countryName": "San Marino"
                            },
                            {
                                "countryName": "Sao Tome and Principe"
                            },
                            {
                                "countryName": "Saudi Arabia"
                            },
                            {
                                "countryName": "Senegal"
                            },
                            {
                                "countryName": "Seychelles"
                            },
                            {
                                "countryName": "Sierra Leone"
                            },
                            {
                                "countryName": "Singapore"
                            },
                            {
                                "countryName": "Sint Maarten (Dutch part)"
                            },
                            {
                                "countryName": "Solomon Islands"
                            },
                            {
                                "countryName": "Somalia"
                            },
                            {
                                "countryName": "South Africa"
                            },
                            {
                                "countryName": "South Korea"
                            },
                            {
                                "countryName": "South Sudan"
                            },
                            {
                                "countryName": "Sri Lanka"
                            },
                            {
                                "countryName": "St Kitts and Nevis"
                            },
                            {
                                "countryName": "St Lucia"
                            },
                            {
                                "countryName": "St Vincent"
                            },
                            {
                                "countryName": "Sudan"
                            },
                            {
                                "countryName": "Suriname"
                            },
                            {
                                "countryName": "Svalbard and Jan Mayen"
                            },
                            {
                                "countryName": "Syria"
                            },
                            {
                                "countryName": "Taiwan"
                            },
                            {
                                "countryName": "Tajikistan"
                            },
                            {
                                "countryName": "Tanzania"
                            },
                            {
                                "countryName": "Thailand"
                            },
                            {
                                "countryName": "The Bahamas"
                            },
                            {
                                "countryName": "The Gambia"
                            },
                            {
                                "countryName": "Togo"
                            },
                            {
                                "countryName": "Tokelau"
                            },
                            {
                                "countryName": "Tonga"
                            },
                            {
                                "countryName": "Trinidad and Tobago"
                            },
                            {
                                "countryName": "Tunisia"
                            },
                            {
                                "countryName": "Turkmenistan"
                            },
                            {
                                "countryName": "Tuvalu"
                            },
                            {
                                "countryName": "Uganda"
                            },
                            {
                                "countryName": "Ukraine"
                            },
                            {
                                "countryName": "United Arab Emirates"
                            },
                            {
                                "countryName": "United States"
                            },
                            {
                                "countryName": "United States Minor Outlying Islands"
                            },
                            {
                                "countryName": "United States Virgin Islands"
                            },
                            {
                                "countryName": "Uruguay"
                            },
                            {
                                "countryName": "Uzbekistan"
                            },
                            {
                                "countryName": "Vanuatu"
                            },
                            {
                                "countryName": "Vatican City"
                            },
                            {
                                "countryName": "Venezuela"
                            },
                            {
                                "countryName": "Vietnam"
                            },
                            {
                                "countryName": "Wallis and Futuna"
                            },
                            {
                                "countryName": "Western Sahara"
                            },
                            {
                                "countryName": "Yemen"
                            },
                            {
                                "countryName": "Zambia"
                            },
                            {
                                "countryName": "Zimbabwe"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 132960,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2022-09-27T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-01T00:00:00+01:00",
                    "endDate": "2024-09-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/6sQD8uds",
                    "name": "Crown Commercial Service",
                    "identifier": {
                        "legalName": "Crown Commercial Service",
                        "scheme": "GB-SRS",
                        "id": "supplierregistration.cabinetoffice.gov.uk/6sQD8uds"
                    },
                    "address": {
                        "streetAddress": "Floor 9, The Capital Building, Old Hall Street",
                        "locality": "Liverpool",
                        "postalCode": "L3 9PP",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Crown Commercial Service on behalf of HM Treasury : HM Treasury",
                        "email": "supplier@crowncommercial.gov.uk",
                        "telephone": "3450103503"
                    },
                    "details": {
                        "url": "https://www.gov.uk/government/organisations/crown-commercial-service"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-43396",
                    "name": "Amadeus Software Limited",
                    "identifier": {
                        "legalName": "Amadeus Software Limited"
                    },
                    "address": {
                        "streetAddress": "Mulberry House, 9 Church Green OX28 4AZ Witney England"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/6sQD8uds",
                "name": "Crown Commercial Service"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-72bd1ec6-c130-4542-bc20-532c5e97ae00-1",
                    "status": "active",
                    "date": "2022-09-27T00:00:00+01:00",
                    "datePublished": "2022-10-10T14:55:48+01:00",
                    "value": {
                        "amount": 132960,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-43396",
                            "name": "Amadeus Software Limited"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-01T00:00:00+01:00",
                        "endDate": "2024-09-30T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/2bd165e2-aff6-4ea9-9236-d8948bb9dca4",
                            "datePublished": "2022-10-10T14:55:48+01:00",
                            "dateModified": "2022-10-20T09:33:38+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "3",
                            "documentType": "awardNotice",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/f40c4349-ec78-4bf3-86d2-3b30ab5eed57",
                            "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                        },
                        {
                            "id": "5",
                            "documentType": "contractNotice",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/89da1182-b0a3-443e-ad46-587c2c99d532",
                            "format": "application/pdf"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-159929ab-9e41-4978-9aa3-d61d79d973c5",
            "id": "aea0f09d-20b9-429e-a9bb-9ee95370a668-582342",
            "language": "en",
            "date": "2022-10-20T09:32:07+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10043171",
                "title": "ITT for project 10043171",
                "description": "ITT for project 10043171",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1350,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-27T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-01-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-06841377",
                    "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                    "identifier": {
                        "legalName": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                        "scheme": "GB-COH",
                        "id": "06841377"
                    },
                    "address": {
                        "streetAddress": "Castle Hill\\nNewport\\nIsle of Wight\\nPO30 1XZ"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-159929ab-9e41-4978-9aa3-d61d79d973c5-1",
                    "status": "active",
                    "date": "2022-10-04T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:32:07+01:00",
                    "value": {
                        "amount": 1350,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-06841377",
                            "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-01-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/aea0f09d-20b9-429e-a9bb-9ee95370a668",
                            "datePublished": "2022-10-20T09:32:07+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-b97cdcbd-3d0b-49d1-9152-040172d85234",
            "id": "4939754e-e698-447d-bf57-32107e273c78-582343",
            "language": "en",
            "date": "2022-10-20T09:30:40+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-0275800D58000000L5A4EAK1",
                "title": "ICAT Phase 3 Technology Solution",
                "description": "Support to Home Office (Asylum & Protection Directorate) to provide extended capability to the ICAT tool.",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "72212420",
                    "description": "Facilities management software development services and software development services suite"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "SE1 2AF"
                            },
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1814950,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2022-06-12T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-06-13T00:00:00+01:00",
                    "endDate": "2023-06-12T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-CFS-224744",
                    "name": "Home Office",
                    "identifier": {
                        "legalName": "Home Office"
                    },
                    "address": {
                        "streetAddress": "Sandford House, 41 Homer Road",
                        "locality": "Solihull",
                        "postalCode": "B91 3QJ",
                        "countryName": "GB"
                    },
                    "contactPoint": {
                        "name": "Bethany Baker",
                        "email": "bethany.baker5@homeoffice.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-144822",
                    "name": "ERNST AND YOUNG LLP",
                    "identifier": {
                        "legalName": "ERNST AND YOUNG LLP"
                    },
                    "address": {
                        "streetAddress": "1 More London Place, London, SE1 2AF SE1 2AF"
                    },
                    "details": {
                        "scale": "large"
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-224744",
                "name": "Home Office"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-b97cdcbd-3d0b-49d1-9152-040172d85234-1",
                    "status": "active",
                    "date": "2022-06-13T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:30:40+01:00",
                    "value": {
                        "amount": 1814950,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-144822",
                            "name": "ERNST AND YOUNG LLP"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-06-13T00:00:00+01:00",
                        "endDate": "2023-06-12T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/4939754e-e698-447d-bf57-32107e273c78",
                            "datePublished": "2022-10-20T09:30:40+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "description": "G-Cloud-12-EY_Technology_ICAT_Phase_3 HO signed_REDACTED",
                            "url": "https://atamis-8888.cloudforce.com/sfc/p/58000000L5A4/a/4I000001RACG/MZMrbxuuhXiqfmtGImX1jb9K5SQcmr..pWXTdHNk_m4"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-3ec6abdd-1a5a-49db-a784-33d72b40514d",
            "id": "82e15a82-6699-4ecc-a6b6-f5fcabe3867b-582338",
            "language": "en",
            "date": "2022-10-20T09:30:30+01:00",
            "tag": [
                "awardUpdate"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10045537, 10045430, 10044913, 10044671, 10044543, 10044053, 10043549, 10042830",
                "title": "ITT for project 10045537, 10045430, 10044913, 10044671, 10044543, 10044053, 10043549, 10042830",
                "description": "ITT for project 10045537, 10045430, 10044913, 10044671, 10044543, 10044053, 10043549, 10042830",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 10800,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-04-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-09438364",
                    "name": "OAKHEART SERVICES LTD.",
                    "identifier": {
                        "legalName": "OAKHEART SERVICES LTD.",
                        "scheme": "GB-COH",
                        "id": "09438364"
                    },
                    "address": {
                        "streetAddress": "Ancaster Avenue\\nGrimsby\\nNE Lincs\\nDN33 3LH"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-3ec6abdd-1a5a-49db-a784-33d72b40514d-1",
                    "status": "active",
                    "date": "2022-10-03T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:24:17+01:00",
                    "value": {
                        "amount": 10800,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-09438364",
                            "name": "OAKHEART SERVICES LTD."
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-04-30T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/82e15a82-6699-4ecc-a6b6-f5fcabe3867b",
                            "datePublished": "2022-10-20T09:24:17+01:00",
                            "dateModified": "2022-10-20T09:30:30+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-f221dd3c-6855-424e-8e08-7b3c0a011c03",
            "id": "5ff46773-9399-4151-b5df-2fec8f11215c-582332",
            "language": "en",
            "date": "2022-10-20T09:30:30+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "TECS Lot 1 DA Oct22 - South Warwickshire University NHS Foundation Trust",
                "title": "TECS Lot 1 DA Oct22 - South Warwickshire University NHS Foundation Trust-awarded",
                "description": "This contract award notice is to notify the market that South Warwickshire University NHS Foundation Trust based in Warwickshire, UK have appointed Legrand Electric Ltd as their Technology Enabled Care Services provider for a period of 1 year.  \\nThis appointment has been made under the Northern Housing Consortium's Technology Enabled Care Services framework. (Contract Award Notice 2019/S 236-579313)",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "50421000",
                    "description": "Repair and maintenance services of medical equipment"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "CV34 5BW"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 15785.06,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2022-09-14T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-11T00:00:00+01:00",
                    "endDate": "2023-10-10T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "goods"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/rZMs3g9n",
                    "name": "NORTHERN HOUSING CONSORTIUM LIMITED",
                    "identifier": {
                        "legalName": "NORTHERN HOUSING CONSORTIUM LIMITED",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/rZMs3g9n"
                    },
                    "address": {
                        "streetAddress": "Hope Street Xchange, 1-3 Hind Street",
                        "locality": "Sunderland",
                        "postalCode": "SR1 3QD",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Nicola Benson",
                        "email": "nicola.benson@consortiumprocurement.org.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-115834",
                    "name": "Legrand Electric Limited",
                    "identifier": {
                        "legalName": "Legrand Electric Limited",
                        "scheme": "GB-COH",
                        "id": "115834"
                    },
                    "address": {
                        "streetAddress": "Blyth Workspace\\nCommissioners Quay\\nQuay Road\\nBlyth\\nNE24 3AG"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/rZMs3g9n",
                "name": "NORTHERN HOUSING CONSORTIUM LIMITED"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-f221dd3c-6855-424e-8e08-7b3c0a011c03-1",
                    "status": "active",
                    "date": "2022-09-14T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:30:30+01:00",
                    "value": {
                        "amount": 15785.06,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-115834",
                            "name": "Legrand Electric Limited"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-11T00:00:00+01:00",
                        "endDate": "2023-10-10T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/5ff46773-9399-4151-b5df-2fec8f11215c",
                            "datePublished": "2022-10-20T09:30:30+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-94ee560f-cde5-46f3-8534-b532057c5365",
            "id": "2f63dd0b-77c1-4484-82b2-6bfe6bcc34e0-582341",
            "language": "en",
            "date": "2022-10-20T09:30:03+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BIP720120707",
                "title": "RMCB 042 - In-Service Inspection and Testing of Electrical Equipment",
                "description": "The contract shall comprise the In-Service Inspection and Testing of Portable Electrical Equipment at various Shropshire Council maintained properties along with those of other external clients",
                "datePublished": "2022-10-20T09:30:03+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "71314100",
                    "description": "Electrical services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 168000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-22T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-04-01T00:00:00+01:00",
                    "endDate": "2026-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/2f63dd0b-77c1-4484-82b2-6bfe6bcc34e0",
                        "datePublished": "2022-10-20T09:30:03+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "documentType": "tenderNotice",
                        "description": "Please follow this link to view the notice.",
                        "url": "https://www.delta-esourcing.com/tenders/UK-UK-Shrewsbury:-Electrical-services./CG99JRP57H"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-1740",
                    "name": "Shropshire Council",
                    "identifier": {
                        "legalName": "Shropshire Council"
                    },
                    "address": {
                        "streetAddress": "Shirehall, Abbey Foregate",
                        "locality": "Shrewsbury",
                        "postalCode": "SY2 6ND",
                        "countryName": "UK"
                    },
                    "contactPoint": {
                        "name": "Procurement",
                        "email": "procurement@shropshire.gov.uk",
                        "telephone": "+441743252992"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-1740",
                "name": "Shropshire Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-72bd1ec6-c130-4542-bc20-532c5e97ae00",
            "id": "2bd165e2-aff6-4ea9-9236-d8948bb9dca4-582339",
            "language": "en",
            "date": "2022-10-20T09:29:31+01:00",
            "tag": [
                "awardUpdate"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CCTS22A82.",
                "title": "Provision of IGOTM Support",
                "description": "HM Treasury requires specialist supplier to provide management and support of the authority's Inter-Government Tax Benefit Model (IGOTM).  This tool is business-critical and it is therefore essential that a suitable support model is in place to avoid disr",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "48000000",
                    "description": "Software package and information systems"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Guernsey"
                            },
                            {
                                "countryName": "Jersey"
                            },
                            {
                                "countryName": "Anguilla"
                            },
                            {
                                "countryName": "Bermuda"
                            },
                            {
                                "countryName": "British Antarctic Territory"
                            },
                            {
                                "countryName": "British Indian Ocean Territory"
                            },
                            {
                                "countryName": "British Virgin Islands"
                            },
                            {
                                "countryName": "Cayman Islands"
                            },
                            {
                                "countryName": "Falkland Islands"
                            },
                            {
                                "countryName": "Gibraltar"
                            },
                            {
                                "countryName": "Montserrat"
                            },
                            {
                                "countryName": "Pitcairn, Henderson, Ducie and Oeno Islands"
                            },
                            {
                                "countryName": "Saint Helena, Ascension and Tristan da Cunha"
                            },
                            {
                                "countryName": "South Georgia and South Sandwich Islands"
                            },
                            {
                                "countryName": "Turks and Caicos Islands"
                            },
                            {
                                "countryName": "Albania"
                            },
                            {
                                "countryName": "Austria"
                            },
                            {
                                "countryName": "Belgium"
                            },
                            {
                                "countryName": "Bulgaria"
                            },
                            {
                                "countryName": "Croatia"
                            },
                            {
                                "countryName": "Cyprus"
                            },
                            {
                                "countryName": "Czechia"
                            },
                            {
                                "countryName": "Denmark"
                            },
                            {
                                "countryName": "Estonia"
                            },
                            {
                                "countryName": "Finland"
                            },
                            {
                                "countryName": "France"
                            },
                            {
                                "countryName": "Germany"
                            },
                            {
                                "countryName": "Greece"
                            },
                            {
                                "countryName": "Hungary"
                            },
                            {
                                "countryName": "Iceland"
                            },
                            {
                                "countryName": "Ireland"
                            },
                            {
                                "countryName": "Italy"
                            },
                            {
                                "countryName": "Latvia"
                            },
                            {
                                "countryName": "Liechtenstein"
                            },
                            {
                                "countryName": "Lithuania"
                            },
                            {
                                "countryName": "Luxembourg"
                            },
                            {
                                "countryName": "Malta"
                            },
                            {
                                "countryName": "Montenegro"
                            },
                            {
                                "countryName": "Netherlands"
                            },
                            {
                                "countryName": "North Macedonia"
                            },
                            {
                                "countryName": "Norway"
                            },
                            {
                                "countryName": "Poland"
                            },
                            {
                                "countryName": "Portugal"
                            },
                            {
                                "countryName": "Romania"
                            },
                            {
                                "countryName": "Serbia"
                            },
                            {
                                "countryName": "Slovakia"
                            },
                            {
                                "countryName": "Slovenia"
                            },
                            {
                                "countryName": "Spain"
                            },
                            {
                                "countryName": "Sweden"
                            },
                            {
                                "countryName": "Switzerland"
                            },
                            {
                                "countryName": "Turkey"
                            },
                            {
                                "countryName": "Afghanistan"
                            },
                            {
                                "countryName": "Algeria"
                            },
                            {
                                "countryName": "American Samoa"
                            },
                            {
                                "countryName": "Andorra"
                            },
                            {
                                "countryName": "Angola"
                            },
                            {
                                "countryName": "Antarctica"
                            },
                            {
                                "countryName": "Antigua and Barbuda"
                            },
                            {
                                "countryName": "Argentina"
                            },
                            {
                                "countryName": "Armenia"
                            },
                            {
                                "countryName": "Aruba"
                            },
                            {
                                "countryName": "Australia"
                            },
                            {
                                "countryName": "Azerbaijan"
                            },
                            {
                                "countryName": "Bahrain"
                            },
                            {
                                "countryName": "Bangladesh"
                            },
                            {
                                "countryName": "Barbados"
                            },
                            {
                                "countryName": "Belarus"
                            },
                            {
                                "countryName": "Belize"
                            },
                            {
                                "countryName": "Benin"
                            },
                            {
                                "countryName": "Bhutan"
                            },
                            {
                                "countryName": "Bolivia"
                            },
                            {
                                "countryName": "Bonaire, Sint Eustatius and Saba"
                            },
                            {
                                "countryName": "Bosnia and Herzegovina"
                            },
                            {
                                "countryName": "Botswana"
                            },
                            {
                                "countryName": "Bouvet Island"
                            },
                            {
                                "countryName": "Brazil"
                            },
                            {
                                "countryName": "Brunei"
                            },
                            {
                                "countryName": "Burkina Faso"
                            },
                            {
                                "countryName": "Burundi"
                            },
                            {
                                "countryName": "Cambodia"
                            },
                            {
                                "countryName": "Cameroon"
                            },
                            {
                                "countryName": "Canada"
                            },
                            {
                                "countryName": "Cape Verde"
                            },
                            {
                                "countryName": "Central African Republic"
                            },
                            {
                                "countryName": "Chad"
                            },
                            {
                                "countryName": "Chile"
                            },
                            {
                                "countryName": "China"
                            },
                            {
                                "countryName": "Christmas Island"
                            },
                            {
                                "countryName": "Clipperton"
                            },
                            {
                                "countryName": "Cocos (Keeling) Islands"
                            },
                            {
                                "countryName": "Colombia"
                            },
                            {
                                "countryName": "Comoros"
                            },
                            {
                                "countryName": "Congo"
                            },
                            {
                                "countryName": "Congo (Democratic Republic)"
                            },
                            {
                                "countryName": "Cook Islands"
                            },
                            {
                                "countryName": "Costa Rica"
                            },
                            {
                                "countryName": "Cuba"
                            },
                            {
                                "countryName": "Curaçao"
                            },
                            {
                                "countryName": "Djibouti"
                            },
                            {
                                "countryName": "Dominica"
                            },
                            {
                                "countryName": "Dominican Republic"
                            },
                            {
                                "countryName": "East Timor"
                            },
                            {
                                "countryName": "Ecuador"
                            },
                            {
                                "countryName": "Egypt"
                            },
                            {
                                "countryName": "El Salvador"
                            },
                            {
                                "countryName": "Equatorial Guinea"
                            },
                            {
                                "countryName": "Eritrea"
                            },
                            {
                                "countryName": "Eswatini"
                            },
                            {
                                "countryName": "Ethiopia"
                            },
                            {
                                "countryName": "Faroe Islands"
                            },
                            {
                                "countryName": "Fiji"
                            },
                            {
                                "countryName": "French Polynesia"
                            },
                            {
                                "countryName": "French Southern Territories"
                            },
                            {
                                "countryName": "Gabon"
                            },
                            {
                                "countryName": "Georgia"
                            },
                            {
                                "countryName": "Ghana"
                            },
                            {
                                "countryName": "Greenland"
                            },
                            {
                                "countryName": "Grenada"
                            },
                            {
                                "countryName": "Guam"
                            },
                            {
                                "countryName": "Guatemala"
                            },
                            {
                                "countryName": "Guinea"
                            },
                            {
                                "countryName": "Guinea-Bissau"
                            },
                            {
                                "countryName": "Guyana"
                            },
                            {
                                "countryName": "Haiti"
                            },
                            {
                                "countryName": "Heard Island and McDonald Islands"
                            },
                            {
                                "countryName": "Honduras"
                            },
                            {
                                "countryName": "Hong Kong"
                            },
                            {
                                "countryName": "India"
                            },
                            {
                                "countryName": "Indonesia"
                            },
                            {
                                "countryName": "Iran"
                            },
                            {
                                "countryName": "Iraq"
                            },
                            {
                                "countryName": "Israel"
                            },
                            {
                                "countryName": "Ivory Coast"
                            },
                            {
                                "countryName": "Jamaica"
                            },
                            {
                                "countryName": "Japan"
                            },
                            {
                                "countryName": "Jordan"
                            },
                            {
                                "countryName": "Kazakhstan"
                            },
                            {
                                "countryName": "Kenya"
                            },
                            {
                                "countryName": "Kiribati"
                            },
                            {
                                "countryName": "Kosovo"
                            },
                            {
                                "countryName": "Kuwait"
                            },
                            {
                                "countryName": "Kyrgyzstan"
                            },
                            {
                                "countryName": "Laos"
                            },
                            {
                                "countryName": "Lebanon"
                            },
                            {
                                "countryName": "Lesotho"
                            },
                            {
                                "countryName": "Liberia"
                            },
                            {
                                "countryName": "Libya"
                            },
                            {
                                "countryName": "Macao"
                            },
                            {
                                "countryName": "Madagascar"
                            },
                            {
                                "countryName": "Malawi"
                            },
                            {
                                "countryName": "Malaysia"
                            },
                            {
                                "countryName": "Maldives"
                            },
                            {
                                "countryName": "Mali"
                            },
                            {
                                "countryName": "Marshall Islands"
                            },
                            {
                                "countryName": "Mauritania"
                            },
                            {
                                "countryName": "Mauritius"
                            },
                            {
                                "countryName": "Mexico"
                            },
                            {
                                "countryName": "Micronesia"
                            },
                            {
                                "countryName": "Moldova"
                            },
                            {
                                "countryName": "Monaco"
                            },
                            {
                                "countryName": "Mongolia"
                            },
                            {
                                "countryName": "Morocco"
                            },
                            {
                                "countryName": "Mozambique"
                            },
                            {
                                "countryName": "Myanmar (Burma)"
                            },
                            {
                                "countryName": "Namibia"
                            },
                            {
                                "countryName": "Nauru"
                            },
                            {
                                "countryName": "Nepal"
                            },
                            {
                                "countryName": "New Caledonia"
                            },
                            {
                                "countryName": "New Zealand"
                            },
                            {
                                "countryName": "Nicaragua"
                            },
                            {
                                "countryName": "Niger"
                            },
                            {
                                "countryName": "Nigeria"
                            },
                            {
                                "countryName": "Niue"
                            },
                            {
                                "countryName": "Norfolk Island"
                            },
                            {
                                "countryName": "North Korea"
                            },
                            {
                                "countryName": "Northern Mariana Islands"
                            },
                            {
                                "countryName": "Occupied Palestinian Territories"
                            },
                            {
                                "countryName": "Oman"
                            },
                            {
                                "countryName": "Pakistan"
                            },
                            {
                                "countryName": "Palau"
                            },
                            {
                                "countryName": "Panama"
                            },
                            {
                                "countryName": "Papua New Guinea"
                            },
                            {
                                "countryName": "Paraguay"
                            },
                            {
                                "countryName": "Peru"
                            },
                            {
                                "countryName": "Philippines"
                            },
                            {
                                "countryName": "Puerto Rico"
                            },
                            {
                                "countryName": "Qatar"
                            },
                            {
                                "countryName": "Russia"
                            },
                            {
                                "countryName": "Rwanda"
                            },
                            {
                                "countryName": "Saint Barthélemy"
                            },
                            {
                                "countryName": "Saint Pierre and Miquelon"
                            },
                            {
                                "countryName": "Samoa"
                            },
                            {
                                "countryName": "San Marino"
                            },
                            {
                                "countryName": "Sao Tome and Principe"
                            },
                            {
                                "countryName": "Saudi Arabia"
                            },
                            {
                                "countryName": "Senegal"
                            },
                            {
                                "countryName": "Seychelles"
                            },
                            {
                                "countryName": "Sierra Leone"
                            },
                            {
                                "countryName": "Singapore"
                            },
                            {
                                "countryName": "Sint Maarten (Dutch part)"
                            },
                            {
                                "countryName": "Solomon Islands"
                            },
                            {
                                "countryName": "Somalia"
                            },
                            {
                                "countryName": "South Africa"
                            },
                            {
                                "countryName": "South Korea"
                            },
                            {
                                "countryName": "South Sudan"
                            },
                            {
                                "countryName": "Sri Lanka"
                            },
                            {
                                "countryName": "St Kitts and Nevis"
                            },
                            {
                                "countryName": "St Lucia"
                            },
                            {
                                "countryName": "St Vincent"
                            },
                            {
                                "countryName": "Sudan"
                            },
                            {
                                "countryName": "Suriname"
                            },
                            {
                                "countryName": "Svalbard and Jan Mayen"
                            },
                            {
                                "countryName": "Syria"
                            },
                            {
                                "countryName": "Taiwan"
                            },
                            {
                                "countryName": "Tajikistan"
                            },
                            {
                                "countryName": "Tanzania"
                            },
                            {
                                "countryName": "Thailand"
                            },
                            {
                                "countryName": "The Bahamas"
                            },
                            {
                                "countryName": "The Gambia"
                            },
                            {
                                "countryName": "Togo"
                            },
                            {
                                "countryName": "Tokelau"
                            },
                            {
                                "countryName": "Tonga"
                            },
                            {
                                "countryName": "Trinidad and Tobago"
                            },
                            {
                                "countryName": "Tunisia"
                            },
                            {
                                "countryName": "Turkmenistan"
                            },
                            {
                                "countryName": "Tuvalu"
                            },
                            {
                                "countryName": "Uganda"
                            },
                            {
                                "countryName": "Ukraine"
                            },
                            {
                                "countryName": "United Arab Emirates"
                            },
                            {
                                "countryName": "United States"
                            },
                            {
                                "countryName": "United States Minor Outlying Islands"
                            },
                            {
                                "countryName": "United States Virgin Islands"
                            },
                            {
                                "countryName": "Uruguay"
                            },
                            {
                                "countryName": "Uzbekistan"
                            },
                            {
                                "countryName": "Vanuatu"
                            },
                            {
                                "countryName": "Vatican City"
                            },
                            {
                                "countryName": "Venezuela"
                            },
                            {
                                "countryName": "Vietnam"
                            },
                            {
                                "countryName": "Wallis and Futuna"
                            },
                            {
                                "countryName": "Western Sahara"
                            },
                            {
                                "countryName": "Yemen"
                            },
                            {
                                "countryName": "Zambia"
                            },
                            {
                                "countryName": "Zimbabwe"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 132960,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2022-09-27T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-01T00:00:00+01:00",
                    "endDate": "2024-09-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/6sQD8uds",
                    "name": "Crown Commercial Service",
                    "identifier": {
                        "legalName": "Crown Commercial Service",
                        "scheme": "GB-SRS",
                        "id": "supplierregistration.cabinetoffice.gov.uk/6sQD8uds"
                    },
                    "address": {
                        "streetAddress": "Floor 9, The Capital Building, Old Hall Street",
                        "locality": "Liverpool",
                        "postalCode": "L3 9PP",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Crown Commercial Service on behalf of HM Treasury : HM Treasury",
                        "email": "supplier@crowncommercial.gov.uk",
                        "telephone": "3450103503"
                    },
                    "details": {
                        "url": "https://www.gov.uk/government/organisations/crown-commercial-service"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-43396",
                    "name": "Amadeus Software Limited",
                    "identifier": {
                        "legalName": "Amadeus Software Limited"
                    },
                    "address": {
                        "streetAddress": "Mulberry House, 9 Church Green OX28 4AZ Witney England"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/6sQD8uds",
                "name": "Crown Commercial Service"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-72bd1ec6-c130-4542-bc20-532c5e97ae00-1",
                    "status": "active",
                    "date": "2022-09-27T00:00:00+01:00",
                    "datePublished": "2022-10-10T14:55:48+01:00",
                    "value": {
                        "amount": 132960,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-43396",
                            "name": "Amadeus Software Limited"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-01T00:00:00+01:00",
                        "endDate": "2024-09-30T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/2bd165e2-aff6-4ea9-9236-d8948bb9dca4",
                            "datePublished": "2022-10-10T14:55:48+01:00",
                            "dateModified": "2022-10-20T09:29:31+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "3",
                            "documentType": "awardNotice",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/f40c4349-ec78-4bf3-86d2-3b30ab5eed57",
                            "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                        },
                        {
                            "id": "4",
                            "documentType": "contractNotice",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/87b62c62-f6c6-4da5-9f90-17c60471c27a",
                            "format": "application/pdf"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-8f10f4b0-5455-4778-875b-2fc6bb7441f4",
            "id": "1746ea47-a8a5-4141-b7ef-85298bfcfaab-582340",
            "language": "en",
            "date": "2022-10-20T09:29:30+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BUCKSH001-DN599097-61314036",
                "title": "Chesham Town Centre Regeneration Strategy",
                "description": "Consultancy support to draw on the existing strategies and policies and to work with stakeholders across the town to establish, for the first time, a single agreed and comprehensive vision and approach to regeneration in Chesham town centre",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "71410000",
                    "description": "Urban planning services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 40000,
                    "currency": "GBP"
                },
                "procurementMethodDetails": "Other - ",
                "tenderPeriod": {
                    "endDate": "2022-03-10T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-03-30T00:00:00+01:00",
                    "endDate": "2023-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-CFS-148375",
                    "name": "Buckinghamshire Council",
                    "identifier": {
                        "legalName": "Buckinghamshire Council"
                    },
                    "address": {
                        "streetAddress": "Walton Street Offices",
                        "locality": "Aylesbury",
                        "postalCode": "HP20 1UA",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Donna Wilkinson",
                        "email": "donna.wilkinson@buckinghamshire.gov.uk",
                        "telephone": "+44 7395605246"
                    },
                    "details": {
                        "url": "https://www.buckinghamshire.gov.uk/"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224743",
                    "name": "BE Group",
                    "identifier": {
                        "legalName": "BE Group"
                    },
                    "address": {
                        "streetAddress": "First Floor, 501 Birchwood One, Dewhurst Road, Birchwood, Warrington, WA3 7GB"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-148375",
                "name": "Buckinghamshire Council"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-8f10f4b0-5455-4778-875b-2fc6bb7441f4-1",
                    "status": "active",
                    "date": "2022-03-30T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:29:30+01:00",
                    "value": {
                        "amount": 45826,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224743",
                            "name": "BE Group"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-06-10T00:00:00+01:00",
                        "endDate": "2022-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/1746ea47-a8a5-4141-b7ef-85298bfcfaab",
                            "datePublished": "2022-10-20T09:29:30+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-f0670cdd-287e-492e-9647-533e03c10a08",
            "id": "a5825fc0-917d-4af0-b7b2-345945641680-582337",
            "language": "en",
            "date": "2022-10-20T09:29:05+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10046986",
                "title": "ITT for project 10046986",
                "description": "ITT for project 10046986",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1350,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-27T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-01-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-06841377",
                    "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                    "identifier": {
                        "legalName": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                        "scheme": "GB-COH",
                        "id": "06841377"
                    },
                    "address": {
                        "streetAddress": "Castle Hill\\nNewport\\nIsle of Wight\\nPO30 1XZ"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-f0670cdd-287e-492e-9647-533e03c10a08-1",
                    "status": "active",
                    "date": "2022-10-05T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:29:04+01:00",
                    "value": {
                        "amount": 1350,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-06841377",
                            "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-01-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/a5825fc0-917d-4af0-b7b2-345945641680",
                            "datePublished": "2022-10-20T09:29:04+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-c8a577d9-28bc-4460-b3b5-a97a4fa6dfe8",
            "id": "f5d03132-70f5-425d-81b9-66ebd0ada77a-552163",
            "language": "en",
            "date": "2022-10-20T09:28:12+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "PS1320-09.21",
                "title": "Laundry Services",
                "description": "North Tees & Hartlepool Solutions have utilised the Shared Business Services  Framework: SBS/19/UK/MX/9395/38 - The Provision of Laundry Services. The Trust utilised a direct award to supplier Elis. The contract is for a 48 month period.\\n\\nAdditional information: North Tees & Hartlepool Solutions have utilised the Shared Business Services  Framework: SBS/19/UK/MX/9395/38 - The Provision of Laundry Services. The Trust utilised a direct award to supplier Elis. The contract is for a 48 month period.",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "98311000",
                    "description": "Laundry-collection services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "98312000",
                        "description": "Textile-cleaning services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "North East",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 3419480,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2022-07-01T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-07-05T00:00:00+01:00",
                    "endDate": "2026-07-04T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/t7gD9Txr",
                    "name": "North Tees And Hartlepool Nhs Foundation Trust",
                    "identifier": {
                        "legalName": "North Tees And Hartlepool Nhs Foundation Trust",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/t7gD9Txr"
                    },
                    "address": {
                        "streetAddress": "Hardwick Road",
                        "locality": "STOCKTON-ON-TEES",
                        "postalCode": "TS198PE",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Kelly Henderson",
                        "email": "kellyhenderson1@nhs.net"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224742",
                    "name": "Elis",
                    "identifier": {
                        "legalName": "Elis"
                    },
                    "address": {
                        "streetAddress": "74 Crankhall Lane \\nWednesbury\\nWS10 0EQ"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/t7gD9Txr",
                "name": "North Tees And Hartlepool Nhs Foundation Trust"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-c8a577d9-28bc-4460-b3b5-a97a4fa6dfe8-1",
                    "status": "active",
                    "date": "2022-07-01T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:28:12+01:00",
                    "value": {
                        "amount": 3419480,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224742",
                            "name": "Elis"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-07-05T00:00:00+01:00",
                        "endDate": "2026-07-04T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/f5d03132-70f5-425d-81b9-66ebd0ada77a",
                            "datePublished": "2022-10-20T09:28:12+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-69049f4f-2b32-4555-bac1-32953f4ac1db",
            "id": "6c4e6c6a-4461-45ef-b0c7-ce991b821b2f-582331",
            "language": "en",
            "date": "2022-10-20T09:27:55+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT FOR PROJECT  10039264",
                "title": "ITT FOR PROJECT  10039264",
                "description": "ITT FOR PROJECT  10039264",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 3160,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-10-04T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2025-10-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-06841377",
                    "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                    "identifier": {
                        "legalName": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                        "scheme": "GB-COH",
                        "id": "06841377"
                    },
                    "address": {
                        "streetAddress": "Castle Hill, \\nNewport, \\nIsle of Wight, \\nPO30 1XZ"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-69049f4f-2b32-4555-bac1-32953f4ac1db-1",
                    "status": "active",
                    "date": "2022-10-11T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:27:55+01:00",
                    "value": {
                        "amount": 3160,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-06841377",
                            "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2025-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/6c4e6c6a-4461-45ef-b0c7-ce991b821b2f",
                            "datePublished": "2022-10-20T09:27:55+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-9acd68ad-792b-4018-834f-ae3b047c8a7d",
            "id": "b5796912-1ffd-446f-abb4-82cc5e7654b3-582334",
            "language": "en",
            "date": "2022-10-20T09:27:24+01:00",
            "tag": [
                "awardUpdate"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for projects 10042837, 10045189, 10044843",
                "title": "ITT for projects 10042837, 10045189, 10044843",
                "description": "ITT for projects 10042837, 10045189, 10044843",
                "status": "InvalidStatus",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 4050,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-26T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-04-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Lisa-Marie Serratore",
                        "email": "monitoringservicesprocurement@iuk.ukri.org",
                        "telephone": "07766521776"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-09438364",
                    "name": "OAKHEART SERVICES LTD.",
                    "identifier": {
                        "legalName": "OAKHEART SERVICES LTD.",
                        "scheme": "GB-COH",
                        "id": "09438364"
                    },
                    "address": {
                        "streetAddress": "Ancaster Avenue\\nGrimsby\\nNE Lincs\\nDN33 3LH"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-9acd68ad-792b-4018-834f-ae3b047c8a7d-1",
                    "status": "active",
                    "date": "2022-10-05T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:12:34+01:00",
                    "value": {
                        "amount": 4050,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-09438364",
                            "name": "OAKHEART SERVICES LTD."
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-04-30T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/b5796912-1ffd-446f-abb4-82cc5e7654b3",
                            "datePublished": "2022-10-20T09:12:34+01:00",
                            "dateModified": "2022-10-20T09:27:24+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-f2dbbe2f-966a-42dd-8f5a-422e24e2b480",
            "id": "550d39ad-e451-45e5-9d3b-1f78b554b610-582335",
            "language": "en",
            "date": "2022-10-20T09:25:40+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-100-3768-P0989",
                "title": "P0989 - Highway Maintenance and Management PFI Contract Restructuring Support",
                "description": "Birmingham City Council invites tenders for advisory services for restructuring of the council's Highway Maintenance and Management PFI contract, together with consequences that arise out of the restructuring of the contract\\n      \\n      BACKGROUND\\n      The council entered into a 25-year PFI contract in June 2010 to provide highway maintenance and management services on its 2,500+km highway network. The contract is with Birmingham Highways Ltd (BHL), which delivers the Services through a subcontractor. \\n      The Highway Maintenance and Management PFI (HMMPFI) contract is the primary means through which the council discharges its statutory duties (predominantly under Highways Act, 1980 and New Roads and Streetworks Act, 1991) to maintain public highways for which it is the relevant authority.\\n      The HMMPFI contract was subject to a settlement in June 2019 whereby:\\n      i. The subcontractor was replaced with an interim subcontractor; and\\n      ii. The council worked with BHL to:\\n              (a) restructure the contract; and\\n              (b) procure a long-term replacement subcontractor.\\n      The procurement of a long-term replacement subcontractor is currently underway, with dialogue due to complete at the end of November 2022. The restructuring of the contract is expected to be completed in February 2023, subject to:\\n      i. Receiving compliant and acceptable tenders;\\n      ii. Approval of the council's revised business case with government; and\\n      iii. Approval from BHL's senior creditors.\\n      \\n      Subject to this process, the long-term replacement subcontract is expected to be signed in April 2023 and commence on 1 September 2023.  \\n      \\n      SCOPE OF THIS CONTRACT\\n      This restructuring support contract relates to advisory services for restructuring of the council's Highway Maintenance and Management PFI contract, together with consequences that arise out of the restructuring of the contract. Such consequences include (but are not exclusively limited to):\\n      i. Advice to the council relating to alternative positions should it not be possible to complete a restructuring of the contract;\\n      ii. The council's funding for highway maintenance and management services from HM Government;\\n      iii. Mobilisation for longer-term highway maintenance and management services;\\n      iv. Any litigation related to the contract or successor arrangements.\\n      \\n      The restructuring support contract is expected to commence in December 2022 & will expire on 30 June 2024\\n\\nAdditional information: If you are interested in tendering please click on the following link to access Birmingham City Council's tender Portal.\\n\\nDelivery Notes\\n\\nBirmingham\\n\\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-09-23T10:31:32+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79100000",
                    "description": "Legal services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "B4 7DJ"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-10-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-12-05T00:00:00Z",
                    "endDate": "2024-06-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/550d39ad-e451-45e5-9d3b-1f78b554b610",
                        "datePublished": "2022-09-23T10:31:32+01:00",
                        "dateModified": "2022-10-20T09:25:40+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://in-tendhost.co.uk/birminghamcc/aspx/"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-43899",
                    "name": "Birmingham City Council",
                    "identifier": {
                        "legalName": "Birmingham City Council"
                    },
                    "address": {
                        "streetAddress": "1 Lancaster Circus, Birmingham",
                        "locality": "West Midlands",
                        "postalCode": "B4 7DJ",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Andrea Webster",
                        "email": "andrea.webster@birmingham.gov.uk",
                        "telephone": "0121 464 4726"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-43899",
                "name": "Birmingham City Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-60c18f6f-df6f-42a8-abea-703b3f689630",
            "id": "5be8a2dd-b2ab-45a7-b7a6-78d38a3214a7-582333",
            "language": "en",
            "date": "2022-10-20T09:24:19+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-1138900D0O000000rwimUAA",
                "title": "Mental Health Act Quality Improvement Programme",
                "description": "NHS England requires A service delivery partner to support participating services to develop, test and refine change ideas according to QI methodology, and to evaluate the impact of specific change ideas and the overall programme.\\n\\nThis procurement process is being managed by the Atamis system.  To access the procurement documents or raise any queries please go to the following link https://health-family.force.com/s/Welcome and click on 'View our Live Opportunities'.",
                "datePublished": "2022-10-19T17:03:23+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79410000",
                    "description": "Business and management consultancy services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "LS2 7UE"
                            },
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1000000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-18T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-12-19T00:00:00Z",
                    "endDate": "2024-12-18T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "2",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/5be8a2dd-b2ab-45a7-b7a6-78d38a3214a7",
                        "datePublished": "2022-10-19T17:03:23+01:00",
                        "dateModified": "2022-10-20T09:24:19+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-158202",
                    "name": "NHS England",
                    "identifier": {
                        "legalName": "NHS England"
                    },
                    "address": {
                        "streetAddress": "Quarry House",
                        "locality": "Leeds",
                        "postalCode": "LS2 7UE",
                        "countryName": "GB"
                    },
                    "contactPoint": {
                        "name": "Janice brodie",
                        "email": "england.commercialqueries@nhs.net"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-158202",
                "name": "NHS England"
            }
        },
        {
            "ocid": "ocds-b5fd17-3ec6abdd-1a5a-49db-a784-33d72b40514d",
            "id": "82e15a82-6699-4ecc-a6b6-f5fcabe3867b-582330",
            "language": "en",
            "date": "2022-10-20T09:24:17+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10045537, 10045430, 10044913, 10044671, 10044543, 10044053, 10043549, 10042830",
                "title": "ITT for project 10045537, 10045430, 10044913, 10044671, 10044543, 10044053, 10043549, 10042830",
                "description": "ITT for project 10045537, 10045430, 10044913, 10044671, 10044543, 10044053, 10043549, 10042830",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 10800,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-04-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-09438364",
                    "name": "OAKHEART SERVICES LTD.",
                    "identifier": {
                        "legalName": "OAKHEART SERVICES LTD.",
                        "scheme": "GB-COH",
                        "id": "09438364"
                    },
                    "address": {
                        "streetAddress": "Ancaster Avenue\\nGrimsby\\nNE Lincs\\nDN33 3LH"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-3ec6abdd-1a5a-49db-a784-33d72b40514d-1",
                    "status": "active",
                    "date": "2022-10-03T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:24:17+01:00",
                    "value": {
                        "amount": 10800,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-09438364",
                            "name": "OAKHEART SERVICES LTD."
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-04-30T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/82e15a82-6699-4ecc-a6b6-f5fcabe3867b",
                            "datePublished": "2022-10-20T09:24:17+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-23d79f04-8f30-47f5-80d6-306a71f8d56a",
            "id": "4ac72d29-5fdb-43f0-9776-243a8131a1cc-582328",
            "language": "en",
            "date": "2022-10-20T09:23:50+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "TNA505",
                "title": "Workstation, Digital camera, Software, Support",
                "description": "The purpose of this Procurement Exercise is for the purchase of:\\nProduction workstation for digital imaging of heritage material\\nDigital Camera for imaging of heritage material\\nQuantity - 1.",
                "datePublished": "2022-10-20T09:23:50+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "30000000",
                    "description": "Office and computing machinery, equipment and supplies except furniture and software packages"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "31000000",
                        "description": "Electrical machinery, apparatus, equipment and consumables; lighting"
                    },
                    {
                        "scheme": "CPV",
                        "id": "38000000",
                        "description": "Laboratory, optical and precision equipments (excl. glasses)"
                    },
                    {
                        "scheme": "CPV",
                        "id": "48000000",
                        "description": "Software package and information systems"
                    },
                    {
                        "scheme": "CPV",
                        "id": "50000000",
                        "description": "Repair and maintenance services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72000000",
                        "description": "IT services: consulting, software development, Internet and support"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "TW9 4DU"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-11T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-12-15T00:00:00Z",
                    "endDate": "2023-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "goods",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/4ac72d29-5fdb-43f0-9776-243a8131a1cc",
                        "datePublished": "2022-10-20T09:23:50+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "documentType": "tenderNotice",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/42a48ed3-03ae-418b-a9de-9433689049d3",
                        "format": "application/pdf"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-GOR-EA71",
                    "name": "THE NATIONAL ARCHIVES",
                    "identifier": {
                        "legalName": "THE NATIONAL ARCHIVES",
                        "scheme": "GB-GOR",
                        "id": "EA71"
                    },
                    "address": {
                        "streetAddress": "RUSKIN AVENUE",
                        "locality": "RICHMOND",
                        "postalCode": "TW94DU",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "procurement@nationalarchives.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-GOR-EA71",
                "name": "THE NATIONAL ARCHIVES"
            }
        },
        {
            "ocid": "ocds-b5fd17-4bfa1736-07f5-4c00-a626-64e97a096209",
            "id": "31617f34-1469-4a7b-afa8-af231d76f57c-582329",
            "language": "en",
            "date": "2022-10-20T09:23:34+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for projects 10041106, 10040851, 10040816, 10045182, 10041196",
                "title": "ITT for projects 10041106, 10040851, 10040816, 10045182, 10041196",
                "description": "ITT for projects 10041106, 10040851, 10040816, 10045182, 10041196",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 24990,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-01T00:00:00+01:00",
                    "endDate": "2027-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-14182020",
                    "name": "Anthony Consulting Ltd.",
                    "identifier": {
                        "legalName": "Anthony Consulting Ltd.",
                        "scheme": "GB-COH",
                        "id": "14182020"
                    },
                    "address": {
                        "streetAddress": "Leicester\\nLeicestershire\\nLE2 7QL"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-4bfa1736-07f5-4c00-a626-64e97a096209-1",
                    "status": "active",
                    "date": "2022-09-30T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:23:34+01:00",
                    "value": {
                        "amount": 24990,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-14182020",
                            "name": "Anthony Consulting Ltd."
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-01T00:00:00+01:00",
                        "endDate": "2027-03-31T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/31617f34-1469-4a7b-afa8-af231d76f57c",
                            "datePublished": "2022-10-20T09:23:34+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-cc01c673-a962-408b-8877-79510bc5a564",
            "id": "bba8dfe6-1aa7-44a0-83a5-ff5b036335ac-580220",
            "language": "en",
            "date": "2022-10-20T09:23:08+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CCMK22A03.",
                "title": "Provision of Household Below Average Income data validation survey",
                "description": "The primary aim of the project is to provide verification of the Authority's own derivations of HBAI income, housing costs and demographic variables, here on referred to as derived variables.\\nIn each year of the Contract, the deliverables of the validation process shall include written confirmation that the Supplier has produced a version of both the six-month HBAI dataset (if available) and the full 12-month HBAI dataset in which each derived variable, for each case, agrees with the equivalent DWP HBAI dataset to an agreed level of difference",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79311400",
                    "description": "Economic research services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 247270,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-08-12T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-10T00:00:00+01:00",
                    "endDate": "2025-10-09T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/6sQD8uds",
                    "name": "Crown Commercial Service",
                    "identifier": {
                        "legalName": "Crown Commercial Service",
                        "scheme": "GB-SRS",
                        "id": "supplierregistration.cabinetoffice.gov.uk/6sQD8uds"
                    },
                    "address": {
                        "streetAddress": "Floor 9, The Capital Building, Old Hall Street",
                        "locality": "Liverpool",
                        "postalCode": "L3 9PP",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Crown Commercial Service on behalf of Department for Work and Pensions : Department for Work and Pensions",
                        "email": "supplier@crowncommercial.gov.uk",
                        "telephone": "3450103503"
                    },
                    "details": {
                        "url": "https://www.gov.uk/government/organisations/crown-commercial-service"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224741",
                    "name": "INSTITUTE FOR FISCAL STUDIES(THE)",
                    "identifier": {
                        "legalName": "INSTITUTE FOR FISCAL STUDIES(THE)"
                    },
                    "address": {
                        "streetAddress": "Ridgmount Street WC1E 7AE London England"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/6sQD8uds",
                "name": "Crown Commercial Service"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-cc01c673-a962-408b-8877-79510bc5a564-1",
                    "status": "active",
                    "date": "2022-10-05T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:23:08+01:00",
                    "value": {
                        "amount": 247270,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224741",
                            "name": "INSTITUTE FOR FISCAL STUDIES(THE)"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-10T00:00:00+01:00",
                        "endDate": "2025-10-09T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/bba8dfe6-1aa7-44a0-83a5-ff5b036335ac",
                            "datePublished": "2022-10-20T09:23:08+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "documentType": "awardNotice",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/810f261c-552d-4613-bc2f-5cb3b00e427b",
                            "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                        },
                        {
                            "id": "3",
                            "documentType": "contractSigned",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/a58ec53c-3cf0-4d0d-984a-3766aaad3b8d",
                            "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-c109535f-2ad0-4ecd-aa1b-09465586f9ff",
            "id": "a42d1e65-46b8-4b2c-9298-e868da2b90c6-582326",
            "language": "en",
            "date": "2022-10-20T09:18:49+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10046953, 10046715, 10046687, 10046587, 10046158, 10045782, 10045756, 10045576",
                "title": "ITT for project 10046953, 10046715, 10046687, 10046587, 10046158, 10045782, 10045756, 10045576",
                "description": "ITT for project 10046953, 10046715, 10046687, 10046587, 10046158, 10045782, 10045756, 10045576",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 10800,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-04-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-09438364",
                    "name": "OAKHEART SERVICES LTD.",
                    "identifier": {
                        "legalName": "OAKHEART SERVICES LTD.",
                        "scheme": "GB-COH",
                        "id": "09438364"
                    },
                    "address": {
                        "streetAddress": "Ancaster Avenue\\nGrimsby\\nNE Lincs\\nDN33 3LH"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-c109535f-2ad0-4ecd-aa1b-09465586f9ff-1",
                    "status": "active",
                    "date": "2022-10-03T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:18:49+01:00",
                    "value": {
                        "amount": 10800,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-09438364",
                            "name": "OAKHEART SERVICES LTD."
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-04-30T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/a42d1e65-46b8-4b2c-9298-e868da2b90c6",
                            "datePublished": "2022-10-20T09:18:49+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-8bbd8787-ee4b-44b8-87ca-41dcded4ed4a",
            "id": "5cb8d416-7d40-4bb2-b18e-bd7bad7bf5ea-582325",
            "language": "en",
            "date": "2022-10-20T09:18:12+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10044417",
                "title": "ITT for project 10044417",
                "description": "ITT for project 10044417",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 4900,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2026-10-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-14182020",
                    "name": "Anthony Consulting Ltd.",
                    "identifier": {
                        "legalName": "Anthony Consulting Ltd.",
                        "scheme": "GB-COH",
                        "id": "14182020"
                    },
                    "address": {
                        "streetAddress": "Leicester\\nLeicestershire\\nLE2 7QL"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-8bbd8787-ee4b-44b8-87ca-41dcded4ed4a-1",
                    "status": "active",
                    "date": "2022-10-02T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:18:12+01:00",
                    "value": {
                        "amount": 4900,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-14182020",
                            "name": "Anthony Consulting Ltd."
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2026-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/5cb8d416-7d40-4bb2-b18e-bd7bad7bf5ea",
                            "datePublished": "2022-10-20T09:18:12+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-6653d70a-6c3b-4d34-86d6-a0c489521afd",
            "id": "1b4105f9-5d2e-4f89-823a-ba6ac5a10538-582323",
            "language": "en",
            "date": "2022-10-20T09:17:12+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT FOR PROJECT 10045842",
                "title": "ITT FOR PROJECT 10045842",
                "description": "ITT FOR PROJECT 10045842",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 3950,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-10-04T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2026-10-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-06841377",
                    "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                    "identifier": {
                        "legalName": "SANDHILLS MANAGEMENT CONSULTANCY LTD",
                        "scheme": "GB-COH",
                        "id": "06841377"
                    },
                    "address": {
                        "streetAddress": "Castle Hill,\\nNewport, \\nIsle of Wight, PO30 1XZ"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-6653d70a-6c3b-4d34-86d6-a0c489521afd-1",
                    "status": "active",
                    "date": "2022-10-11T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:17:12+01:00",
                    "value": {
                        "amount": 3950,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-06841377",
                            "name": "SANDHILLS MANAGEMENT CONSULTANCY LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2026-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/1b4105f9-5d2e-4f89-823a-ba6ac5a10538",
                            "datePublished": "2022-10-20T09:17:12+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-9acd68ad-792b-4018-834f-ae3b047c8a7d",
            "id": "b5796912-1ffd-446f-abb4-82cc5e7654b3-582322",
            "language": "en",
            "date": "2022-10-20T09:12:34+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10042837",
                "title": "ITT for project 10042837",
                "description": "ITT for project 1350",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1350,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-26T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-04-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-09438364",
                    "name": "OAKHEART SERVICES LTD.",
                    "identifier": {
                        "legalName": "OAKHEART SERVICES LTD.",
                        "scheme": "GB-COH",
                        "id": "09438364"
                    },
                    "address": {
                        "streetAddress": "Ancaster Avenue\\nGrimsby\\nNE Lincs\\nDN33 3LH"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-9acd68ad-792b-4018-834f-ae3b047c8a7d-1",
                    "status": "active",
                    "date": "2022-10-05T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:12:34+01:00",
                    "value": {
                        "amount": 1350,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-09438364",
                            "name": "OAKHEART SERVICES LTD."
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-04-30T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/b5796912-1ffd-446f-abb4-82cc5e7654b3",
                            "datePublished": "2022-10-20T09:12:34+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-89e7fe71-88f1-429b-9082-c3cd4f0d57d7",
            "id": "fc08dcde-efa7-43c0-bb58-0818aa5625f3-582321",
            "language": "en",
            "date": "2022-10-20T09:09:30+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10048117",
                "title": "ITT for project 10048117",
                "description": "ITT for project 10048117",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 3160,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-10-04T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2025-10-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-203219",
                    "name": "Carroll Pharma Consulting",
                    "identifier": {
                        "legalName": "Carroll Pharma Consulting"
                    },
                    "address": {
                        "streetAddress": "Chancton Copse\\nStorrington\\nWest Sussex\\nRH20 3BF"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-89e7fe71-88f1-429b-9082-c3cd4f0d57d7-1",
                    "status": "active",
                    "date": "2022-10-07T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:09:30+01:00",
                    "value": {
                        "amount": 3160,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-203219",
                            "name": "Carroll Pharma Consulting"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2025-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/fc08dcde-efa7-43c0-bb58-0818aa5625f3",
                            "datePublished": "2022-10-20T09:09:30+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-e2907fca-b7ea-4f9b-b38b-6d2e2774c00c",
            "id": "9e6f415d-6e8b-4129-b759-cfd44c9bbbe9-582320",
            "language": "en",
            "date": "2022-10-20T09:05:08+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BUCKSH001-DN638903-30247113",
                "title": "Foxes Piece School - Heating Circuit",
                "description": "New heating circuit",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "50800000",
                    "description": "Miscellaneous repair and maintenance services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 5000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-10-19T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-24T00:00:00+01:00",
                    "endDate": "2022-11-30T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "works"
            },
            "parties": [
                {
                    "id": "GB-CFS-187980",
                    "name": "Buckinghamshire Council",
                    "identifier": {
                        "legalName": "Buckinghamshire Council"
                    },
                    "address": {
                        "streetAddress": "Walton Street Office, Walton Street",
                        "locality": "Aylesbury",
                        "postalCode": "HP20 1UX",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Mark Hunt",
                        "email": "ljphillips@buckscc.gov.uk",
                        "telephone": "07850963628"
                    },
                    "details": {
                        "url": "https://www.buckinghamshire.gov.uk/"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-160973",
                    "name": "Tencer Ltd",
                    "identifier": {
                        "legalName": "Tencer Ltd"
                    },
                    "address": {
                        "streetAddress": "14/15 Lincolns Park Business Centre, Lincoln Road, Cressex Business Park, High Wycombe, Bucks, HP12 3RD"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-187980",
                "name": "Buckinghamshire Council"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-e2907fca-b7ea-4f9b-b38b-6d2e2774c00c-1",
                    "status": "active",
                    "date": "2022-10-20T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:05:08+01:00",
                    "value": {
                        "amount": 5505.85,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-160973",
                            "name": "Tencer Ltd"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-24T00:00:00+01:00",
                        "endDate": "2022-11-30T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/9e6f415d-6e8b-4129-b759-cfd44c9bbbe9",
                            "datePublished": "2022-10-20T09:05:08+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-1ad58dd0-65ca-4684-8dd2-5efa562bc6ce",
            "id": "0e0e017f-0b50-4121-8b1c-21e29040ccb1-582318",
            "language": "en",
            "date": "2022-10-20T09:04:04+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT FOR PROJECT 10044059",
                "title": "ITT FOR PROJECT 10044059",
                "description": "ITT FOR PROJECT 10044059",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 4800,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2025-10-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-07066759",
                    "name": "CHANGING WORLD SOLUTIONS LTD",
                    "identifier": {
                        "legalName": "CHANGING WORLD SOLUTIONS LTD",
                        "scheme": "GB-COH",
                        "id": "07066759"
                    },
                    "address": {
                        "streetAddress": "Castle Street, \\nChester,\\nHarrow, CH1 2DS"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-1ad58dd0-65ca-4684-8dd2-5efa562bc6ce-1",
                    "status": "active",
                    "date": "2022-09-30T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:04:04+01:00",
                    "value": {
                        "amount": 4800,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-07066759",
                            "name": "CHANGING WORLD SOLUTIONS LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2025-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/0e0e017f-0b50-4121-8b1c-21e29040ccb1",
                            "datePublished": "2022-10-20T09:04:04+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-a73190c5-21ca-4fe5-acbd-c8a58550fccc",
            "id": "ddbf373b-b9c5-48bc-9445-a954f3f93296-582319",
            "language": "en",
            "date": "2022-10-20T09:00:03+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BIP729575981",
                "title": "GB-Poole: Seclusion Suite Refurbishment at Haven Ward Male, St Ann's Hospital",
                "description": "Refurbishment of the Seclusion Suite in Haven Ward, St Ann's Hospital, Poole",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "45453000",
                    "description": "Overhaul and refurbishment work"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "45453100",
                        "description": "Refurbishment work"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "South West",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 197959.2,
                    "currency": "GBP"
                },
                "procurementMethodDetails": "Not specified",
                "tenderPeriod": {
                    "endDate": "2022-10-18T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-24T00:00:00+01:00",
                    "endDate": "2022-12-31T23:59:59Z"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "works"
            },
            "parties": [
                {
                    "id": "GB-CFS-166101",
                    "name": "Dorset Health Care University NHS Foundation Trust",
                    "identifier": {
                        "legalName": "Dorset Health Care University NHS Foundation Trust"
                    },
                    "address": {
                        "streetAddress": "Sentinel House, Nuffield Industrial Estate",
                        "locality": "Poole",
                        "postalCode": "BH17 0RB",
                        "countryName": "UK"
                    },
                    "contactPoint": {
                        "name": "Rebecca Moore",
                        "email": "rebecca.moore28@nhs.net",
                        "telephone": "01202277000"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-187821",
                    "name": "Westmade Ltd",
                    "identifier": {
                        "legalName": "Westmade Ltd"
                    },
                    "address": {
                        "streetAddress": "19 Black Moor Road\\n        Verwood\\n        BH31 6BB"
                    },
                    "details": {
                        "scale": "large"
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-166101",
                "name": "Dorset Health Care University NHS Foundation Trust"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-a73190c5-21ca-4fe5-acbd-c8a58550fccc-1",
                    "status": "active",
                    "date": "2022-10-18T00:00:00+01:00",
                    "datePublished": "2022-10-20T09:00:03+01:00",
                    "value": {
                        "amount": 197959.2,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-187821",
                            "name": "Westmade Ltd"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-24T00:00:00+01:00",
                        "endDate": "2022-12-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/ddbf373b-b9c5-48bc-9445-a954f3f93296",
                            "datePublished": "2022-10-20T09:00:03+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "documentType": "tenderNotice",
                            "description": "Please follow this link to view the notice.",
                            "url": "https://www.delta-esourcing.com/delta/respondToList.html?noticeId=729575981"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-d8cfee96-a283-43be-979b-de4d8aa97960",
            "id": "ad07167a-5d8c-46d8-b01c-f863fbd16e66-582316",
            "language": "en",
            "date": "2022-10-20T08:59:13+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "NCEA1.1_Saltmarshes",
                "title": "Mapping expansion and degradation of Saltmarsh",
                "description": "@Expertise in remote sensing / earth observation essential. \\n\\nThe project will examine the EA Saltmarsh Extent and Zonation dataset against Sentinel-1 and Sentinel-2 imagery to assess the 'burning in' approach, alongside recently collected data from Natural England field surveyors. The project will aim to determine where saltmarsh habitats are in a state of expansion or decline and if such geomorphological information can aid the thresholds used. The incorporation methods of the EA Saltmarsh Extent and Zonation dataset within LE Phase IV habitat probability map will be critically assessed. This will examine our current overlap approach and test alternatives or improvements to the current thresholding approach. This analysis will focus on selected areas of saltmarsh provided by the Living England team and could be explored on a national scale dependent upon the resources available. Finally, this should be written up in a technical report with recommendations and considerations for inclusion of analysis in our habitat mapping workflow and for scaling up the approach to national scale.@\\n\\n@Your response should be returned to the following email address by:\\nEmail: Anne.Stefaniak@naturalengland.org.uk\\nDate: 17/11/2022\\nTime: 17:30\\nEnsure you state the reference number and 'Final Submission' in the subject field to make it clear that it is your response.@",
                "datePublished": "2022-10-18T16:25:02+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "72212326",
                    "description": "Mapping software development services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "72316000",
                        "description": "Data analysis services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 10000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 24999,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-17T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-12-05T00:00:00Z",
                    "endDate": "2023-03-21T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/ad07167a-5d8c-46d8-b01c-f863fbd16e66",
                        "datePublished": "2022-10-18T16:25:02+01:00",
                        "dateModified": "2022-10-20T08:59:13+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "3",
                        "documentType": "biddingDocuments",
                        "description": "Request for Quotation - Mapping expansion and degradation of Saltmarsh",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/b07d956c-f0de-499e-b52d-86d9c9ce59e5",
                        "format": "application/pdf"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/hWvd872d",
                    "name": "Natural England",
                    "identifier": {
                        "legalName": "Natural England",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/hWvd872d"
                    },
                    "address": {
                        "streetAddress": "Natural England, Apex Court, City Link",
                        "locality": "Nottingham",
                        "postalCode": "NG2 4LA",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Anne Stefaniak",
                        "email": "Anne.Stefaniak@naturalengland.org.uk",
                        "telephone": "+447789050916"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/hWvd872d",
                "name": "Natural England"
            }
        },
        {
            "ocid": "ocds-b5fd17-43f76372-acaf-474d-8e73-4f96499fb425",
            "id": "4d0724b7-365a-40ab-bf3d-47c9e0d97031-582312",
            "language": "en",
            "date": "2022-10-20T08:57:05+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CON/1000743",
                "title": "Target Operating Model (TOM) Transition Support",
                "description": "Provision of training to support the transition of a business cohort to a new operating model.",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "80000000",
                    "description": "Education and training services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 32000,
                    "currency": "GBP"
                },
                "procurementMethod": "direct",
                "procurementMethodDetails": "Single tender action (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-08-20T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-08-22T00:00:00+01:00",
                    "endDate": "2022-11-21T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/9yt6Qa35",
                    "name": "BANK OF ENGLAND",
                    "identifier": {
                        "legalName": "BANK OF ENGLAND",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/9yt6Qa35"
                    },
                    "address": {
                        "streetAddress": "Threadneedle Street",
                        "locality": "LONDON",
                        "postalCode": "EC2R8AH",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Chloe Ludlow-Gomm",
                        "email": "chloe.ludlow-gomm@bankofengland.co.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-01776110",
                    "name": "LEE HECHT HARRISON PENNA LIMITED",
                    "identifier": {
                        "legalName": "LEE HECHT HARRISON PENNA LIMITED",
                        "scheme": "GB-COH",
                        "id": "01776110"
                    },
                    "address": {
                        "streetAddress": "55 Gracechurch Street\\nEC3V 0EE\\nGB"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/9yt6Qa35",
                "name": "BANK OF ENGLAND"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-43f76372-acaf-474d-8e73-4f96499fb425-1",
                    "status": "active",
                    "date": "2022-08-21T00:00:00+01:00",
                    "datePublished": "2022-10-20T08:57:05+01:00",
                    "value": {
                        "amount": 32000,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-01776110",
                            "name": "LEE HECHT HARRISON PENNA LIMITED"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-08-22T00:00:00+01:00",
                        "endDate": "2022-11-21T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/4d0724b7-365a-40ab-bf3d-47c9e0d97031",
                            "datePublished": "2022-10-20T08:57:05+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-54204065-3e4c-4966-84d0-b845a31c4538",
            "id": "e58cef4b-e0d7-4ba1-b8b8-83c04bdd53d4-582314",
            "language": "en",
            "date": "2022-10-20T08:55:03+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BIP729574219",
                "title": "GB-Charlton Down: Fitting of Specialist Doors at Waterston Ward, Forston Clinic, Charlton Down",
                "description": "The installation of specialist doors to Waterston Ward at Forston Clinic, Charlton Down",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "45421131",
                    "description": "Installation of doors"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "South West",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 260359.2,
                    "currency": "GBP"
                },
                "procurementMethodDetails": "Not specified",
                "tenderPeriod": {
                    "endDate": "2022-10-14T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-24T00:00:00+01:00",
                    "endDate": "2022-12-31T23:59:59Z"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "works"
            },
            "parties": [
                {
                    "id": "GB-CFS-166101",
                    "name": "Dorset Health Care University NHS Foundation Trust",
                    "identifier": {
                        "legalName": "Dorset Health Care University NHS Foundation Trust"
                    },
                    "address": {
                        "streetAddress": "Sentinel House, Nuffield Industrial Estate",
                        "locality": "Poole",
                        "postalCode": "BH17 0RB",
                        "countryName": "UK"
                    },
                    "contactPoint": {
                        "name": "Rebecca Moore",
                        "email": "rebecca.moore28@nhs.net",
                        "telephone": "01202277000"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-187821",
                    "name": "Westmade Ltd",
                    "identifier": {
                        "legalName": "Westmade Ltd"
                    },
                    "address": {
                        "streetAddress": "19 Black Moor Road\\n        Verwood\\n        BH31 6BB"
                    },
                    "details": {
                        "scale": "large"
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-166101",
                "name": "Dorset Health Care University NHS Foundation Trust"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-54204065-3e4c-4966-84d0-b845a31c4538-1",
                    "status": "active",
                    "date": "2022-10-14T00:00:00+01:00",
                    "datePublished": "2022-10-20T08:55:03+01:00",
                    "value": {
                        "amount": 260359.2,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-187821",
                            "name": "Westmade Ltd"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-24T00:00:00+01:00",
                        "endDate": "2022-12-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/e58cef4b-e0d7-4ba1-b8b8-83c04bdd53d4",
                            "datePublished": "2022-10-20T08:55:03+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "documentType": "tenderNotice",
                            "description": "Please follow this link to view the notice.",
                            "url": "https://www.delta-esourcing.com/delta/respondToList.html?noticeId=729574219"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-129581e1-24ad-4b61-9359-fee8c4249ebc",
            "id": "d0457551-8c27-4c7a-950e-60ad9ba418f5-582313",
            "language": "en",
            "date": "2022-10-20T08:53:56+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "HEREFCC-DN638897-53702340",
                "title": "Award Notice for Bid Support LU2F",
                "description": "Direct award for Levelling up fund bid writing support.",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79000000",
                    "description": "Business services: law, marketing, consulting, recruitment, printing and security"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "direct",
                "procurementMethodDetails": "Direct award",
                "tenderPeriod": {
                    "endDate": "2021-05-10T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2021-05-15T00:00:00+01:00",
                    "endDate": "2022-08-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-CFS-60507",
                    "name": "Herefordshire Council",
                    "identifier": {
                        "legalName": "Herefordshire Council"
                    },
                    "address": {
                        "streetAddress": "Council Offices, Plough Lane",
                        "locality": "Hereford",
                        "postalCode": "HR4 0LE",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Lee Robertson",
                        "email": "lee.robertson@herefordshire.gov.uk",
                        "telephone": "+44 1432383723"
                    },
                    "details": {
                        "url": "https://www.herefordshire.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224740",
                    "name": "CBRE Ltd",
                    "identifier": {
                        "legalName": "CBRE Ltd"
                    },
                    "address": {
                        "streetAddress": "55 Temple Row Birmingham, B2 5LS"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-60507",
                "name": "Herefordshire Council"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-129581e1-24ad-4b61-9359-fee8c4249ebc-1",
                    "status": "active",
                    "date": "2021-05-12T00:00:00+01:00",
                    "datePublished": "2022-10-20T08:53:56+01:00",
                    "value": {
                        "amount": 73800,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224740",
                            "name": "CBRE Ltd"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2021-05-13T00:00:00+01:00",
                        "endDate": "2022-08-31T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/d0457551-8c27-4c7a-950e-60ad9ba418f5",
                            "datePublished": "2022-10-20T08:53:56+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-6e682c09-4e95-4ba8-9d1e-c9bbcc3f556d",
            "id": "e731f496-d6cd-4b93-b6b7-98cec6e740c2-582311",
            "language": "en",
            "date": "2022-10-20T08:53:34+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "DAR001-DN638801-79098397",
                "title": "Soft Skills Training",
                "description": "Darlington Borough Council requires the provision of a number of soft skill courses.\\nDelivery of training must be on Council sites (delivery over teams may be required in certain situations), multimedia/screen and flip chart will be provided. The courses required are detailed in the Specification, with approximately 6 days per year. There may also be up to an additional 3 days per year for 'ad-hoc' soft skills training required which could include topics such as effective communication, time management, leadership training.\\n\\nTo register your interest and find all documents for application please use the NEPO/Proactis portal:\\n\\nhttps://procontract.due-north.com/Advert?advertId=affdd19f-b84f-ed11-811a-005056b64545&fromRfxSummary=True&rfxId=6b40591f-b94f-ed11-811a-005056b64545\\n\\n\\n",
                "datePublished": "2022-10-19T15:16:19+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79632000",
                    "description": "Personnel-training services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "80500000",
                        "description": "Training services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "North East",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "North West",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "Yorkshire and the Humber",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "East Midlands",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "East of England",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "London",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "South East",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "South West",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 50000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-09T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-01-01T00:00:00Z",
                    "endDate": "2025-12-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "2",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/e731f496-d6cd-4b93-b6b7-98cec6e740c2",
                        "datePublished": "2022-10-19T15:16:19+01:00",
                        "dateModified": "2022-10-20T08:53:34+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-50175",
                    "name": "Darlington Borough Council",
                    "identifier": {
                        "legalName": "Darlington Borough Council"
                    },
                    "address": {
                        "streetAddress": "Town Hall, Feethams",
                        "locality": "Darlington",
                        "postalCode": "DL1 5QT",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Michael Howlett",
                        "email": "michael.howlett@darlington.gov.uk",
                        "telephone": "+44 1325406543"
                    },
                    "details": {
                        "url": "http://www.darlington.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-50175",
                "name": "Darlington Borough Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-9ea8f494-e280-4eda-bde8-58c40d48ed4c",
            "id": "9a5950ba-2d24-411d-84ce-88f08e2bcb2b-582310",
            "language": "en",
            "date": "2022-10-20T08:50:09+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT FOR PROJECT 10041082",
                "title": "ITT FOR PROJECT 10041082",
                "description": "ITT FOR PROJECT 10041082",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 5280,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-07T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2027-10-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-02972325",
                    "name": "GENUS PLC",
                    "identifier": {
                        "legalName": "GENUS PLC",
                        "scheme": "GB-COH",
                        "id": "02972325"
                    },
                    "address": {
                        "streetAddress": "Basing View, \\nBasingstoke, \\nHampshire, RG21 4DZ"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-9ea8f494-e280-4eda-bde8-58c40d48ed4c-1",
                    "status": "active",
                    "date": "2022-10-10T00:00:00+01:00",
                    "datePublished": "2022-10-20T08:50:09+01:00",
                    "value": {
                        "amount": 5280,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-02972325",
                            "name": "GENUS PLC"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2027-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/9a5950ba-2d24-411d-84ce-88f08e2bcb2b",
                            "datePublished": "2022-10-20T08:50:09+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-4cfc26b4-efa0-479a-95cb-44f53994f683",
            "id": "7ef0f40a-4c76-48d6-847e-bca347eab026-582307",
            "language": "en",
            "date": "2022-10-20T08:34:28+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT FOR PROJECT 10039909",
                "title": "ITT FOR PROJECT 10039909",
                "description": "ITT FOR PROJECT 10039909",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 3600,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2026-05-01T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-08820238",
                    "name": "FUTURELINK SOLUTIONS LTD",
                    "identifier": {
                        "legalName": "FUTURELINK SOLUTIONS LTD",
                        "scheme": "GB-COH",
                        "id": "08820238"
                    },
                    "address": {
                        "streetAddress": "Marine Parade, \\nShaldon,\\nDevon, TQ14 0DP"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-4cfc26b4-efa0-479a-95cb-44f53994f683-1",
                    "status": "active",
                    "date": "2022-09-30T00:00:00+01:00",
                    "datePublished": "2022-10-20T08:34:28+01:00",
                    "value": {
                        "amount": 3600,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-08820238",
                            "name": "FUTURELINK SOLUTIONS LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2026-05-01T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/7ef0f40a-4c76-48d6-847e-bca347eab026",
                            "datePublished": "2022-10-20T08:34:28+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-d8eae1cb-6da8-4919-b46c-46587153fc86",
            "id": "126c63ae-9ae6-455e-a28f-80e07deb2c1d-582309",
            "language": "en",
            "date": "2022-10-20T08:32:32+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BUCKSH001-DN638886-74832485",
                "title": "Juniper Hill School - Water Heater",
                "description": "Replace gas fired water heater",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "50800000",
                    "description": "Miscellaneous repair and maintenance services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 10000,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Restricted procedure",
                "tenderPeriod": {
                    "endDate": "2022-10-19T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-24T00:00:00+01:00",
                    "endDate": "2022-11-30T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "works"
            },
            "parties": [
                {
                    "id": "GB-CFS-187980",
                    "name": "Buckinghamshire Council",
                    "identifier": {
                        "legalName": "Buckinghamshire Council"
                    },
                    "address": {
                        "streetAddress": "Walton Street Office, Walton Street",
                        "locality": "Aylesbury",
                        "postalCode": "HP20 1UX",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Mark Hunt",
                        "email": "ljphillips@buckscc.gov.uk",
                        "telephone": "07850963628"
                    },
                    "details": {
                        "url": "https://www.buckinghamshire.gov.uk/"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-188920",
                    "name": "Tencer Ltd",
                    "identifier": {
                        "legalName": "Tencer Ltd"
                    },
                    "address": {
                        "streetAddress": "Units 14/15 Lincolns Park Business Centre, Lincoln Road, Cressex Business Park, High Wycombe, Bucks HP12 3RD"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-187980",
                "name": "Buckinghamshire Council"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-d8eae1cb-6da8-4919-b46c-46587153fc86-1",
                    "status": "active",
                    "date": "2022-10-20T00:00:00+01:00",
                    "datePublished": "2022-10-20T08:32:32+01:00",
                    "value": {
                        "amount": 10335.3,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-188920",
                            "name": "Tencer Ltd"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-24T00:00:00+01:00",
                        "endDate": "2022-11-30T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/126c63ae-9ae6-455e-a28f-80e07deb2c1d",
                            "datePublished": "2022-10-20T08:32:32+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-04f03bea-20ae-40b4-afd3-b572bf7b4bf4",
            "id": "6d32085e-44e6-4f3f-a9df-2c503e06cdc4-582308",
            "language": "en",
            "date": "2022-10-20T08:31:16+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-1139500D0O000000rwimUAA",
                "title": "CYP Mental Health Crisis Training Pathway",
                "description": "Contract for the education and training of the health and social care workforce.",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "80000000",
                    "description": "Education and training services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 699999.99,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 700000.01,
                    "currency": "GBP"
                },
                "procurementMethodDetails": "Other - ",
                "tenderPeriod": {
                    "endDate": "2022-10-13T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-14T00:00:00+01:00",
                    "endDate": "2024-10-14T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                }
            },
            "parties": [
                {
                    "id": "GB-CFS-210510",
                    "name": "UK",
                    "identifier": {
                        "legalName": "UK"
                    },
                    "address": {
                        "streetAddress": "Duncombe Street",
                        "locality": "Leeds",
                        "postalCode": "LS1 4PL",
                        "countryName": "UK"
                    },
                    "contactPoint": {
                        "name": "Commercial Team",
                        "email": "commercial.team@hee.nhs.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224739",
                    "name": "The Anna Freud Centre",
                    "identifier": {
                        "legalName": "The Anna Freud Centre"
                    },
                    "address": {
                        "streetAddress": "12-14 Maresfield Gardens NW3 5SU"
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-210510",
                "name": "UK"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-04f03bea-20ae-40b4-afd3-b572bf7b4bf4-1",
                    "status": "active",
                    "date": "2022-09-13T00:00:00+01:00",
                    "datePublished": "2022-10-20T08:31:16+01:00",
                    "value": {
                        "amount": 700000,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224739",
                            "name": "The Anna Freud Centre"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-14T00:00:00+01:00",
                        "endDate": "2024-10-14T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/6d32085e-44e6-4f3f-a9df-2c503e06cdc4",
                            "datePublished": "2022-10-20T08:31:16+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "description": "SIGNED AFC and HEE Education and Training Contract (CYP MH Crisis Pathway Training Programme ) - redacted (1)",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/8e0786b7-1eed-4c71-acc5-d9c272a4ae3e",
                            "format": "application/pdf"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-389af343-a9da-40f6-9b9d-6165f8866012",
            "id": "a0495488-1240-4a56-8a13-8aacb365f3a0-582306",
            "language": "en",
            "date": "2022-10-20T07:56:06+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "FSCS 440",
                "title": "Microsoft Licences",
                "description": "Provision of Microsoft Licences",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "48000000",
                    "description": "Software package and information systems"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "North East",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "North West",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "Yorkshire and the Humber",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "East Midlands",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "East of England",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "London",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "South East",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "South West",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "Scotland",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "Wales",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "Northern Ireland",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 494549,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2022-09-27T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-26T00:00:00+01:00",
                    "endDate": "2025-10-25T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "goods"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/t7A7KJFS",
                    "name": "FINANCIAL SERVICES COMPENSATION SCHEME LIMITED",
                    "identifier": {
                        "legalName": "FINANCIAL SERVICES COMPENSATION SCHEME LIMITED",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/t7A7KJFS"
                    },
                    "address": {
                        "streetAddress": "10th Floor Beaufort House",
                        "locality": "LONDON",
                        "postalCode": "EC3A 7QU",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "Procurement@fscs.org.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-02579852",
                    "name": "INSIGHT DIRECT (UK) LTD",
                    "identifier": {
                        "legalName": "INSIGHT DIRECT (UK) LTD",
                        "scheme": "GB-COH",
                        "id": "02579852"
                    },
                    "address": {
                        "streetAddress": "4th floor, The Charter Building,Charter Place\\nUXBRIDGE\\nMiddlesex\\nUB8 1JG\\nGB"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/t7A7KJFS",
                "name": "FINANCIAL SERVICES COMPENSATION SCHEME LIMITED"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-389af343-a9da-40f6-9b9d-6165f8866012-1",
                    "status": "active",
                    "date": "2022-10-07T00:00:00+01:00",
                    "datePublished": "2022-10-20T07:56:06+01:00",
                    "value": {
                        "amount": 494549,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-02579852",
                            "name": "INSIGHT DIRECT (UK) LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-26T00:00:00+01:00",
                        "endDate": "2025-10-25T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/a0495488-1240-4a56-8a13-8aacb365f3a0",
                            "datePublished": "2022-10-20T07:56:06+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-0cfd831c-e806-46ef-98b6-ecbbe651f440",
            "id": "b3be84bc-6210-4001-9925-730c2124e63f-582305",
            "language": "en",
            "date": "2022-10-20T07:44:05+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-1139400D0O000000rwimUAA",
                "title": "M-Block LV Switchgear Replacement at Northwick Park Hospital",
                "description": "M-Block LV Switchgear Replacement at Northwick Park Hospital",
                "datePublished": "2022-10-20T07:44:05+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "71314100",
                    "description": "Electrical services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "45317000",
                        "description": "Other electrical installation work"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45311200",
                        "description": "Electrical fitting work"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45315100",
                        "description": "Electrical engineering installation works"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45310000",
                        "description": "Electrical installation work"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "HA1 3UJ"
                            },
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-03T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-16T00:00:00Z",
                    "endDate": "2023-04-28T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "works",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/b3be84bc-6210-4001-9925-730c2124e63f",
                        "datePublished": "2022-10-20T07:44:05+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Document 3 - NPH Design and Installation of M-Block LV Switchgear Replacement Particular Specification 1",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/cfd8adfc-31fc-4652-9871-c9afecec1071",
                        "format": "application/pdf"
                    },
                    {
                        "id": "3",
                        "description": "Document No 5 - Form of Tender - Design and Installation of M-Block LV Switchgear Replacement",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/ed496c90-46b6-43e1-a637-185318d3299f",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    },
                    {
                        "id": "4",
                        "description": "Document No 6 - Method statement response template",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/88839ebe-e4e9-496b-88ae-b47d8d1267da",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    },
                    {
                        "id": "5",
                        "description": "Document 4 - NPH Design and Installation of M-Block LV Switchgear Replacement Workmanship Specification 2",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/7a64e8af-de8e-4f42-8368-322f19b7968b",
                        "format": "application/pdf"
                    },
                    {
                        "id": "6",
                        "description": "Document No 1 - ITT - LNWUH -Design and Installation of M-Block LV Switchgear Replacement V2",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/c517e8d9-12d5-45c5-8a16-059da35200ab",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    },
                    {
                        "id": "7",
                        "description": "Document No 7 - List of Community for Social Value Contribtion",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/e3fe01eb-3be2-4967-8f75-d77867cdf605",
                        "format": "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
                    },
                    {
                        "id": "8",
                        "description": "Document No 8 - Social-value Guide v2",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/503cf5d9-10cc-4a17-8a03-c01c0bb14eb3",
                        "format": "application/pdf"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-224717",
                    "name": "London North West University Healthcare NHS Trust",
                    "identifier": {
                        "legalName": "London North West University Healthcare NHS Trust"
                    },
                    "address": {
                        "streetAddress": "Watford Rd, Harrow",
                        "locality": "London",
                        "postalCode": "HA1 3UJ",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Stewart Knights",
                        "email": "stewart.knights@nhs.net",
                        "telephone": "07970306427"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-224717",
                "name": "London North West University Healthcare NHS Trust"
            }
        },
        {
            "ocid": "ocds-b5fd17-f894ab76-a7f3-4dcc-8a84-b3b49632ad92",
            "id": "58978ac8-1495-4cc2-b06c-70dd9109b02f-582304",
            "language": "en",
            "date": "2022-10-20T07:26:53+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "3525.EFM.SW.22",
                "title": "3525.EFM.SW.22 QS Services for Chemistry NE",
                "description": "QS services for the Chemistry NE building.  Call off from the Procure Partnerships Framework.",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "71324000",
                    "description": "Quantity surveying services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "Yorkshire and the Humber",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 96936,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2022-10-18T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-24T00:00:00+01:00",
                    "endDate": "2025-10-23T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/JYFy743W",
                    "name": "UNIVERSITY OF SHEFFIELD",
                    "identifier": {
                        "legalName": "UNIVERSITY OF SHEFFIELD",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/JYFy743W"
                    },
                    "address": {
                        "streetAddress": "Western Bank",
                        "locality": "SHEFFIELD",
                        "postalCode": "S102TN",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Samantha Walker",
                        "email": "samantha.walker@sheffield.ac.uk",
                        "telephone": "01142222173"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-03154483",
                    "name": "TURNER & TOWNSEND CONSULTING LIMITED",
                    "identifier": {
                        "legalName": "TURNER & TOWNSEND CONSULTING LIMITED",
                        "scheme": "GB-COH",
                        "id": "03154483"
                    },
                    "address": {
                        "streetAddress": "Low Hall,Calverley Lane, Horsforth\\nLEEDS\\nWest Yorkshire\\nLS18 4GH\\nGB"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/JYFy743W",
                "name": "UNIVERSITY OF SHEFFIELD"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-f894ab76-a7f3-4dcc-8a84-b3b49632ad92-1",
                    "status": "active",
                    "date": "2022-10-19T00:00:00+01:00",
                    "datePublished": "2022-10-20T07:26:53+01:00",
                    "value": {
                        "amount": 96936,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-03154483",
                            "name": "TURNER & TOWNSEND CONSULTING LIMITED"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-24T00:00:00+01:00",
                        "endDate": "2025-10-23T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/58978ac8-1495-4cc2-b06c-70dd9109b02f",
                            "datePublished": "2022-10-20T07:26:53+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-e4ce9534-df42-4903-8af1-13f860df9939",
            "id": "4d1b4762-19c7-4339-9e14-307ea7044769-582302",
            "language": "en",
            "date": "2022-10-20T07:25:29+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "0000008420",
                "title": "4 Year PhD",
                "description": "Contract Awarded - Published for Transparency Purposes Only",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "73000000",
                    "description": "Research and development services and related consultancy services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "SP4 0JQ"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 41700,
                    "currency": "GBP"
                },
                "procurementMethod": "direct",
                "procurementMethodDetails": "Single tender action (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-09-30T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-01T00:00:00+01:00",
                    "endDate": "2026-09-20T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "goods"
            },
            "parties": [
                {
                    "id": "GB-GOR-EA42",
                    "name": "Defence Science and Technology Laboratory",
                    "identifier": {
                        "legalName": "Defence Science and Technology Laboratory",
                        "scheme": "GB-GOR",
                        "id": "EA42"
                    },
                    "address": {
                        "streetAddress": "Porton Down",
                        "locality": "SALISBURY",
                        "postalCode": "SP40JQ",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Dstl Commercial Services CT&S Division",
                        "email": "CTS-Transparency@dstl.gov.uk",
                        "telephone": "01980 950000"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-RC000664",
                    "name": "UNIVERSITY OF NOTTINGHAM",
                    "identifier": {
                        "legalName": "UNIVERSITY OF NOTTINGHAM",
                        "scheme": "GB-COH",
                        "id": "RC000664"
                    },
                    "address": {
                        "streetAddress": "The University Of Nottingham, University Park\\nNG7 2RD\\nGB"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-GOR-EA42",
                "name": "Defence Science and Technology Laboratory"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-e4ce9534-df42-4903-8af1-13f860df9939-1",
                    "status": "active",
                    "date": "2022-10-06T00:00:00+01:00",
                    "datePublished": "2022-10-20T07:25:29+01:00",
                    "value": {
                        "amount": 41700,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-RC000664",
                            "name": "UNIVERSITY OF NOTTINGHAM"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-01T00:00:00+01:00",
                        "endDate": "2026-09-20T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/4d1b4762-19c7-4339-9e14-307ea7044769",
                            "datePublished": "2022-10-20T07:25:29+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "documentType": "biddingDocuments",
                            "description": "Tasking Form Part A",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/757c8187-8e3a-4796-8c7d-1b118ffd49c5",
                            "format": "application/pdf"
                        },
                        {
                            "id": "3",
                            "documentType": "contractSchedule",
                            "description": "Tasking Form Part B",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/fa3d6b40-93a5-4dfc-9c79-60f430483429",
                            "format": "application/pdf"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-2900d60f-7dd9-4f9f-b31c-074b57cd3e9a",
            "id": "d8e3d53e-d332-42e4-a51e-47f34fdc5552-582303",
            "language": "en",
            "date": "2022-10-20T07:17:59+01:00",
            "tag": [
                "awardUpdate"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "3524.EFM.SW.22",
                "title": "3524.EFM.SW.22 PM Services - Chemistry NE",
                "description": "Call off from Procure Partnerships framework for the provision of a Project Manager for the Chemistry North East Building",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "71530000",
                    "description": "Construction consultancy services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "71541000",
                        "description": "Construction project management services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "Yorkshire and the Humber",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 83762,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2022-10-18T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-24T00:00:00+01:00",
                    "endDate": "2025-10-24T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/JYFy743W",
                    "name": "UNIVERSITY OF SHEFFIELD",
                    "identifier": {
                        "legalName": "UNIVERSITY OF SHEFFIELD",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/JYFy743W"
                    },
                    "address": {
                        "streetAddress": "Western Bank",
                        "locality": "SHEFFIELD",
                        "postalCode": "S102TN",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Samantha Walker",
                        "email": "samantha.walker@sheffield.ac.uk",
                        "telephone": "01142222173"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-03154483",
                    "name": "TURNER & TOWNSEND CONSULTING LIMITED",
                    "identifier": {
                        "legalName": "TURNER & TOWNSEND CONSULTING LIMITED",
                        "scheme": "GB-COH",
                        "id": "03154483"
                    },
                    "address": {
                        "streetAddress": "Low Hall,Calverley Lane, Horsforth\\nLEEDS\\nWest Yorkshire\\nLS18 4GH\\nGB"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/JYFy743W",
                "name": "UNIVERSITY OF SHEFFIELD"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-2900d60f-7dd9-4f9f-b31c-074b57cd3e9a-1",
                    "status": "active",
                    "date": "2022-10-19T00:00:00+01:00",
                    "datePublished": "2022-10-19T09:44:26+01:00",
                    "value": {
                        "amount": 83762,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-03154483",
                            "name": "TURNER & TOWNSEND CONSULTING LIMITED"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-24T00:00:00+01:00",
                        "endDate": "2025-10-24T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/d8e3d53e-d332-42e4-a51e-47f34fdc5552",
                            "datePublished": "2022-10-19T09:44:26+01:00",
                            "dateModified": "2022-10-20T07:17:59+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-1f8f1375-664b-4595-a616-ef4765a6eb4d",
            "id": "df0760b7-876d-4edb-bc2e-e1c3fc8e1d5a-582301",
            "language": "en",
            "date": "2022-10-20T07:01:23+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-1139300D0O000000rwimUAA",
                "title": "COGNITIVE ANALYTIC THERAPY",
                "description": "The NHS Long Term Plan sets out a commitment to new and integrated models of primary and community mental health care.  A new community-based offer will include access to psychological therapies, improved physical health care, employment support, personalised and trauma-informed care, medicines management and support for self-harm and coexisting substance use.  This includes maintaining and developing new services for people who have the most complex needs and proactive work to address racial disparities.  As part of this development, there is a need to expand the adult community workforce by over 10,000 staff.  Transformation and expansion will include increasing access to evidence-based psychological therapies - which will mean extended training for existing and new staff across a range of NICE-recommended modalities.\\nCognitive Analytic Therapy (CAT) Practitioner training enables core mental health professionals with competence in their own field to enhance their understanding and skills in a specific psychological therapy by learning the theory and methods of CAT as an individual therapy applied to adult mental health, as well as introduction to CAT in groups and consultation settings. The course takes a minimum of two years to complete and is assessed, leading to accreditation as a CAT Practitioner and eligibility for full membership of Association of Cognitive Analytic Therapy (ACAT).  The course provides mental health professionals with competence as a psychological therapist in the full use of CAT with individuals and, with appropriate supervision, contextual CAT and CAT in client groups. \\nCAT is a transdiagnostic method which does not rely on medical diagnostic categories, however, these clients would be likely to meet criteria for diagnoses of  'Borderline Personality Disorder', or 'Emotionally Unstable Personality Disorder'.\\nHealth Education England (HEE) has been working with stakeholders to develop a national curriculum for CAT.  HEE is now seeking education providers to deliver training against the national curriculum.\\nHEE is aiming to commission multiple education providers to deliver practitioner training against the national curriculum for CAT.\\nFurther details and the tender documents can be download from the link below.\\nhttps://health-family.force.com/s/Welcome",
                "datePublished": "2022-10-20T07:01:23+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "80000000",
                    "description": "Education and training services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "LS1 4PL"
                            },
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1800000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-16T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-12-22T00:00:00Z",
                    "endDate": "2027-12-21T23:59:59Z"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/df0760b7-876d-4edb-bc2e-e1c3fc8e1d5a",
                        "datePublished": "2022-10-20T07:01:23+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-214475",
                    "name": "Health Education England",
                    "identifier": {
                        "legalName": "Health Education England"
                    },
                    "address": {
                        "streetAddress": "Blenheim House , Duncombe Street",
                        "locality": "Leeds",
                        "postalCode": "LS1 4PL",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Anthony Oba",
                        "email": "anthony.oba@hee.nhs.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-214475",
                "name": "Health Education England"
            }
        },
        {
            "ocid": "ocds-b5fd17-9737a8cd-3858-42e9-998d-372c7769c305",
            "id": "f1d9aa8f-8b4e-4599-a555-fa474b272a04-582300",
            "language": "en",
            "date": "2022-10-19T22:58:45+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-100-3787-P0193R",
                "title": "P0193R - Ward End Park Lakeside Renewal Project Summative Assessment",
                "description": "The Council requires a supplier for the provision of a Summative Assessment to evaluate the processes and outcomes of the Ward End Park Lakeside Renewal Project.\\n      \\n      The Council requires an independent project evaluation to be undertaken in line with the ESIF-GN-1-033_ ERDF_ Summative_ Assessment_Guidance.\\n      \\n      The Summative Assessment consultant will evaluate the works and the targeted outcomes and impacts of the programme.\\n      \\n      As part of this process the consultant will evaluate the progress of the project and report on their findings throughout the duration of the project with the final report to be issued to the client at the end of the scheme. The report will be presented in accordance with the ESIF Summative Assessment Guidance referred to above and incorporate evaluation criteria of partner funding organisations.\\n      \\n      This contract will be for a period of 8 months commencing 28th November 2022 until 27th July 2023.    \\n      \\n      The Council will be using its free to use e-tendering system (in-tend) for the administration of this procurement process and potential suppliers must register with the system to be able to express an interest. If you wish to express an interest in this opportunity please click on the following link to access https://in-tendhost.co.uk/birminghamcc/ and submit your details to register. You will then be able to log on which will enable you to download all relevant quotation documentation.  \\n      \\n      If you are unable to register with In-tend or have any questions or problems on how to use this web site please email us at: cps@birmingham.gov.uk\\n      \\n      Your completed quotation submission should be returned by noon on 2nd November 2022 via the 'in-tend' system https://in-tendhost.co.uk/birminghamcc\\n\\nAdditional information: \\nIf you are interested in tendering please click on the following link to access Birmingham City Council's tender Portal.\\n\\nDelivery Notes\\n\\nBirmingham\\n\\nFunding Type (WEFO or EU) : ERDF\\n\\nFunding Description\\n\\nFunded by the European Regional Development Fund, the LEP's Growing Places Fund, HS2 Community and Environment Fund, the National Lottery Community Fund and Birmingham City Council. \\n\\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-19T22:58:45+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79419000",
                    "description": "Evaluation consultancy services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "71314000",
                        "description": "Energy and related services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73200000",
                        "description": "Research and development consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73000000",
                        "description": "Research and development services and related consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "71314200",
                        "description": "Energy-management services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79311410",
                        "description": "Economic impact assessment"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79410000",
                        "description": "Business and management consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79400000",
                        "description": "Business and management consultancy and related services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72224000",
                        "description": "Project management consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "90711000",
                        "description": "Environmental impact assessment other than for construction"
                    },
                    {
                        "scheme": "CPV",
                        "id": "90713000",
                        "description": "Environmental issues consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "71541000",
                        "description": "Construction project management services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "B4 7DJ"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethodDetails": "Other - ",
                "tenderPeriod": {
                    "endDate": "2022-11-02T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-28T00:00:00Z",
                    "endDate": "2023-07-27T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/f1d9aa8f-8b4e-4599-a555-fa474b272a04",
                        "datePublished": "2022-10-19T22:58:45+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://in-tendhost.co.uk/birminghamcc/aspx/"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-43899",
                    "name": "Birmingham City Council",
                    "identifier": {
                        "legalName": "Birmingham City Council"
                    },
                    "address": {
                        "streetAddress": "1 Lancaster Circus, Birmingham",
                        "locality": "West Midlands",
                        "postalCode": "B4 7DJ",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Manjit Samrai",
                        "email": "manjit.samrai@birmingham.gov.uk",
                        "telephone": "0121 303 0349"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-43899",
                "name": "Birmingham City Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-8433b78c-1598-44b9-867a-c836dd1886b8",
            "id": "db119c30-48f5-49e2-b085-49716e47e39a-582299",
            "language": "en",
            "date": "2022-10-19T21:25:03+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BIP728707604",
                "title": "GB-Birmingham: Toxicology Services",
                "description": "The GDC is the UK-wide statutory regulator of around 115,000 members of the dental team, including over 42,000 dentists and 73,000 dental care professionals (DCPs) - dental nurses, clinical dental technicians, dental hygienists, dental technicians, dental therapists, and orthodontic therapists.\\n      \\n      The GDC is looking to appoint a suitably qualified supplier to provide a broad a range of alcohol and drug testing services for dental professionals as and when required across the whole of the UK. The Contract will be awarded for a duration of 3 years with the option to extend for two further one-year periods subject to satisfactory performance reviews. The result of any testing and analysis report will be relied upon to support decision making at Practice Committee(s), Interim Order Committee hearings and decision making by case examiners dealing with agreed undertakings.\\n      \\n      Access Code : 56YB4YXK35\\n\\nAdditional information: The contracting authority considers that this contract may be suitable for economic operators that are small or medium enterprises (SMEs). However, any selection of tenderers will be based solely on the criteria set out for the procurement.\\n        The Contract will commence on 9 December 2022 and will run for up to three years from the Commencement Date. The GDC has the option to extend the duration of the Contract by up to two years. In any event the total contract value will not exceed £177K exclusive of VAT or £213K including VAT. The contract will automatically terminate on either the expiry date or on reaching the maximum Contract value, whichever occurs first",
                "datePublished": "2022-10-19T21:25:03+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "90743100",
                    "description": "Toxic substances monitoring services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 100000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 500000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-10T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-12-09T00:00:00Z",
                    "endDate": "2025-12-08T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/db119c30-48f5-49e2-b085-49716e47e39a",
                        "datePublished": "2022-10-19T21:25:03+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "documentType": "tenderNotice",
                        "description": "Please follow this link to view the notice.",
                        "url": "https://www.delta-esourcing.com/tenders/UK-GB-Birmingham:-Toxicology-Services/56YB4YXK35"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-224738",
                    "name": "General Dental Council",
                    "identifier": {
                        "legalName": "General Dental Council"
                    },
                    "address": {
                        "streetAddress": "Wimpole Street",
                        "locality": "London",
                        "postalCode": "W1G 8DQ",
                        "countryName": "UK"
                    },
                    "contactPoint": {
                        "name": "Procurement Team",
                        "email": "procurement@gdc-uk.org",
                        "telephone": "02071676000"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-224738",
                "name": "General Dental Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-5e6c6f29-9a57-42b3-a4dc-9828e51ad503",
            "id": "711f665b-3153-4f1f-b1e5-09394c6493af-582298",
            "language": "en",
            "date": "2022-10-19T20:11:34+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "LINCOLN001-DN597016-38807030",
                "title": "Domestic Abuse Support Service",
                "description": "Lincolnshire County Council is undertaking procurement for a Domestic Abuse Support Service under the Light Touch Regime, pursuant to Regulation 76(7) of the Public Contracts Regulations 2015 (PCR). The main purpose of the Domestic Abuse Support Service is to provide support to Lincolnshire residents at risk of, experiencing or affected by domestic abuse.\\nThe Domestic Abuse Support Service encompasses the following elements of service: \\n-A digitally based Universal Offer to all victims of domestic abuse in Lincolnshire.\\n-A Support Hub, including helpline, effective triage, and strength-based assessment.\\n-Adult Support Interventions including complex needs pathway\\n-Children and Young People's Support Interventions\\n-IDVA Support for victims at highest risk of serious harm\\n-Recovery Support\\n-An Outreach and Engagement Team\\nLincolnshire County Council along with the Office of the Police and Crime Commissioner and the Lincolnshire Integrated Care Board have pooled funding to achieve the maximum annual budget of £1,655,000. There is a need to work closely with partners and maximise the volume and impact of the services being commissioned. \\nDuring the life of this contract, it may become necessary to purchase additional volume or implement solutions for the Domestic Abuse Partnership that align with the outcomes of the service. This is in line with the scale of the work and any existing and subsequent Statutory guidance. Hence when further funding becomes available for domestic abuse during the term of this contract, the Council, ICB and the OPCC will where appropriate use this contract to channel any such resources and funding to deliver outcomes for victims of Domestic Abuse.   A bidder's event will be held on Teams, on the 26th October 2022 between 11am and 12pm, Please register your interest through pro-contract. \\n\\n",
                "datePublished": "2022-10-19T20:11:34+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "85300000",
                    "description": "Social work and related services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 8275000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 11000000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-17T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-04-01T00:00:00+01:00",
                    "endDate": "2028-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/711f665b-3153-4f1f-b1e5-09394c6493af",
                        "datePublished": "2022-10-19T20:11:34+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Advert",
                        "url": "https://procontract.due-north.com/Advert?advertId=5c3ccd74-9d9b-ec11-8112-005056b64545"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-51222",
                    "name": "Lincolnshire County Council",
                    "identifier": {
                        "legalName": "Lincolnshire County Council"
                    },
                    "address": {
                        "streetAddress": "County Offices, Newland",
                        "locality": "Lincoln",
                        "postalCode": "LN1 1YL",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Reena Fehnert",
                        "email": "reena.fehnert@lincolnshire.gov.uk",
                        "telephone": "+44 1522553658"
                    },
                    "details": {
                        "url": "https://www.lincolnshire.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-51222",
                "name": "Lincolnshire County Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-b61d175f-ad62-4170-a05d-e37c73feaa24",
            "id": "1cdbf0a9-314f-4c15-9b35-d30a59ea9367-582297",
            "language": "en",
            "date": "2022-10-19T19:17:05+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-234-34863-GBC - 034863",
                "title": "GBC - Locking and Unlocking of GBC sites",
                "description": "GBC required a suitable qualified and experienced supplier (with Local Authority service delivery experience and a member of the Master Locksmiths Association to lock and unlock various sites across Guildford.\\n      \\n      The supplier may also be awarded similar services for additional sites as and when required by the Council. The value for these services is unknown at present.\\n\\nAdditional information: \\nFur further information on how to apply please visit http://www.sesharedservices.org.uk/esourcing\\n\\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-19T19:17:05+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79710000",
                    "description": "Security services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "GU2 4BB"
                            },
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-12-05T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-02-06T00:00:00Z",
                    "endDate": "2026-02-05T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/1cdbf0a9-314f-4c15-9b35-d30a59ea9367",
                        "datePublished": "2022-10-19T19:17:05+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "http://www.guildford.gov.uk"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-162895",
                    "name": "Guildford Borough Council",
                    "identifier": {
                        "legalName": "Guildford Borough Council"
                    },
                    "address": {
                        "streetAddress": "Guildford, Surrey",
                        "locality": "SurreY",
                        "postalCode": "GU2 4BB",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Adrian Swift  (GBC)",
                        "email": "Adrian.swift@guildford.gov.uk",
                        "telephone": "07866 164604"
                    },
                    "details": {
                        "url": "http://www.guildford.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-162895",
                "name": "Guildford Borough Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-04448330-49ca-432b-96b7-b9cfbed6d27b",
            "id": "c80defc1-9081-4b74-a5b1-d85535d22a12-582109",
            "language": "en",
            "date": "2022-10-19T18:36:35+01:00",
            "tag": [
                "planning"
            ],
            "initiationType": "tender",
            "title": "Market Engagement Event: Safe Haven and Crisis Beds Services for NHS Derby & Derbyshire ICB",
            "planning": {
                "milestones": [
                    {
                        "id": "1",
                        "title": "Engagement end date",
                        "type": "engagement",
                        "dueDate": "2022-11-10T23:59:59Z"
                    }
                ],
                "documents": [
                    {
                        "id": "1",
                        "documentType": "marketEngagementNotice",
                        "description": "Early engagement notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/c80defc1-9081-4b74-a5b1-d85535d22a12",
                        "datePublished": "2022-10-19T18:36:35+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "tender": {
                "id": "60274",
                "title": "Market Engagement Event: Safe Haven and Crisis Beds Services for NHS Derby & Derbyshire ICB",
                "description": "** THIS ADVERT IS FOR A MARKET ENGAGEMENT EVENT **\\n\\nNHS Derby & Derbyshire Integrated Care Board (ICB) is seeking to commission the provision of Mental Health Crisis Alternatives support as follows: 1) a 'Safe Haven'/ open access Crisis Cafe in Chesterfield 2) 4 bedded Crisis House based in Chesterfield, providing short term mental health support; and 3) 4 bedded Crisis House based in Derby, providing short term mental health support. This notice intends to identify suppliers who would like to express an interest in providing these services and to invite all interested parties to attend a Market Engagement Event. The event will be held via MS Teams.\\n\\nThe specifications for these services will be circulated in advance of the event. \\n\\nPlease note that these services and any forthcoming tender exercises are pending approval and sign off by Derby and Derbyshire ICB.\\n\\nThe event details are as follows:\\nDate: Friday 11th November 2022\\nVenue: Online via MS Teams\\nTime: 09:30am \\nDuration: 2 hours\\n\\nPlease note interest is limited to three persons per organisation.\\n\\nThe Agenda will be:\\n\\n1 - Welcome and Introductions\\n2 - Specification & Service Model \\n3 - Questions\\n4 - Procurement Process \\n5 - Questions\\n6 - Close\\n\\nIf you wish to attend please register on EU-Supply using the link below and provide the required details. Closer to the event you will receive a calendar invite detailing how to access the event and a link to MS Teams.\\n\\nTo register your interest in this event please visit:\\nEU-Supply on the link below and access project 60274 - Market Engagement Event: Safe Haven and Crisis Beds Services for NHS Derby & Derbyshire ICB. EU-Supply link = https://uk.eu-supply.com/login.asp?B=agcsu\\nPlease note the deadline for confirmation of attendance is 4pm on Thursday 10th November 2022 after which the access details will then be shared.",
                "status": "planning",
                "classification": {
                    "scheme": "CPV",
                    "id": "85100000",
                    "description": "Health services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "East Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "suitability": {
                    "sme": true,
                    "vcse": true
                }
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Ways69eB",
                    "name": "NHS Arden and GEM CSU",
                    "identifier": {
                        "legalName": "NHS Arden and GEM CSU",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Ways69eB"
                    },
                    "address": {
                        "streetAddress": "Cardinal Square, 10 Nottingham Road",
                        "locality": "Derby",
                        "postalCode": "DE13QT",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Tom Greenwood",
                        "email": "thomas.Greenwood2@nhs.net"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Ways69eB",
                "name": "NHS Arden and GEM CSU"
            }
        },
        {
            "ocid": "ocds-b5fd17-1dee76ea-6573-46ae-a48b-1a292d0470a5",
            "id": "23fd3f60-e06c-4598-afb8-865b0b179e9f-582295",
            "language": "en",
            "date": "2022-10-19T18:05:34+01:00",
            "tag": [
                "planning"
            ],
            "initiationType": "tender",
            "title": "Provision & Fixing of Military Pattern Memorials for Armed Forces Personnel-RFI",
            "planning": {
                "milestones": [
                    {
                        "id": "1",
                        "title": "Engagement end date",
                        "type": "engagement",
                        "dueDate": "2022-11-04T23:59:59Z"
                    }
                ],
                "documents": [
                    {
                        "id": "3",
                        "documentType": "marketEngagementNotice",
                        "description": "Early engagement notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/23fd3f60-e06c-4598-afb8-865b0b179e9f",
                        "datePublished": "2022-10-19T18:02:48+01:00",
                        "dateModified": "2022-10-19T18:05:34+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "4",
                        "description": "n/a",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/b3fe7c34-d825-4cf8-ac46-7b79409a7aff",
                        "format": "application/pdf"
                    },
                    {
                        "id": "5",
                        "description": "n/a",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/0a13663a-9009-4414-ae18-a8117171ab4b",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    },
                    {
                        "id": "6",
                        "description": "Defence Sourcing Portal Opportunity Listing",
                        "url": "https://contracts.mod.uk/esop/guest/go/opportunity/detail?opportunityId=55096"
                    }
                ]
            },
            "tender": {
                "id": "tender_319873/1115970",
                "title": "Provision & Fixing of Military Pattern Memorials for Armed Forces Personnel-RFI",
                "description": "THIS IS A REQUEST FOR INFORMATION ONLY.\\n\\nThis is a Request for Information for the potential continued requirement for the Provision and Fixing of Service Pattern Memorials (Headstones and Urn Plot Markers) for Armed Forces Personnel. \\n\\nThis Request For Information is seeking to gain a broad understanding of how Industry may view the current and potential replacement requirement.\\n\\nPlease go to the Opportunity Listing on the Defence Sourcing Portal to locate the MOD JCCC SERVICE PATTERN MEMORIAL PROCUREMENT - MARKET INTEREST EVENT QUESTIONNAIRE. \\n\\nThe closing date for the return of completed questionnaires is 17:00 4 November 2022.",
                "status": "planning",
                "classification": {
                    "scheme": "CPV",
                    "id": "44912100",
                    "description": "Granite"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "44921300",
                        "description": "Limestone"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45262511",
                        "description": "Stone carving"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "GL3 1HW"
                            },
                            {
                                "region": "South West",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "suitability": {
                    "sme": true,
                    "vcse": false
                }
            },
            "parties": [
                {
                    "id": "GB-CFS-218809",
                    "name": "Ministry of Defence",
                    "identifier": {
                        "legalName": "Ministry of Defence"
                    },
                    "address": {
                        "streetAddress": "Innsworth House, Imjin Barracks",
                        "locality": "Gloucester",
                        "postalCode": "GL3 1HW",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "defcomrcl-hobp4-1a@mod.gov.uk"
                    },
                    "details": {
                        "url": "https://contracts.mod.uk/web/login.html"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-218809",
                "name": "Ministry of Defence"
            }
        },
        {
            "ocid": "ocds-b5fd17-c77885fd-e795-4ba0-823b-69ddb99fd367",
            "id": "ba28b627-6f6f-4ecf-ac86-a97171ea4ef0-582296",
            "language": "en",
            "date": "2022-10-19T18:05:27+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BLACK001-DN525031-13793031",
                "title": "Provision of Remedial Works for the Maintenance and Refurbishment of the Blackpool Steel Structure",
                "description": "Blackpool Council is looking to appoint a suitably experienced and qualified remedial works contracting firm in order to undertake remedial works for the maintenance and refurbishment of the Blackpool Tower steel structure which consists of an initial remedial package of works as out lined in the tender documents.\\n\\nIt is anticipated that this work will commence November 2022 and will be completed by the 24th March 2023, to allow the Tower to operate by Easter 2023. \\n\\nThe Contract may be extended to incorporate other packages of work with the successful Contractor for up to (no more than) 4 years (subject to contract review and budget availability). It is to be noted that there is no guarantee of future packages.  Should there be the need for such a requirement the successful bidder will be asked to provide a price and quality response for the work specified however the Council reserves the right to seek other bids to enable value for money to be achieved.\\n",
                "datePublished": "2022-10-19T18:05:27+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "50800000",
                    "description": "Miscellaneous repair and maintenance services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-04T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-15T00:00:00Z",
                    "endDate": "2023-03-24T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "works",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/ba28b627-6f6f-4ecf-ac86-a97171ea4ef0",
                        "datePublished": "2022-10-19T18:05:27+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-50870",
                    "name": "Blackpool Council",
                    "identifier": {
                        "legalName": "Blackpool Council"
                    },
                    "address": {
                        "streetAddress": "PO Box 4",
                        "locality": "Blackpool",
                        "postalCode": "FY1 1NA",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Helen Thompson",
                        "email": "helen.thompson@blackpool.gov.uk",
                        "telephone": "+44 1253478760"
                    },
                    "details": {
                        "url": "http://www.blackpool.gov.uk/"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-50870",
                "name": "Blackpool Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-1dee76ea-6573-46ae-a48b-1a292d0470a5",
            "id": "55456bca-819f-4cc8-ace4-7a7050bd987c-582294",
            "language": "en",
            "date": "2022-10-19T18:02:48+01:00",
            "tag": [
                "planning"
            ],
            "initiationType": "tender",
            "title": "Provision & Fixing of Military Pattern Memorials for Armed Forces Personnel-RFI",
            "planning": {
                "milestones": [
                    {
                        "id": "1",
                        "title": "Engagement end date",
                        "type": "engagement",
                        "dueDate": "2022-11-04T23:59:59Z"
                    }
                ],
                "documents": [
                    {
                        "id": "1",
                        "documentType": "marketEngagementNotice",
                        "description": "Early engagement notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/55456bca-819f-4cc8-ace4-7a7050bd987c",
                        "datePublished": "2022-10-19T18:02:48+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Defence Sourcing Portal Opportunity Listing containing Questionnaire",
                        "url": "https://contracts.mod.uk/esop/guest/go/opportunity/detail?opportunityId=55096"
                    }
                ]
            },
            "tender": {
                "id": "tender_319873/1115970",
                "title": "Provision & Fixing of Military Pattern Memorials for Armed Forces Personnel-RFI",
                "description": "THIS IS A REQUEST FOR INFORMATION ONLY.\\n\\nThis is a Request for Information for the potential continued requirement for the Provision and Fixing of Service Pattern Memorials (Headstones and Urn Plot Markers) for Armed Forces Personnel. \\n\\nThis Request For Information is seeking to gain a broad understanding of how Industry may view the current and potential replacement requirement.\\n\\nPlease go to the Opportunity Listing on the Defence Sourcing Portal to locate the MOD JCCC SERVICE PATTERN MEMORIAL PROCUREMENT - MARKET INTEREST EVENT QUESTIONNAIRE. \\n\\nThe closing date for the return of completed questionnaires is 17:00 4 November 2022.",
                "status": "planning",
                "classification": {
                    "scheme": "CPV",
                    "id": "44912100",
                    "description": "Granite"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "44921300",
                        "description": "Limestone"
                    },
                    {
                        "scheme": "CPV",
                        "id": "45262511",
                        "description": "Stone carving"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "GL3 1HW"
                            },
                            {
                                "region": "South West",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "suitability": {
                    "sme": true,
                    "vcse": false
                }
            },
            "parties": [
                {
                    "id": "GB-CFS-218809",
                    "name": "Ministry of Defence",
                    "identifier": {
                        "legalName": "Ministry of Defence"
                    },
                    "address": {
                        "streetAddress": "Innsworth House, Imjin Barracks",
                        "locality": "Gloucester",
                        "postalCode": "GL3 1HW",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "defcomrcl-hobp4-1a@mod.gov.uk"
                    },
                    "details": {
                        "url": "https://contracts.mod.uk/web/login.html"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-218809",
                "name": "Ministry of Defence"
            }
        },
        {
            "ocid": "ocds-b5fd17-2b4632bc-f267-4f1f-a282-8af8840841e1",
            "id": "26cc0149-f1e3-48c5-8401-487ef2406258-582293",
            "language": "en",
            "date": "2022-10-19T18:01:37+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ROCH001-DN638870-66182135",
                "title": "Website for Atom Valley",
                "description": "Rochdale Development Agency (RDA), with our associated partners, wishes to appoint an agency to develop and launch a location promotion campaign for Atom Valley in Greater Manchester. The purpose of the campaign is to engage with our target audiences, build awareness of our brand, and generate interest from potential funders and inward investors.\\n\\nAtom Valley is the largest of six growth locations in Greater Manchester and includes three prime employment sites in Bury, Oldham and Rochdale. Our aim is to establish Atom Valley as a mega cluster of manufacturing innovation which will be of international significance and attractive to inward investors in the advanced machinery and advanced materials sectors.\\n\\nThe core component of the campaign will be a website to communicate the Atom Valley opportunity to our target audiences. This will be supported by clear and concise messaging, high quality content which is regularly refreshed, social media engagement and related marketing and communications activity to stimulate interest and generate enquiries.\\n",
                "datePublished": "2022-10-19T18:01:37+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79000000",
                    "description": "Business services: law, marketing, consulting, recruitment, printing and security"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 50000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-04T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-28T00:00:00Z",
                    "endDate": "2023-11-27T23:59:59Z"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/26cc0149-f1e3-48c5-8401-487ef2406258",
                        "datePublished": "2022-10-19T18:01:37+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Advert",
                        "url": "https://procontract.due-north.com/Advert?advertId=280cecd0-cd4f-ed11-811a-005056b64545"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-124340",
                    "name": "Rochdale Metropolitan Borough Council",
                    "identifier": {
                        "legalName": "Rochdale Metropolitan Borough Council"
                    },
                    "address": {
                        "streetAddress": "4th Floor, Waterside House, Waterside Plaza",
                        "locality": "Sale",
                        "postalCode": "M33 7ZF",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Gary Lee",
                        "email": "gary.lee@star-procurement.gov.uk",
                        "telephone": "+44 7976957786"
                    },
                    "details": {
                        "url": "http://www.rochdale.gov.uk/"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-124340",
                "name": "Rochdale Metropolitan Borough Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-5c012011-a7b8-4955-8b56-cf779497f590",
            "id": "35c15865-5553-474a-bd6c-f2b68c497f6b-582292",
            "language": "en",
            "date": "2022-10-19T17:56:40+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "tender_318537/1115907",
                "title": "Isle of Cumbrae CRS Fit Out Works",
                "description": "Newly acquired Coastguard Rescue Station (CRS) on the Isle of Cumbrae requires with some external but mainly internal fit out to meet MCA operational standard.\\n\\nAdditional information: \\nTo view tender documentation, please register on the DfT Jaggaer eSourcing Portal and look up itt_1164",
                "datePublished": "2022-10-19T17:56:40+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "45210000",
                    "description": "Building construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "Scotland",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 60000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-09T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-12-01T00:00:00Z",
                    "endDate": "2023-01-20T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "works",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/35c15865-5553-474a-bd6c-f2b68c497f6b",
                        "datePublished": "2022-10-19T17:56:40+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Link to eSourcing Portal",
                        "url": "https://dft.app.jaggaer.com"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-167083",
                    "name": "MCA - Maritime and Coastguard Agency",
                    "identifier": {
                        "legalName": "MCA - Maritime and Coastguard Agency"
                    },
                    "address": {
                        "streetAddress": "105 Commercial Road",
                        "locality": "Southampton",
                        "postalCode": "SO15 1EG",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "contracts@mcga.gov.uk"
                    },
                    "details": {
                        "url": "https://www.gov.uk/government/organisations/maritime-and-coastguard-agency"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-167083",
                "name": "MCA - Maritime and Coastguard Agency"
            }
        },
        {
            "ocid": "ocds-b5fd17-76b1d25d-854c-498b-a6d1-33d7cdc244a1",
            "id": "83484885-3ac6-4242-9005-37583b2fe861-582291",
            "language": "en",
            "date": "2022-10-19T17:45:14+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "MT227713",
                "title": "Email Security Solution",
                "description": "The Catapult requires an intelligent email security solution to work alongside Microsoft Office 365 and ATP to strengthen our cyber security and eliminate risk of infiltration.",
                "datePublished": "2022-10-19T17:45:14+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "48000000",
                    "description": "Software package and information systems"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "South East",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-18T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-12-09T00:00:00Z",
                    "endDate": "2024-12-08T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "goods",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/83484885-3ac6-4242-9005-37583b2fe861",
                        "datePublished": "2022-10-19T17:45:14+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "documentType": "tenderNotice",
                        "description": "NOTE: To register your interest in this notice and obtain any additional information please visit the myTenders Web Site at the link provided.",
                        "url": "https://www.mytenders.co.uk/search/show/search_view.aspx?ID=OCT165333"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-154867",
                    "name": "Satellite Applications Catapult",
                    "identifier": {
                        "legalName": "Satellite Applications Catapult"
                    },
                    "address": {
                        "streetAddress": "Electron Building, Fermi Avenue, Harwell",
                        "locality": "Didcot",
                        "postalCode": "OX11 0QR",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Procurement",
                        "email": "procurement@sa.catapult.org.uk",
                        "telephone": "+44 1235567977"
                    },
                    "details": {
                        "url": "https://sa.catapult.org.uk/"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-154867",
                "name": "Satellite Applications Catapult"
            }
        },
        {
            "ocid": "ocds-b5fd17-66babd80-87f5-4102-9dc3-ed1841a8c373",
            "id": "78c30ae8-867d-43af-8fe7-52d1ea8e16fa-582289",
            "language": "en",
            "date": "2022-10-19T17:40:16+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-100-3780-QU572",
                "title": "QU572 - Birmingham Better Mental Health Fund Evaluation",
                "description": "Birmingham City Council (the Council) is seeking for organisations to conduct an evaluation report for our Better Mental Health Fund projects. \\n      \\n      During the period 2021-2022, the Council received funding from Public Health England (PHE) now known as Office for Health Improvement and Disparities (OHID) to improve the mental health and wellbeing of Birmingham residents by commissioning a portfolio of projects to address the demand for mental health services and tackle inequalities. These projects are varied in terms of their size, target groups and the types of intervention. \\n      \\n      The Council, as a recipient of this OHID funding, is obligated to submit a local evaluation of the projects that have been commissioned via PHE's Better Mental Health Fund. The evaluation should add to the evidence-base in terms of effective service delivery and inform policy moving forwards, both policy for the Council specifically and as a contribution to policy on a national level.\\n      \\n      The evaluation should increase understanding of the impact of the Better Mental Health Fund on the mental wellbeing of the Birmingham population. Furthermore, the evaluation should explore the impact of the fund on participants, providers, and provision with the aim of outlining recommendations for the development of future programmes and commissions.\\n      \\n      Themes of the evaluation are expected to include the impact of the funding on:\\n      \\n      o Overview of engagement in the projects in data terms (quantitative)\\n      o The participants and their experiences, differences made to them and elements of the programme they liked most and why\\n      o Providers' views - what worked well and what did not, what they would like to repeat or change etc, has the funding opened created any new opportunities for them or made them think differently to find solutions?\\n      o Gaps in provision (from both individuals and providers)\\n      o Any specific elements that worked well for different populations/demographics and explanations for this\\n      o Sustainability and legacy of projects\\n      o Economic evaluation in terms of cost-effectiveness\\n      \\n      This contract will be for a period of 4 months.\\n      \\n      The maximum budget to cover all the costs is ?65,000 (exclusive VAT).\\n      \\n      The Council will be using its free to use e-tendering system (in-tend) for the administration of this procurement process and potential suppliers must register with the system to be able to express an interest. If you wish to express an interest in this opportunity, please click on the following link to access https://in-tendhost.co.uk/birminghamcc/ and submit your details to register. You will then be able to log on which will enable you to download all relevant quotation documentation.\\n      \\n      If you are unable to register with In-tend or have any questions or problems on how to use this web site please either email us at: cps@birmingham.gov.uk \\n      \\n      Your completed tender submission should be returned by noon on 4th November 2022 ...\\n\\nAdditional information: If you are interested in tendering please click on the following link to access Birmingham City Council's tender Portal.\\n\\nDelivery Notes\\n\\nBirmingham\\n\\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-14T11:13:45+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "98334000",
                    "description": "Wellness services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "98000000",
                        "description": "Other community, social and personal services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85100000",
                        "description": "Health services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85320000",
                        "description": "Social services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73210000",
                        "description": "Research consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79311300",
                        "description": "Survey analysis services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73000000",
                        "description": "Research and development services and related consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85300000",
                        "description": "Social work and related services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "75122000",
                        "description": "Administrative healthcare services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72224000",
                        "description": "Project management consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79311410",
                        "description": "Economic impact assessment"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73200000",
                        "description": "Research and development consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85000000",
                        "description": "Health and social work services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85140000",
                        "description": "Miscellaneous health services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79419000",
                        "description": "Evaluation consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79310000",
                        "description": "Market research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79315000",
                        "description": "Social research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85323000",
                        "description": "Community health services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85321000",
                        "description": "Administrative social services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72314000",
                        "description": "Data collection and collation services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73110000",
                        "description": "Research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "71620000",
                        "description": "Analysis services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79311400",
                        "description": "Economic research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79300000",
                        "description": "Market and economic research; polling and statistics"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72316000",
                        "description": "Data analysis services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85310000",
                        "description": "Social work services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "98200000",
                        "description": "Equal opportunities consultancy services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "B4 7WB"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethodDetails": "Other - ",
                "tenderPeriod": {
                    "endDate": "2022-11-04T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-06T00:00:00Z",
                    "endDate": "2023-02-05T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/78c30ae8-867d-43af-8fe7-52d1ea8e16fa",
                        "datePublished": "2022-10-14T11:13:45+01:00",
                        "dateModified": "2022-10-19T17:40:16+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://in-tendhost.co.uk/birminghamcc/aspx/"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-41105",
                    "name": "Birmingham City Council",
                    "identifier": {
                        "legalName": "Birmingham City Council"
                    },
                    "address": {
                        "streetAddress": "10 Woodcock Street, Birmingham",
                        "locality": "West Midlands",
                        "postalCode": "B4 7WB",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Manjit Samrai",
                        "email": "manjit.samrai@birmingham.gov.uk",
                        "telephone": "0121 303 0349"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-41105",
                "name": "Birmingham City Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-66babd80-87f5-4102-9dc3-ed1841a8c373",
            "id": "78c30ae8-867d-43af-8fe7-52d1ea8e16fa-582288",
            "language": "en",
            "date": "2022-10-19T17:40:00+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-100-3780-QU572",
                "title": "QU572 - Birmingham Better Mental Health Fund Evaluation",
                "description": "Birmingham City Council (the Council) is seeking for organisations to conduct an evaluation report for our Better Mental Health Fund projects. \\n      \\n      During the period 2021-2022, the Council received funding from Public Health England (PHE) now known as Office for Health Improvement and Disparities (OHID) to improve the mental health and wellbeing of Birmingham residents by commissioning a portfolio of projects to address the demand for mental health services and tackle inequalities. These projects are varied in terms of their size, target groups and the types of intervention. \\n      \\n      The Council, as a recipient of this OHID funding, is obligated to submit a local evaluation of the projects that have been commissioned via PHE's Better Mental Health Fund. The evaluation should add to the evidence-base in terms of effective service delivery and inform policy moving forwards, both policy for the Council specifically and as a contribution to policy on a national level.\\n      \\n      The evaluation should increase understanding of the impact of the Better Mental Health Fund on the mental wellbeing of the Birmingham population. Furthermore, the evaluation should explore the impact of the fund on participants, providers, and provision with the aim of outlining recommendations for the development of future programmes and commissions.\\n      \\n      Themes of the evaluation are expected to include the impact of the funding on:\\n      \\n      o Overview of engagement in the projects in data terms (quantitative)\\n      o The participants and their experiences, differences made to them and elements of the programme they liked most and why\\n      o Providers' views - what worked well and what did not, what they would like to repeat or change etc, has the funding opened created any new opportunities for them or made them think differently to find solutions?\\n      o Gaps in provision (from both individuals and providers)\\n      o Any specific elements that worked well for different populations/demographics and explanations for this\\n      o Sustainability and legacy of projects\\n      o Economic evaluation in terms of cost-effectiveness\\n      \\n      This contract will be for a period of 4 months.\\n      \\n      The maximum budget to cover all the costs is ?65,000 (exclusive VAT).\\n      \\n      The Council will be using its free to use e-tendering system (in-tend) for the administration of this procurement process and potential suppliers must register with the system to be able to express an interest. If you wish to express an interest in this opportunity, please click on the following link to access https://in-tendhost.co.uk/birminghamcc/ and submit your details to register. You will then be able to log on which will enable you to download all relevant quotation documentation.\\n      \\n      If you are unable to register with In-tend or have any questions or problems on how to use this web site please either email us at: cps@birmingham.gov.uk \\n      \\n      Your completed tender submission should be returned by noon on 4th November 2022 ...\\n\\nAdditional information: If you are interested in tendering please click on the following link to access Birmingham City Council's tender Portal.\\n\\nDelivery Notes\\n\\nBirmingham\\n\\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-14T11:13:45+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "98334000",
                    "description": "Wellness services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "98000000",
                        "description": "Other community, social and personal services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85100000",
                        "description": "Health services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85320000",
                        "description": "Social services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73210000",
                        "description": "Research consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79311300",
                        "description": "Survey analysis services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73000000",
                        "description": "Research and development services and related consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85300000",
                        "description": "Social work and related services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "75122000",
                        "description": "Administrative healthcare services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72224000",
                        "description": "Project management consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79311410",
                        "description": "Economic impact assessment"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73200000",
                        "description": "Research and development consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85000000",
                        "description": "Health and social work services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85140000",
                        "description": "Miscellaneous health services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79419000",
                        "description": "Evaluation consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79310000",
                        "description": "Market research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79315000",
                        "description": "Social research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85323000",
                        "description": "Community health services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85321000",
                        "description": "Administrative social services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72314000",
                        "description": "Data collection and collation services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73110000",
                        "description": "Research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "71620000",
                        "description": "Analysis services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79311400",
                        "description": "Economic research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79300000",
                        "description": "Market and economic research; polling and statistics"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72316000",
                        "description": "Data analysis services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85310000",
                        "description": "Social work services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "98200000",
                        "description": "Equal opportunities consultancy services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "B4 7WB"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethodDetails": "Other - ",
                "tenderPeriod": {
                    "endDate": "2022-11-04T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-06T00:00:00Z",
                    "endDate": "2023-02-05T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/78c30ae8-867d-43af-8fe7-52d1ea8e16fa",
                        "datePublished": "2022-10-14T11:13:45+01:00",
                        "dateModified": "2022-10-19T17:40:00+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://in-tendhost.co.uk/birminghamcc/aspx/"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-41105",
                    "name": "Birmingham City Council",
                    "identifier": {
                        "legalName": "Birmingham City Council"
                    },
                    "address": {
                        "streetAddress": "10 Woodcock Street, Birmingham",
                        "locality": "West Midlands",
                        "postalCode": "B4 7WB",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Manjit Samrai",
                        "email": "manjit.samrai@birmingham.gov.uk",
                        "telephone": "0121 303 0349"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-41105",
                "name": "Birmingham City Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-66babd80-87f5-4102-9dc3-ed1841a8c373",
            "id": "78c30ae8-867d-43af-8fe7-52d1ea8e16fa-582287",
            "language": "en",
            "date": "2022-10-19T17:39:46+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-100-3780-QU572",
                "title": "QU572 - Birmingham Better Mental Health Fund Evaluation",
                "description": "Birmingham City Council (the Council) is seeking for organisations to conduct an evaluation report for our Better Mental Health Fund projects. \\n      \\n      During the period 2021-2022, the Council received funding from Public Health England (PHE) now known as Office for Health Improvement and Disparities (OHID) to improve the mental health and wellbeing of Birmingham residents by commissioning a portfolio of projects to address the demand for mental health services and tackle inequalities. These projects are varied in terms of their size, target groups and the types of intervention. \\n      \\n      The Council, as a recipient of this OHID funding, is obligated to submit a local evaluation of the projects that have been commissioned via PHE's Better Mental Health Fund. The evaluation should add to the evidence-base in terms of effective service delivery and inform policy moving forwards, both policy for the Council specifically and as a contribution to policy on a national level.\\n      \\n      The evaluation should increase understanding of the impact of the Better Mental Health Fund on the mental wellbeing of the Birmingham population. Furthermore, the evaluation should explore the impact of the fund on participants, providers, and provision with the aim of outlining recommendations for the development of future programmes and commissions.\\n      \\n      Themes of the evaluation are expected to include the impact of the funding on:\\n      \\n      o Overview of engagement in the projects in data terms (quantitative)\\n      o The participants and their experiences, differences made to them and elements of the programme they liked most and why\\n      o Providers' views - what worked well and what did not, what they would like to repeat or change etc, has the funding opened created any new opportunities for them or made them think differently to find solutions?\\n      o Gaps in provision (from both individuals and providers)\\n      o Any specific elements that worked well for different populations/demographics and explanations for this\\n      o Sustainability and legacy of projects\\n      o Economic evaluation in terms of cost-effectiveness\\n      \\n      This contract will be for a period of 4 months.\\n      \\n      The maximum budget to cover all the costs is ?65,000 (exclusive VAT).\\n      \\n      The Council will be using its free to use e-tendering system (in-tend) for the administration of this procurement process and potential suppliers must register with the system to be able to express an interest. If you wish to express an interest in this opportunity, please click on the following link to access https://in-tendhost.co.uk/birminghamcc/ and submit your details to register. You will then be able to log on which will enable you to download all relevant quotation documentation.\\n      \\n      If you are unable to register with In-tend or have any questions or problems on how to use this web site please either email us at: cps@birmingham.gov.uk \\n      \\n      Your completed tender submission should be returned by noon on 4th November 2022 ...\\n\\nAdditional information: If you are interested in tendering please click on the following link to access Birmingham City Council's tender Portal.\\n\\nDelivery Notes\\n\\nBirmingham\\n\\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-14T11:13:45+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "98334000",
                    "description": "Wellness services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "98000000",
                        "description": "Other community, social and personal services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85100000",
                        "description": "Health services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85320000",
                        "description": "Social services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73210000",
                        "description": "Research consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79311300",
                        "description": "Survey analysis services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73000000",
                        "description": "Research and development services and related consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85300000",
                        "description": "Social work and related services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "75122000",
                        "description": "Administrative healthcare services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72224000",
                        "description": "Project management consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79311410",
                        "description": "Economic impact assessment"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73200000",
                        "description": "Research and development consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85000000",
                        "description": "Health and social work services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85140000",
                        "description": "Miscellaneous health services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79419000",
                        "description": "Evaluation consultancy services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79310000",
                        "description": "Market research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79315000",
                        "description": "Social research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85323000",
                        "description": "Community health services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85321000",
                        "description": "Administrative social services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72314000",
                        "description": "Data collection and collation services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "73110000",
                        "description": "Research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "71620000",
                        "description": "Analysis services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79311400",
                        "description": "Economic research services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "79300000",
                        "description": "Market and economic research; polling and statistics"
                    },
                    {
                        "scheme": "CPV",
                        "id": "72316000",
                        "description": "Data analysis services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85310000",
                        "description": "Social work services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "98200000",
                        "description": "Equal opportunities consultancy services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "B4 7WB"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethodDetails": "Other - ",
                "tenderPeriod": {
                    "endDate": "2022-11-04T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-06T00:00:00Z",
                    "endDate": "2023-02-05T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/78c30ae8-867d-43af-8fe7-52d1ea8e16fa",
                        "datePublished": "2022-10-14T11:13:45+01:00",
                        "dateModified": "2022-10-19T17:39:46+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://in-tendhost.co.uk/birminghamcc/aspx/"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-41105",
                    "name": "Birmingham City Council",
                    "identifier": {
                        "legalName": "Birmingham City Council"
                    },
                    "address": {
                        "streetAddress": "10 Woodcock Street, Birmingham",
                        "locality": "West Midlands",
                        "postalCode": "B4 7WB",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Manjit Samrai",
                        "email": "manjit.samrai@birmingham.gov.uk",
                        "telephone": "0121 303 0349"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-41105",
                "name": "Birmingham City Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-38709de5-ec13-4298-ae74-8057c4814a7b",
            "id": "5aae5c4c-7e9c-4f81-a928-aa7d8997464f-582283",
            "language": "en",
            "date": "2022-10-19T17:29:30+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "Social Work England 10113",
                "title": "The provision of Graphic Design and Copy-editing Services",
                "description": "Social Work England are seeking to establish a Contract with a provider, who will complete the graphic design of various publications for us. Some of these publications may also require Copy-editing support.\\n\\nWe may also require the provision of various services on an Ad hoc basis, including: photography services, Copywriting, Brand refreshes and associated design assets, and the Translation of written information into easy read documents with accompanying imagery.\\n\\n**IMPORTANT UPDATE - 30.09.2022 - We have updated the Cost Matrix Table in Part B - Response to Tender.  We have also updated Method Statement Question 5 to reflect the correct information as per Section 16, Method Statement Questions table.  Providers must ensure they are working on the latest version when submitting a Tender**\\n\\n**IMPORTANT UPDATE 11.10.2022 - Cost Matrix Table - additional wording has been added above the Cost Matrix, that provides further clarity around the completion of the Cost Matrix and the requested rate card for Services**\\n\\n**The deadline for clarification questions has now passed (as of 07.10.2022)**\\n\\n**The Q/A's document is fully up to date as of 11.10.2022**\\n\\n**Please note that the deadline for tender submissions by potential providers is 17:00hrs - 21.10.2022**\\n\\nAdditional information: **IMPORTANT UPDATE - 30.09.2022 - We have updated the Cost Matrix Table in Part B - Response to Tender.  We have also updated Method Statement Question 5 to reflect the correct information as per Section 16, Method Statement Questions table.  Providers must ensure they are working on the latest version when submitting a Tender.\\n\\n**IMPORTANT UPDATE 11.10.2022 - Cost Matrix Table - additional wording has been added above the Cost Matrix, that provides further clarity around the completion of the table included. And also provides further clarity around the provision/completion of the requested rate card for Services**\\n\\n**The deadline for clarification questions has now passed (as of 07.10.2022)**\\n**The Q/A's document is fully up to date as of 11.10.2022**\\n**Please note that the deadline for tender submissions by potential providers is 17:00hrs - 21.10.2022**",
                "datePublished": "2022-09-23T15:58:02+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79822500",
                    "description": "Graphic design services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "S3 8JY"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-10-21T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-25T00:00:00Z",
                    "endDate": "2025-11-24T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/5aae5c4c-7e9c-4f81-a928-aa7d8997464f",
                        "datePublished": "2022-09-23T15:58:02+01:00",
                        "dateModified": "2022-10-19T17:29:30+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "7",
                        "documentType": "biddingDocuments",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/b52a3c96-4737-4e00-9c75-5c44839810e8",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    },
                    {
                        "id": "8",
                        "documentType": "clarifications",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/71678720-e95c-4ad2-815d-afa212e7fb7f",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/22G225qW",
                    "name": "SOCIAL WORK ENGLAND",
                    "identifier": {
                        "legalName": "SOCIAL WORK ENGLAND",
                        "scheme": "GB-SRS",
                        "id": "supplierregistration.cabinetoffice.gov.uk/22G225qW"
                    },
                    "address": {
                        "streetAddress": "1 North Bank",
                        "locality": "Sheffield",
                        "postalCode": "S3 8JY",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Jonathan Lee",
                        "email": "jonathan.lee@socialworkengland.org.uk",
                        "telephone": "+441145533211"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/22G225qW",
                "name": "SOCIAL WORK ENGLAND"
            }
        },
        {
            "ocid": "ocds-b5fd17-0790c668-2294-447d-997a-867c9dfc870f",
            "id": "14063a5c-8c3d-496b-91d6-6a8b7b58322b-582286",
            "language": "en",
            "date": "2022-10-19T17:22:43+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "OXFS001-DN638127-86600461",
                "title": "Oxfordshire Domestic Abuse Champion's Network",
                "description": "Oxfordshire County Council (OCC) invites requests for quotations for the delivery of OCC's Domestic Abuse Champion Network. The successful applicant will ensure that the Network, and associated training, are delivered in the context of the broader domestic abuse training pathway across the County, which is provided by other partnerships and professionals working in domestic abuse services.\\n\\nAdditional information: \\nThere is an option to extend for up to 2 years in aggregate. The highest range of contract value includes the optional extension period plus an allowance for additional funding, should that be made available during the life of the contract.",
                "datePublished": "2022-10-19T17:22:43+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "85100000",
                    "description": "Health services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 45000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 135000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-16T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-04-01T00:00:00+01:00",
                    "endDate": "2026-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/14063a5c-8c3d-496b-91d6-6a8b7b58322b",
                        "datePublished": "2022-10-19T17:22:43+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-71529",
                    "name": "Oxfordshire County Council",
                    "identifier": {
                        "legalName": "Oxfordshire County Council"
                    },
                    "address": {
                        "streetAddress": "3rd Floor, County Hall",
                        "locality": "Oxford",
                        "postalCode": "OX1 1ND",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "N'kose Stevenson",
                        "email": "Nkose.Stevenson@Oxfordshire.gov.uk",
                        "telephone": "+44 0"
                    },
                    "details": {
                        "url": "http://www.oxfordshire.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-71529",
                "name": "Oxfordshire County Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-3d46f5e0-2996-4ca0-97e4-b5a59693cb9f",
            "id": "d612f98d-64f7-4126-a068-afa27b05d417-582285",
            "language": "en",
            "date": "2022-10-19T17:22:14+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "OXFS001-DN638128-06433843",
                "title": "Oxfordshire Domestic Abuse Training Service",
                "description": "Oxfordshire County Council (OCC) invites requests for quotations for the delivery of OCC's Domestic Abuse Champion Network. The successful applicant will ensure that the Network, and associated training, are delivered in the context of the broader domestic abuse training pathway across the County, which is provided by other partnerships and professionals working in domestic abuse services.\\n\\nOxfordshire County Council (OCC) invites quotations for the provision of services to deliver enhanced multi-agency training which will increase levels of knowledge and skill for a wide range of professionals to respond to domestic abuse. This training is hosted by the Oxfordshire Safeguarding Children Board (OSCB). The training Provider will:\\n• Provide Oxfordshire professionals and residents with up-to-date information on key issues around domestic abuse, relevant legislation, tools and resources, and leading practice. \\n• Help to prevent and tackle domestic abuse across the County to improve the lives of those affected and to ensure those who come into contact with them can better support them, including signposting to services and initiation of relevant pathways.\\n\\nAdditional information: \\nThere is an option to extend for up to 2 years in aggregate. The highest range of contract value includes the optional extension period plus an allowance for additional funding, should that be made available during the life of the contract.",
                "datePublished": "2022-10-19T17:22:14+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "80500000",
                    "description": "Training services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 75000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 225000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-16T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-04-01T00:00:00+01:00",
                    "endDate": "2026-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/d612f98d-64f7-4126-a068-afa27b05d417",
                        "datePublished": "2022-10-19T17:22:14+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-71529",
                    "name": "Oxfordshire County Council",
                    "identifier": {
                        "legalName": "Oxfordshire County Council"
                    },
                    "address": {
                        "streetAddress": "3rd Floor, County Hall",
                        "locality": "Oxford",
                        "postalCode": "OX1 1ND",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Nkose Stevenson",
                        "email": "Nkose.Stevenson@Oxfordshire.gov.uk",
                        "telephone": "+44 0"
                    },
                    "details": {
                        "url": "http://www.oxfordshire.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-71529",
                "name": "Oxfordshire County Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-f46c3f98-b62b-4382-b623-fce1d053f41b",
            "id": "b8f087cc-db13-47b3-a212-dc5c4091a62f-582284",
            "language": "en",
            "date": "2022-10-19T17:19:00+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "Social Work England 10388",
                "title": "Internal Audit Services",
                "description": "Social Work England does not have an in-house audit capability.   Our aim is to appoint a provider of internal audit services commencing April 2023. We are looking for a provider who can work in partnership with Social Work England to deliver the core internal audit brief to a high standard.\\n\\n**Please note that the deadline for clarification questions from potential providers was 14th October 2022**",
                "datePublished": "2022-09-28T10:57:43+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79212000",
                    "description": "Auditing services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "S3 8JY"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-10-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2023-04-01T00:00:00+01:00",
                    "endDate": "2025-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/b8f087cc-db13-47b3-a212-dc5c4091a62f",
                        "datePublished": "2022-09-28T10:57:43+01:00",
                        "dateModified": "2022-10-19T17:19:00+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "documentType": "biddingDocuments",
                        "description": "Invitation to Tender",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/1076fe43-9a60-4119-aa00-abf60a3d9cda",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    },
                    {
                        "id": "3",
                        "documentType": "clarifications",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/3b014521-3610-464b-8fcd-83dc473efe32",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/22G225qW",
                    "name": "SOCIAL WORK ENGLAND",
                    "identifier": {
                        "legalName": "SOCIAL WORK ENGLAND",
                        "scheme": "GB-SRS",
                        "id": "supplierregistration.cabinetoffice.gov.uk/22G225qW"
                    },
                    "address": {
                        "streetAddress": "1 North Bank,Blonk Street",
                        "locality": "SHEFFIELD",
                        "postalCode": "S12FJ",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "John Stapylton",
                        "email": "john.stapylton@socialworkengland.org.uk",
                        "telephone": "01145533211"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/22G225qW",
                "name": "SOCIAL WORK ENGLAND"
            }
        },
        {
            "ocid": "ocds-b5fd17-f46c3f98-b62b-4382-b623-fce1d053f41b",
            "id": "b8f087cc-db13-47b3-a212-dc5c4091a62f-582282",
            "language": "en",
            "date": "2022-10-19T17:16:52+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "Social Work England 10388",
                "title": "Internal Audit Services",
                "description": "Social Work England does not have an in-house audit capability.   Our aim is to appoint a provider of internal audit services commencing April 2023. We are looking for a provider who can work in partnership with Social Work England to deliver the core internal audit brief to a high standard.\\n\\n**Please note that the deadline for clarification questions from potential providers, is 17:00hrs - 21.10.2022",
                "datePublished": "2022-09-28T10:57:43+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79212000",
                    "description": "Auditing services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "S3 8JY"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-10-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2023-04-01T00:00:00+01:00",
                    "endDate": "2025-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/b8f087cc-db13-47b3-a212-dc5c4091a62f",
                        "datePublished": "2022-09-28T10:57:43+01:00",
                        "dateModified": "2022-10-19T17:16:52+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "documentType": "biddingDocuments",
                        "description": "Invitation to Tender",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/1076fe43-9a60-4119-aa00-abf60a3d9cda",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    },
                    {
                        "id": "3",
                        "documentType": "clarifications",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/3b014521-3610-464b-8fcd-83dc473efe32",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/22G225qW",
                    "name": "SOCIAL WORK ENGLAND",
                    "identifier": {
                        "legalName": "SOCIAL WORK ENGLAND",
                        "scheme": "GB-SRS",
                        "id": "supplierregistration.cabinetoffice.gov.uk/22G225qW"
                    },
                    "address": {
                        "streetAddress": "1 North Bank,Blonk Street",
                        "locality": "SHEFFIELD",
                        "postalCode": "S12FJ",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "John Stapylton",
                        "email": "john.stapylton@socialworkengland.org.uk",
                        "telephone": "01145533211"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-supplierregistration.cabinetoffice.gov.uk/22G225qW",
                "name": "SOCIAL WORK ENGLAND"
            }
        },
        {
            "ocid": "ocds-b5fd17-352f706f-6522-4ebf-8df1-34f9a0a15a19",
            "id": "4d908a59-c92e-437f-acde-95cbac21bf35-582281",
            "language": "en",
            "date": "2022-10-19T17:08:12+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-1136900D0O000000rwimUAA",
                "title": "Offsite Storage of Liquid Nitrogen Vessels",
                "description": "Offsite Storage of Liquid Nitrogen Vessels",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "63726300",
                    "description": "Vessel storage services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "BS34 7QH"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 600000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 500000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-06-10T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-04T00:00:00+01:00",
                    "endDate": "2026-10-03T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-CFS-169116",
                    "name": "NHS Blood and Transplant",
                    "identifier": {
                        "legalName": "NHS Blood and Transplant"
                    },
                    "address": {
                        "streetAddress": "500 North Way, North Bristol Park",
                        "locality": "Filton, Bristol",
                        "postalCode": "BS34 7QH",
                        "countryName": "GB"
                    },
                    "contactPoint": {
                        "name": "Jo Murphy",
                        "email": "jo.murphy@nhsbt.nhs.uk",
                        "telephone": "01179212718"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224737",
                    "name": "Biodock Biobank",
                    "identifier": {
                        "legalName": "Biodock Biobank"
                    },
                    "address": {
                        "streetAddress": "10 Faraday Building, Nottingham Science & Technology Park, University Boulevard,, Nottingham, NG7 2QP"
                    },
                    "details": {
                        "scale": "sme"
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-169116",
                "name": "NHS Blood and Transplant"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-352f706f-6522-4ebf-8df1-34f9a0a15a19-1",
                    "status": "active",
                    "date": "2022-10-14T00:00:00+01:00",
                    "datePublished": "2022-10-19T17:08:12+01:00",
                    "value": {
                        "amount": 600000,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224737",
                            "name": "Biodock Biobank"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-04T00:00:00+01:00",
                        "endDate": "2026-10-03T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/4d908a59-c92e-437f-acde-95cbac21bf35",
                            "datePublished": "2022-10-19T17:08:12+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-60c18f6f-df6f-42a8-abea-703b3f689630",
            "id": "3bf4518c-cf28-4046-aa80-e5046f41e747-582280",
            "language": "en",
            "date": "2022-10-19T17:03:23+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-1138900D0O000000rwimUAA",
                "title": "Mental Health Act Quality Improvement Programme",
                "description": "NHS England requires A service delivery partner to support participating services to develop, test and refine change ideas according to QI methodology, and to evaluate the impact of specific change ideas and the overall programme.",
                "datePublished": "2022-10-19T17:03:23+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "79410000",
                    "description": "Business and management consultancy services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "LS2 7UE"
                            },
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1000000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-18T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-12-19T00:00:00Z",
                    "endDate": "2024-12-18T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/3bf4518c-cf28-4046-aa80-e5046f41e747",
                        "datePublished": "2022-10-19T17:03:23+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-158202",
                    "name": "NHS England",
                    "identifier": {
                        "legalName": "NHS England"
                    },
                    "address": {
                        "streetAddress": "Quarry House",
                        "locality": "Leeds",
                        "postalCode": "LS2 7UE",
                        "countryName": "GB"
                    },
                    "contactPoint": {
                        "name": "Janice brodie",
                        "email": "england.commercialqueries@nhs.net"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-158202",
                "name": "NHS England"
            }
        },
        {
            "ocid": "ocds-b5fd17-aa2f9687-ea75-4285-acdb-baff85637e43",
            "id": "c1dc580d-5788-4ed1-bee3-3b223944a753-582279",
            "language": "en",
            "date": "2022-10-19T16:55:44+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "WESSLIVE001-DN633903-16886396",
                "title": "VIVID - Contract Provision For Building Security and Concierge Services at Totland Close Farnborough",
                "description": "Totland Close is a large block of flats in Farnborough. It comprises of 169 self-contained general needs flats.  The flats are arranged in two blocks in a figure of eight formation.  There are a number of services provided which are service charged, including CCTV, door entry system, concierge service, cleaning, and grounds maintenance, etc.\\n\\nThe key aspects of the service shall include the following:\\n\\n1.Maintaining the Health & Safety requirements\\n2.General duties as requested by the client\\n3.Undertake training analysis of staff and implement required training programme\\n4.To take part in operational review meetings\\n5.Manage customer complaints in line with VIVID's Complaints Policy\\n6.Providing a safe place for our customers, staff and contractors\\n",
                "datePublished": "2022-09-23T14:35:37+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "35120000",
                    "description": "Surveillance and security systems and devices"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1000000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-10-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2023-03-04T00:00:00Z",
                    "endDate": "2026-01-12T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "3",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/c1dc580d-5788-4ed1-bee3-3b223944a753",
                        "datePublished": "2022-09-23T14:35:37+01:00",
                        "dateModified": "2022-10-19T16:55:44+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Link to advert",
                        "url": "https://procontract.due-north.com/Advert?advertId=6ac514fb-633a-ed11-8119-005056b64545"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-220017",
                    "name": "VIVID",
                    "identifier": {
                        "legalName": "VIVID"
                    },
                    "address": {
                        "streetAddress": "Peninsula House",
                        "locality": "Portsmouth",
                        "postalCode": "PO2 8HB",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Luke Stone",
                        "email": "luke.stone@vividhomes.co.uk",
                        "telephone": "+44 1256368722"
                    },
                    "details": {
                        "url": "http://www.vividhomes.co.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-220017",
                "name": "VIVID"
            }
        },
        {
            "ocid": "ocds-b5fd17-4336529a-8781-49a7-af7f-1293827c28f6",
            "id": "dfa83dfd-f16d-469e-aecd-b84ee2d0b7a7-582278",
            "language": "en",
            "date": "2022-10-19T16:51:40+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-412-55-529",
                "title": "Electronic Payment System",
                "description": "Electronic Payment Solution\\n\\nAdditional information: Is a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-19T16:39:25+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "48000000",
                    "description": "Software package and information systems"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "M22 9TA"
                            },
                            {
                                "region": "North West",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-18T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-01-01T00:00:00Z",
                    "endDate": "2025-12-31T23:59:59Z"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/dfa83dfd-f16d-469e-aecd-b84ee2d0b7a7",
                        "datePublished": "2022-10-19T16:39:25+01:00",
                        "dateModified": "2022-10-19T16:51:40+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://in-tendhost.co.uk/WCHG/aspx/"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-91005",
                    "name": "Wythenshawe Community Housing Group",
                    "identifier": {
                        "legalName": "Wythenshawe Community Housing Group"
                    },
                    "address": {
                        "streetAddress": "8 Poundswick Lane, Wythenshawe",
                        "locality": "Manchester",
                        "postalCode": "M22 9TA",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Sammy Power",
                        "email": "sammy.power@wchg.org.uk",
                        "telephone": "07529243948"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-91005",
                "name": "Wythenshawe Community Housing Group"
            }
        },
        {
            "ocid": "ocds-b5fd17-83cde2ba-c7f7-4945-b6e0-5ed0c9622a2b",
            "id": "9c9ebc9b-3880-48d5-8517-3de54db1b188-582277",
            "language": "en",
            "date": "2022-10-19T16:51:25+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "REDBR001-DN637379-87020316",
                "title": "Provision of a Specialist Smoking Cessation Service in the London Borough of Redbridge",
                "description": "The London Borough of Redbridge (@the Authority@) is seeking Tenders from suitably experienced and qualified organisations for the Contract for the Provision of Specialist Smoking Cessation Services in the London Borough of Redbridge (@the Contract@).\\n\\nFurther Information\\n\\nThe Contract shall commence on 1st April 2023 and shall continue up to the 31st March 2026 (@the Contract Period@). At the sole discretion of the Authority dependent on performance the Contract Period may be extended in such period or periods as the Authority deems appropriate up to a maximum twenty-four (24) months, providing a possible total Contract Period to 31st March 2028. \\n\\nThe primary aim of the Smoking Cessation Service is to deliver an evidence-based, accessible stop smoking service, particularly for priority groups where there is high smoking prevalence.   The new service will deliver the following:\\n•Proactive outreach with communities that do not traditionally engage with mainstream services to improve visibility, access and acceptability. \\n•Adapt service provision to meet the needs of our diverse communities and reduce inequalities tailoring the level support for those with more complex health needs and those that need it most.\\n•Work across services and organisational boundaries improve public health outcomes.\\n•Support delivery of the council's Tobacco Control Strategy, including a focus on prevention with children and young people.\\n\\nRedbridge is an ambitious, diverse and exciting east-London borough. What we do is driven by changing our relationship with local people to support our vision. As a result, we've developed innovative ways to build our communities and transform our Council.  We're one of the fastest growing parts of the country and the third most diverse London borough. Our communities are attracted by a mixture of excellent schools, relatively affordable housing, high-quality open space and rapid transport connections into the heart of the City.\\n\\n",
                "datePublished": "2022-10-19T16:51:25+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "85323000",
                    "description": "Community health services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "85312300",
                        "description": "Guidance and counselling services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 2019600,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-21T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-04-01T00:00:00+01:00",
                    "endDate": "2026-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/9c9ebc9b-3880-48d5-8517-3de54db1b188",
                        "datePublished": "2022-10-19T16:51:25+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-103567",
                    "name": "London Borough of Redbridge",
                    "identifier": {
                        "legalName": "London Borough of Redbridge"
                    },
                    "address": {
                        "streetAddress": "London Borough of Redbridge, Lynton House, 255-259, High Road,",
                        "locality": "Ilford",
                        "postalCode": "IG1 1NY",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Stephen Potter",
                        "email": "Stephen.potter@PSprocure.co.uk",
                        "telephone": "+44 2087083085"
                    },
                    "details": {
                        "url": "http://www.redbridge.gov.uk/"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-103567",
                "name": "London Borough of Redbridge"
            }
        },
        {
            "ocid": "ocds-b5fd17-b9541ef8-1235-4765-b44f-d21ae154d761",
            "id": "cbe8c5c5-929b-4fe1-9dc2-87125e4ad652-582276",
            "language": "en",
            "date": "2022-10-19T16:44:56+01:00",
            "tag": [
                "awardUpdate"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "tender_280074/1115910",
                "title": "HMPPS Norwich-A&apos;Wing Refurbishment-BPRN No.580/20/6189",
                "description": "HMPPS Norwich-A&apos;Wing Refurbishment-BPRN No.580/20/6189",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "45000000",
                    "description": "Construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "East of England",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "London",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 22682504.94,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2021-11-17T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-03T00:00:00Z",
                    "endDate": "2024-07-15T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "works"
            },
            "parties": [
                {
                    "id": "GB-CFS-224728",
                    "name": "Ministry of Justice",
                    "identifier": {
                        "legalName": "Ministry of Justice"
                    },
                    "address": {
                        "streetAddress": "102 PETTY FRANCE",
                        "locality": "LONDON",
                        "postalCode": "SW1H 9AJ",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "categorymanagementestatesteam@justice.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224729",
                    "name": "Vinci Construction UK LTD",
                    "identifier": {
                        "legalName": "Vinci Construction UK LTD"
                    },
                    "address": {
                        "streetAddress": "RAINHAM, ESSEX RM13 8RH"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-224728",
                "name": "Ministry of Justice"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-b9541ef8-1235-4765-b44f-d21ae154d761-1",
                    "status": "active",
                    "date": "2022-10-11T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:14:05+01:00",
                    "value": {
                        "amount": 22682504.94,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224729",
                            "name": "Vinci Construction UK LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-03T00:00:00Z",
                        "endDate": "2024-07-15T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/cbe8c5c5-929b-4fe1-9dc2-87125e4ad652",
                            "datePublished": "2022-10-19T16:14:05+01:00",
                            "dateModified": "2022-10-19T16:44:56+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "description": "n/a",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/47ca1279-7bad-4da2-84c7-4d687c1da8ad",
                            "format": "application/pdf"
                        },
                        {
                            "id": "3",
                            "description": "n/a",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/e456dfd0-d3f3-4d52-b101-d68f947667c0",
                            "format": "application/pdf"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-e26c9599-127b-428f-9124-c88ad23a697d",
            "id": "2a0eb4c0-b51f-4223-8ef0-4a09bd440e39-582275",
            "language": "en",
            "date": "2022-10-19T16:43:25+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-0006600D4L000000DloEUAS",
                "title": "BTA1785 Accessible Tourism Industry Toolkits",
                "description": "Accessible Tourism Industry Toolkits: VisitEngland has a longstanding accessibility work programme providing direction & support to businesses and destinations. This requirement covers 3 Lots as identified in the ITT documentation and summarised below.\\n\\nLot 1 - Toolkit for Businesses: To develop a best-in-class holistic toolkit for suppliers encompassing National Accessible Tourism Standards.\\n\\nLot 2 - Toolkit for Destinations: To develop a best-in-class holistic toolkit for destination managers encompassing an Accessible Tourism Itinerary toolkit.  \\n\\nLot 3 - Accessibility Features Question Set: develop a top accessibility features question set for adoption by websites that list tourism products.\\n\\nTo register for this opportunity and access the tender documentation free of charge, please use the following link:\\nhttps://visitbritain.force.com/s/Welcome",
                "datePublished": "2022-10-19T16:43:25+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "75125000",
                    "description": "Administrative services related to tourism affairs"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "SW1W 0BD"
                            },
                            {
                                "region": "London",
                                "countryName": "United Kingdom"
                            },
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 20000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 110000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-11T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-12-10T00:00:00Z",
                    "endDate": "2023-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/2a0eb4c0-b51f-4223-8ef0-4a09bd440e39",
                        "datePublished": "2022-10-19T16:43:25+01:00",
                        "format": "text/html",
                        "language": "en"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-224736",
                    "name": "British Tourist Authority, VisitBritain/VisitEngland",
                    "identifier": {
                        "legalName": "British Tourist Authority, VisitBritain/VisitEngland"
                    },
                    "address": {
                        "streetAddress": "3 Grosvenor Gardens",
                        "locality": "London",
                        "postalCode": "SW1W 0BD",
                        "countryName": "GB"
                    },
                    "contactPoint": {
                        "name": "Procurement Team",
                        "email": "Procurement@visitbritain.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-224736",
                "name": "British Tourist Authority, VisitBritain/VisitEngland"
            }
        },
        {
            "ocid": "ocds-b5fd17-215e2699-242c-4047-b254-b525a4f7887f",
            "id": "07e9844f-6d88-43d3-ae74-b59472de03cb-582274",
            "language": "en",
            "date": "2022-10-19T16:41:16+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-230-6260-ASC109",
                "title": "Provision of Accommodation Based Support Services for Victims of Domestic Abuse",
                "description": "Provision of a Accommodation Based Support Services for Victims of Domestic Abuse\\n      \\n      The Metropolitan Borough of Sandwell wishes to appoint a Contractor to provide accommodation based support services in Sandwell for Victims of Domestic Abuse\\n      \\n      In providing accommodation-based support to victims of domestic abuse and their children in refuges and other safe accommodation, the Service shall play a key role in assisting the Local Authority in Safeguarding families experiencing Domestic Abuse, discharging statutory homelessness duties, crime prevention and contributing to various strategies, including those aimed at homelessness and domestic abuse.\\n      \\n      The Contractor shall deliver a minimum of 38 units of supported accommodation and shall address the needs of victims of domestic abuse who have additional specific needs including: -\\n      \\n      o Service Users from BME/new emerging communities\\n      o Service Users with complex needs\\n      o Service Users with children\\n      o Service Users with a disability\\n      o Service Users in employment or training\\n      o Service Users who have partners who are working with a perpetrator programme\\n      o Men who are victims of domestic abuse\\n      o Service Users with pets\\n      \\n      The Contractor shall source supported accommodation for all Sandwell cases of domestic abuse who are in need of a supported accommodation Service. The Contractor shall utilise the units within this contract and/ or source out of borough services for all Sandwell cases who need to be placed out of Sandwell either for their safety or if there is no availability in the Sandwell services.\\n      \\n      The Council has a maximum budget of ?470,000 per annum for this Service.\\n      \\n      It is anticipated that the Contract will commence on 1 February 2023 and run for a period of 5 years (end date: 31 January 2028), with an option to extend.\\n      \\n      \\n      The Council will be using the In-tend e-Tendering System for this Procurement exercise, please visit https://in-tendhost.co.uk/sandwellmbc to access the Sandwell MBC In-tend Supplier Portal.\\n      \\n      From here you will be able to register your company, express an interest in the opportunity, and gain immediate access to the ITT and other related documents.\\n      \\n      In Order To View the On-Line Questionnaire and Submit a Tender, you will be required to` Opt-In`.   \\n      \\n      Please be mindful that if you are cut and pasting your question responses onto the On-Line Questionnaire that you do so from a notepad document, this is due to the fact that some special characters are not accepted within the On-Line Questionnaire. \\n      \\n      For a Step by Step user guide to the Sandwell MBC In-tend Supplier Portal please click on the `Guidance for Suppliers` section of the website. All procurement responses must be carried out via the Sandwell MBC In-tend Supplier Portal.  \\n      \\n      If you require further assistance in respect of the system please contact the In-tend support team on 0844 272 8810.\\n      \\n      Closing date: Monday 14th November...\\n\\nAdditional information: The Metropolitan Borough of Sandwell wishes to appoint a Contractor to provide accommodation based support services in Sandwell for Victims of Domestic Abuse\\n\\nIn providing accommodation-based support to victims of domestic abuse and their children in refuges and other safe accommodation, the Service shall play a key role in assisting the Local Authority in Safeguarding families experiencing Domestic Abuse, discharging statutory homelessness duties, crime prevention and contributing to various strategies, including those aimed at homelessness and domestic abuse.\\n\\nThe Contractor shall deliver a minimum of 38 units of supported accommodation and shall address the needs of victims of domestic abuse who have additional specific needs including: -\\n\\no Service Users from BME/new emerging communities\\no Service Users with complex needs\\no Service Users with children\\no Service Users with a disability\\no Service Users in employment or training\\no Service Users who have partners who are working with a perpetrator programme\\no Men who are victims of domestic abuse\\no Service Users with pets\\n\\nThe Contractor shall source supported accommodation for all Sandwell cases of domestic abuse who are in need of a supported accommodation Service. The Contractor shall utilise the units within this contract and/ or source out of borough services for all Sandwell cases who need to be placed out of Sandwell either for their safety or if there is no availability in the Sandwell services.\\n\\nThe Council has a maximum budget of ?470,000 per annum for this Service.\\n\\nIt is anticipated that the Contract will commence on 1 February 2023 and run for a period of 5 years (end date: 31 January 2028), with an option to extend.\\n\\n\\nThe Council will be using the In-tend e-Tendering System for this Procurement exercise, please visit https://in-tendhost.co.uk/sandwellmbc to access the Sandwell MBC In-tend Supplier Portal.\\n\\nFrom here you will be able to register your company, express an interest in the opportunity, and gain immediate access to the ITT and other related documents.\\n\\nIn Order To View the On-Line Questionnaire and Submit a Tender, you will be required to` Opt-In`.   \\n\\nPlease be mindful that if you are cut and pasting your question responses onto the On-Line Questionnaire that you do so from a notepad document, this is due to the fact that some special characters are not accepted within the On-Line Questionnaire. \\n\\nFor a Step by Step user guide to the Sandwell MBC In-tend Supplier Portal please click on the `Guidance for Suppliers` section of the website. All procurement responses must be carried out via the Sandwell MBC In-tend Supplier Portal.  \\n\\nIf you require further assistance in respect of the system please contact the In-tend support team on 0844 272 8810.\\n\\nClosing date: Monday 14th November 2022 at 12:00noon \\n\\nNotice posted on Find a Tender Service (FTS) on 17 October 2023. Publication reference: 2022/S 000-029179\\n\\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-17T14:42:16+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "85300000",
                    "description": "Social work and related services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "85310000",
                        "description": "Social work services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85311000",
                        "description": "Social work services with accommodation"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85320000",
                        "description": "Social services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "B69 9EN"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-14T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-02-01T00:00:00Z",
                    "endDate": "2028-01-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/07e9844f-6d88-43d3-ae74-b59472de03cb",
                        "datePublished": "2022-10-17T14:42:16+01:00",
                        "dateModified": "2022-10-19T16:41:16+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://in-tendhost.co.uk/sandwellmbc/aspx/"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-6766",
                    "name": "Sandwell Metropolitan Borough Council",
                    "identifier": {
                        "legalName": "Sandwell Metropolitan Borough Council"
                    },
                    "address": {
                        "streetAddress": "PO Box 15888, Oldbury",
                        "locality": "West Midlands",
                        "postalCode": "B69 9EN",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Emily  Cox",
                        "email": "emily_coates@sandwell.gov.uk",
                        "telephone": "0121 569 5973"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-6766",
                "name": "Sandwell Metropolitan Borough Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-b9541ef8-1235-4765-b44f-d21ae154d761",
            "id": "cbe8c5c5-929b-4fe1-9dc2-87125e4ad652-582272",
            "language": "en",
            "date": "2022-10-19T16:41:07+01:00",
            "tag": [
                "awardUpdate"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "tender_280074/1115910",
                "title": "HMPPS Norwich-A&apos;Wing Refurbishment-BPRN No.580/20/6189",
                "description": "HMPPS Norwich-A&apos;Wing Refurbishment-BPRN No.580/20/6189",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "45000000",
                    "description": "Construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "East of England",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "London",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 22682504.94,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2021-11-17T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-03T00:00:00Z",
                    "endDate": "2024-07-15T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "works"
            },
            "parties": [
                {
                    "id": "GB-CFS-224728",
                    "name": "Ministry of Justice",
                    "identifier": {
                        "legalName": "Ministry of Justice"
                    },
                    "address": {
                        "streetAddress": "102 PETTY FRANCE",
                        "locality": "LONDON",
                        "postalCode": "SW1H 9AJ",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "categorymanagementestatesteam@justice.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224729",
                    "name": "Vinci Construction UK LTD",
                    "identifier": {
                        "legalName": "Vinci Construction UK LTD"
                    },
                    "address": {
                        "streetAddress": "RAINHAM, ESSEX RM13 8RH"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-224728",
                "name": "Ministry of Justice"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-b9541ef8-1235-4765-b44f-d21ae154d761-1",
                    "status": "active",
                    "date": "2022-10-11T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:14:05+01:00",
                    "value": {
                        "amount": 22682504.94,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224729",
                            "name": "Vinci Construction UK LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-03T00:00:00Z",
                        "endDate": "2024-07-15T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/cbe8c5c5-929b-4fe1-9dc2-87125e4ad652",
                            "datePublished": "2022-10-19T16:14:05+01:00",
                            "dateModified": "2022-10-19T16:41:07+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "description": "n/a",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/47ca1279-7bad-4da2-84c7-4d687c1da8ad",
                            "format": "application/pdf"
                        },
                        {
                            "id": "3",
                            "description": "n/a",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/e456dfd0-d3f3-4d52-b101-d68f947667c0",
                            "format": "application/pdf"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-215e2699-242c-4047-b254-b525a4f7887f",
            "id": "07e9844f-6d88-43d3-ae74-b59472de03cb-582273",
            "language": "en",
            "date": "2022-10-19T16:41:03+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-230-6260-ASC109",
                "title": "Provision of Accommodation Based Support Services for Victims of Domestic Abuse",
                "description": "Provision of a Accommodation Based Support Services for Victims of Domestic Abuse\\n      \\n      The Metropolitan Borough of Sandwell wishes to appoint a Contractor to provide accommodation based support services in Sandwell for Victims of Domestic Abuse\\n      \\n      In providing accommodation-based support to victims of domestic abuse and their children in refuges and other safe accommodation, the Service shall play a key role in assisting the Local Authority in Safeguarding families experiencing Domestic Abuse, discharging statutory homelessness duties, crime prevention and contributing to various strategies, including those aimed at homelessness and domestic abuse.\\n      \\n      The Contractor shall deliver a minimum of 38 units of supported accommodation and shall address the needs of victims of domestic abuse who have additional specific needs including: -\\n      \\n      o Service Users from BME/new emerging communities\\n      o Service Users with complex needs\\n      o Service Users with children\\n      o Service Users with a disability\\n      o Service Users in employment or training\\n      o Service Users who have partners who are working with a perpetrator programme\\n      o Men who are victims of domestic abuse\\n      o Service Users with pets\\n      \\n      The Contractor shall source supported accommodation for all Sandwell cases of domestic abuse who are in need of a supported accommodation Service. The Contractor shall utilise the units within this contract and/ or source out of borough services for all Sandwell cases who need to be placed out of Sandwell either for their safety or if there is no availability in the Sandwell services.\\n      \\n      The Council has a maximum budget of ?470,000 per annum for this Service.\\n      \\n      It is anticipated that the Contract will commence on 1 February 2023 and run for a period of 5 years (end date: 31 January 2028), with an option to extend.\\n      \\n      \\n      The Council will be using the In-tend e-Tendering System for this Procurement exercise, please visit https://in-tendhost.co.uk/sandwellmbc to access the Sandwell MBC In-tend Supplier Portal.\\n      \\n      From here you will be able to register your company, express an interest in the opportunity, and gain immediate access to the ITT and other related documents.\\n      \\n      In Order To View the On-Line Questionnaire and Submit a Tender, you will be required to` Opt-In`.   \\n      \\n      Please be mindful that if you are cut and pasting your question responses onto the On-Line Questionnaire that you do so from a notepad document, this is due to the fact that some special characters are not accepted within the On-Line Questionnaire. \\n      \\n      For a Step by Step user guide to the Sandwell MBC In-tend Supplier Portal please click on the `Guidance for Suppliers` section of the website. All procurement responses must be carried out via the Sandwell MBC In-tend Supplier Portal.  \\n      \\n      If you require further assistance in respect of the system please contact the In-tend support team on 0844 272 8810.\\n      \\n      Closing date: Monday 14th November...\\n\\nAdditional information: The Metropolitan Borough of Sandwell wishes to appoint a Contractor to provide accommodation based support services in Sandwell for Victims of Domestic Abuse\\n\\nIn providing accommodation-based support to victims of domestic abuse and their children in refuges and other safe accommodation, the Service shall play a key role in assisting the Local Authority in Safeguarding families experiencing Domestic Abuse, discharging statutory homelessness duties, crime prevention and contributing to various strategies, including those aimed at homelessness and domestic abuse.\\n\\nThe Contractor shall deliver a minimum of 38 units of supported accommodation and shall address the needs of victims of domestic abuse who have additional specific needs including: -\\n\\no Service Users from BME/new emerging communities\\no Service Users with complex needs\\no Service Users with children\\no Service Users with a disability\\no Service Users in employment or training\\no Service Users who have partners who are working with a perpetrator programme\\no Men who are victims of domestic abuse\\no Service Users with pets\\n\\nThe Contractor shall source supported accommodation for all Sandwell cases of domestic abuse who are in need of a supported accommodation Service. The Contractor shall utilise the units within this contract and/ or source out of borough services for all Sandwell cases who need to be placed out of Sandwell either for their safety or if there is no availability in the Sandwell services.\\n\\nThe Council has a maximum budget of ?470,000 per annum for this Service.\\n\\nIt is anticipated that the Contract will commence on 1 February 2023 and run for a period of 5 years (end date: 31 January 2028), with an option to extend.\\n\\n\\nThe Council will be using the In-tend e-Tendering System for this Procurement exercise, please visit https://in-tendhost.co.uk/sandwellmbc to access the Sandwell MBC In-tend Supplier Portal.\\n\\nFrom here you will be able to register your company, express an interest in the opportunity, and gain immediate access to the ITT and other related documents.\\n\\nIn Order To View the On-Line Questionnaire and Submit a Tender, you will be required to` Opt-In`.   \\n\\nPlease be mindful that if you are cut and pasting your question responses onto the On-Line Questionnaire that you do so from a notepad document, this is due to the fact that some special characters are not accepted within the On-Line Questionnaire. \\n\\nFor a Step by Step user guide to the Sandwell MBC In-tend Supplier Portal please click on the `Guidance for Suppliers` section of the website. All procurement responses must be carried out via the Sandwell MBC In-tend Supplier Portal.  \\n\\nIf you require further assistance in respect of the system please contact the In-tend support team on 0844 272 8810.\\n\\nClosing date: Monday 14th November 2022 at 12:00noon \\n\\nNotice posted on Find a Tender Service (FTS) on 17 October 2023. Publication reference: 2022/S 000-029179\\n\\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-17T14:42:16+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "85300000",
                    "description": "Social work and related services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "85310000",
                        "description": "Social work services"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85311000",
                        "description": "Social work services with accommodation"
                    },
                    {
                        "scheme": "CPV",
                        "id": "85320000",
                        "description": "Social services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "B69 9EN"
                            },
                            {
                                "region": "West Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-14T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-02-01T00:00:00Z",
                    "endDate": "2028-01-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/07e9844f-6d88-43d3-ae74-b59472de03cb",
                        "datePublished": "2022-10-17T14:42:16+01:00",
                        "dateModified": "2022-10-19T16:41:03+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://in-tendhost.co.uk/sandwellmbc/aspx/"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-6766",
                    "name": "Sandwell Metropolitan Borough Council",
                    "identifier": {
                        "legalName": "Sandwell Metropolitan Borough Council"
                    },
                    "address": {
                        "streetAddress": "PO Box 15888, Oldbury",
                        "locality": "West Midlands",
                        "postalCode": "B69 9EN",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Emily  Cox",
                        "email": "emily_coates@sandwell.gov.uk",
                        "telephone": "0121 569 5973"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-6766",
                "name": "Sandwell Metropolitan Borough Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-1bb31fa6-dfa4-4d57-9ef1-6ed4bb8ee83b",
            "id": "e99be172-d247-4296-8ad6-2b5026066142-582271",
            "language": "en",
            "date": "2022-10-19T16:40:30+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BRISTOLCC001-DN638845-62971258",
                "title": "CSI/CYP/Resi Placement - 530546",
                "description": "CSI/CYP/Resi Placement - 530546",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "80000000",
                    "description": "Education and training services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "85000000",
                        "description": "Health and social work services"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "South West",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 235000,
                    "currency": "GBP"
                },
                "procurementMethodDetails": "Other - ",
                "tenderPeriod": {
                    "endDate": "2022-10-13T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-17T00:00:00+01:00",
                    "endDate": "2023-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-CFS-51922",
                    "name": "Bristol City Council",
                    "identifier": {
                        "legalName": "Bristol City Council"
                    },
                    "address": {
                        "streetAddress": "City Hall, College Green",
                        "locality": "Bristol",
                        "postalCode": "BS1 5TR",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Farida Sheikh",
                        "email": "farida.sheikh@bristol.gov.uk",
                        "telephone": "+44 0"
                    },
                    "details": {
                        "url": "https://www.bristol.gov.uk/"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224735",
                    "name": "SEARCHLIGHT CARE SERVICES LIMITED",
                    "identifier": {
                        "legalName": "SEARCHLIGHT CARE SERVICES LIMITED"
                    },
                    "address": {
                        "streetAddress": "ST3 5XA"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-51922",
                "name": "Bristol City Council"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-1bb31fa6-dfa4-4d57-9ef1-6ed4bb8ee83b-1",
                    "status": "active",
                    "date": "2022-10-14T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:40:30+01:00",
                    "value": {
                        "amount": 235000,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224735",
                            "name": "SEARCHLIGHT CARE SERVICES LIMITED"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-17T00:00:00+01:00",
                        "endDate": "2023-03-31T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/e99be172-d247-4296-8ad6-2b5026066142",
                            "datePublished": "2022-10-19T16:40:30+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-f4c316bc-a818-4be0-9db6-9b6207e6c49e",
            "id": "132d2575-3fa2-4596-afb8-1015c20e6549-582270",
            "language": "en",
            "date": "2022-10-19T16:40:03+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BIP729471575",
                "title": "St George's Academy ~ Cleaning Services Tender",
                "description": "The successful Supplier will be required to provide cleaning services at St George's Academy, Sleaford, Lincolnshire, NG34 7PP.",
                "datePublished": "2022-10-19T16:40:03+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "90919300",
                    "description": "School cleaning services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "East Midlands",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 840000,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Restricted procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-11T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-02-20T00:00:00Z",
                    "endDate": "2026-02-19T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/132d2575-3fa2-4596-afb8-1015c20e6549",
                        "datePublished": "2022-10-19T16:40:03+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "documentType": "tenderNotice",
                        "description": "Please follow this link to view the notice.",
                        "url": "https://www.delta-esourcing.com/tenders/UK-UK-Lincolnshire:-School-cleaning-services./3G35Q55EW2"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-224734",
                    "name": "St George's Academy",
                    "identifier": {
                        "legalName": "St George's Academy"
                    },
                    "address": {
                        "streetAddress": "Sleaford",
                        "locality": "Lincolnshire",
                        "postalCode": "NG34 7PP",
                        "countryName": "UK"
                    },
                    "contactPoint": {
                        "email": "tenders@litmuspartnership.co.uk",
                        "telephone": "+441276673880"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-224734",
                "name": "St George's Academy"
            }
        },
        {
            "ocid": "ocds-b5fd17-4336529a-8781-49a7-af7f-1293827c28f6",
            "id": "dfa83dfd-f16d-469e-aecd-b84ee2d0b7a7-582269",
            "language": "en",
            "date": "2022-10-19T16:39:25+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-412-55-529",
                "title": "Electronic Payment System",
                "description": "Electronic Payment Solution\\n\\nAdditional information: \\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-19T16:39:25+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "48000000",
                    "description": "Software package and information systems"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "M22 9TA"
                            },
                            {
                                "region": "North West",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-18T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-01-01T00:00:00Z",
                    "endDate": "2025-12-31T23:59:59Z"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/dfa83dfd-f16d-469e-aecd-b84ee2d0b7a7",
                        "datePublished": "2022-10-19T16:39:25+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://in-tendhost.co.uk/WCHG/aspx/"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-91005",
                    "name": "Wythenshawe Community Housing Group",
                    "identifier": {
                        "legalName": "Wythenshawe Community Housing Group"
                    },
                    "address": {
                        "streetAddress": "8 Poundswick Lane, Wythenshawe",
                        "locality": "Manchester",
                        "postalCode": "M22 9TA",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Sammy Power",
                        "email": "sammy.power@wchg.org.uk",
                        "telephone": "07529243948"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-91005",
                "name": "Wythenshawe Community Housing Group"
            }
        },
        {
            "ocid": "ocds-b5fd17-d60017c5-4d9a-4091-b946-0e9b5a320f40",
            "id": "6c951d1e-e272-46e8-bfe2-f4784971599a-582268",
            "language": "en",
            "date": "2022-10-19T16:33:38+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "NOTTCITY001-DN638833-53967590",
                "title": "CPU 5314 ULEV Infrastructure",
                "description": "ULEV Infrastructure - Future Transport Zone",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "71300000",
                    "description": "Engineering services"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "45310000",
                        "description": "Electrical installation work"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 347145,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure",
                "tenderPeriod": {
                    "endDate": "2022-10-14T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2023-10-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": true
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-CFS-49206",
                    "name": "Nottingham City Council",
                    "identifier": {
                        "legalName": "Nottingham City Council"
                    },
                    "address": {
                        "streetAddress": "Loxley House, Station Street",
                        "locality": "Nottingham",
                        "postalCode": "NG2 3NG",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Rifhat Pervaiz",
                        "email": "rifhat.pervaiz@nottinghamcity.gov.uk",
                        "telephone": "+44 1168761855"
                    },
                    "details": {
                        "url": "http://www.nottinghamcity.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224732",
                    "name": "YESSS (B) Electrical Limited - Nottingham",
                    "identifier": {
                        "legalName": "YESSS (B) Electrical Limited - Nottingham"
                    },
                    "address": {
                        "streetAddress": "Unit 2\\nCounty Business Park\\nClarke Road\\nNottingham\\nNG2 3JJ"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                },
                {
                    "id": "GB-CFS-224733",
                    "name": "Enerveo Ltd",
                    "identifier": {
                        "legalName": "Enerveo Ltd"
                    },
                    "address": {
                        "streetAddress": "No.1 Forbury Place, 43 Forbury Road, Reading, Berkshire, United Kingdom, RG1 3JH"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-49206",
                "name": "Nottingham City Council"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-d60017c5-4d9a-4091-b946-0e9b5a320f40-1",
                    "status": "active",
                    "date": "2022-10-19T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:33:38+01:00",
                    "value": {
                        "amount": 347145,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224732",
                            "name": "YESSS (B) Electrical Limited - Nottingham"
                        },
                        {
                            "id": "GB-CFS-224733",
                            "name": "Enerveo Ltd"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2023-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/6c951d1e-e272-46e8-bfe2-f4784971599a",
                            "datePublished": "2022-10-19T16:33:38+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-616ba0f3-97db-4bae-91ba-1cd9d50f9e29",
            "id": "2579b459-336f-4d86-9e6a-6ef06f8da99f-582267",
            "language": "en",
            "date": "2022-10-19T16:30:26+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CF-1139100D0O000000rwimUAA",
                "title": "Choose GP Marketing Campaign",
                "description": "Contract for the education and training of the health and social care workforce",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "80000000",
                    "description": "Education and training services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 41666.66,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 41666.68,
                    "currency": "GBP"
                },
                "procurementMethodDetails": "Other - ",
                "tenderPeriod": {
                    "endDate": "2022-06-09T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-06-10T00:00:00+01:00",
                    "endDate": "2023-08-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                }
            },
            "parties": [
                {
                    "id": "GB-CFS-210510",
                    "name": "UK",
                    "identifier": {
                        "legalName": "UK"
                    },
                    "address": {
                        "streetAddress": "Duncombe Street",
                        "locality": "Leeds",
                        "postalCode": "LS1 4PL",
                        "countryName": "UK"
                    },
                    "contactPoint": {
                        "name": "Commercial Team",
                        "email": "commercial.team@hee.nhs.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-180396",
                    "name": "RAWaudio Ltd. t/a Raw London",
                    "identifier": {
                        "legalName": "RAWaudio Ltd. t/a Raw London"
                    },
                    "address": {
                        "streetAddress": "Celtic House, 33 John's Mews WC1N 2NA"
                    },
                    "details": {
                        "scale": "sme"
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-210510",
                "name": "UK"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-616ba0f3-97db-4bae-91ba-1cd9d50f9e29-1",
                    "status": "active",
                    "date": "2021-06-10T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:30:26+01:00",
                    "value": {
                        "amount": 41666.67,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-180396",
                            "name": "RAWaudio Ltd. t/a Raw London"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-06-10T00:00:00+01:00",
                        "endDate": "2023-08-31T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/2579b459-336f-4d86-9e6a-6ef06f8da99f",
                            "datePublished": "2022-10-19T16:30:26+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "description": "Choose GP CCN Signed - Redacted",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/83ec2056-48ae-4eb0-884d-7f275d778ba0",
                            "format": "application/pdf"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-ab461f84-b935-4cfa-bac5-269730340a0a",
            "id": "6e88f43d-11dd-449c-9dfc-a97a99249247-582266",
            "language": "en",
            "date": "2022-10-19T16:27:41+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10048532",
                "title": "ITT for project 10048532",
                "description": "ITT for project 10048532",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 9720,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-29T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2026-10-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-10987194",
                    "name": "SULA INNOVATION LTD",
                    "identifier": {
                        "legalName": "SULA INNOVATION LTD",
                        "scheme": "GB-COH",
                        "id": "10987194"
                    },
                    "address": {
                        "streetAddress": "Boxhill Road\\nAbingdon\\nOxon\\nOX14 2EU"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-ab461f84-b935-4cfa-bac5-269730340a0a-1",
                    "status": "active",
                    "date": "2022-10-01T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:27:41+01:00",
                    "value": {
                        "amount": 9720,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-10987194",
                            "name": "SULA INNOVATION LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2026-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/6e88f43d-11dd-449c-9dfc-a97a99249247",
                            "datePublished": "2022-10-19T16:27:41+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-86cd5345-3868-458e-aaec-8fa64d0f2fdd",
            "id": "e52555e9-ea8c-4f09-ba4e-77714b72d55a-582263",
            "language": "en",
            "date": "2022-10-19T16:24:02+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10043709",
                "title": "ITT for project 10043709",
                "description": "ITT for project 10043709",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 4664,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2027-04-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-10699992",
                    "name": "JORVIK FOOD AND ENVIRONMENTAL CHEMICAL SAFETY LTD",
                    "identifier": {
                        "legalName": "JORVIK FOOD AND ENVIRONMENTAL CHEMICAL SAFETY LTD",
                        "scheme": "GB-COH",
                        "id": "10699992"
                    },
                    "address": {
                        "streetAddress": "Shelton Street\\nLondon\\nWC2H 9JQ"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-86cd5345-3868-458e-aaec-8fa64d0f2fdd-1",
                    "status": "active",
                    "date": "2022-10-04T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:24:02+01:00",
                    "value": {
                        "amount": 4664,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-10699992",
                            "name": "JORVIK FOOD AND ENVIRONMENTAL CHEMICAL SAFETY LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2027-04-30T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/e52555e9-ea8c-4f09-ba4e-77714b72d55a",
                            "datePublished": "2022-10-19T16:24:02+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-e60fe675-7791-464f-bedf-cfccbdb77e30",
            "id": "959d62bd-ecc2-4609-aeb3-ecce2a4285e4-582264",
            "language": "en",
            "date": "2022-10-19T16:22:16+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "CPCA001-DN638831-81882018",
                "title": "Community Led Housing Support",
                "description": "Purchase of consultancy to deliver support to community housing groups.",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79410000",
                    "description": "Business and management consultancy services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 30296,
                    "currency": "GBP"
                },
                "procurementMethodDetails": "Other - ",
                "tenderPeriod": {
                    "endDate": "2021-08-01T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2021-09-01T00:00:00+01:00",
                    "endDate": "2023-03-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-CFS-224730",
                    "name": "Cambridgeshire & Peterborough Combined Authority",
                    "identifier": {
                        "legalName": "Cambridgeshire & Peterborough Combined Authority"
                    },
                    "address": {
                        "streetAddress": "2nd floor, Pathfinder House, St Mary's Street, Huntingdon",
                        "locality": "Huntingdon",
                        "postalCode": "PE29 3TN",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Sam Garland",
                        "email": "sam.garland@cambridgeshirepeterborough-ca.gov.uk"
                    },
                    "details": {
                        "url": "https://cambridgeshirepeterborough-ca.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224731",
                    "name": "Eastern Community Homes",
                    "identifier": {
                        "legalName": "Eastern Community Homes"
                    },
                    "address": {
                        "streetAddress": "N/A"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-224730",
                "name": "Cambridgeshire & Peterborough Combined Authority"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-e60fe675-7791-464f-bedf-cfccbdb77e30-1",
                    "status": "active",
                    "date": "2021-08-31T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:22:16+01:00",
                    "value": {
                        "amount": 30296,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224731",
                            "name": "Eastern Community Homes"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2021-09-01T00:00:00+01:00",
                        "endDate": "2023-03-31T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/959d62bd-ecc2-4609-aeb3-ecce2a4285e4",
                            "datePublished": "2022-10-19T16:22:16+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-77c2b2da-8f41-4ccf-8b73-39c90ec15cb2",
            "id": "c7ffea50-756d-4c18-98c4-b7fb656c9fb9-582262",
            "language": "en",
            "date": "2022-10-19T16:20:52+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-368-14032-IBC/14032",
                "title": "Regent Theatre Back of House Ventilation & Cooling",
                "description": "This opportunity is available in the `Current Tenders` area of www.suffolksourcing.uk. \\n      \\n      Interested parties are invited to express their interest in order to gain full access to the tender documentation\\n\\nAdditional information: This opportunity is available in the `Current Tenders` area of www.suffolksourcing.uk. \\n\\nInterested parties are invited to express their interest in order to gain full access to the tender documentation\\n\\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-19T16:20:38+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "51000000",
                    "description": "Installation services (except software)"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "45000000",
                        "description": "Construction work"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "IP1 2DE"
                            },
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 10000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 20000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-23T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-02-06T00:00:00Z",
                    "endDate": "2023-08-11T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "works",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/c7ffea50-756d-4c18-98c4-b7fb656c9fb9",
                        "datePublished": "2022-10-19T16:20:38+01:00",
                        "dateModified": "2022-10-19T16:20:52+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://www.ipswich.gov.uk/services/procurement-and-tendering"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-LAE-IPS",
                    "name": "Ipswich Borough Council",
                    "identifier": {
                        "legalName": "Ipswich Borough Council",
                        "scheme": "GB-LAE",
                        "id": "IPS"
                    },
                    "address": {
                        "streetAddress": "15-17 Russell Road, Ipswich",
                        "locality": "Suffolk",
                        "postalCode": "IP1 2DE",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Collett Vallar",
                        "email": "collett.vallar@ipswich.gov.uk",
                        "telephone": "01473 433906"
                    },
                    "details": {
                        "url": "https://www.ipswich.gov.uk/services/procurement-and-tendering"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-LAE-IPS",
                "name": "Ipswich Borough Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-77c2b2da-8f41-4ccf-8b73-39c90ec15cb2",
            "id": "c7ffea50-756d-4c18-98c4-b7fb656c9fb9-582261",
            "language": "en",
            "date": "2022-10-19T16:20:38+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "IT-368-14032-IBC/14032",
                "title": "Regent Theatre Back of House Ventilation & Cooling",
                "description": "This opportunity is available in the `Current Tenders` area of www.suffolksourcing.uk. \\n      \\n      Interested parties are invited to express their interest in order to gain full access to the tender documentation\\n\\nAdditional information: \\nThis opportunity is available in the `Current Tenders` area of www.suffolksourcing.uk. \\n\\nInterested parties are invited to express their interest in order to gain full access to the tender documentation\\n\\nIs a Recurrent Procurement Type? : No",
                "datePublished": "2022-10-19T16:20:38+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "51000000",
                    "description": "Installation services (except software)"
                },
                "additionalClassifications": [
                    {
                        "scheme": "CPV",
                        "id": "45000000",
                        "description": "Construction work"
                    }
                ],
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "IP1 2DE"
                            },
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 10000,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 20000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-23T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-02-06T00:00:00Z",
                    "endDate": "2023-08-11T23:59:59+01:00"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "works",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/c7ffea50-756d-4c18-98c4-b7fb656c9fb9",
                        "datePublished": "2022-10-19T16:20:38+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "description": "Additional information on how to apply for this contract",
                        "url": "https://www.ipswich.gov.uk/services/procurement-and-tendering"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-LAE-IPS",
                    "name": "Ipswich Borough Council",
                    "identifier": {
                        "legalName": "Ipswich Borough Council",
                        "scheme": "GB-LAE",
                        "id": "IPS"
                    },
                    "address": {
                        "streetAddress": "15-17 Russell Road, Ipswich",
                        "locality": "Suffolk",
                        "postalCode": "IP1 2DE",
                        "countryName": "United Kingdom"
                    },
                    "contactPoint": {
                        "name": "Collett Vallar",
                        "email": "collett.vallar@ipswich.gov.uk",
                        "telephone": "01473 433906"
                    },
                    "details": {
                        "url": "https://www.ipswich.gov.uk/services/procurement-and-tendering"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-LAE-IPS",
                "name": "Ipswich Borough Council"
            }
        },
        {
            "ocid": "ocds-b5fd17-2c0ffef8-1db8-42bb-964b-ebc555909460",
            "id": "8b8ce674-fb0e-4c4c-b82c-4f1455fd3206-581922",
            "language": "en",
            "date": "2022-10-19T16:19:50+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "F/085/LIM/22/SM",
                "title": "National Framework Agreement for Legacy Information Integration and Management",
                "description": "Commercial Procurement Services seeks to introduce a new Framework Agreement which will allow NHS Trusts to procure legacy information integration and management solutions.  \\n\\nWhen NHS organisations migrate from either a Patient Administration System (PAS) to an Electronic Patient Records (EPR) system, or move from one EPR to another, much of the clinical patient data held in the previous system and other legacy systems is archived. Access to this data is through an archived version of the legacy system(s) and requires a separate login, making accessing this patient data a slow process. The organisation is then required to maintain archive contracts for one or more legacy systems, which may be unsupported, in order to allow continued access to the archived patient data.\\n\\nThis framework relates to the procurement of a cloud-based or on-site archive which interfaces directly with the live EPR, so clinicians can access archived clinical patient data seamlessly from within the live EPR. The data is extracted, analysed and migrated to the new system, ensuring the data is usable in the new system. \\n\\nHow to express interest and bid for this opportunity:\\n\\n1) Browse to the e-sourcing portal https://www.nhssourcing.co.uk and click on view current opportunities;\\n\\n2) Select the title of the ITT.\\n\\n3) Review the ITT, framework agreement specification, prerequisites and list of eligible users (you may do this without registering).\\n\\n4) Register your organisation on the eSourcing portal (this is only required once).\\n\\n5) Accept the portal terms and conditions and click 'continue', enter your organisation and user details; note the username you chose and click 'Save' when complete; you will shortly receive an e-mail with your unique password (please keep this secure);\\n\\n6) Login to the portal with the username/password.\\n\\n7) Click the 'PQQs/ITTs Open To All Suppliers' link (These are pre-qualification questionnaires or invitations to tender open to any registered supplier).\\n\\n8) Click on the relevant PQQ/ITT to access the content.\\n\\n9) Click the 'Express Interest' button at the top of the page. This will move the PQQ/ITT into your 'My PQQs/My ITTs' page (This is a secure area reserved for your projects only). You can now access any attachments by clicking 'Buyer Attachments' in the 'PQQ/ITT Details' box.\\n\\n10) Responding to the ITT. Click 'My Response' under 'PQQ/ITT Details', you can choose to 'Create Response' or to 'Decline to Respond' (please give a reason if declining). You can now use the messages function to communicate with the buyer and seek any clarification. Note the deadline for completion, then follow the on-screen instructions to complete the ITT. There may be a mixture of online and offline actions for you to perform (there is detailed online help available). You must then submit your reply using the 'Submit Response' button at the top of the page. \\n\\nIf you require any further assistance please consult the online help or contact the eTendering help desk.",
                "datePublished": "2022-10-19T16:19:50+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "48814200",
                    "description": "Patient-administration system"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "minValue": {
                    "amount": 1,
                    "currency": "GBP"
                },
                "value": {
                    "amount": 150000000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (above threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-18T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2023-01-01T00:00:00Z",
                    "endDate": "2024-12-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "goods",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/8b8ce674-fb0e-4c4c-b82c-4f1455fd3206",
                        "datePublished": "2022-10-19T16:19:50+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "documentType": "technicalSpecifications",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/6d84d4cb-c6ae-4863-b75d-fdfe04527fe1",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    },
                    {
                        "id": "3",
                        "documentType": "biddingDocuments",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/c1b3d7e5-4dae-4b37-bd8c-d56bd913fc6e",
                        "format": "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
                    },
                    {
                        "id": "4",
                        "documentType": "biddingDocuments",
                        "description": "All bidding documents can be found at the above mentioned address.",
                        "url": "http://www.nhssourcing.co.uk"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/3B55jxc4",
                    "name": "Countess Of Chester Hospital",
                    "identifier": {
                        "legalName": "Countess Of Chester Hospital",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/3B55jxc4"
                    },
                    "address": {
                        "streetAddress": "Liverpool Road",
                        "locality": "CHESTER",
                        "postalCode": "CH21UL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "Sarah Morris",
                        "email": "info@coch-cps.co.uk"
                    },
                    "details": {
                        "url": "http://www.nhssourcing.co.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/3B55jxc4",
                "name": "Countess Of Chester Hospital"
            }
        },
        {
            "ocid": "ocds-b5fd17-bcf12b1c-b7af-4294-985d-d9c0ff2bee2c",
            "id": "d0166641-cfb3-4bf4-adcc-97c444e1f734-582260",
            "language": "en",
            "date": "2022-10-19T16:18:30+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for projects 10045793, 10041737",
                "title": "ITT for projects 10045793, 10041737",
                "description": "ITT for projects 10045793, 10041737",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 6400,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-10-04T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2026-01-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-06777399",
                    "name": "ENVIRONMENT AND ENERGY CONSULTANTS LTD",
                    "identifier": {
                        "legalName": "ENVIRONMENT AND ENERGY CONSULTANTS LTD",
                        "scheme": "GB-COH",
                        "id": "06777399"
                    },
                    "address": {
                        "streetAddress": "Brigstoke Terrace\\nFerryside\\nCarmarthenshire\\nSA17 5SG"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-bcf12b1c-b7af-4294-985d-d9c0ff2bee2c-1",
                    "status": "active",
                    "date": "2022-10-07T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:18:30+01:00",
                    "value": {
                        "amount": 6400,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-06777399",
                            "name": "ENVIRONMENT AND ENERGY CONSULTANTS LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2026-01-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/d0166641-cfb3-4bf4-adcc-97c444e1f734",
                            "datePublished": "2022-10-19T16:18:30+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-1b32feae-ce57-40aa-8a8f-4eef03307f76",
            "id": "8a28343f-52e7-417c-b25a-f8ef46b22a7a-582259",
            "language": "en",
            "date": "2022-10-19T16:15:17+01:00",
            "tag": [
                "awardUpdate"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "tender_245609/1115470",
                "title": "HMPPS Lewes-Fire Safety Improvements (FSI)-564/18/3246",
                "description": "Improvement of Fire Safety",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "45216113",
                    "description": "Prison building construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "postalCode": "BN7 1EA"
                            },
                            {
                                "countryName": "British Oversea Territories"
                            },
                            {
                                "countryName": "Channel Islands"
                            },
                            {
                                "countryName": "Europe"
                            },
                            {
                                "countryName": "Isle of Man"
                            },
                            {
                                "countryName": "Rest of the World"
                            },
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 2376292,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2020-09-15T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-10-31T00:00:00Z",
                    "endDate": "2023-10-30T23:59:59Z"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "works"
            },
            "parties": [
                {
                    "id": "GB-CFS-183111",
                    "name": "Ministry of Justice",
                    "identifier": {
                        "legalName": "Ministry of Justice"
                    },
                    "address": {
                        "streetAddress": "102 Petty France",
                        "locality": "London",
                        "postalCode": "SW1H 9AJ",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "categorymanagementestatesteam@justice.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224565",
                    "name": "Vinci Construction UK Ltd",
                    "identifier": {
                        "legalName": "Vinci Construction UK Ltd"
                    },
                    "address": {
                        "streetAddress": "Astral House Imperial Way Watford Hertfordshire WD24 4WW"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-183111",
                "name": "Ministry of Justice"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-1b32feae-ce57-40aa-8a8f-4eef03307f76-1",
                    "status": "active",
                    "date": "2022-09-26T00:00:00+01:00",
                    "datePublished": "2022-10-18T14:16:52+01:00",
                    "value": {
                        "amount": 2376292,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224565",
                            "name": "Vinci Construction UK Ltd"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-10-31T00:00:00Z",
                        "endDate": "2023-10-30T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/8a28343f-52e7-417c-b25a-f8ef46b22a7a",
                            "datePublished": "2022-10-18T14:16:52+01:00",
                            "dateModified": "2022-10-19T16:15:17+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "description": "n/a",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/05eb2c90-f99b-4771-bfee-6a455c3fee33",
                            "format": "application/pdf"
                        },
                        {
                            "id": "3",
                            "description": "n/a",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/773be0b2-878e-401f-be7b-c62f65057c00",
                            "format": "application/pdf"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-6eb2b448-040b-42fa-944e-147cfc571338",
            "id": "1ee36c28-e991-48be-8d2c-e5b5730be271-582258",
            "language": "en",
            "date": "2022-10-19T16:15:03+01:00",
            "tag": [
                "tender"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "BIP729463017",
                "title": "202223 1549 - EPR Q-Band Spectrometer with Cryogenic Free Cooling System",
                "description": "EPR Q-Band Spectrometer with Cryogenic Free Cooling System",
                "datePublished": "2022-10-19T16:15:03+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "38433000",
                    "description": "Spectrometers"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "Yorkshire and the Humber",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 1000000,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Negotiated procedure",
                "tenderPeriod": {
                    "endDate": "2022-11-04T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-12-05T00:00:00Z",
                    "endDate": "2023-07-31T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "goods",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/1ee36c28-e991-48be-8d2c-e5b5730be271",
                        "datePublished": "2022-10-19T16:15:03+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "2",
                        "documentType": "tenderNotice",
                        "description": "Please follow this link to view the notice.",
                        "url": "https://www.delta-esourcing.com/tenders/UK-UK-Leeds:-Spectrometers./Q7EF9VYHN9"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-CFS-186432",
                    "name": "University of Leeds",
                    "identifier": {
                        "legalName": "University of Leeds"
                    },
                    "address": {
                        "streetAddress": "Woodhouse Lane, 1 - 3 Lifton Villas",
                        "locality": "Leeds",
                        "postalCode": "LS2 9JT",
                        "countryName": "UK"
                    },
                    "contactPoint": {
                        "email": "m.a.whitworth@adm.leeds.ac.uk",
                        "telephone": "+4401133431810"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-186432",
                "name": "University of Leeds"
            }
        },
        {
            "ocid": "ocds-b5fd17-68ec8562-e65f-4957-ba87-749bfbedf581",
            "id": "37395d39-35d0-4c49-a559-463b26e66faa-582255",
            "language": "en",
            "date": "2022-10-19T16:14:14+01:00",
            "tag": [
                "tenderAmendment"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "C22-0600-1675",
                "title": "0922S West Shetland Shelf MPA Imagery Analysis",
                "description": "JNCC wishes to commission a contract to undertake the analysis of seabed imagery (still images and video) collected on the 0922S survey from drop frame camera (DC). \\nVideo and still images from 86 stations will be analysed; tenderers should provide quotes outlined in Table 1:\\nMore detailed metadata will be provided and information from logs and the survey report. There are also representative images from each station from the 0922S WSS survey shown in Annex C.\\n\\nAdditional information: You are invited by JNCC Support Co (JNCC) to submit a tender for the supply of works or services required under the above project. If interested, you should download and carefully read the documents contained within the zip file or by following the link.",
                "datePublished": "2022-10-18T11:44:23+01:00",
                "status": "active",
                "classification": {
                    "scheme": "CPV",
                    "id": "90700000",
                    "description": "Environmental services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "East of England",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 15000,
                    "currency": "GBP"
                },
                "procurementMethod": "open",
                "procurementMethodDetails": "Open procedure (below threshold)",
                "tenderPeriod": {
                    "endDate": "2022-11-07T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-14T00:00:00Z",
                    "endDate": "2023-02-27T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services",
                "documents": [
                    {
                        "id": "1",
                        "documentType": "tenderNotice",
                        "description": "Opportunity notice on Contracts Finder",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/37395d39-35d0-4c49-a559-463b26e66faa",
                        "datePublished": "2022-10-18T11:44:23+01:00",
                        "dateModified": "2022-10-19T16:14:14+01:00",
                        "format": "text/html",
                        "language": "en"
                    },
                    {
                        "id": "3",
                        "documentType": "tenderNotice",
                        "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/a32bdbcc-5f00-41e8-a234-b4cdd0be28b7",
                        "format": "application/zip"
                    }
                ]
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/y47K27YN",
                    "name": "JNCC SUPPORT CO",
                    "identifier": {
                        "legalName": "JNCC SUPPORT CO",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/y47K27YN"
                    },
                    "address": {
                        "streetAddress": "Monkstone House,City Road",
                        "locality": "PETERBOROUGH",
                        "postalCode": "PE11JY",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "contractqueries@jncc.gov.uk",
                        "telephone": "01733 866987 ext 6987"
                    },
                    "details": {
                        "url": "http://jncc.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/y47K27YN",
                "name": "JNCC SUPPORT CO"
            }
        },
        {
            "ocid": "ocds-b5fd17-f72c8472-a500-4d4c-ac1b-c9c7a3441c31",
            "id": "e27a0534-6272-46c2-82cf-8550484927bf-582252",
            "language": "en",
            "date": "2022-10-19T16:14:10+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT FOR PROJECTS 10041103, 10038859",
                "title": "ITT FOR PROJECTS 10041103, 10038859",
                "description": "ITT FOR PROJECTS 10041103, 10038859",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 9000,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-09-28T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2026-10-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-08275579",
                    "name": "Spark Assessment Services Limited",
                    "identifier": {
                        "legalName": "Spark Assessment Services Limited",
                        "scheme": "GB-COH",
                        "id": "08275579"
                    },
                    "address": {
                        "streetAddress": "Banbury Road, \\nOxford,\\nOxfordshire,\\nOX2 7DL"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-f72c8472-a500-4d4c-ac1b-c9c7a3441c31-1",
                    "status": "active",
                    "date": "2022-10-03T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:14:10+01:00",
                    "value": {
                        "amount": 9000,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-08275579",
                            "name": "Spark Assessment Services Limited"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2026-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/e27a0534-6272-46c2-82cf-8550484927bf",
                            "datePublished": "2022-10-19T16:14:10+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-17a005dd-854a-48c7-a756-2564aa48760f",
            "id": "63bfba97-c8dc-40c3-86d9-89d3cffe5826-582238",
            "language": "en",
            "date": "2022-10-19T16:14:07+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "PRO1002716",
                "title": "Tax compliance and advisory services",
                "description": "Tax compliance and advisory services.\\n\\nAdditional information: Tax compliance and advisory services.",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79221000",
                    "description": "Tax consultancy services"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 56000,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2020-04-21T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2023-04-30T00:00:00+01:00",
                    "endDate": "2023-04-30T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/73RFyxJw",
                    "name": "NHS PROPERTY SERVICES LIMITED",
                    "identifier": {
                        "legalName": "NHS PROPERTY SERVICES LIMITED",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/73RFyxJw"
                    },
                    "address": {
                        "streetAddress": "4TH FLOOR",
                        "locality": "LONDON",
                        "postalCode": "SE16LH",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "name": "NHS PS Procurement",
                        "email": "NHSPSContracts@property.nhs.uk",
                        "telephone": "07892 770927"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-OC300001",
                    "name": "Ernst & Young LLP",
                    "identifier": {
                        "legalName": "Ernst & Young LLP",
                        "scheme": "GB-COH",
                        "id": "OC300001"
                    },
                    "address": {
                        "streetAddress": "1 More London Place, London, SE1 2AF, UNITED KINGDOM"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/73RFyxJw",
                "name": "NHS PROPERTY SERVICES LIMITED"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-17a005dd-854a-48c7-a756-2564aa48760f-1",
                    "status": "active",
                    "date": "2020-10-29T00:00:00Z",
                    "datePublished": "2022-10-19T16:14:07+01:00",
                    "value": {
                        "amount": 56000,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-OC300001",
                            "name": "Ernst & Young LLP"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2023-04-30T00:00:00+01:00",
                        "endDate": "2023-04-30T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/63bfba97-c8dc-40c3-86d9-89d3cffe5826",
                            "datePublished": "2022-10-19T16:14:07+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-b9541ef8-1235-4765-b44f-d21ae154d761",
            "id": "cbe8c5c5-929b-4fe1-9dc2-87125e4ad652-582257",
            "language": "en",
            "date": "2022-10-19T16:14:05+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "tender_280074/1115910",
                "title": "HMPPS Norwich-A&apos;Wing Refurbishment-BPRN No.580/20/6189",
                "description": "HMPPS Norwich-A&apos;Wing Refurbishment-BPRN No.580/20/6189",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "45000000",
                    "description": "Construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "region": "East of England",
                                "countryName": "United Kingdom"
                            },
                            {
                                "region": "London",
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 22682504.94,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a framework agreement",
                "tenderPeriod": {
                    "endDate": "2021-11-17T23:59:59Z"
                },
                "contractPeriod": {
                    "startDate": "2022-11-03T00:00:00Z",
                    "endDate": "2024-07-15T23:59:59+01:00"
                },
                "suitability": {
                    "sme": false,
                    "vcse": false
                },
                "mainProcurementCategory": "works"
            },
            "parties": [
                {
                    "id": "GB-CFS-224728",
                    "name": "Ministry of Justice",
                    "identifier": {
                        "legalName": "Ministry of Justice"
                    },
                    "address": {
                        "streetAddress": "102 PETTY FRANCE",
                        "locality": "LONDON",
                        "postalCode": "SW1H 9AJ",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "categorymanagementestatesteam@justice.gov.uk"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-CFS-224729",
                    "name": "Vinci Construction UK LTD",
                    "identifier": {
                        "legalName": "Vinci Construction UK LTD"
                    },
                    "address": {
                        "streetAddress": "RAINHAM, ESSEX RM13 8RH"
                    },
                    "details": {
                        "scale": "large",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-CFS-224728",
                "name": "Ministry of Justice"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-b9541ef8-1235-4765-b44f-d21ae154d761-1",
                    "status": "active",
                    "date": "2022-10-11T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:14:05+01:00",
                    "value": {
                        "amount": 22682504.94,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-CFS-224729",
                            "name": "Vinci Construction UK LTD"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-03T00:00:00Z",
                        "endDate": "2024-07-15T23:59:59+01:00"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/cbe8c5c5-929b-4fe1-9dc2-87125e4ad652",
                            "datePublished": "2022-10-19T16:14:05+01:00",
                            "format": "text/html",
                            "language": "en"
                        },
                        {
                            "id": "2",
                            "description": "n/a",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/Attachment/47ca1279-7bad-4da2-84c7-4d687c1da8ad",
                            "format": "application/pdf"
                        }
                    ]
                }
            ]
        },
        {
            "ocid": "ocds-b5fd17-4be413b1-82b3-44b7-8328-0223c51ebb0c",
            "id": "f36a1aeb-30e6-40f9-b3bd-759598bddd12-582256",
            "language": "en",
            "date": "2022-10-19T16:13:52+01:00",
            "tag": [
                "award"
            ],
            "initiationType": "tender",
            "tender": {
                "id": "ITT for project 10040720",
                "title": "ITT for project 10040720",
                "description": "ITT for project 10040720",
                "status": "complete",
                "classification": {
                    "scheme": "CPV",
                    "id": "79421100",
                    "description": "Project-supervision services other than for construction work"
                },
                "items": [
                    {
                        "id": "1",
                        "deliveryAddresses": [
                            {
                                "countryName": "United Kingdom"
                            }
                        ]
                    }
                ],
                "value": {
                    "amount": 7875,
                    "currency": "GBP"
                },
                "procurementMethod": "selective",
                "procurementMethodDetails": "Call-off from a dynamic purchasing system",
                "tenderPeriod": {
                    "endDate": "2022-10-04T23:59:59+01:00"
                },
                "contractPeriod": {
                    "startDate": "2022-11-01T00:00:00Z",
                    "endDate": "2025-10-31T23:59:59Z"
                },
                "suitability": {
                    "sme": true,
                    "vcse": false
                },
                "mainProcurementCategory": "services"
            },
            "parties": [
                {
                    "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                    "name": "UK RESEARCH & INNOVATION",
                    "identifier": {
                        "legalName": "UK RESEARCH & INNOVATION",
                        "scheme": "GB-SRS",
                        "id": "sid4gov.cabinetoffice.gov.uk/Zj5uFppq"
                    },
                    "address": {
                        "streetAddress": "Polaris House",
                        "locality": "SWINDON",
                        "postalCode": "SN2 1FL",
                        "countryName": "England"
                    },
                    "contactPoint": {
                        "email": "monitoringservicesprocurement@iuk.ukri.org"
                    },
                    "roles": [
                        "buyer"
                    ]
                },
                {
                    "id": "GB-COH-SC394005",
                    "name": "Realise Solutions Limited",
                    "identifier": {
                        "legalName": "Realise Solutions Limited",
                        "scheme": "GB-COH",
                        "id": "SC394005"
                    },
                    "address": {
                        "streetAddress": "Skelmorlie Castle Road\\nSkelmorlie\\nNorth Ayrshire\\nPA17 5EE"
                    },
                    "details": {
                        "scale": "sme",
                        "vcse": false
                    },
                    "roles": [
                        "supplier"
                    ]
                }
            ],
            "buyer": {
                "id": "GB-SRS-sid4gov.cabinetoffice.gov.uk/Zj5uFppq",
                "name": "UK RESEARCH & INNOVATION"
            },
            "awards": [
                {
                    "id": "ocds-b5fd17-4be413b1-82b3-44b7-8328-0223c51ebb0c-1",
                    "status": "active",
                    "date": "2022-10-10T00:00:00+01:00",
                    "datePublished": "2022-10-19T16:13:52+01:00",
                    "value": {
                        "amount": 7875,
                        "currency": "GBP"
                    },
                    "suppliers": [
                        {
                            "id": "GB-COH-SC394005",
                            "name": "Realise Solutions Limited"
                        }
                    ],
                    "contractPeriod": {
                        "startDate": "2022-11-01T00:00:00Z",
                        "endDate": "2025-10-31T23:59:59Z"
                    },
                    "documents": [
                        {
                            "id": "1",
                            "documentType": "awardNotice",
                            "description": "Awarded contract notice on Contracts Finder",
                            "url": "https://www.contractsfinder.service.gov.uk/Notice/f36a1aeb-30e6-40f9-b3bd-759598bddd12",
                            "datePublished": "2022-10-19T16:13:52+01:00",
                            "format": "text/html",
                            "language": "en"
                        }
                    ]
                }
            ]
        }
    ],
    "links": {
        "next": "https://www.contractsfinder.service.gov.uk/Published/Notices/OCDS/Search?publishedTo=2022-10-20T09:43:52+01:00&limit=100&cursor=cHVibGlzaGVkVG89MjAyMi0xMC0yMFQwOTo0Mzo1MiswMTowMHxsaW1pdD0xMDB8bmV4dEN1cnNvcj00ODA3NjE="
    }
}
"""

