VERSION 5.00
Begin VB.Form dlgInfogov3
  Caption = "InfoGov 3"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgInfogov3.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 11010
  ClientHeight = 7740
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 4680
    Top = 6600
    Width = 1335
    Height = 495
    TabIndex = 0
    Tag = "5"
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label11
    Caption = "Agustín: +54 9 261 656 7717 (WhatsApp)"
    Left = 600
    Top = 5160
    Width = 4815
    Height = 375
    TabIndex = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label10
    Caption = "agustinmolina@infogov.com.ar"
    Left = 5760
    Top = 5160
    Width = 3855
    Height = 375
    TabIndex = 10
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label9
    Caption = "fernandolabarrera@infogov.com.ar"
    Left = 5760
    Top = 4440
    Width = 3855
    Height = 375
    TabIndex = 9
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label8
    Caption = "marceloestevez@infogov.com.ar"
    Left = 5760
    Top = 3720
    Width = 3855
    Height = 375
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label4
    Caption = "jonathandeluret@infogov.com.ar"
    Left = 5760
    Top = 3000
    Width = 3855
    Height = 375
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Fernando: +54 9 261 656 7717 (WhatsApp)"
    Left = 600
    Top = 4440
    Width = 4815
    Height = 375
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label7
    Caption = "Marcelo: +54 9 261 657  1713 (WhatsApp)"
    Left = 600
    Top = 3720
    Width = 4695
    Height = 375
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label6
    Caption = "Jonathan: +54 9 261 656 8505 (WhatsApp)"
    Left = 600
    Top = 3000
    Width = 4695
    Height = 375
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label5
    Caption = "Fijo (de Telecom): 0261 51 44 775"
    Left = 600
    Top = 2280
    Width = 3735
    Height = 375
    TabIndex = 3
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Cualquier inconveniente, por favor, comunicarse a los siguientes teléfonos:"
    Left = 480
    Top = 1560
    Width = 8175
    Height = 375
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Solicite esta pantalla en el sistema InfoGov 3"
    Left = 600
    Top = 600
    Width = 9855
    Height = 735
    TabIndex = 1
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 24
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "dlgInfogov3"

Public doImporteFijo As Double
Public doBaseImponible As Double


Private Sub OKButton_Click() '955364
  'Data Table: 42423C
  loc_95534C: ILdRf Me
  loc_95534F: FStAdNoPop
  loc_955353: ImpAdLdRf MemVar_C44F9C
  loc_955356: NewIfNullPr Me
  loc_955359: Me.Global.Unload from_stack_1
  loc_95535E: FFree1Ad var_88
  loc_955361: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '981350
  'Data Table: 42423C
  loc_981318: ILdI2 KeyAscii
  loc_98131B: CI4UI1
  loc_98131C: LitI4 &HD
  loc_981321: EqI4
  loc_981322: BranchF loc_98132A
  loc_981325: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_98132A: ILdI2 KeyAscii
  loc_98132D: LitI2_Byte &H1B
  loc_98132F: EqI2
  loc_981330: BranchF loc_98134D
  loc_981333: ILdRf Me
  loc_981336: FStAdNoPop
  loc_98133A: ImpAdLdRf MemVar_C44F9C
  loc_98133D: NewIfNullPr Me
  loc_981340: Me.Global.Unload from_stack_1
  loc_981345: FFree1Ad var_88
  loc_981348: LitI2_Byte 0
  loc_98134A: IStI2 KeyAscii
  loc_98134D: ExitProcHresult
End Sub

Public Function doImporteFijoGet() '42498C
  doImporteFijoGet = doImporteFijo
End Function

Public Sub doImporteFijoPut(Value) '42499B
  doImporteFijo = Value
End Sub

Public Function doBaseImponibleGet() '4249AA
  doBaseImponibleGet = doBaseImponible
End Function

Public Sub doBaseImponiblePut(Value) '4249B9
  doBaseImponible = Value
End Sub
