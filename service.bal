import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + return - string name with hello message or error
    resource function get patients/main() returns MedinetPatient|error {
        MedinetPatient medinetPatient = {
            title: "Mr",
            pronouns: "John",
            firstName: "Doe",
            lastName: "Doe",
            middleName: "Tom",
            dateOfBirth: "2001-08-24T00:00:00.000Z",
            ethnicityId: 1,
            sex: "Male",
            homePhone: "0298851237",
            mobilePhone: "0412345678",
            email: "test@test4.com",
            contactMethod: "HomePhone",
            isAccountActive: true,
            isDeceased: false,
            address: {
                addressLine1: "1 Test Street",
                city: "Sydney",
                state: "NSW",
                postCode: "2000"
            },
            incomingReferrals: [
                {
                    referredToUserId: 1,
                    referralDate: "2021-08-24T00:00:00.000Z",
                    referredBy: 11221,
                    indefinite: false,
                    referredByType: "GP",
                    firstVisitDate: "2021-01-11T17:10:00.0000000Z"}
            ]
        };
        return medinetPatient;
    }
}
