VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarOficialdeJusticia
  Caption = "Buscar Oficial de Justicia por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarOficialdeJusticia.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 9180
  ClientHeight = 5424
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 720
    Width = 7215
    Height = 360
    TabIndex = 1
    Tag = "0"
    MaxLength = 40
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
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 1680
    Top = 240
    Width = 1575
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 6
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
  Begin VB.CommandButton CancelButton
    Caption = "Cancelar"
    Left = 1680
    Top = 4680
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "3"
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
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 120
    Top = 4680
    Width = 1335
    Height = 495
    TabIndex = 3
    Tag = "2"
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1320
    Width = 7935
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarOficialdeJusticia.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 840
    Top = 720
    Width = 810
    Height = 300
    TabIndex = 6
    AutoSize = -1  'True
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
    Caption = "Codigo:"
    Left = 840
    Top = 240
    Width = 810
    Height = 300
    TabIndex = 5
    AutoSize = -1  'True
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
End

Attribute VB_Name = "dlgBuscarOficialdeJusticia"

Public sPasaDetalle As String
Public sPasaCodigo As String
Public sPasaSelect As String


Private Sub Campo1Txt_Change() 'A5B4F0
  'Data Table: 420F18
  loc_A5B498: LitStr vbNullString
  loc_A5B49B: FLdPr Me
  loc_A5B49E: VCallAd Control_ID_Campo2Txt
  loc_A5B4A1: FStAdFunc var_88
  loc_A5B4A4: FLdPr var_88
  loc_A5B4A7: Me.Text = from_stack_1
  loc_A5B4AC: FFree1Ad var_88
  loc_A5B4AF: LitStr "SELECT * FROM oficjust WHERE CodiOfju like '"
  loc_A5B4B2: FLdRfVar var_8C
  loc_A5B4B5: FLdPr Me
  loc_A5B4B8: VCallAd Control_ID_Campo1Txt
  loc_A5B4BB: FStAdFunc var_88
  loc_A5B4BE: FLdPr var_88
  loc_A5B4C1:  = Me.Text
  loc_A5B4C6: ILdRf var_8C
  loc_A5B4C9: ConcatStr
  loc_A5B4CA: FStStrNoPop var_90
  loc_A5B4CD: LitStr Chr(37) & "' ORDER BY CodiOfju"
  loc_A5B4D0: ConcatStr
  loc_A5B4D1: FStStrNoPop var_94
  loc_A5B4D4: FLdPr Me
  loc_A5B4D7: MemLdRfVar from_stack_1.global_64
  loc_A5B4DA: NewIfNullPr clsoficjust
  loc_A5B4DD: Call clsoficjust.RedefineRS(from_stack_1v)
  loc_A5B4E2: FFreeStr var_8C = "": var_90 = ""
  loc_A5B4EB: FFree1Ad var_88
  loc_A5B4EE: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9DA4F8
  'Data Table: 420F18
  loc_9DA4E0: LitStr "0123456789"
  loc_9DA4E3: FStStrCopy var_88
  loc_9DA4E6: FLdRfVar var_88
  loc_9DA4E9: ILdRf KeyAscii
  loc_9DA4EC: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9DA4F1: IStI2 KeyAscii
  loc_9DA4F4: FFree1Str var_88
  loc_9DA4F7: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9B06CC
  'Data Table: 420F18
  loc_9B06C4: Call asignarOficialdeJusticia()
  loc_9B06C9: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9B955C
  'Data Table: 420F18
  loc_9B9548: ILdI2 KeyCode
  loc_9B954B: CI4UI1
  loc_9B954C: LitI4 &HD
  loc_9B9551: EqI4
  loc_9B9552: BranchF loc_9B955A
  loc_9B9555: Call asignarOficialdeJusticia()
  loc_9B955A: ExitProcHresult
End Sub

Private Sub Form_Load() 'A87EF4
  'Data Table: 420F18
  loc_A87E68: FLdPr Me
  loc_A87E6B: MemLdStr sPasaSelect
  loc_A87E6E: LitStr vbNullString
  loc_A87E71: EqStr
  loc_A87E73: BranchF loc_A87E80
  loc_A87E76: LitStr "SELECT * FROM oficjust ORDER BY DetaOfJu"
  loc_A87E79: FLdPr Me
  loc_A87E7C: MemStStrCopy
  loc_A87E80: FLdPr Me
  loc_A87E83: MemLdStr sPasaSelect
  loc_A87E86: FLdPr Me
  loc_A87E89: MemLdRfVar from_stack_1.global_64
  loc_A87E8C: NewIfNullPr clsoficjust
  loc_A87E8F: Call clsoficjust.RedefineRS(from_stack_1v)
  loc_A87E94: LitI4 0
  loc_A87E99: LitI4 1
  loc_A87E9E: FLdRfVar var_88
  loc_A87EA1: Redim
  loc_A87EAB: FLdPr Me
  loc_A87EAE: MemLdRfVar from_stack_1.global_64
  loc_A87EB1: NewIfNullAd
  loc_A87EB4: FStAd var_8C 
  loc_A87EB8: FLdRfVar var_8C
  loc_A87EBB: CVarRef
  loc_A87EC0: ParmAry1St
  loc_A87EC6: FLdPr Me
  loc_A87EC9: VCallAd Control_ID_dgdABMS
  loc_A87ECC: CVarAd
  loc_A87ED0: ParmAry1St
  loc_A87ED6: FLdRfVar var_88
  loc_A87ED9: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A87EDE: ILdRf var_8C
  loc_A87EE1: CastAd
  loc_A87EE4: FLdPr Me
  loc_A87EE7: MemStAdFunc
  loc_A87EEB: FLdRfVar var_88
  loc_A87EEE: Erase
  loc_A87EEF: FFree1Ad var_8C
  loc_A87EF2: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9B1254
  'Data Table: 420F18
  loc_9B1248: LitStr vbNullString
  loc_9B124B: FLdPr Me
  loc_9B124E: MemStStrCopy
  loc_9B1252: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D3428
  'Data Table: 420F18
  loc_9D3410: FLdPr Me
  loc_9D3413: VCallAd Control_ID_Campo2Txt
  loc_9D3416: FStAdFunc var_88
  loc_9D3419: FLdPr var_88
  loc_9D341C: Me.SetFocus
  loc_9D3421: FFree1Ad var_88
  loc_9D3424: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A11334
  'Data Table: 420F18
  loc_A112F8: ILdI2 KeyAscii
  loc_A112FB: LitI2_Byte &HD
  loc_A112FD: EqI2
  loc_A112FE: BranchF loc_A1130F
  loc_A11301: LitVar_TRUE var_A4
  loc_A11304: LitStr "{Tab}"
  loc_A11307: ImpAdCallFPR4 SendKeys , 
  loc_A1130C: FFree1Var var_A4 = ""
  loc_A1130F: ILdI2 KeyAscii
  loc_A11312: LitI2_Byte &H1B
  loc_A11314: EqI2
  loc_A11315: BranchF loc_A11332
  loc_A11318: ILdRf Me
  loc_A1131B: FStAdNoPop
  loc_A1131F: ImpAdLdRf MemVar_D9C5D8
  loc_A11322: NewIfNullPr Global
  loc_A11325: Global.Unload from_stack_1
  loc_A1132A: FFree1Ad var_A8
  loc_A1132D: LitI2_Byte 0
  loc_A1132F: IStI2 KeyAscii
  loc_A11332: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9B0704
  'Data Table: 420F18
  loc_9B06FC: Call asignarOficialdeJusticia()
  loc_9B0701: ExitProcHresult
End Sub

Private Sub CancelButton_Click() '9DA70C
  'Data Table: 420F18
  loc_9DA6F4: ILdRf Me
  loc_9DA6F7: FStAdNoPop
  loc_9DA6FB: ImpAdLdRf MemVar_D9C5D8
  loc_9DA6FE: NewIfNullPr Global
  loc_9DA701: Global.Unload from_stack_1
  loc_9DA706: FFree1Ad var_88
  loc_9DA709: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'A5B588
  'Data Table: 420F18
  loc_A5B530: LitStr vbNullString
  loc_A5B533: FLdPr Me
  loc_A5B536: VCallAd Control_ID_Campo1Txt
  loc_A5B539: FStAdFunc var_88
  loc_A5B53C: FLdPr var_88
  loc_A5B53F: Me.Text = from_stack_1
  loc_A5B544: FFree1Ad var_88
  loc_A5B547: LitStr "SELECT * FROM oficjust WHERE DetaOfJu like '" & Chr(37)
  loc_A5B54A: FLdRfVar var_8C
  loc_A5B54D: FLdPr Me
  loc_A5B550: VCallAd Control_ID_Campo2Txt
  loc_A5B553: FStAdFunc var_88
  loc_A5B556: FLdPr var_88
  loc_A5B559:  = Me.Text
  loc_A5B55E: ILdRf var_8C
  loc_A5B561: ConcatStr
  loc_A5B562: FStStrNoPop var_90
  loc_A5B565: LitStr Chr(37) & "' ORDER BY DetaOfJu"
  loc_A5B568: ConcatStr
  loc_A5B569: FStStrNoPop var_94
  loc_A5B56C: FLdPr Me
  loc_A5B56F: MemLdRfVar from_stack_1.global_64
  loc_A5B572: NewIfNullPr clsoficjust
  loc_A5B575: Call clsoficjust.RedefineRS(from_stack_1v)
  loc_A5B57A: FFreeStr var_8C = "": var_90 = ""
  loc_A5B583: FFree1Ad var_88
  loc_A5B586: ExitProcHresult
End Sub

Public Function sPasaDetalleGet() '4214D4
  sPasaDetalleGet = sPasaDetalle
End Function

Public Sub sPasaDetallePut(Value) '4214E3
  sPasaDetalle = Value
End Sub

Public Function sPasaCodigoGet() '4214F2
  sPasaCodigoGet = sPasaCodigo
End Function

Public Sub sPasaCodigoPut(Value) '421501
  sPasaCodigo = Value
End Sub

Public Function sPasaSelectGet() '421510
  sPasaSelectGet = sPasaSelect
End Function

Public Sub sPasaSelectPut(Value) '42151F
  sPasaSelect = Value
End Sub

Public Sub asignarOficialdeJusticia() 'A80BF8
  'Data Table: 420F18
  loc_A80B6C: FLdRfVar var_88
  loc_A80B6F: FLdPr Me
  loc_A80B72: MemLdRfVar from_stack_1.global_64
  loc_A80B75: NewIfNullPr clsoficjust
  loc_A80B78: from_stack_1 = clsoficjust.RecordCount
  loc_A80B7D: ILdRf var_88
  loc_A80B80: LitI4 0
  loc_A80B85: GtI4
  loc_A80B86: BranchF loc_A80BCD
  loc_A80B89: FLdRfVar var_8A
  loc_A80B8C: FLdPr Me
  loc_A80B8F: MemLdRfVar from_stack_1.global_64
  loc_A80B92: NewIfNullPr clsoficjust
  loc_A80B95: from_stack_1 = clsoficjust.CodiOfju
  loc_A80B9A: FLdI2 var_8A
  loc_A80B9D: CStrUI1
  loc_A80B9F: FStStrNoPop var_90
  loc_A80BA2: FLdPr Me
  loc_A80BA5: MemStStrCopy
  loc_A80BA9: FFree1Str var_90
  loc_A80BAC: FLdRfVar var_90
  loc_A80BAF: FLdPr Me
  loc_A80BB2: MemLdRfVar from_stack_1.global_64
  loc_A80BB5: NewIfNullPr clsoficjust
  loc_A80BB8: from_stack_1 = clsoficjust.DetaOfju
  loc_A80BBD: ILdRf var_90
  loc_A80BC0: FLdPr Me
  loc_A80BC3: MemStStrCopy
  loc_A80BC7: FFree1Str var_90
  loc_A80BCA: Branch loc_A80BE1
  loc_A80BCD: LitStr "0"
  loc_A80BD0: FLdPr Me
  loc_A80BD3: MemStStrCopy
  loc_A80BD7: LitStr vbNullString
  loc_A80BDA: FLdPr Me
  loc_A80BDD: MemStStrCopy
  loc_A80BE1: ILdRf Me
  loc_A80BE4: FStAdNoPop
  loc_A80BE8: ImpAdLdRf MemVar_D9C5D8
  loc_A80BEB: NewIfNullPr Global
  loc_A80BEE: Global.Unload from_stack_1
  loc_A80BF3: FFree1Ad var_94
  loc_A80BF6: ExitProcHresult
End Sub
