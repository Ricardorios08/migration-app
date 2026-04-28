VERSION 5.00
Begin VB.Form dlgInfogov2
  Caption = "InfoGov 2"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgInfogov2.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 11016
  ClientHeight = 6576
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 4440
    Top = 5640
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
  Begin VB.Label Label2
    Caption = "Fernando: +54 9 261 656 7717 (WhatsApp)"
    Left = 600
    Top = 4440
    Width = 4575
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
    Width = 4692
    Height = 372
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
    Caption = "Fijo (de Claro): 0261-3806233"
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

Attribute VB_Name = "dlgInfogov2"

Public doImporteFijo As Double
Public doBaseImponible As Double


Private Sub Form_KeyPress(KeyAscii As Integer) 'A09688
  'Data Table: 40C9A4
  loc_A09650: ILdI2 KeyAscii
  loc_A09653: CI4UI1
  loc_A09654: LitI4 &HD
  loc_A09659: EqI4
  loc_A0965A: BranchF loc_A09662
  loc_A0965D: ImpAdCallFPR4 Proc_272_49_9E343C()
  loc_A09662: ILdI2 KeyAscii
  loc_A09665: LitI2_Byte &H1B
  loc_A09667: EqI2
  loc_A09668: BranchF loc_A09685
  loc_A0966B: ILdRf Me
  loc_A0966E: FStAdNoPop
  loc_A09672: ImpAdLdRf MemVar_D9C5D8
  loc_A09675: NewIfNullPr Global
  loc_A09678: Global.Unload from_stack_1
  loc_A0967D: FFree1Ad var_88
  loc_A09680: LitI2_Byte 0
  loc_A09682: IStI2 KeyAscii
  loc_A09685: ExitProcHresult
  loc_A09686: ConcatStr
End Sub

Private Sub OKButton_Click() '9CE070
  'Data Table: 40C9A4
  loc_9CE058: ILdRf Me
  loc_9CE05B: FStAdNoPop
  loc_9CE05F: ImpAdLdRf MemVar_D9C5D8
  loc_9CE062: NewIfNullPr Global
  loc_9CE065: Global.Unload from_stack_1
  loc_9CE06A: FFree1Ad var_88
  loc_9CE06D: ExitProcHresult
  loc_9CE06E: FFreeStr  = ""
End Sub

Public Function doImporteFijoGet() '40CE4C
  doImporteFijoGet = doImporteFijo
End Function

Public Sub doImporteFijoPut(Value) '40CE5B
  doImporteFijo = Value
End Sub

Public Function doBaseImponibleGet() '40CE6A
  doBaseImponibleGet = doBaseImponible
End Function

Public Sub doBaseImponiblePut(Value) '40CE79
  doBaseImponible = Value
End Sub
