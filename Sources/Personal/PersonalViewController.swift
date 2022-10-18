//
//  PersonalViewController.swift
//  Fima
//
//  Created by Nam Nguyễn on 12/10/2022.
//  Copyright © 2022 Fima. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol PersonalPresentableListener: AnyObject {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

open class PersonalViewController: UIViewController, PersonalPresentable, PersonalViewControllable {

    weak var listener: PersonalPresentableListener?
}
