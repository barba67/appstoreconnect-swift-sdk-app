// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AgeRatingDeclarationUpdateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var id: String
		public var attributes: Attributes?

		public enum `Type`: String, Codable, CaseIterable {
			case ageRatingDeclarations
		}

		public struct Attributes: Codable {
			public var alcoholTobaccoOrDrugUseOrReferences: AlcoholTobaccoOrDrugUseOrReferences?
			public var contests: Contests?
			/// - warning: Deprecated.
			public var isGamblingAndContests: Bool?
			public var isGambling: Bool?
			public var gamblingSimulated: GamblingSimulated?
			public var kidsAgeBand: KidsAgeBand?
			public var medicalOrTreatmentInformation: MedicalOrTreatmentInformation?
			public var profanityOrCrudeHumor: ProfanityOrCrudeHumor?
			public var sexualContentGraphicAndNudity: SexualContentGraphicAndNudity?
			public var sexualContentOrNudity: SexualContentOrNudity?
			public var isSeventeenPlus: Bool?
			public var horrorOrFearThemes: HorrorOrFearThemes?
			public var matureOrSuggestiveThemes: MatureOrSuggestiveThemes?
			public var isUnrestrictedWebAccess: Bool?
			public var violenceCartoonOrFantasy: ViolenceCartoonOrFantasy?
			public var violenceRealisticProlongedGraphicOrSadistic: ViolenceRealisticProlongedGraphicOrSadistic?
			public var violenceRealistic: ViolenceRealistic?

			public enum AlcoholTobaccoOrDrugUseOrReferences: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum Contests: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum GamblingSimulated: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum MedicalOrTreatmentInformation: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum ProfanityOrCrudeHumor: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum SexualContentGraphicAndNudity: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum SexualContentOrNudity: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum HorrorOrFearThemes: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum MatureOrSuggestiveThemes: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum ViolenceCartoonOrFantasy: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum ViolenceRealisticProlongedGraphicOrSadistic: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public enum ViolenceRealistic: String, Codable, CaseIterable {
				case `none` = "NONE"
				case infrequentOrMild = "INFREQUENT_OR_MILD"
				case frequentOrIntense = "FREQUENT_OR_INTENSE"
			}

			public init(alcoholTobaccoOrDrugUseOrReferences: AlcoholTobaccoOrDrugUseOrReferences? = nil, contests: Contests? = nil, isGamblingAndContests: Bool? = nil, isGambling: Bool? = nil, gamblingSimulated: GamblingSimulated? = nil, kidsAgeBand: KidsAgeBand? = nil, medicalOrTreatmentInformation: MedicalOrTreatmentInformation? = nil, profanityOrCrudeHumor: ProfanityOrCrudeHumor? = nil, sexualContentGraphicAndNudity: SexualContentGraphicAndNudity? = nil, sexualContentOrNudity: SexualContentOrNudity? = nil, isSeventeenPlus: Bool? = nil, horrorOrFearThemes: HorrorOrFearThemes? = nil, matureOrSuggestiveThemes: MatureOrSuggestiveThemes? = nil, isUnrestrictedWebAccess: Bool? = nil, violenceCartoonOrFantasy: ViolenceCartoonOrFantasy? = nil, violenceRealisticProlongedGraphicOrSadistic: ViolenceRealisticProlongedGraphicOrSadistic? = nil, violenceRealistic: ViolenceRealistic? = nil) {
				self.alcoholTobaccoOrDrugUseOrReferences = alcoholTobaccoOrDrugUseOrReferences
				self.contests = contests
				self.isGamblingAndContests = isGamblingAndContests
				self.isGambling = isGambling
				self.gamblingSimulated = gamblingSimulated
				self.kidsAgeBand = kidsAgeBand
				self.medicalOrTreatmentInformation = medicalOrTreatmentInformation
				self.profanityOrCrudeHumor = profanityOrCrudeHumor
				self.sexualContentGraphicAndNudity = sexualContentGraphicAndNudity
				self.sexualContentOrNudity = sexualContentOrNudity
				self.isSeventeenPlus = isSeventeenPlus
				self.horrorOrFearThemes = horrorOrFearThemes
				self.matureOrSuggestiveThemes = matureOrSuggestiveThemes
				self.isUnrestrictedWebAccess = isUnrestrictedWebAccess
				self.violenceCartoonOrFantasy = violenceCartoonOrFantasy
				self.violenceRealisticProlongedGraphicOrSadistic = violenceRealisticProlongedGraphicOrSadistic
				self.violenceRealistic = violenceRealistic
			}

			private enum CodingKeys: String, CodingKey {
				case alcoholTobaccoOrDrugUseOrReferences
				case contests
				case isGamblingAndContests = "gamblingAndContests"
				case isGambling = "gambling"
				case gamblingSimulated
				case kidsAgeBand
				case medicalOrTreatmentInformation
				case profanityOrCrudeHumor
				case sexualContentGraphicAndNudity
				case sexualContentOrNudity
				case isSeventeenPlus = "seventeenPlus"
				case horrorOrFearThemes
				case matureOrSuggestiveThemes
				case isUnrestrictedWebAccess = "unrestrictedWebAccess"
				case violenceCartoonOrFantasy
				case violenceRealisticProlongedGraphicOrSadistic
				case violenceRealistic
			}
		}

		public init(type: `Type`, id: String, attributes: Attributes? = nil) {
			self.type = type
			self.id = id
			self.attributes = attributes
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
