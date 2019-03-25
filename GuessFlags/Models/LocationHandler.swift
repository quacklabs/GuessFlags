//
//  Location Data Handler
//

public protocol LocationHandlerDelegate : class {
    func getLocatio()
}
class LocationHandler : NSObject, MKAnnotation {

    init(){
        // let deviceLocation = 
        //let sourceLocation = CLLocationCoordinate2D(latitude: 40.759011, longitude: -73.984472)
        //let destinationLocation = CLLocationCoordinate2D(latitude: 40.748441, longitude: -73.985564)
    }
}


struct Location : Codable {

    var longitude : String?
    var latittude : String?

    // put other location info here


    
}

/*
 // 3.
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
        let destinationPlacemark = MKPlacemark(coordinate: destinationLocation, addressDictionary: nil)
        
        // 4.
        let sourceMapItem = MKMapItem(placemark: sourcePlacemark)
        let destinationMapItem = MKMapItem(placemark: destinationPlacemark)
        
        // 5.
        let sourceAnnotation = MKPointAnnotation()
        



        if let location = sourcePlacemark.location {
            sourceAnnotation.coordinate = location.coordinate
        }
        
        
        let destinationAnnotation = MKPointAnnotation()
        destinationAnnotation.title = "Empire State Building"
        
        if let location = destinationPlacemark.location {
            destinationAnnotation.coordinate = location.coordinate
        }


*/