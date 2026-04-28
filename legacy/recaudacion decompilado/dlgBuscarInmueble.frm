VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarInmueble
  Caption = "Buscar Inmueble por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarInmueble.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10008
  ClientHeight = 5364
  StartUpPosition = 2 'CenterScreen
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2400
    Top = 720
    Width = 6855
    Height = 360
    TabIndex = 1
    Tag = "0"
    MaxLength = 40
    DataField = "DetaPers"
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
    Left = 2400
    Top = 240
    Width = 1215
    Height = 360
    TabIndex = 0
    Tag = "0"
    MaxLength = 3
    DataField = "CodiInmu"
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
    Left = 1560
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
    Width = 9615
    Height = 3015
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarInmueble.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Apellido y Nombre:"
    Left = 360
    Top = 720
    Width = 1965
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
    Caption = "Cuenta:"
    Left = 1440
    Top = 240
    Width = 840
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

Attribute VB_Name = "dlgBuscarInmueble"

Public InmuebleCLS As New Class


Private Sub Campo1Txt_Change() 'A78BA8
  'Data Table: 41BD2C
  loc_A78B3C: LitStr vbNullString
  loc_A78B3F: FLdPr Me
  loc_A78B42: VCallAd Control_ID_Campo2Txt
  loc_A78B45: FStAdFunc var_88
  loc_A78B48: FLdPr var_88
  loc_A78B4B: Me.Text = from_stack_1
  loc_A78B50: FFree1Ad var_88
  loc_A78B53: LitStr "SELECT CodiInmu, DetaPers, inmueble.CucuPers, SupeInmu FROM inmueble "
  loc_A78B56: LitStr "LEFT JOIN infogov.persona ON infogov.persona.cucupers = inmueble.cucupers "
  loc_A78B59: ConcatStr
  loc_A78B5A: FStStrNoPop var_8C
  loc_A78B5D: LitStr "WHERE CodiInmu like '"
  loc_A78B60: ConcatStr
  loc_A78B61: FStStrNoPop var_94
  loc_A78B64: FLdRfVar var_90
  loc_A78B67: FLdPr Me
  loc_A78B6A: VCallAd Control_ID_Campo1Txt
  loc_A78B6D: FStAdFunc var_88
  loc_A78B70: FLdPr var_88
  loc_A78B73:  = Me.Text
  loc_A78B78: ILdRf var_90
  loc_A78B7B: ConcatStr
  loc_A78B7C: FStStrNoPop var_98
  loc_A78B7F: LitStr Chr(37) & "' ORDER BY CodiInmu"
  loc_A78B82: ConcatStr
  loc_A78B83: FStStrNoPop var_9C
  loc_A78B86: FLdPr Me
  loc_A78B89: MemLdRfVar from_stack_1.InmuebleCLS
  loc_A78B8C: NewIfNullPr clsInmueble
  loc_A78B8F: Call clsInmueble.RedefineRS(from_stack_1v)
  loc_A78B94: FFreeStr var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_A78BA1: FFree1Ad var_88
  loc_A78BA4: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9D48A4
  'Data Table: 41BD2C
  loc_9D488C: LitStr "0123456789"
  loc_9D488F: FStStrCopy var_88
  loc_9D4892: FLdRfVar var_88
  loc_9D4895: ILdRf KeyAscii
  loc_9D4898: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D489D: IStI2 KeyAscii
  loc_9D48A0: FFree1Str var_88
  loc_9D48A3: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '9D4774
  'Data Table: 41BD2C
  loc_9D475C: FLdPr Me
  loc_9D475F: VCallAd Control_ID_dgdABMS
  loc_9D4762: FStAdFunc var_88
  loc_9D4765: FLdRfVar var_88
  loc_9D4768: ImpAdCallFPR4  = Proc_58_0_9FD654()
  loc_9D476D: FFree1Ad var_88
  loc_9D4770: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D4728
  'Data Table: 41BD2C
  loc_9D4710: FLdPr Me
  loc_9D4713: VCallAd Control_ID_dgdABMS
  loc_9D4716: FStAdFunc var_88
  loc_9D4719: FLdRfVar var_88
  loc_9D471C: ImpAdCallFPR4  = Proc_58_1_9EAB78()
  loc_9D4721: FFree1Ad var_88
  loc_9D4724: ExitProcHresult
  loc_9D4725: StUdtVar
End Sub

Private Sub dgdABMS_DblClick() '9D480C
  'Data Table: 41BD2C
  loc_9D47F4: ILdRf Me
  loc_9D47F7: FStAdNoPop
  loc_9D47FB: ImpAdLdRf MemVar_D9C5D8
  loc_9D47FE: NewIfNullPr Global
  loc_9D4801: Global.Unload from_stack_1
  loc_9D4806: FFree1Ad var_88
  loc_9D4809: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9EDCF8
  'Data Table: 41BD2C
  loc_9EDCD4: ILdI2 KeyCode
  loc_9EDCD7: CI4UI1
  loc_9EDCD8: LitI4 &HD
  loc_9EDCDD: EqI4
  loc_9EDCDE: BranchF loc_9EDCF6
  loc_9EDCE1: ILdRf Me
  loc_9EDCE4: FStAdNoPop
  loc_9EDCE8: ImpAdLdRf MemVar_D9C5D8
  loc_9EDCEB: NewIfNullPr Global
  loc_9EDCEE: Global.Unload from_stack_1
  loc_9EDCF3: FFree1Ad var_88
  loc_9EDCF6: ExitProcHresult
End Sub

Private Sub Form_Load() 'A95B20
  'Data Table: 41BD2C
  loc_A95A80: FLdRfVar var_94
  loc_A95A83: LitVarStr var_A4, vbNullString
  loc_A95A88: HardType
  loc_A95A89: EqVarBool
  loc_A95A8B: BranchF loc_A95AA6
  loc_A95A8E: LitStr "SELECT CodiInmu, DetaPers, inmueble.CucuPers, SupeInmu FROM inmueble "
  loc_A95A91: LitStr "LEFT JOIN infogov.persona ON infogov.persona.CucuPers = inmueble.CucuPers "
  loc_A95A94: ConcatStr
  loc_A95A95: FStStrNoPop var_B8
  loc_A95A98: LitStr "ORDER BY DetaPers"
  loc_A95A9B: ConcatStr
  loc_A95A9C: CVarStr var_B4
  loc_A95A9F: FStVar var_94
  loc_A95AA3: FFree1Str var_B8
  loc_A95AA6: FLdRfVar var_94
  loc_A95AA9: CStrVarVal var_B8
  loc_A95AAD: FLdPr Me
  loc_A95AB0: MemLdRfVar from_stack_1.InmuebleCLS
  loc_A95AB3: NewIfNullPr clsInmueble
  loc_A95AB6: Call clsInmueble.RedefineRS(from_stack_1v)
  loc_A95ABB: FFree1Str var_B8
  loc_A95ABE: LitI4 0
  loc_A95AC3: LitI4 1
  loc_A95AC8: FLdRfVar var_BC
  loc_A95ACB: Redim
  loc_A95AD5: FLdPr Me
  loc_A95AD8: MemLdRfVar from_stack_1.InmuebleCLS
  loc_A95ADB: NewIfNullAd
  loc_A95ADE: FStAd var_C0 
  loc_A95AE2: FLdRfVar var_C0
  loc_A95AE5: CVarRef
  loc_A95AEA: ParmAry1St
  loc_A95AF0: FLdPr Me
  loc_A95AF3: VCallAd Control_ID_dgdABMS
  loc_A95AF6: CVarAd
  loc_A95AFA: ParmAry1St
  loc_A95B00: FLdRfVar var_BC
  loc_A95B03: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A95B08: ILdRf var_C0
  loc_A95B0B: CastAd
  loc_A95B0E: FLdPr Me
  loc_A95B11: MemStAdFunc
  loc_A95B15: FLdRfVar var_BC
  loc_A95B18: Erase
  loc_A95B19: FFree1Ad var_C0
  loc_A95B1C: ExitProcHresult
End Sub

Private Sub Form_Activate() '9D46DC
  'Data Table: 41BD2C
  loc_9D46C4: FLdPr Me
  loc_9D46C7: VCallAd Control_ID_Campo2Txt
  loc_9D46CA: FStAdFunc var_88
  loc_9D46CD: FLdPr var_88
  loc_9D46D0: Me.SetFocus
  loc_9D46D5: FFree1Ad var_88
  loc_9D46D8: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10114
  'Data Table: 41BD2C
  loc_A100D8: ILdI2 KeyAscii
  loc_A100DB: LitI2_Byte &HD
  loc_A100DD: EqI2
  loc_A100DE: BranchF loc_A100EF
  loc_A100E1: LitVar_TRUE var_A4
  loc_A100E4: LitStr "{Tab}"
  loc_A100E7: ImpAdCallFPR4 SendKeys , 
  loc_A100EC: FFree1Var var_A4 = ""
  loc_A100EF: ILdI2 KeyAscii
  loc_A100F2: LitI2_Byte &H1B
  loc_A100F4: EqI2
  loc_A100F5: BranchF loc_A10112
  loc_A100F8: ILdRf Me
  loc_A100FB: FStAdNoPop
  loc_A100FF: ImpAdLdRf MemVar_D9C5D8
  loc_A10102: NewIfNullPr Global
  loc_A10105: Global.Unload from_stack_1
  loc_A1010A: FFree1Ad var_A8
  loc_A1010D: LitI2_Byte 0
  loc_A1010F: IStI2 KeyAscii
  loc_A10112: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9D45F8
  'Data Table: 41BD2C
  loc_9D45E0: ILdRf Me
  loc_9D45E3: FStAdNoPop
  loc_9D45E7: ImpAdLdRf MemVar_D9C5D8
  loc_9D45EA: NewIfNullPr Global
  loc_9D45ED: Global.Unload from_stack_1
  loc_9D45F2: FFree1Ad var_88
  loc_9D45F5: ExitProcHresult
  loc_9D45F6: NewIfNullPr Me
End Sub

Private Sub Campo2Txt_Change() 'A788D8
  'Data Table: 41BD2C
  loc_A7886C: LitStr vbNullString
  loc_A7886F: FLdPr Me
  loc_A78872: VCallAd Control_ID_Campo1Txt
  loc_A78875: FStAdFunc var_88
  loc_A78878: FLdPr var_88
  loc_A7887B: Me.Text = from_stack_1
  loc_A78880: FFree1Ad var_88
  loc_A78883: LitStr "SELECT CodiInmu, DetaPers, inmueble.CucuPers, SupeInmu FROM inmueble "
  loc_A78886: LitStr "LEFT JOIN infogov.persona ON infogov.persona.cucupers = inmueble.cucupers "
  loc_A78889: ConcatStr
  loc_A7888A: FStStrNoPop var_8C
  loc_A7888D: LitStr " WHERE DetaPers like '" & Chr(37)
  loc_A78890: ConcatStr
  loc_A78891: FStStrNoPop var_94
  loc_A78894: FLdRfVar var_90
  loc_A78897: FLdPr Me
  loc_A7889A: VCallAd Control_ID_Campo2Txt
  loc_A7889D: FStAdFunc var_88
  loc_A788A0: FLdPr var_88
  loc_A788A3:  = Me.Text
  loc_A788A8: ILdRf var_90
  loc_A788AB: ConcatStr
  loc_A788AC: FStStrNoPop var_98
  loc_A788AF: LitStr Chr(37) & "' ORDER BY CodiInmu"
  loc_A788B2: ConcatStr
  loc_A788B3: FStStrNoPop var_9C
  loc_A788B6: FLdPr Me
  loc_A788B9: MemLdRfVar from_stack_1.InmuebleCLS
  loc_A788BC: NewIfNullPr clsInmueble
  loc_A788BF: Call clsInmueble.RedefineRS(from_stack_1v)
  loc_A788C4: FFreeStr var_8C = "": var_94 = "": var_90 = "": var_98 = ""
  loc_A788D1: FFree1Ad var_88
  loc_A788D4: ExitProcHresult
End Sub

Public Function global_4308268Get() '41C2DC
  global_4308268Get = global_4308268
End Function

Public Sub global_4308268Put(Value) '41C2F6
  global_4308268 = Value
End Sub

Public Sub global_4308268Set(Value) '41C310
  global_4308268 = Value
End Sub
