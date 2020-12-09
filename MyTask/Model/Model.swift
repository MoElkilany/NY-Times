//
//  Model.swift
//  MyTask
//
//  Created by mohamed sayed on 12/9/20.
//

import Foundation

struct MostPopularResponse: Codable {
    let status, copyright: String?
    let numResults: Int?
    let results: [ResultResponse]?
    // this for failer respons like https request without apikey or more 
    let fault: Fault?
    
    enum CodingKeys: String, CodingKey {
        case status, copyright
        case numResults = "num_results"
        case results
        case fault
    }
}

struct ResultResponse: Codable {
    let uri: String?
    let url: String?
    let id, assetID: Int?
    let source, publishedDate, updated, section: String?
    let subsection, nytdsection, adxKeywords: String?
    let column: String?
    let byline, type, title, abstract: String?
    let desFacet, orgFacet: [String]?
    let perFacet: [String]?
    let geoFacet: [String]?
    let media: [Media]?
    let etaID: Int?

    enum CodingKeys: String, CodingKey {
        case uri, url, id
        case assetID = "asset_id"
        case source
        case publishedDate = "published_date"
        case updated, section, subsection, nytdsection
        case adxKeywords = "adx_keywords"
        case column, byline, type, title, abstract
        case desFacet = "des_facet"
        case orgFacet = "org_facet"
        case perFacet = "per_facet"
        case geoFacet = "geo_facet"
        case media
        case etaID = "eta_id"
    }
}

struct Media: Codable {
    let type, subtype, caption, copyright: String?
    let approvedForSyndication: Int?
    let mediaMetadata: [MediaMetadatum]?

    enum CodingKeys: String, CodingKey {
        case type, subtype, caption, copyright
        case approvedForSyndication = "approved_for_syndication"
        case mediaMetadata = "media-metadata"
    }
}

struct MediaMetadatum: Codable {
    let url: String?
    let format: String?
    let height, width: Int?
}


struct Fault: Codable {
    let faultstring: String?
    let detail: Detail?
}

struct Detail: Codable {
    let errorcode: String?
}
