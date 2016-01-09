// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_import.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


internal struct ProtobufUnittestImport { }

internal func == (lhs: ProtobufUnittestImport.ImportMessage, rhs: ProtobufUnittestImport.ImportMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

internal extension ProtobufUnittestImport {
  internal struct UnittestImportRoot {
    internal static var sharedInstance : UnittestImportRoot {
     struct Static {
         static let instance : UnittestImportRoot = UnittestImportRoot()
     }
     return Static.instance
    }
    internal var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      ProtobufUnittestImport.UnittestImportPublicRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    internal func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }



  //Enum type declaration start 

  internal enum ImportEnum:Int32 {
    case ImportFoo = 7
    case ImportBar = 8
    case ImportBaz = 9
    internal func toString() -> String {
      switch self {
      case .ImportFoo: return "IMPORT_FOO"
      case .ImportBar: return "IMPORT_BAR"
      case .ImportBaz: return "IMPORT_BAZ"
      }
    }
    internal static func fromString(str:String) throws -> ProtobufUnittestImport.ImportEnum {
      switch str {
      case "IMPORT_FOO":  return .ImportFoo
      case "IMPORT_BAR":  return .ImportBar
      case "IMPORT_BAZ":  return .ImportBaz
      default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
  }

  //Enum type declaration end 

  final internal class ImportMessage : GeneratedMessage, GeneratedMessageProtocol {
    private(set) var hasD:Bool = false
    private(set) var d:Int32 = Int32(0)

    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasD {
        try output.writeInt32(1, value:d)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasD {
        serialize_size += d.computeInt32Size(1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<ProtobufUnittestImport.ImportMessage> {
      var mergedArray = Array<ProtobufUnittestImport.ImportMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    internal class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> ProtobufUnittestImport.ImportMessage? {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    internal class func parseFromData(data:NSData) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromData(data, extensionRegistry:ProtobufUnittestImport.UnittestImportRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func getBuilder() -> ProtobufUnittestImport.ImportMessage.Builder {
      return ProtobufUnittestImport.ImportMessage.classBuilder() as! ProtobufUnittestImport.ImportMessage.Builder
    }
    internal func getBuilder() -> ProtobufUnittestImport.ImportMessage.Builder {
      return classBuilder() as! ProtobufUnittestImport.ImportMessage.Builder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.ImportMessage.Builder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.ImportMessage.Builder()
    }
    internal func toBuilder() throws -> ProtobufUnittestImport.ImportMessage.Builder {
      return try ProtobufUnittestImport.ImportMessage.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:ProtobufUnittestImport.ImportMessage) throws -> ProtobufUnittestImport.ImportMessage.Builder {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(prototype)
    }
    override internal func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasD {
        jsonMap["d"] = NSNumber(int:d)
      }
      return jsonMap
    }
    override internal class func decode(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) throws {
      if hasD {
        output += "\(indent) d: \(d) \n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasD {
               hashCode = (hashCode &* 31) &+ d.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "ProtobufUnittestImport.ImportMessage"
    }
    override internal func className() -> String {
        return "ProtobufUnittestImport.ImportMessage"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittestImport.ImportMessage.self
    }
    //Meta information declaration end

    final internal class Builder : GeneratedMessageBuilder {
      private var builderResult:ProtobufUnittestImport.ImportMessage = ProtobufUnittestImport.ImportMessage()
      internal func getMessage() -> ProtobufUnittestImport.ImportMessage {
          return builderResult
      }

      required override internal init () {
         super.init()
      }
      var hasD:Bool {
           get {
                return builderResult.hasD
           }
      }
      var d:Int32 {
           get {
                return builderResult.d
           }
           set (value) {
               builderResult.hasD = true
               builderResult.d = value
           }
      }
      func setD(value:Int32) -> ProtobufUnittestImport.ImportMessage.Builder {
        self.d = value
        return self
      }
      internal func clearD() -> ProtobufUnittestImport.ImportMessage.Builder{
           builderResult.hasD = false
           builderResult.d = Int32(0)
           return self
      }
      override internal var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      internal override func clear() -> ProtobufUnittestImport.ImportMessage.Builder {
        builderResult = ProtobufUnittestImport.ImportMessage()
        return self
      }
      internal override func clone() throws -> ProtobufUnittestImport.ImportMessage.Builder {
        return try ProtobufUnittestImport.ImportMessage.builderWithPrototype(builderResult)
      }
      internal override func build() throws -> ProtobufUnittestImport.ImportMessage {
           try checkInitialized()
           return buildPartial()
      }
      internal func buildPartial() -> ProtobufUnittestImport.ImportMessage {
        let returnMe:ProtobufUnittestImport.ImportMessage = builderResult
        return returnMe
      }
      internal func mergeFrom(other:ProtobufUnittestImport.ImportMessage) throws -> ProtobufUnittestImport.ImportMessage.Builder {
        if other == ProtobufUnittestImport.ImportMessage() {
         return self
        }
        if other.hasD {
             d = other.d
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      internal override func mergeFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.ImportMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let tag = try input.readTag()
          switch tag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8 :
            d = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class internal func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittestImport.ImportMessage.Builder {
        let resultDecodedBuilder = ProtobufUnittestImport.ImportMessage.Builder()
        if let jsonValueD = jsonMap["d"] as? NSNumber {
          resultDecodedBuilder.d = jsonValueD.intValue
        }
        return resultDecodedBuilder
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
