VERSION 5.00
Begin VB.Form frmCalendario
  Caption = "Calendario"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmCalendario.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ControlBox = 0   'False
  ClientLeft = 45
  ClientTop = 330
  ClientWidth = 2775
  ClientHeight = 2565
  StartUpPosition = 2 'CenterScreen
  Moveable = 0   'False
  Begin contpres.IntEliDate1 IntEliDate11
    Left = -120
    Top = 0
    Width = 3510
    Height = 2745
    TabIndex = 0
    OleObjectBlob = "frmCalendario.frx":08CA
  End
End

Attribute VB_Name = "frmCalendario"

