import UIKit
//bai 0
struct Object: Codable {
    var animals: [Animal]?
}
struct Animal {
    var specieName: String?
    var name: String?
    var color: String?
    var idDeer: Int?
    var utcDate: String?
    var utcTime: String?
    var lmtTime: String?
    var temp: Int?
    var latitude: String?
    var longitude: String?
    var rowNum: String?
}

//bai1
struct ObjectPerson: Codable {
    var title: String?
    var type: String?
    var properties: Propertie?
    var required: [String]?
}
struct Propertie: Codable {
    var firstName: FirstName?
    var lastName: FirstName?
    var age: Age?
}
struct FirstName: Codable {
    var type: String?
}
struct Age: Codable {
    var description: String?
    var type: String?
    var minimum: Int?
}


//bai3
struct ObjectWidget: Codable {
    var debug: String?
    var window: Window?
    var image: Image?
    var text: Text?
}
struct Window: Codable {
    var title: String?
    var name: String?
    var width: Int?
    var height: Int?
}
struct Image: Codable {
    var src: String?
    var name: String?
    var hOffSet: Int?
    var vOffSet: Int?
    var alignment: String?

}
struct Text: Codable {
    var data: String?
    var size: Int?
    var style: String?
    var name: String?
    var hOffSet: Int?
    var vOffSet: Int?
    var alignment: String?
    var onMouseUp: String?
}

/// bai5
struct Object: Codable {
    var students: [Student]?
}
struct Student {
    var id: Int?
    var fistName: String?
    var lastName: String?
    var name: String?
    var emailAddress: String?
    var territoryId: Int?
}



/// vi du 1
/// {"menu": {
//  "id": "file",
//  "value": "File",
//  "popup": {
//  "menuitem": [
//      {"value": "New", "onclick": "CreateDoc()"},
//      {"value": "Open", "onclick": "OpenDoc()"},
//      {"value": "Save", "onclick": "SaveDoc()"}
//    ]
//  }
//}}
struct Object: Codable {
    var menu: Menu?

}
struct Menu: Codable {
    var id: String?
    var value: String?
    var popup: Popup?
}
struct Popup: Codable {
    var menitem: [Menitem]?
}
struct Menitem: Codable {
    var value: String?
    var onClick: String?
}



///vidu2
//{ "dog": [
//    "name": "dog",
//    "color": ["red", "green", "yellow", "black"],
//    "species": { "crossbreed_dog": [
//        { "name": "blackDog", "color": "green" }
//        ]
//    }
//    ]
//"cat": { "status": "cute" }
//}
struct ObjectAnimal: Codable {
    var dog: [Dog]?
    var cat: Cat?

}
struct Dog: Codable {
    var name: String?
    var color: [String]?
    var species: Specie?

    struct Cat {
        var status: String?
    }
    struct Specie {
        var crossbreedDog: [CrossbreedDog]?
    }
    struct CrossbreedDog {
        var name: String?
        var color: String?
    }
