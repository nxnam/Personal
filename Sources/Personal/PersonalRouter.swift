//
//  PersonalRouter.swift
//  Fima
//
//  Created by Nam Nguyễn on 12/10/2022.
//  Copyright © 2022 Fima. All rights reserved.
//

import RIBs

protocol PersonalInteractable: Interactable {
    var router: PersonalRouting? { get set }
    var listener: PersonalListener? { get set }
}

protocol PersonalViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class PersonalRouter: ViewableRouter<PersonalInteractable, PersonalViewControllable>, PersonalRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: PersonalInteractable, viewController: PersonalViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
