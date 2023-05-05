import Foundation
class Account {
    let login: String
    init(login: String, password: String) {
        self.login = login
    }
}

class User: Account {
    var name: String
    var age: Int
    var email: String
    init(name: String, age: Int, email: String, login: String, password: String) {
        self.name = name
        self.age = age
        self.email = email
        super.init(login: login, password: password)
    }
  
}

class Admin: Account {
    var authorize: Bool?
    func deleteUser(facebook: Facebook, user: Account) {
        if let index = facebook.users.firstIndex(where: { $0.login == user.login }) {
            facebook.users.remove(at: index)
        }
    }
}


class Facebook {
   
    var users: [Account] = []
    func addUser(_ user: Account) {
        users.append(user)
    }
    func showAllAccounts() {
        for account in users {
            print(account.login)
        }
    }
    func showAdminsAndUsers() -> (Int, Int) {
        var adminCount = 0
        var userCount = 0
        for account in users {
            if account is Admin {
                adminCount += 1
            } else if account is User {
                userCount += 1
            }
        }
        return (adminCount, userCount)
    }
    
}

let facebook = Facebook()
let admin = Admin(login: "Tech", password: "Orda")
let user1 = Account(login: "Meirkhan", password: "qwerty")
let user2 = User(name: "Gabit", age: 25, email: "gabit@gmail.com", login: "gabitB", password: "password")

facebook.addUser(admin)
facebook.addUser(user1)
facebook.addUser(user2)

facebook.showAllAccounts()

var (adminCount, userCount) = facebook.showAdminsAndUsers()
print("Admins count: \(adminCount), Users count: \(userCount)")

admin.deleteUser(facebook: facebook, user: user2)

facebook.showAllAccounts()

(adminCount, userCount) = facebook.showAdminsAndUsers()
print("Admins count: \(adminCount), Users count: \(userCount)")

