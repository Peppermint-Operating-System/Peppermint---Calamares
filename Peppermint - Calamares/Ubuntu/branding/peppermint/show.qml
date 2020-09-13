/* === This file is part of Calamares - <https://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *   Copyright 2018, Adriaan de Groot <groot@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 1000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {

        Image {
            id: background
            source: "SLIDE1.png"
            width: 750; height: 333
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
 
    }

    Slide {
        Image {
            id: background
            source: "SLIDE2.png"
            width: 750; height: 333
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }

        
    }

    Slide {
        Image {
            id: background
            source: "SLIDE3.png"
            width: 750; height: 333
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        
    }

    Slide {
        Image {
            id: background
            source: "SLIDE4.png"
            width: 750; height: 333
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        
    }

    Slide {
        Image {
            id: background
            source: "SLIDE-packages.png"
            width: 750; height: 333
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        
    }

    Slide {
        Image {
            id: background
            source: "SLIDE-screen.png"
            width: 750; height: 333
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        
    }

    Slide {
        Image {
            id: background
            source: "SLIDE-socials.png"
            width: 750; height: 333
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        
    }
    Slide {
        Image {
            id: background
            source: "SLIDE-thankyou.png"
            width: 750; height: 333
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        
    }

    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }
    
    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
