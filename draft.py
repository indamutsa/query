The main search query is included within the query object. As we will see later, we can add different types of search queries to this object. For each query, we add a key with the query type (match_all in this example), with the value being an object containing the search options. There are no options in this example as we want to return all of the documents in the index.

In addition to the query object, the search body can contain other optional properties, including size and from. The size property determines the number of documents to be included in the response. If this value is not present, by default ten documents are returned. The from property determines the starting index of the returned documents. This is useful for pagination.
body = {
    "size": 20,
    "from": 0,
    "query": {
      "match_all": {}
}


# ----------------------------------------------------------------------
# GET mdeforge.users/_search

# GET mdeforge.workspaces/_search

# GET mdeforge.projects/_search

# GET mdeforge.metamodels/_search
# {
#   "query": {
#     "query_string": {
#       "default_field": "content", 
#       "query": "(upperBound=\"-1\" eType=\"#//command/IAdvise\") AND mounted AND name"
#     }
#   }
# }

# #{
# #  "query": {
# #    "match_phrase": {
# #      "_id": "6231c37c185f1e00140ece30"
# #    }
# #  }
# #}

# GET mdeforge.models/_search
# {
#   "size": -1
# }

# GET mdeforge.dsls/_search

# # =======================================================================
# GET mdeforge.*/_search
# {
#   "size": -1,
#   "query": {
#     "bool": {
#       "must": [
#         {
#           "match_phrase": {
#             "ext": "ECORE"
#           }
#         }
#       ]
#     }
#   }
# } 

# DELETE mdeforge.*


# # =======================================================================

# GET mdeforge.users/_search
# {
#   "query": {
#     "match_phrase": {
#       "_id": "62276d532420ff001363643f"
#     }
#   }
# }

# GET mdeforge.workspaces/_search
# {
#   "query": {
#     "match_phrase": {
#       "owner": "62276d532420ff001363643f"
#     }
#   }
# }

# GET mdeforge.metamodels/_search
# {
#   "query": {
#     "match": {
#       "content": "<eStructuralFeatures xsi:type=\"ecore:EReference\" name=\"elements\" upperBound=\"-1\" eType=\""
#     }
#   }
# }

# GET mdeforge.models/_search
# {
#   "query": {
#     "match": {
#       "content": "MaxWaitingTime"
#     }
#   }
# }


# GET mdeforge.*/_search
# {
#   "query": {
#     "match": {
#         "content": "xmi"
#     }
#   }
# }

# GET mdeforge.models/_search


# GET mdeforge.workspaces/_search

# GET mdeforge.projects/_search




# GET mdeforge.metamodels/_search
# {
#   "query": {
#     "match": {
#         "name": "SimpleOOP.ecore"
#     }
#   }
# }

# GET mdeforge.transformations/_search

# GET mdeforge.artifacts/_search
# {
#   "query": {
#     "match": {
#       "_id": "62163188274bb50013cc3aa0"
#     }
#   }
# }

# DELETE car
# GET car/_search
# {
#   "query": {
#     "bool": {
#       "must": {
#         "match_all": {}
#       },
#       "filter": {
#         "range": {
#           "Year": {
#             "gte": "1970-01-01",
#             "lte": "1971-01-01"
#           }
#         }
#       }
#     }
#   }
# }

# GET mdeforge.metamodels/_search
# {
#   "query": {
#     "match": {
#       "type": {
#         "query": "ECORE"
#       }
#     }
#   }
# }

# GET mdeforge.artifacts/_search
# {
#   "query": {
#     "match": {
#       "_id": "621534db9bce65001393d400"
#     }
#   }
# }


# GET mdeforge.models/_search
# {
#   "from": 5,
#   "size": 3
# }

# # The filter clause
# GET car/_search
# {
#   "query": {
#     "bool": {
#       "filter": {
#         "range": {
#           "date": {
#             "gte": "1971-01-01",
#             "lte": "1977-01-01"
#           }
#         }
#       }
#     }
#   }
# }

# # ************************************************************

# GET _cat/indices

# GET car/_search


# ################################################################################################

# # Get info about cluster health
# GET _cluster/health

# # Get info about nodes in a cluster
# GET _nodes/stats

# # Example post
# # 1. Use POST when you want Elasticsearch to autogenerate an id for your document.

# POST favorite_candy/_doc
# {
#   "first_name": "Lisa",
#   "candy": "Sour Skittles",
#   "date": "2015-06-20"
# }

# # 2. Use PUT when you want to assign a specific id to your document
# PUT favorite_candy/_doc/1
# {
#   "first_name": "John",
#   "candy": "Starburst",
#    "date": "2018-09-22"
# }

# # Read a document
# GET favorite_candy/_doc/1


# # Retrieve information about documents in an index
# GET favorite_candy/_search?q=John

# # Delete all documents
# DELETE favorite_candy

# # Delete a document
# DELETE favorite_candy/_doc/1

# # return all documents from the favorite_candy index
# GET favorite_candy/_search
# {
#   "query": {
#     "match_all": {}
#   }
# }

# # Get the exact total number of hits
# #To improve the response speed on large datasets, Elasticsearch limits the total count to 10,000 by default. 
# # If you want the exact total number of hits, use the following query.
# GET favorite_candy/_search
# {
#   "track_total_hits": true
# }

# # Search for data within a specific time range
# GET favorite_candy/_search
# {
#   "query": {
#     "range": {
#       "date": {
#         "gte": "2015-06-20",
#         "lte": "2019-09-22"
#       }
#     }
#   }
# }

# # Aggregations
# # An aggregation summarizes your data as metrics, statistics, and other analytics.

# GET favorite_candy/_search
# {
#   "query": {
#     "match": {
#       "first_name": "John"
#     }
#   }
# }

# # --------------------------------------------------------------------------------------------
# # Insert data in elastic
# POST news_headlines/_doc 
# {
#   "date": "3/6/2021",
#   "short_description": "Twin preg, unsp num plcnta & amnio sacs, first trimester",
#   "link": "https://storify.com/at/feugiat/non.js",
#   "category": "Support",
#   "headline": "Remov cholecystost tube",
#   "authors": "Aonyx capensis"
# }

# # Get the exact total number of hits
# GET news_headlines/_search
# {
#   "track_total_hits": true
# }

# GET news_headline/_search


# # DELETE news_headline


# # Search for data within a specific time range
# GET news_headlines/_search
# {
#   "query": {
#     "range": {
#       "date": {
#         "gte": "5/27/2021",
#         "lte": "7/29/2021"
#       }
#     }
#   }
# }


# # Aggregations
# # Analyze the data to show the categories of news headlines in our dataset
# GET news_headlines/_search
# {
#   "query": {
#     "match": {
#       "category": "Product Management"
#     }
#   },
#   "aggregations": {
#     "popular_in_entertainment": {
#       "significant_text": {
#         "field": "headline"
#       }
#     }
#   }
# }

# # minimum_should_match
# # This parameter allows you to specify the minimum number of terms a document should have to be included in the search results.
# GET news_headlines/_search
# {
#   "query": {
#     "match": {
#       "headline": {
#         "query": "Stapes mobilization",
#         "minimum_should_match": 1
#       }
#     }
#   }
# }

# # Precision and Recall
# GET news_headlines/_search
# {
#   "query": {
#     "match": {
#       "headline": {
#         "query": "Stapes"
#       }
#     }
#   }
# }

# # We can increase precision by adding an "and" operator to the query.
# # "AND" operator will result in getting more precise matches, thereby increasing precision. 
# # However, it will reduce the number of hits returned, resulting in lower recall.
# GET news_headlines/_search
# {
#   "query": {
#     "match": {
#       "headline": {
#         "query": "stapes",
#         "operator": "and"
#       }
#     }
#   }
# }

# # Get information about documents in an index
# GET news_headlines/_search

# # Searching for a phrase
# GET news_headlines/_search
# {
#   "query": {
#     "match": {
#       "headline": {
#         "query": "Cl"
#       }
#     }
#   }
# }

# # Searching for phrases using the match_phrase query
# GET news_headlines/_search
# {
#   "query": {
#     "match_phrase": {
#       "headline": {
#         "query": "reduc"
#       }
#     }
#   }
# }

# # Running a match query against multiple fields
# GET news_headlines/_search
# {
#   "query": {
#     "multi_match": {
#       "query": "fx",
#       "fields": [
#         "headline",
#         "short_description",
#         "authors"
#       ]
#     }
#   }
# }

# # Improving precision with phrase type match
# GET news_headlines/_search
# {
#   "query": {
#     "multi_match": {
#       "query": "fx",
#       "fields": [
#         "headline^2",
#         "short_description"
#       ],
#       "type": "phrase"
#     }
#   }
# }

# # Aggregation
# GET news_headlines/_search
# {
#   "aggregations": {
#     "by_category": {
#       "terms": {
#         "field": "category.keyword",
#         "size": 100
#       }
#     }
#   }
# }

# # Bool Query
# # The bool query retrieves documents matching boolean combinations of other queries.
# # There are four clauses to choose from:
# #    must
# #    must_not
# #    should
# #    filter
# GET news_headline/_search
# {
#   "query": {
#     "match_phrase": {
#       "category": "Marketing"
#     }
#   },
#   "aggregations": {
#     "category_mentions": {
#       "terms": {
#         "field": "category.keyword",
#         "size": 100
#       }
#     }
#   }
# }

# # The must clause
# GET news_headlines/_search
# {
#   "query": {
#     "bool": {
#       "must": [
#         {
#         "match_phrase": {
#           "headline": "fix"
#          }
#         },
#         {
#           "match": {
#             "category.keyword": "Sales"
#           }
#         }
#       ]
#     }
#   }
# }

# # The must_not clause
# GET news_headlines/_search
# {
#   "query": {
#     "bool": {
#       "must": {
#         "match_phrase": {
#           "headline": "site"
#          }
#         },
#        "must_not":[
#          {
#           "match": {
#             "category": "Business Development"
#           }
#         }
#       ]
#     }
#   }
# }


# # The should clause
# # if a document contains the phrase "site" in the field category, this document should be given 
# # a higher score and should be placed higher in the search results.
# # all hits MUST contain "site" in the field headline.

# GET news_headlines/_search
# {
#   "query": {
#     "bool": {
#       "must": [
#         {
#         "match_phrase": {
#           "headline": "site"
#           }
#          }
#         ],
#        "should":[
#          {
#           "match_phrase": {
#             "category": "Business Development"
#           }
#         }
#       ]
#     }
#   }
# }

# # The filter clause
# GET news_headlines/_search
# {
#   "query": {
#     "bool": {
#       "must": [
#         {
#           "match_phrase": {
#             "headline": "site"
#           }
#         }
#       ],
#       "filter": {
#         "range": {
#           "date": {
#             "gte": "5/27/2021",
#             "lte": "7/29/2021"
#           }
#         }
#       }
#     }
#   }
# }


# # Adding multiple queries under the should clause
# GET news_headlines/_search
# {
#   "query": {
#     "bool": {
#       "must": [
#         {
#           "match_phrase": {
#             "headline": "site"
#           }
#         }
#       ],
#       "should": [
#         {
#           "match": {
#             "headline": "site"
#           }
#         },
#         {
#           "match": {
#             "short_description": "ship"
#           }
#         },
#         {
#           "match": {
#             "headline": "site"
#           }
#         }
#       ]
#     }
#   }
# }

# # #####################################################################################################
# GET ecommerce_data/_search

# DELETE ecommerce_data

# # STEP 1: Create a new index(ecommerce_data) with the following mapping.
# PUT ecommerce_data
# {
#   "mappings": {
#     "properties": {
#       "Country": {
#         "type": "keyword"
#       },
#       "CustomerID": {
#         "type": "long"
#       },
#       "Description": {
#         "type": "text"
#       },
#       "InvoiceDate": {
#         "type": "date"
#       },
#       "InvoiceNo": {
#         "type": "keyword"
#       },
#       "Quantity": {
#         "type": "long"
#       },
#       "StockCode": {
#         "type": "keyword"
#       },
#       "UnitPrice": {
#         "type": "double"
#       }
#     }
#   }
# }

# # STEP 2: Reindex the data from the original index(source) to the one you just created(destination).
# POST _reindex
# {
#   "source": {
#     "index": "ecommerce_dat"
#   },
#   "dest": {
#     "index": "ecommerce_data"
#   }
# }

# # STEP 3: Remove the negative values from the field "UnitPrice".
# POST ecommerce_data/_delete_by_query
# {
#   "query": {
#     "range": {
#       "UnitPrice": {
#         "lte": 0
#       }
#     }
#   }
# }

# # STEP 4: Remove values greater than 500 from the field "UnitPrice".
# POST ecommerce_data/_delete_by_query
# {
#   "query": {
#     "range": {
#       "UnitPrice": {
#         "gte": 500
#       }
#     }
#   }
# }

# # Aggregations: summarizes your data as metrics, statistics and other analytics
# # Get me the summary of monthly revenue generated from Germany
# GET ecommerce_data/_search


# # Metric Aggregations
# GET ecommerce_data/_search
# {
#   "aggs": {
#     "sum_unit_price": {
#       "sum": {
#         "field": "UnitPrice"
#       }
#     }
#   }
# }


# # Using a size parameter
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "sum_unit_price": {
#       "sum": {
#         "field": "UnitPrice"
#       }
#     }
#   }
# }

# # Compute the lowest(min) or max unit price of an item
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "lowest_unit_price": {
#       "min": {
#         "field": "UnitPrice"
#       }
#     }
#   }
# }

# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "lowest_unit_price": {
#       "max": {
#         "field": "UnitPrice"
#       }
#     }
#   }
# }

# # Average
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "average_unit_price": {
#       "avg": {
#         "field": "UnitPrice"
#       }
#     }
#   }
# }

# # Aggregation: Compute the count, min, max, avg, sum in one go
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "all_stats_unit_price": {
#       "stats": {
#         "field": "UnitPrice"
#       }
#     }
#   }
# }

# # Cardinality Aggregation, there are 1000 unique number of customers in our index.
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "number_unique_customers": {
#       "cardinality": {
#         "field": "CustomerID"
#       }
#     }
#   }
# }

# # Limiting the scope of an aggregation
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "query": {
#     "match": {
#       "country": "Germany"
#     }
#   },
#   "aggs": {
#     "germany_average_unit_price": {
#       "avg": {
#         "field": "UnitPrice"
#       }
#     }
#   }
# }

# # Fixed_interval With the fixed_interval, the interval is always constant.
# # Example: Create a bucket for every 8 hour interval.
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "transactions_by_8_hrs": {
#       "date_histogram": {
#         "field": "InvoiceDate",
#         "fixed_interval": "8h"
#       }
#     }
#   }
# }

# # Calendar_interval With the calendar_interval, the interval may vary.
# # Ex. Split data into monthly buckets.
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "transactions_by_month": {
#       "date_histogram": {
#         "field": "InvoiceDate",
#         "calendar_interval": "1M"
#       }
#     }
#   }
# }

# # Bucket sorting for date histogram aggregation
# # By default, the date_histogram aggregation sorts buckets based on the "key" values in ascending order.

# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "transactions_by_month": {
#       "date_histogram": {
#         "field": "InvoiceDate",
#         "calendar_interval": "1M",
#         "order": {
#           "_key": "desc"
#         }
#       }
#     }
#   }
# }

# # Ex. Create a buckets based on price interval that increases in increments of 10.
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "transactions_per_price_interval": {
#       "histogram": {
#         "field": "UnitPrice",
#         "interval": 10
#       }
#     }
#   }
# }

# # Bucket sorting for histogram aggregation
# # By default, the histogram aggregation sorts buckets based on the _key values in ascending order. 
# # To reverse this order, you can add an order parameter to the aggregation. 
# # Then, specify that you want to sort buckets based on the _key values in descending(desc) order!

# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "transactions_per_price_interval": {
#       "histogram": {
#         "field": "UnitPrice",
#         "interval": 10,
#         "order": {
#           "_key": "desc"
#         }
#       }
#     }
#   }
# }

# # Range Aggregation
# # For example, what if you wanted to know the number of transactions for items from varying price ranges(between 0 and $50, between $50-$200, and between $200 and up)?
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "transactions_per_custom_price_ranges": {
#       "range": {
#         "field": "UnitPrice",
#         "ranges": [
#           {
#             "to": 50
#           },
#           {
#             "from": 50,
#             "to": 200
#           },
#           {
#             "from": 200
#           }
#         ]
#       }
#     }
#   }
# }


# # For example, let's say you want to identify 5 customers with the highest number of transactions(documents).
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "top_5_customers": {
#       "terms": {
#         "field": "CustomerID",
#         "size": 5
#       }
#     }
#   }
# }


# # For example, let's say you wanted to calculate the daily revenue and the number of unique customers per day in one go. To do this, you can add multiple metric aggregations per bucket as shown below!
# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "transactions_per_day": {
#       "date_histogram": {
#         "field": "InvoiceDate",
#         "calendar_interval": "day"
#       },
#       "aggs": {
#         "daily_revenue": {
#           "sum": {
#             "script": {
#               "source": "doc['UnitPrice'].value * doc['Quantity'].value"
#             }
#           }
#         },
#         "number_of_unique_customers_per_day": {
#           "cardinality": {
#             "field": "CustomerID"
#           }
#         }
#       }
#     }
#   }
# }


# # Sorting by metric value of a sub-aggregation
# # You do not always need to sort by time interval, numerical interval, or by doc_count! You can also sort by metric value of sub-aggregations.
# # Let's take a look at the request below. Within the sub-aggregation, metric values "daily_revenue" and "number_of_unique_customers_per_day" are calculated.
# # Let's say you wanted to find which day had the highest daily revenue to date!
# # All you need to do is to add the "order" parameter( and sort buckets based on the metric value of "daily_revenue" in descending("desc") order!


# GET ecommerce_data/_search
# {
#   "size": 0,
#   "aggs": {
#     "transactions_per_day": {
#       "date_histogram": {
#         "field": "InvoiceDate",
#         "calendar_interval": "day",
#         "order": {
#           "daily_revenue": "desc"
#         }
#       },
#       "aggs": {
#         "daily_revenue": {
#           "sum": {
#             "script": {
#               "source": "doc['UnitPrice'].value * doc['Quantity'].value"
#             }
#           }
#         },
#         "number_of_unique_customers_per_day": {
#           "cardinality": {
#             "field": "CustomerID"
#           }
#         }
#       }
#     }
#   }
# }




# GET news_headlines/_search?q=Accounting





# ######################################################################################################
# POST ecommerce_data/_delete_by_query
# {
#   "query": {
#     "range": {
#       "UnitPrice": {
#         "gte": 500
#       }
#     }
#   }
# }





# # -----------------------------------------------------

# # Mapping

# POST userdata/_create/1 
# {
#   "name":"arsene",
#   "dob": "1990-12-05",
#   "place": "Rwanda",
#   "job_desc": "President of Indamutsa Holdings limited"
# }

# PUT userdata
# {
#   "mappings": {
#     "properties": {
#       "dob": {
#         "type": "date"
#       },
#       "job_desc": {
#         "type": "text",
#         "index": true
#       }
#     }
#   }
# }

# GET userdata/_search?q=president


# DELETE userdata






# # -------------------------------------

# GET mdeforge.users/_search

# GET /_cat/health

# GET mdeforge.metamodels/_search

# GET mdeforge.server_logs/_search

# GET testdb.kittens/_search
# {
#   "size": 1000
# }


# GET mdeforge.artifacts/_mapping

# # ---------------------------------------------------------

# # To get all indices
# GET /_cat/indices


# #TO get data from a given indices
# GET /netflix/_search

# #To get a single doc
# GET /netflix/_doc/2sK0BH0B_98CjIUDAnO2


# GET /netflix/_search/?q="seasons"

# GET /test.kittens/_search

# # This is our scaffold generator
# # must is like AND op
# # must_not is like NOT op
# # should is like OR op
# # filter is filter


# GET /netflix/_search
# {
#   "_source": [],
#   "size": 10,
#   "min_score": 0.5,
#   "query": {
#     "bool": {
#       "must": [],
#       "filter": [],
#       "should": [],
#       "must_not": []
#     }
#   }
# }


# # To get only title
# # source is the properies, you want, they are listed as text in source
# # size: the number of document to return
# # min score of a document to be returned
# # For instancem we search for the world killer in field title
# # When u add more query, it means AND operator
# GET /netflix/_search
# {
#   "_source": [
#     "title"
#   ],
#   "size": 10,
#   "min_score": 0.5,
#   "query": {
#     "bool": {
#       "must": [
#         {
#           "match": {
#             "title": "Most"
#           }
#         },
#             {
#           "match": {
#             "title": "Violent"
#           }
#         }
#       ],
#       "filter": [],
#       "should": [],
#       "must_not": []
#     }
#   }
# }

# # THe or operator in should
# # Look for words titles that have the word most and violent but should not have must
# GET /netflix/_search
# {
#   "_source": [
#     "title"
#   ],
#   "size": 10,
#   "min_score": 0.5,
#   "query": {
#     "bool": {
#       "must": [],
#       "filter": [],
#       "should": [
#         {
#           "match": {
#             "title": "Most"
#           }
#         },
#         {
#           "match": {
#             "title": "Violent"
#           }
#         }
#       ],
#       "must_not": [
#                 {
#           "match": {
#             "title": "wanted"
#           }
#         }]
#     }
#   }
# }

# # MATCH AND MATCH PHRASE

# #Here we searching the world below in the field called duration
# GET /netflix/_search
# {
#   "query": {
#     "match": {
#       "duration": "54 min"
#     }
#   }
# }

# #Here we searching the world below in the field called title
# GET /netflix/_search
# {
#   "query": {
#     "match_phrase": {
#       "title": "Most Violent"
#     }
#   }
# }



# #Autocompletion query
# GET netflix/_search
# {
#   "_source": [],
#   "size": 10,
#   "min_score": 0.5,
#   "query": {
#     "bool": {
#       "must": [
#         {
#           "wildcard": {
#             "title": {
#               "value": "*"
#             }
#           }
#         }
#       ],
#       "filter": [],
#       "should": [],
#       "must_not": []
#     }
#   },
#   "aggs": {
#     "auto_complete": {
#       "terms": {
#         "field": "title.keyword",
#         "order": {
#           "_count": "asc"
#         },
#         "size": 20
#       }
#     }
#   }
# }

# GET netflix/_mapping