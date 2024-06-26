//
// BulkRunSchema.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BulkRunSchema: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case completed = "completed"
        case running = "running"
        case failed = "failed"
        case queued = "queued"
        case cancelled = "cancelled"
    }
    public var id: String
    public var versionId: String
    public var status: Status
    public var createdAt: String
    public var workflowId: String
    public var inputCsvUrl: String
    public var outputCsvUrl: String?
    public var error: String?
    public var rowCount: Double

    public init(id: String, versionId: String, status: Status, createdAt: String, workflowId: String, inputCsvUrl: String, outputCsvUrl: String?, error: String?, rowCount: Double) {
        self.id = id
        self.versionId = versionId
        self.status = status
        self.createdAt = createdAt
        self.workflowId = workflowId
        self.inputCsvUrl = inputCsvUrl
        self.outputCsvUrl = outputCsvUrl
        self.error = error
        self.rowCount = rowCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case versionId = "version_id"
        case status
        case createdAt = "created_at"
        case workflowId = "workflow_id"
        case inputCsvUrl = "input_csv_url"
        case outputCsvUrl = "output_csv_url"
        case error
        case rowCount = "row_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(versionId, forKey: .versionId)
        try container.encode(status, forKey: .status)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(workflowId, forKey: .workflowId)
        try container.encode(inputCsvUrl, forKey: .inputCsvUrl)
        try container.encode(outputCsvUrl, forKey: .outputCsvUrl)
        try container.encode(error, forKey: .error)
        try container.encode(rowCount, forKey: .rowCount)
    }
}

