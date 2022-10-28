/*******************************************************************************
**
** Copyright (C) 2022 ru.auroraos
**
** This file is part of the ??? ?????????? ??? ?? ?????? project.
**
** Redistribution and use in source and binary forms,
** with or without modification, are permitted provided
** that the following conditions are met:
**
** * Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** * Redistributions in binary form must reproduce the above copyright notice,
**   this list of conditions and the following disclaimer
**   in the documentation and/or other materials provided with the distribution.
** * Neither the name of the copyright holder nor the names of its contributors
**   may be used to endorse or promote products derived from this software
**   without specific prior written permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
** THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
** FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
** IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
** FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
** OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
** PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
** LOSS OF USE, DATA, OR PROFITS;
** OR BUSINESS INTERRUPTION)
** HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
** WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
** EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**
*******************************************************************************/

import QtQuick 2.0
import Sailfish.Silica 1.0
Page {
     SlideshowView {
         id: slideshowView
         anchors.centerIn: parent
         width: Math.min(parent.width, parent.height)
         height: width
         delegate: BackgroundItem {
             width: slideshowView.itemWidth
             height: slideshowView.itemHeight
             Label {
                 id: cDelo
                 text: delo
                 font.pixelSize: Theme.fontSizeMedium
                 color: highlighted ?  Theme.highlightColor : Theme.primaryColor
                 anchors.horizontalCenter: parent.horizontalCenter
             }
             Label {
                 text: date
                 font.pixelSize: Theme.fontSizeSmall
                 color: Theme.highlightColor
                 anchors {
                     left: parent.left + Theme.paddingSmall
                     right: parent.right
                     bottom: cDelo.top
                 }
             }
         }
         model: ListModel {
             id: week
             ListElement {
                 todo: "дело1";
                 date: "17.09.2022"
             }
             ListElement {
                 todo: "дело2";
                 date: "17.09.2022"
             }
             ListElement {
                 todo: "дело3";
                 date: "18.09.2022"
             }
             ListElement {
                 todo: "дело4";
                 date: "18.09.2022"
             }
             ListElement {
                 todo: "дело5";
                 date: "20.09.2022"
             }
             ListElement {
                 todo: "дело6";
                 date: "20.09.2022"
             }
 }

     }
}

