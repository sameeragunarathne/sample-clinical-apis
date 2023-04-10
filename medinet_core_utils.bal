public type MedinetPatient record {
    string title?;
    string pronouns?;
    string firstName?;
    string lastName?;
    string middleName?;
    string dateOfBirth?;
    int ethnicityId?;
    Gender sex?;
    string homePhone?;
    string mobilePhone?;
    string email?;
    string contactMethod?;
    boolean isAccountActive?;
    boolean isDeceased?;
    MedinetAddress address?;
    IncomingReferrals[] incomingReferrals?;
};

public type MedinetAddress record {
    string addressLine1?;
    string postCode?;
    string city?;
    string state?;
};

public type IncomingReferrals record {
    int referredToUserId?;
    int referredBy?;
    string referredByType?;
    boolean indefinite?;
    string referralDate?;
    string firstVisitDate?;
};

public enum Gender {
    FEMALE = "Female",
    MALE = "Male",
    UNKNOWN = "Unknown"
}