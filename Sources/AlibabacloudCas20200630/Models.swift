import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateClientCertificateRequest : Tea.TeaModel {
    public var afterTime: Int64?

    public var algorithm: String?

    public var beforeTime: Int64?

    public var commonName: String?

    public var country: String?

    public var days: Int32?

    public var enableCrl: Int64?

    public var immediately: Int32?

    public var locality: String?

    public var months: Int32?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var sanType: Int32?

    public var sanValue: String?

    public var state: String?

    public var years: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.afterTime != nil {
            map["AfterTime"] = self.afterTime!
        }
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.beforeTime != nil {
            map["BeforeTime"] = self.beforeTime!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.days != nil {
            map["Days"] = self.days!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
        }
        if self.immediately != nil {
            map["Immediately"] = self.immediately!
        }
        if self.locality != nil {
            map["Locality"] = self.locality!
        }
        if self.months != nil {
            map["Months"] = self.months!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.organizationUnit != nil {
            map["OrganizationUnit"] = self.organizationUnit!
        }
        if self.parentIdentifier != nil {
            map["ParentIdentifier"] = self.parentIdentifier!
        }
        if self.sanType != nil {
            map["SanType"] = self.sanType!
        }
        if self.sanValue != nil {
            map["SanValue"] = self.sanValue!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AfterTime") {
            self.afterTime = dict["AfterTime"] as! Int64
        }
        if dict.keys.contains("Algorithm") {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("BeforeTime") {
            self.beforeTime = dict["BeforeTime"] as! Int64
        }
        if dict.keys.contains("CommonName") {
            self.commonName = dict["CommonName"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("Days") {
            self.days = dict["Days"] as! Int32
        }
        if dict.keys.contains("EnableCrl") {
            self.enableCrl = dict["EnableCrl"] as! Int64
        }
        if dict.keys.contains("Immediately") {
            self.immediately = dict["Immediately"] as! Int32
        }
        if dict.keys.contains("Locality") {
            self.locality = dict["Locality"] as! String
        }
        if dict.keys.contains("Months") {
            self.months = dict["Months"] as! Int32
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! String
        }
        if dict.keys.contains("OrganizationUnit") {
            self.organizationUnit = dict["OrganizationUnit"] as! String
        }
        if dict.keys.contains("ParentIdentifier") {
            self.parentIdentifier = dict["ParentIdentifier"] as! String
        }
        if dict.keys.contains("SanType") {
            self.sanType = dict["SanType"] as! Int32
        }
        if dict.keys.contains("SanValue") {
            self.sanValue = dict["SanValue"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Years") {
            self.years = dict["Years"] as! Int32
        }
    }
}

public class CreateClientCertificateResponseBody : Tea.TeaModel {
    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public var serialNumber: String?

    public var x509Certificate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateChain") {
            self.certificateChain = dict["CertificateChain"] as! String
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("X509Certificate") {
            self.x509Certificate = dict["X509Certificate"] as! String
        }
    }
}

public class CreateClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClientCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateClientCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClientCertificateWithCsrRequest : Tea.TeaModel {
    public var afterTime: Int64?

    public var algorithm: String?

    public var beforeTime: Int64?

    public var commonName: String?

    public var country: String?

    public var csr: String?

    public var days: Int32?

    public var enableCrl: Int64?

    public var immediately: Int32?

    public var locality: String?

    public var months: Int32?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var sanType: Int32?

    public var sanValue: String?

    public var state: String?

    public var years: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.afterTime != nil {
            map["AfterTime"] = self.afterTime!
        }
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.beforeTime != nil {
            map["BeforeTime"] = self.beforeTime!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.days != nil {
            map["Days"] = self.days!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
        }
        if self.immediately != nil {
            map["Immediately"] = self.immediately!
        }
        if self.locality != nil {
            map["Locality"] = self.locality!
        }
        if self.months != nil {
            map["Months"] = self.months!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.organizationUnit != nil {
            map["OrganizationUnit"] = self.organizationUnit!
        }
        if self.parentIdentifier != nil {
            map["ParentIdentifier"] = self.parentIdentifier!
        }
        if self.sanType != nil {
            map["SanType"] = self.sanType!
        }
        if self.sanValue != nil {
            map["SanValue"] = self.sanValue!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AfterTime") {
            self.afterTime = dict["AfterTime"] as! Int64
        }
        if dict.keys.contains("Algorithm") {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("BeforeTime") {
            self.beforeTime = dict["BeforeTime"] as! Int64
        }
        if dict.keys.contains("CommonName") {
            self.commonName = dict["CommonName"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("Csr") {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("Days") {
            self.days = dict["Days"] as! Int32
        }
        if dict.keys.contains("EnableCrl") {
            self.enableCrl = dict["EnableCrl"] as! Int64
        }
        if dict.keys.contains("Immediately") {
            self.immediately = dict["Immediately"] as! Int32
        }
        if dict.keys.contains("Locality") {
            self.locality = dict["Locality"] as! String
        }
        if dict.keys.contains("Months") {
            self.months = dict["Months"] as! Int32
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! String
        }
        if dict.keys.contains("OrganizationUnit") {
            self.organizationUnit = dict["OrganizationUnit"] as! String
        }
        if dict.keys.contains("ParentIdentifier") {
            self.parentIdentifier = dict["ParentIdentifier"] as! String
        }
        if dict.keys.contains("SanType") {
            self.sanType = dict["SanType"] as! Int32
        }
        if dict.keys.contains("SanValue") {
            self.sanValue = dict["SanValue"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Years") {
            self.years = dict["Years"] as! Int32
        }
    }
}

public class CreateClientCertificateWithCsrResponseBody : Tea.TeaModel {
    public var certKmcRep1: String?

    public var certSignBufKmc: String?

    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public var serialNumber: String?

    public var x509Certificate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certKmcRep1 != nil {
            map["CertKmcRep1"] = self.certKmcRep1!
        }
        if self.certSignBufKmc != nil {
            map["CertSignBufKmc"] = self.certSignBufKmc!
        }
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertKmcRep1") {
            self.certKmcRep1 = dict["CertKmcRep1"] as! String
        }
        if dict.keys.contains("CertSignBufKmc") {
            self.certSignBufKmc = dict["CertSignBufKmc"] as! String
        }
        if dict.keys.contains("CertificateChain") {
            self.certificateChain = dict["CertificateChain"] as! String
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("X509Certificate") {
            self.x509Certificate = dict["X509Certificate"] as! String
        }
    }
}

public class CreateClientCertificateWithCsrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClientCertificateWithCsrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateClientCertificateWithCsrResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCustomCertificateRequest : Tea.TeaModel {
    public class ApiPassthrough : Tea.TeaModel {
        public class Extensions : Tea.TeaModel {
            public class KeyUsage : Tea.TeaModel {
                public var contentCommitment: Bool?

                public var dataEncipherment: Bool?

                public var decipherOnly: Bool?

                public var digitalSignature: Bool?

                public var encipherOnly: Bool?

                public var keyAgreement: Bool?

                public var keyEncipherment: Bool?

                public var nonRepudiation: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.contentCommitment != nil {
                        map["ContentCommitment"] = self.contentCommitment!
                    }
                    if self.dataEncipherment != nil {
                        map["DataEncipherment"] = self.dataEncipherment!
                    }
                    if self.decipherOnly != nil {
                        map["DecipherOnly"] = self.decipherOnly!
                    }
                    if self.digitalSignature != nil {
                        map["DigitalSignature"] = self.digitalSignature!
                    }
                    if self.encipherOnly != nil {
                        map["EncipherOnly"] = self.encipherOnly!
                    }
                    if self.keyAgreement != nil {
                        map["KeyAgreement"] = self.keyAgreement!
                    }
                    if self.keyEncipherment != nil {
                        map["KeyEncipherment"] = self.keyEncipherment!
                    }
                    if self.nonRepudiation != nil {
                        map["NonRepudiation"] = self.nonRepudiation!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ContentCommitment") {
                        self.contentCommitment = dict["ContentCommitment"] as! Bool
                    }
                    if dict.keys.contains("DataEncipherment") {
                        self.dataEncipherment = dict["DataEncipherment"] as! Bool
                    }
                    if dict.keys.contains("DecipherOnly") {
                        self.decipherOnly = dict["DecipherOnly"] as! Bool
                    }
                    if dict.keys.contains("DigitalSignature") {
                        self.digitalSignature = dict["DigitalSignature"] as! Bool
                    }
                    if dict.keys.contains("EncipherOnly") {
                        self.encipherOnly = dict["EncipherOnly"] as! Bool
                    }
                    if dict.keys.contains("KeyAgreement") {
                        self.keyAgreement = dict["KeyAgreement"] as! Bool
                    }
                    if dict.keys.contains("KeyEncipherment") {
                        self.keyEncipherment = dict["KeyEncipherment"] as! Bool
                    }
                    if dict.keys.contains("NonRepudiation") {
                        self.nonRepudiation = dict["NonRepudiation"] as! Bool
                    }
                }
            }
            public class SubjectAlternativeNames : Tea.TeaModel {
                public var type: String?

                public var value: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var criticals: [String]?

            public var extendedKeyUsages: [String]?

            public var keyUsage: CreateCustomCertificateRequest.ApiPassthrough.Extensions.KeyUsage?

            public var subjectAlternativeNames: [CreateCustomCertificateRequest.ApiPassthrough.Extensions.SubjectAlternativeNames]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.keyUsage?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.criticals != nil {
                    map["Criticals"] = self.criticals!
                }
                if self.extendedKeyUsages != nil {
                    map["ExtendedKeyUsages"] = self.extendedKeyUsages!
                }
                if self.keyUsage != nil {
                    map["KeyUsage"] = self.keyUsage?.toMap()
                }
                if self.subjectAlternativeNames != nil {
                    var tmp : [Any] = []
                    for k in self.subjectAlternativeNames! {
                        tmp.append(k.toMap())
                    }
                    map["SubjectAlternativeNames"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Criticals") {
                    self.criticals = dict["Criticals"] as! [String]
                }
                if dict.keys.contains("ExtendedKeyUsages") {
                    self.extendedKeyUsages = dict["ExtendedKeyUsages"] as! [String]
                }
                if dict.keys.contains("KeyUsage") {
                    var model = CreateCustomCertificateRequest.ApiPassthrough.Extensions.KeyUsage()
                    model.fromMap(dict["KeyUsage"] as! [String: Any])
                    self.keyUsage = model
                }
                if dict.keys.contains("SubjectAlternativeNames") {
                    var tmp : [CreateCustomCertificateRequest.ApiPassthrough.Extensions.SubjectAlternativeNames] = []
                    for v in dict["SubjectAlternativeNames"] as! [Any] {
                        var model = CreateCustomCertificateRequest.ApiPassthrough.Extensions.SubjectAlternativeNames()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.subjectAlternativeNames = tmp
                }
            }
        }
        public class Subject : Tea.TeaModel {
            public class CustomAttributes : Tea.TeaModel {
                public var objectIdentifier: String?

                public var value: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.objectIdentifier != nil {
                        map["ObjectIdentifier"] = self.objectIdentifier!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ObjectIdentifier") {
                        self.objectIdentifier = dict["ObjectIdentifier"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var commonName: String?

            public var country: String?

            public var customAttributes: [CreateCustomCertificateRequest.ApiPassthrough.Subject.CustomAttributes]?

            public var locality: String?

            public var organization: String?

            public var organizationUnit: String?

            public var state: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commonName != nil {
                    map["CommonName"] = self.commonName!
                }
                if self.country != nil {
                    map["Country"] = self.country!
                }
                if self.customAttributes != nil {
                    var tmp : [Any] = []
                    for k in self.customAttributes! {
                        tmp.append(k.toMap())
                    }
                    map["CustomAttributes"] = tmp
                }
                if self.locality != nil {
                    map["Locality"] = self.locality!
                }
                if self.organization != nil {
                    map["Organization"] = self.organization!
                }
                if self.organizationUnit != nil {
                    map["OrganizationUnit"] = self.organizationUnit!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommonName") {
                    self.commonName = dict["CommonName"] as! String
                }
                if dict.keys.contains("Country") {
                    self.country = dict["Country"] as! String
                }
                if dict.keys.contains("CustomAttributes") {
                    var tmp : [CreateCustomCertificateRequest.ApiPassthrough.Subject.CustomAttributes] = []
                    for v in dict["CustomAttributes"] as! [Any] {
                        var model = CreateCustomCertificateRequest.ApiPassthrough.Subject.CustomAttributes()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.customAttributes = tmp
                }
                if dict.keys.contains("Locality") {
                    self.locality = dict["Locality"] as! String
                }
                if dict.keys.contains("Organization") {
                    self.organization = dict["Organization"] as! String
                }
                if dict.keys.contains("OrganizationUnit") {
                    self.organizationUnit = dict["OrganizationUnit"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
            }
        }
        public var extensions: CreateCustomCertificateRequest.ApiPassthrough.Extensions?

        public var serialNumber: String?

        public var subject: CreateCustomCertificateRequest.ApiPassthrough.Subject?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extensions?.validate()
            try self.subject?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.extensions != nil {
                map["Extensions"] = self.extensions?.toMap()
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.subject != nil {
                map["Subject"] = self.subject?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Extensions") {
                var model = CreateCustomCertificateRequest.ApiPassthrough.Extensions()
                model.fromMap(dict["Extensions"] as! [String: Any])
                self.extensions = model
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("Subject") {
                var model = CreateCustomCertificateRequest.ApiPassthrough.Subject()
                model.fromMap(dict["Subject"] as! [String: Any])
                self.subject = model
            }
        }
    }
    public var apiPassthrough: CreateCustomCertificateRequest.ApiPassthrough?

    public var csr: String?

    public var enableCrl: Int64?

    public var immediately: Int32?

    public var parentIdentifier: String?

    public var validity: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.apiPassthrough?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.apiPassthrough != nil {
            map["ApiPassthrough"] = self.apiPassthrough?.toMap()
        }
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
        }
        if self.immediately != nil {
            map["Immediately"] = self.immediately!
        }
        if self.parentIdentifier != nil {
            map["ParentIdentifier"] = self.parentIdentifier!
        }
        if self.validity != nil {
            map["Validity"] = self.validity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiPassthrough") {
            var model = CreateCustomCertificateRequest.ApiPassthrough()
            model.fromMap(dict["ApiPassthrough"] as! [String: Any])
            self.apiPassthrough = model
        }
        if dict.keys.contains("Csr") {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("EnableCrl") {
            self.enableCrl = dict["EnableCrl"] as! Int64
        }
        if dict.keys.contains("Immediately") {
            self.immediately = dict["Immediately"] as! Int32
        }
        if dict.keys.contains("ParentIdentifier") {
            self.parentIdentifier = dict["ParentIdentifier"] as! String
        }
        if dict.keys.contains("Validity") {
            self.validity = dict["Validity"] as! String
        }
    }
}

public class CreateCustomCertificateResponseBody : Tea.TeaModel {
    public var certificate: String?

    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificate != nil {
            map["Certificate"] = self.certificate!
        }
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificate") {
            self.certificate = dict["Certificate"] as! String
        }
        if dict.keys.contains("CertificateChain") {
            self.certificateChain = dict["CertificateChain"] as! String
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
    }
}

public class CreateCustomCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCustomCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateCustomCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRevokeClientCertificateRequest : Tea.TeaModel {
    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
    }
}

public class CreateRevokeClientCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRevokeClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRevokeClientCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateRevokeClientCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRootCACertificateRequest : Tea.TeaModel {
    public var algorithm: String?

    public var commonName: String?

    public var countryCode: String?

    public var locality: String?

    public var organization: String?

    public var organizationUnit: String?

    public var state: String?

    public var years: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.countryCode != nil {
            map["CountryCode"] = self.countryCode!
        }
        if self.locality != nil {
            map["Locality"] = self.locality!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.organizationUnit != nil {
            map["OrganizationUnit"] = self.organizationUnit!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("CommonName") {
            self.commonName = dict["CommonName"] as! String
        }
        if dict.keys.contains("CountryCode") {
            self.countryCode = dict["CountryCode"] as! String
        }
        if dict.keys.contains("Locality") {
            self.locality = dict["Locality"] as! String
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! String
        }
        if dict.keys.contains("OrganizationUnit") {
            self.organizationUnit = dict["OrganizationUnit"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Years") {
            self.years = dict["Years"] as! Int32
        }
    }
}

public class CreateRootCACertificateResponseBody : Tea.TeaModel {
    public var certificate: String?

    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificate != nil {
            map["Certificate"] = self.certificate!
        }
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificate") {
            self.certificate = dict["Certificate"] as! String
        }
        if dict.keys.contains("CertificateChain") {
            self.certificateChain = dict["CertificateChain"] as! String
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateRootCACertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRootCACertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateRootCACertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServerCertificateRequest : Tea.TeaModel {
    public var afterTime: Int64?

    public var algorithm: String?

    public var beforeTime: Int64?

    public var commonName: String?

    public var country: String?

    public var days: Int32?

    public var domain: String?

    public var enableCrl: Int64?

    public var immediately: Int32?

    public var locality: String?

    public var months: Int32?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var state: String?

    public var years: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.afterTime != nil {
            map["AfterTime"] = self.afterTime!
        }
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.beforeTime != nil {
            map["BeforeTime"] = self.beforeTime!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.days != nil {
            map["Days"] = self.days!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
        }
        if self.immediately != nil {
            map["Immediately"] = self.immediately!
        }
        if self.locality != nil {
            map["Locality"] = self.locality!
        }
        if self.months != nil {
            map["Months"] = self.months!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.organizationUnit != nil {
            map["OrganizationUnit"] = self.organizationUnit!
        }
        if self.parentIdentifier != nil {
            map["ParentIdentifier"] = self.parentIdentifier!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AfterTime") {
            self.afterTime = dict["AfterTime"] as! Int64
        }
        if dict.keys.contains("Algorithm") {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("BeforeTime") {
            self.beforeTime = dict["BeforeTime"] as! Int64
        }
        if dict.keys.contains("CommonName") {
            self.commonName = dict["CommonName"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("Days") {
            self.days = dict["Days"] as! Int32
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EnableCrl") {
            self.enableCrl = dict["EnableCrl"] as! Int64
        }
        if dict.keys.contains("Immediately") {
            self.immediately = dict["Immediately"] as! Int32
        }
        if dict.keys.contains("Locality") {
            self.locality = dict["Locality"] as! String
        }
        if dict.keys.contains("Months") {
            self.months = dict["Months"] as! Int32
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! String
        }
        if dict.keys.contains("OrganizationUnit") {
            self.organizationUnit = dict["OrganizationUnit"] as! String
        }
        if dict.keys.contains("ParentIdentifier") {
            self.parentIdentifier = dict["ParentIdentifier"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Years") {
            self.years = dict["Years"] as! Int32
        }
    }
}

public class CreateServerCertificateResponseBody : Tea.TeaModel {
    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public var serialNumber: String?

    public var x509Certificate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateChain") {
            self.certificateChain = dict["CertificateChain"] as! String
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("X509Certificate") {
            self.x509Certificate = dict["X509Certificate"] as! String
        }
    }
}

public class CreateServerCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServerCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServerCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServerCertificateWithCsrRequest : Tea.TeaModel {
    public var afterTime: Int64?

    public var algorithm: String?

    public var beforeTime: Int64?

    public var commonName: String?

    public var country: String?

    public var csr: String?

    public var days: Int32?

    public var domain: String?

    public var enableCrl: Int64?

    public var immediately: Int32?

    public var locality: String?

    public var months: Int32?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var state: String?

    public var years: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.afterTime != nil {
            map["AfterTime"] = self.afterTime!
        }
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.beforeTime != nil {
            map["BeforeTime"] = self.beforeTime!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.csr != nil {
            map["Csr"] = self.csr!
        }
        if self.days != nil {
            map["Days"] = self.days!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
        }
        if self.immediately != nil {
            map["Immediately"] = self.immediately!
        }
        if self.locality != nil {
            map["Locality"] = self.locality!
        }
        if self.months != nil {
            map["Months"] = self.months!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.organizationUnit != nil {
            map["OrganizationUnit"] = self.organizationUnit!
        }
        if self.parentIdentifier != nil {
            map["ParentIdentifier"] = self.parentIdentifier!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AfterTime") {
            self.afterTime = dict["AfterTime"] as! Int64
        }
        if dict.keys.contains("Algorithm") {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("BeforeTime") {
            self.beforeTime = dict["BeforeTime"] as! Int64
        }
        if dict.keys.contains("CommonName") {
            self.commonName = dict["CommonName"] as! String
        }
        if dict.keys.contains("Country") {
            self.country = dict["Country"] as! String
        }
        if dict.keys.contains("Csr") {
            self.csr = dict["Csr"] as! String
        }
        if dict.keys.contains("Days") {
            self.days = dict["Days"] as! Int32
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EnableCrl") {
            self.enableCrl = dict["EnableCrl"] as! Int64
        }
        if dict.keys.contains("Immediately") {
            self.immediately = dict["Immediately"] as! Int32
        }
        if dict.keys.contains("Locality") {
            self.locality = dict["Locality"] as! String
        }
        if dict.keys.contains("Months") {
            self.months = dict["Months"] as! Int32
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! String
        }
        if dict.keys.contains("OrganizationUnit") {
            self.organizationUnit = dict["OrganizationUnit"] as! String
        }
        if dict.keys.contains("ParentIdentifier") {
            self.parentIdentifier = dict["ParentIdentifier"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Years") {
            self.years = dict["Years"] as! Int32
        }
    }
}

public class CreateServerCertificateWithCsrResponseBody : Tea.TeaModel {
    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public var serialNumber: String?

    public var x509Certificate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateChain") {
            self.certificateChain = dict["CertificateChain"] as! String
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("X509Certificate") {
            self.x509Certificate = dict["X509Certificate"] as! String
        }
    }
}

public class CreateServerCertificateWithCsrResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServerCertificateWithCsrResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServerCertificateWithCsrResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSubCACertificateRequest : Tea.TeaModel {
    public var algorithm: String?

    public var commonName: String?

    public var countryCode: String?

    public var crlDay: Int32?

    public var enableCrl: Bool?

    public var extendedKeyUsages: [String]?

    public var locality: String?

    public var organization: String?

    public var organizationUnit: String?

    public var parentIdentifier: String?

    public var pathLenConstraint: Int32?

    public var state: String?

    public var years: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.algorithm != nil {
            map["Algorithm"] = self.algorithm!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.countryCode != nil {
            map["CountryCode"] = self.countryCode!
        }
        if self.crlDay != nil {
            map["CrlDay"] = self.crlDay!
        }
        if self.enableCrl != nil {
            map["EnableCrl"] = self.enableCrl!
        }
        if self.extendedKeyUsages != nil {
            map["ExtendedKeyUsages"] = self.extendedKeyUsages!
        }
        if self.locality != nil {
            map["Locality"] = self.locality!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.organizationUnit != nil {
            map["OrganizationUnit"] = self.organizationUnit!
        }
        if self.parentIdentifier != nil {
            map["ParentIdentifier"] = self.parentIdentifier!
        }
        if self.pathLenConstraint != nil {
            map["PathLenConstraint"] = self.pathLenConstraint!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Algorithm") {
            self.algorithm = dict["Algorithm"] as! String
        }
        if dict.keys.contains("CommonName") {
            self.commonName = dict["CommonName"] as! String
        }
        if dict.keys.contains("CountryCode") {
            self.countryCode = dict["CountryCode"] as! String
        }
        if dict.keys.contains("CrlDay") {
            self.crlDay = dict["CrlDay"] as! Int32
        }
        if dict.keys.contains("EnableCrl") {
            self.enableCrl = dict["EnableCrl"] as! Bool
        }
        if dict.keys.contains("ExtendedKeyUsages") {
            self.extendedKeyUsages = dict["ExtendedKeyUsages"] as! [String]
        }
        if dict.keys.contains("Locality") {
            self.locality = dict["Locality"] as! String
        }
        if dict.keys.contains("Organization") {
            self.organization = dict["Organization"] as! String
        }
        if dict.keys.contains("OrganizationUnit") {
            self.organizationUnit = dict["OrganizationUnit"] as! String
        }
        if dict.keys.contains("ParentIdentifier") {
            self.parentIdentifier = dict["ParentIdentifier"] as! String
        }
        if dict.keys.contains("PathLenConstraint") {
            self.pathLenConstraint = dict["PathLenConstraint"] as! Int32
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Years") {
            self.years = dict["Years"] as! Int32
        }
    }
}

public class CreateSubCACertificateResponseBody : Tea.TeaModel {
    public var certificate: String?

    public var certificateChain: String?

    public var identifier: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificate != nil {
            map["Certificate"] = self.certificate!
        }
        if self.certificateChain != nil {
            map["CertificateChain"] = self.certificateChain!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificate") {
            self.certificate = dict["Certificate"] as! String
        }
        if dict.keys.contains("CertificateChain") {
            self.certificateChain = dict["CertificateChain"] as! String
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateSubCACertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSubCACertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSubCACertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClientCertificateRequest : Tea.TeaModel {
    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
    }
}

public class DeleteClientCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClientCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteClientCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCACertificateRequest : Tea.TeaModel {
    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
    }
}

public class DescribeCACertificateResponseBody : Tea.TeaModel {
    public class Certificate : Tea.TeaModel {
        public var afterDate: Int64?

        public var algorithm: String?

        public var beforeDate: Int64?

        public var caCertChain: String?

        public var certIssuedCount: Int64?

        public var certRemainingCount: Int64?

        public var certTotalCount: Int64?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var crlDay: Int32?

        public var crlStatus: String?

        public var crlUrl: String?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public var x509Certificate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.caCertChain != nil {
                map["CaCertChain"] = self.caCertChain!
            }
            if self.certIssuedCount != nil {
                map["CertIssuedCount"] = self.certIssuedCount!
            }
            if self.certRemainingCount != nil {
                map["CertRemainingCount"] = self.certRemainingCount!
            }
            if self.certTotalCount != nil {
                map["CertTotalCount"] = self.certTotalCount!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.crlDay != nil {
                map["CrlDay"] = self.crlDay!
            }
            if self.crlStatus != nil {
                map["CrlStatus"] = self.crlStatus!
            }
            if self.crlUrl != nil {
                map["CrlUrl"] = self.crlUrl!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.organization != nil {
                map["Organization"] = self.organization!
            }
            if self.organizationUnit != nil {
                map["OrganizationUnit"] = self.organizationUnit!
            }
            if self.parentIdentifier != nil {
                map["ParentIdentifier"] = self.parentIdentifier!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterDate") {
                self.afterDate = dict["AfterDate"] as! Int64
            }
            if dict.keys.contains("Algorithm") {
                self.algorithm = dict["Algorithm"] as! String
            }
            if dict.keys.contains("BeforeDate") {
                self.beforeDate = dict["BeforeDate"] as! Int64
            }
            if dict.keys.contains("CaCertChain") {
                self.caCertChain = dict["CaCertChain"] as! String
            }
            if dict.keys.contains("CertIssuedCount") {
                self.certIssuedCount = dict["CertIssuedCount"] as! Int64
            }
            if dict.keys.contains("CertRemainingCount") {
                self.certRemainingCount = dict["CertRemainingCount"] as! Int64
            }
            if dict.keys.contains("CertTotalCount") {
                self.certTotalCount = dict["CertTotalCount"] as! Int64
            }
            if dict.keys.contains("CertificateType") {
                self.certificateType = dict["CertificateType"] as! String
            }
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("CountryCode") {
                self.countryCode = dict["CountryCode"] as! String
            }
            if dict.keys.contains("CrlDay") {
                self.crlDay = dict["CrlDay"] as! Int32
            }
            if dict.keys.contains("CrlStatus") {
                self.crlStatus = dict["CrlStatus"] as! String
            }
            if dict.keys.contains("CrlUrl") {
                self.crlUrl = dict["CrlUrl"] as! String
            }
            if dict.keys.contains("Identifier") {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("KeySize") {
                self.keySize = dict["KeySize"] as! Int32
            }
            if dict.keys.contains("Locality") {
                self.locality = dict["Locality"] as! String
            }
            if dict.keys.contains("Md5") {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Organization") {
                self.organization = dict["Organization"] as! String
            }
            if dict.keys.contains("OrganizationUnit") {
                self.organizationUnit = dict["OrganizationUnit"] as! String
            }
            if dict.keys.contains("ParentIdentifier") {
                self.parentIdentifier = dict["ParentIdentifier"] as! String
            }
            if dict.keys.contains("Sans") {
                self.sans = dict["Sans"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("Sha2") {
                self.sha2 = dict["Sha2"] as! String
            }
            if dict.keys.contains("SignAlgorithm") {
                self.signAlgorithm = dict["SignAlgorithm"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubjectDN") {
                self.subjectDN = dict["SubjectDN"] as! String
            }
            if dict.keys.contains("X509Certificate") {
                self.x509Certificate = dict["X509Certificate"] as! String
            }
        }
    }
    public var certificate: DescribeCACertificateResponseBody.Certificate?

    public var requestId: String?

    public var years: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certificate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificate != nil {
            map["Certificate"] = self.certificate?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificate") {
            var model = DescribeCACertificateResponseBody.Certificate()
            model.fromMap(dict["Certificate"] as! [String: Any])
            self.certificate = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Years") {
            self.years = dict["Years"] as! Int32
        }
    }
}

public class DescribeCACertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCACertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCACertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCACertificateCountResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCACertificateCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCACertificateCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCACertificateCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCACertificateListRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var identifier: String?

    public var showSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int32
        }
    }
}

public class DescribeCACertificateListResponseBody : Tea.TeaModel {
    public class CertificateList : Tea.TeaModel {
        public var afterDate: Int64?

        public var algorithm: String?

        public var beforeDate: Int64?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public var x509Certificate: String?

        public var years: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.organization != nil {
                map["Organization"] = self.organization!
            }
            if self.organizationUnit != nil {
                map["OrganizationUnit"] = self.organizationUnit!
            }
            if self.parentIdentifier != nil {
                map["ParentIdentifier"] = self.parentIdentifier!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            if self.years != nil {
                map["Years"] = self.years!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterDate") {
                self.afterDate = dict["AfterDate"] as! Int64
            }
            if dict.keys.contains("Algorithm") {
                self.algorithm = dict["Algorithm"] as! String
            }
            if dict.keys.contains("BeforeDate") {
                self.beforeDate = dict["BeforeDate"] as! Int64
            }
            if dict.keys.contains("CertificateType") {
                self.certificateType = dict["CertificateType"] as! String
            }
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("CountryCode") {
                self.countryCode = dict["CountryCode"] as! String
            }
            if dict.keys.contains("Identifier") {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("KeySize") {
                self.keySize = dict["KeySize"] as! Int32
            }
            if dict.keys.contains("Locality") {
                self.locality = dict["Locality"] as! String
            }
            if dict.keys.contains("Md5") {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Organization") {
                self.organization = dict["Organization"] as! String
            }
            if dict.keys.contains("OrganizationUnit") {
                self.organizationUnit = dict["OrganizationUnit"] as! String
            }
            if dict.keys.contains("ParentIdentifier") {
                self.parentIdentifier = dict["ParentIdentifier"] as! String
            }
            if dict.keys.contains("Sans") {
                self.sans = dict["Sans"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("Sha2") {
                self.sha2 = dict["Sha2"] as! String
            }
            if dict.keys.contains("SignAlgorithm") {
                self.signAlgorithm = dict["SignAlgorithm"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubjectDN") {
                self.subjectDN = dict["SubjectDN"] as! String
            }
            if dict.keys.contains("X509Certificate") {
                self.x509Certificate = dict["X509Certificate"] as! String
            }
            if dict.keys.contains("Years") {
                self.years = dict["Years"] as! Int32
            }
        }
    }
    public var certificateList: [DescribeCACertificateListResponseBody.CertificateList]?

    public var currentPage: Int32?

    public var pageCount: Int32?

    public var requestId: String?

    public var showSize: Int32?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateList != nil {
            var tmp : [Any] = []
            for k in self.certificateList! {
                tmp.append(k.toMap())
            }
            map["CertificateList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateList") {
            var tmp : [DescribeCACertificateListResponseBody.CertificateList] = []
            for v in dict["CertificateList"] as! [Any] {
                var model = DescribeCACertificateListResponseBody.CertificateList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificateList = tmp
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int32
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeCACertificateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCACertificateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCACertificateListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCertificatePrivateKeyRequest : Tea.TeaModel {
    public var encryptedCode: String?

    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptedCode != nil {
            map["EncryptedCode"] = self.encryptedCode!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptedCode") {
            self.encryptedCode = dict["EncryptedCode"] as! String
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
    }
}

public class DescribeCertificatePrivateKeyResponseBody : Tea.TeaModel {
    public var encryptedData: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptedData != nil {
            map["EncryptedData"] = self.encryptedData!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncryptedData") {
            self.encryptedData = dict["EncryptedData"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCertificatePrivateKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCertificatePrivateKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCertificatePrivateKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClientCertificateRequest : Tea.TeaModel {
    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
    }
}

public class DescribeClientCertificateResponseBody : Tea.TeaModel {
    public class Certificate : Tea.TeaModel {
        public var afterDate: Int64?

        public var algorithm: String?

        public var beforeDate: Int64?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var days: Int32?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public var x509Certificate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.days != nil {
                map["Days"] = self.days!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.organization != nil {
                map["Organization"] = self.organization!
            }
            if self.organizationUnit != nil {
                map["OrganizationUnit"] = self.organizationUnit!
            }
            if self.parentIdentifier != nil {
                map["ParentIdentifier"] = self.parentIdentifier!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterDate") {
                self.afterDate = dict["AfterDate"] as! Int64
            }
            if dict.keys.contains("Algorithm") {
                self.algorithm = dict["Algorithm"] as! String
            }
            if dict.keys.contains("BeforeDate") {
                self.beforeDate = dict["BeforeDate"] as! Int64
            }
            if dict.keys.contains("CertificateType") {
                self.certificateType = dict["CertificateType"] as! String
            }
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("CountryCode") {
                self.countryCode = dict["CountryCode"] as! String
            }
            if dict.keys.contains("Days") {
                self.days = dict["Days"] as! Int32
            }
            if dict.keys.contains("Identifier") {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("KeySize") {
                self.keySize = dict["KeySize"] as! Int32
            }
            if dict.keys.contains("Locality") {
                self.locality = dict["Locality"] as! String
            }
            if dict.keys.contains("Md5") {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Organization") {
                self.organization = dict["Organization"] as! String
            }
            if dict.keys.contains("OrganizationUnit") {
                self.organizationUnit = dict["OrganizationUnit"] as! String
            }
            if dict.keys.contains("ParentIdentifier") {
                self.parentIdentifier = dict["ParentIdentifier"] as! String
            }
            if dict.keys.contains("Sans") {
                self.sans = dict["Sans"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("Sha2") {
                self.sha2 = dict["Sha2"] as! String
            }
            if dict.keys.contains("SignAlgorithm") {
                self.signAlgorithm = dict["SignAlgorithm"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubjectDN") {
                self.subjectDN = dict["SubjectDN"] as! String
            }
            if dict.keys.contains("X509Certificate") {
                self.x509Certificate = dict["X509Certificate"] as! String
            }
        }
    }
    public var certificate: DescribeClientCertificateResponseBody.Certificate?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.certificate?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificate != nil {
            map["Certificate"] = self.certificate?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Certificate") {
            var model = DescribeClientCertificateResponseBody.Certificate()
            model.fromMap(dict["Certificate"] as! [String: Any])
            self.certificate = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClientCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeClientCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClientCertificateStatusRequest : Tea.TeaModel {
    public var identifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
    }
}

public class DescribeClientCertificateStatusResponseBody : Tea.TeaModel {
    public class CertificateStatus : Tea.TeaModel {
        public var revokeTime: Int64?

        public var serialNumber: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.revokeTime != nil {
                map["RevokeTime"] = self.revokeTime!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RevokeTime") {
                self.revokeTime = dict["RevokeTime"] as! Int64
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var certificateStatus: [DescribeClientCertificateStatusResponseBody.CertificateStatus]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateStatus != nil {
            var tmp : [Any] = []
            for k in self.certificateStatus! {
                tmp.append(k.toMap())
            }
            map["CertificateStatus"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateStatus") {
            var tmp : [DescribeClientCertificateStatusResponseBody.CertificateStatus] = []
            for v in dict["CertificateStatus"] as! [Any] {
                var model = DescribeClientCertificateStatusResponseBody.CertificateStatus()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificateStatus = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClientCertificateStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClientCertificateStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeClientCertificateStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCAInstanceStatusRequest : Tea.TeaModel {
    public var identifier: String?

    public var instanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetCAInstanceStatusResponseBody : Tea.TeaModel {
    public class InstanceStatusList : Tea.TeaModel {
        public var afterTime: Int64?

        public var beforeTime: Int64?

        public var certIssuedCount: Int32?

        public var certTotalCount: Int32?

        public var identifier: String?

        public var instanceId: String?

        public var status: String?

        public var type: String?

        public var useExpireTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.afterTime != nil {
                map["AfterTime"] = self.afterTime!
            }
            if self.beforeTime != nil {
                map["BeforeTime"] = self.beforeTime!
            }
            if self.certIssuedCount != nil {
                map["CertIssuedCount"] = self.certIssuedCount!
            }
            if self.certTotalCount != nil {
                map["CertTotalCount"] = self.certTotalCount!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.useExpireTime != nil {
                map["UseExpireTime"] = self.useExpireTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterTime") {
                self.afterTime = dict["AfterTime"] as! Int64
            }
            if dict.keys.contains("BeforeTime") {
                self.beforeTime = dict["BeforeTime"] as! Int64
            }
            if dict.keys.contains("CertIssuedCount") {
                self.certIssuedCount = dict["CertIssuedCount"] as! Int32
            }
            if dict.keys.contains("CertTotalCount") {
                self.certTotalCount = dict["CertTotalCount"] as! Int32
            }
            if dict.keys.contains("Identifier") {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UseExpireTime") {
                self.useExpireTime = dict["UseExpireTime"] as! Int64
            }
        }
    }
    public var instanceStatusList: [GetCAInstanceStatusResponseBody.InstanceStatusList]?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceStatusList != nil {
            var tmp : [Any] = []
            for k in self.instanceStatusList! {
                tmp.append(k.toMap())
            }
            map["InstanceStatusList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceStatusList") {
            var tmp : [GetCAInstanceStatusResponseBody.InstanceStatusList] = []
            for v in dict["InstanceStatusList"] as! [Any] {
                var model = GetCAInstanceStatusResponseBody.InstanceStatusList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceStatusList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCAInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCAInstanceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCAInstanceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClientCertificateRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var identifier: String?

    public var showSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int32
        }
    }
}

public class ListClientCertificateResponseBody : Tea.TeaModel {
    public class CertificateList : Tea.TeaModel {
        public var afterDate: Int64?

        public var algorithm: String?

        public var beforeDate: Int64?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var days: Int32?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public var x509Certificate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.days != nil {
                map["Days"] = self.days!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.organization != nil {
                map["Organization"] = self.organization!
            }
            if self.organizationUnit != nil {
                map["OrganizationUnit"] = self.organizationUnit!
            }
            if self.parentIdentifier != nil {
                map["ParentIdentifier"] = self.parentIdentifier!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterDate") {
                self.afterDate = dict["AfterDate"] as! Int64
            }
            if dict.keys.contains("Algorithm") {
                self.algorithm = dict["Algorithm"] as! String
            }
            if dict.keys.contains("BeforeDate") {
                self.beforeDate = dict["BeforeDate"] as! Int64
            }
            if dict.keys.contains("CertificateType") {
                self.certificateType = dict["CertificateType"] as! String
            }
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("CountryCode") {
                self.countryCode = dict["CountryCode"] as! String
            }
            if dict.keys.contains("Days") {
                self.days = dict["Days"] as! Int32
            }
            if dict.keys.contains("Identifier") {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("KeySize") {
                self.keySize = dict["KeySize"] as! Int32
            }
            if dict.keys.contains("Locality") {
                self.locality = dict["Locality"] as! String
            }
            if dict.keys.contains("Md5") {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Organization") {
                self.organization = dict["Organization"] as! String
            }
            if dict.keys.contains("OrganizationUnit") {
                self.organizationUnit = dict["OrganizationUnit"] as! String
            }
            if dict.keys.contains("ParentIdentifier") {
                self.parentIdentifier = dict["ParentIdentifier"] as! String
            }
            if dict.keys.contains("Sans") {
                self.sans = dict["Sans"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("Sha2") {
                self.sha2 = dict["Sha2"] as! String
            }
            if dict.keys.contains("SignAlgorithm") {
                self.signAlgorithm = dict["SignAlgorithm"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubjectDN") {
                self.subjectDN = dict["SubjectDN"] as! String
            }
            if dict.keys.contains("X509Certificate") {
                self.x509Certificate = dict["X509Certificate"] as! String
            }
        }
    }
    public var certificateList: [ListClientCertificateResponseBody.CertificateList]?

    public var currentPage: Int32?

    public var pageCount: Int32?

    public var requestId: String?

    public var showSize: Int32?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateList != nil {
            var tmp : [Any] = []
            for k in self.certificateList! {
                tmp.append(k.toMap())
            }
            map["CertificateList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateList") {
            var tmp : [ListClientCertificateResponseBody.CertificateList] = []
            for v in dict["CertificateList"] as! [Any] {
                var model = ListClientCertificateResponseBody.CertificateList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificateList = tmp
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int32
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListClientCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClientCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClientCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRevokeCertificateRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var showSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int32
        }
    }
}

public class ListRevokeCertificateResponseBody : Tea.TeaModel {
    public class CertificateList : Tea.TeaModel {
        public var afterDate: String?

        public var algorithm: String?

        public var beforeDate: String?

        public var certificateType: String?

        public var commonName: String?

        public var countryCode: String?

        public var identifier: String?

        public var keySize: Int32?

        public var locality: String?

        public var md5: String?

        public var organization: String?

        public var organizationUnit: String?

        public var parentIdentifier: String?

        public var revokeDate: String?

        public var sans: String?

        public var serialNumber: String?

        public var sha2: String?

        public var signAlgorithm: String?

        public var state: String?

        public var status: String?

        public var subjectDN: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.afterDate != nil {
                map["AfterDate"] = self.afterDate!
            }
            if self.algorithm != nil {
                map["Algorithm"] = self.algorithm!
            }
            if self.beforeDate != nil {
                map["BeforeDate"] = self.beforeDate!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.commonName != nil {
                map["CommonName"] = self.commonName!
            }
            if self.countryCode != nil {
                map["CountryCode"] = self.countryCode!
            }
            if self.identifier != nil {
                map["Identifier"] = self.identifier!
            }
            if self.keySize != nil {
                map["KeySize"] = self.keySize!
            }
            if self.locality != nil {
                map["Locality"] = self.locality!
            }
            if self.md5 != nil {
                map["Md5"] = self.md5!
            }
            if self.organization != nil {
                map["Organization"] = self.organization!
            }
            if self.organizationUnit != nil {
                map["OrganizationUnit"] = self.organizationUnit!
            }
            if self.parentIdentifier != nil {
                map["ParentIdentifier"] = self.parentIdentifier!
            }
            if self.revokeDate != nil {
                map["RevokeDate"] = self.revokeDate!
            }
            if self.sans != nil {
                map["Sans"] = self.sans!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.sha2 != nil {
                map["Sha2"] = self.sha2!
            }
            if self.signAlgorithm != nil {
                map["SignAlgorithm"] = self.signAlgorithm!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subjectDN != nil {
                map["SubjectDN"] = self.subjectDN!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AfterDate") {
                self.afterDate = dict["AfterDate"] as! String
            }
            if dict.keys.contains("Algorithm") {
                self.algorithm = dict["Algorithm"] as! String
            }
            if dict.keys.contains("BeforeDate") {
                self.beforeDate = dict["BeforeDate"] as! String
            }
            if dict.keys.contains("CertificateType") {
                self.certificateType = dict["CertificateType"] as! String
            }
            if dict.keys.contains("CommonName") {
                self.commonName = dict["CommonName"] as! String
            }
            if dict.keys.contains("CountryCode") {
                self.countryCode = dict["CountryCode"] as! String
            }
            if dict.keys.contains("Identifier") {
                self.identifier = dict["Identifier"] as! String
            }
            if dict.keys.contains("KeySize") {
                self.keySize = dict["KeySize"] as! Int32
            }
            if dict.keys.contains("Locality") {
                self.locality = dict["Locality"] as! String
            }
            if dict.keys.contains("Md5") {
                self.md5 = dict["Md5"] as! String
            }
            if dict.keys.contains("Organization") {
                self.organization = dict["Organization"] as! String
            }
            if dict.keys.contains("OrganizationUnit") {
                self.organizationUnit = dict["OrganizationUnit"] as! String
            }
            if dict.keys.contains("ParentIdentifier") {
                self.parentIdentifier = dict["ParentIdentifier"] as! String
            }
            if dict.keys.contains("RevokeDate") {
                self.revokeDate = dict["RevokeDate"] as! String
            }
            if dict.keys.contains("Sans") {
                self.sans = dict["Sans"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("Sha2") {
                self.sha2 = dict["Sha2"] as! String
            }
            if dict.keys.contains("SignAlgorithm") {
                self.signAlgorithm = dict["SignAlgorithm"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubjectDN") {
                self.subjectDN = dict["SubjectDN"] as! String
            }
        }
    }
    public var certificateList: [ListRevokeCertificateResponseBody.CertificateList]?

    public var currentPage: Int32?

    public var pageCount: Int32?

    public var requestId: String?

    public var showSize: Int32?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateList != nil {
            var tmp : [Any] = []
            for k in self.certificateList! {
                tmp.append(k.toMap())
            }
            map["CertificateList"] = tmp
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.showSize != nil {
            map["ShowSize"] = self.showSize!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateList") {
            var tmp : [ListRevokeCertificateResponseBody.CertificateList] = []
            for v in dict["CertificateList"] as! [Any] {
                var model = ListRevokeCertificateResponseBody.CertificateList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.certificateList = tmp
        }
        if dict.keys.contains("CurrentPage") {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShowSize") {
            self.showSize = dict["ShowSize"] as! Int32
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListRevokeCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRevokeCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRevokeCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCACertificateStatusRequest : Tea.TeaModel {
    public var identifier: String?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identifier != nil {
            map["Identifier"] = self.identifier!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identifier") {
            self.identifier = dict["Identifier"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class UpdateCACertificateStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateCACertificateStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCACertificateStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateCACertificateStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
