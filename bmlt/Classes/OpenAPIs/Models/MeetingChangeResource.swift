//
// MeetingChangeResource.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MeetingChangeResource: Codable, JSONEncodable, Hashable {

    /** Human-readable date and time. */
    public var dateString: String?
    /** Name of the user who made the change. */
    public var userName: String?
    /** Name of the service body related to the meeting. */
    public var serviceBodyName: String?
    /** List of details about the changes. */
    public var details: [String]?

    public init(dateString: String? = nil, userName: String? = nil, serviceBodyName: String? = nil, details: [String]? = nil) {
        self.dateString = dateString
        self.userName = userName
        self.serviceBodyName = serviceBodyName
        self.details = details
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dateString
        case userName
        case serviceBodyName
        case details
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dateString, forKey: .dateString)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(serviceBodyName, forKey: .serviceBodyName)
        try container.encodeIfPresent(details, forKey: .details)
    }
}

