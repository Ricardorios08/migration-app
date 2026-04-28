VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarSubRubro
  Caption = "Buscar SubRubro ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarSubRubro.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 12372
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
    Width = 12015
    Height = 3135
    Tag = "1"
    TabIndex = 2
    OleObjectBlob = "dlgBuscarSubRubro.frx":08CA
  End
  Begin VB.Label Label3
    Caption = "Detalle:"
    Left = 840
    Top = 720
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
  Begin VB.Label Label2
    Caption = "Codigo:"
    Left = 840
    Top = 240
    Width = 810
    Height = 300
    TabIndex = 4
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

Attribute VB_Name = "dlgBuscarSubRubro"

Public iCodiRamo As Integer
Public iCodiRubr As Long
Public BuscarCLS As New Class


Private Sub dgdABMS_DblClick() '9CB810
  'Data Table: 4168F0
  loc_9CB7F8: ILdRf Me
  loc_9CB7FB: FStAdNoPop
  loc_9CB7FF: ImpAdLdRf MemVar_D9C5D8
  loc_9CB802: NewIfNullPr Global
  loc_9CB805: Global.Unload from_stack_1
  loc_9CB80A: FFree1Ad var_88
  loc_9CB80D: ExitProcHresult
  loc_9CB80E: FStR8 arg_78FF
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9ECF38
  'Data Table: 4168F0
  loc_9ECF14: ILdI2 KeyCode
  loc_9ECF17: CI4UI1
  loc_9ECF18: LitI4 &HD
  loc_9ECF1D: EqI4
  loc_9ECF1E: BranchF loc_9ECF36
  loc_9ECF21: ILdRf Me
  loc_9ECF24: FStAdNoPop
  loc_9ECF28: ImpAdLdRf MemVar_D9C5D8
  loc_9ECF2B: NewIfNullPr Global
  loc_9ECF2E: Global.Unload from_stack_1
  loc_9ECF33: FFree1Ad var_88
  loc_9ECF36: ExitProcHresult
End Sub

Private Sub Campo1Txt_Change() 'AAB350
  'Data Table: 4168F0
  loc_AAB2A8: LitStr vbNullString
  loc_AAB2AB: FLdPr Me
  loc_AAB2AE: VCallAd Control_ID_Campo2Txt
  loc_AAB2B1: FStAdFunc var_88
  loc_AAB2B4: FLdPr var_88
  loc_AAB2B7: Me.Text = from_stack_1
  loc_AAB2BC: FFree1Ad var_88
  loc_AAB2BF: LitStr "SELECT * FROM subrubro WHERE CodiRamo = "
  loc_AAB2C2: FLdPr Me
  loc_AAB2C5: MemLdI2 iCodiRamo
  loc_AAB2C8: CStrUI1
  loc_AAB2CA: FStStrNoPop var_8C
  loc_AAB2CD: ConcatStr
  loc_AAB2CE: FStStrNoPop var_90
  loc_AAB2D1: LitStr " AND CodiRubr = "
  loc_AAB2D4: ConcatStr
  loc_AAB2D5: FStStrNoPop var_94
  loc_AAB2D8: FLdPr Me
  loc_AAB2DB: MemLdStr iCodiRubr
  loc_AAB2DE: CStrI4
  loc_AAB2E0: FStStrNoPop var_98
  loc_AAB2E3: ConcatStr
  loc_AAB2E4: FStStrNoPop var_9C
  loc_AAB2E7: LitStr " AND PeriOrde = "
  loc_AAB2EA: ConcatStr
  loc_AAB2EB: FStStrNoPop var_A0
  loc_AAB2EE: ImpAdLdI2 MemVar_D93036
  loc_AAB2F1: CStrUI1
  loc_AAB2F3: FStStrNoPop var_A4
  loc_AAB2F6: ConcatStr
  loc_AAB2F7: FStStrNoPop var_A8
  loc_AAB2FA: LitStr " AND CodiSubr like '"
  loc_AAB2FD: ConcatStr
  loc_AAB2FE: FStStrNoPop var_B0
  loc_AAB301: FLdRfVar var_AC
  loc_AAB304: FLdPr Me
  loc_AAB307: VCallAd Control_ID_Campo1Txt
  loc_AAB30A: FStAdFunc var_88
  loc_AAB30D: FLdPr var_88
  loc_AAB310:  = Me.Text
  loc_AAB315: ILdRf var_AC
  loc_AAB318: ConcatStr
  loc_AAB319: FStStrNoPop var_B4
  loc_AAB31C: LitStr Chr(37) & "' ORDER BY CodiSubr"
  loc_AAB31F: ConcatStr
  loc_AAB320: FStStrNoPop var_B8
  loc_AAB323: FLdPr Me
  loc_AAB326: MemLdRfVar from_stack_1.BuscarCLS
  loc_AAB329: NewIfNullPr clsbase
  loc_AAB32C: Call clsbase.RedefineRS(from_stack_1v)
  loc_AAB331: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_AAB34C: FFree1Ad var_88
  loc_AAB34F: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) '9CB8A8
  'Data Table: 4168F0
  loc_9CB890: LitStr "0123456789"
  loc_9CB893: FStStrCopy var_88
  loc_9CB896: FLdRfVar var_88
  loc_9CB899: ILdRf KeyAscii
  loc_9CB89C: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CB8A1: IStI2 KeyAscii
  loc_9CB8A4: FFree1Str var_88
  loc_9CB8A7: ExitProcHresult
End Sub

Private Sub Form_Load() 'AB8384
  'Data Table: 4168F0
  loc_AB82C0: LitStr "SELECT * FROM subrubro WHERE CodiRamo = "
  loc_AB82C3: FLdPr Me
  loc_AB82C6: MemLdI2 iCodiRamo
  loc_AB82C9: CStrUI1
  loc_AB82CB: FStStrNoPop var_88
  loc_AB82CE: ConcatStr
  loc_AB82CF: FStStrNoPop var_8C
  loc_AB82D2: LitStr " AND CodiRubr = "
  loc_AB82D5: ConcatStr
  loc_AB82D6: FStStrNoPop var_90
  loc_AB82D9: FLdPr Me
  loc_AB82DC: MemLdStr iCodiRubr
  loc_AB82DF: CStrI4
  loc_AB82E1: FStStrNoPop var_94
  loc_AB82E4: ConcatStr
  loc_AB82E5: FStStrNoPop var_98
  loc_AB82E8: LitStr " AND PeriOrde = "
  loc_AB82EB: ConcatStr
  loc_AB82EC: FStStrNoPop var_9C
  loc_AB82EF: ImpAdLdI2 MemVar_D93036
  loc_AB82F2: CStrUI1
  loc_AB82F4: FStStrNoPop var_A0
  loc_AB82F7: ConcatStr
  loc_AB82F8: FStStrNoPop var_A4
  loc_AB82FB: LitStr " ORDER BY DetaSubr"
  loc_AB82FE: ConcatStr
  loc_AB82FF: FStStrNoPop var_A8
  loc_AB8302: FLdPr Me
  loc_AB8305: MemLdRfVar from_stack_1.BuscarCLS
  loc_AB8308: NewIfNullPr clsbase
  loc_AB830B: Call clsbase.RedefineRS(from_stack_1v)
  loc_AB8310: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_AB8325: LitI4 0
  loc_AB832A: LitI4 1
  loc_AB832F: FLdRfVar var_AC
  loc_AB8332: Redim
  loc_AB833C: FLdPr Me
  loc_AB833F: MemLdRfVar from_stack_1.BuscarCLS
  loc_AB8342: NewIfNullAd
  loc_AB8345: FStAd var_B0 
  loc_AB8349: FLdRfVar var_B0
  loc_AB834C: CVarRef
  loc_AB8351: ParmAry1St
  loc_AB8357: FLdPr Me
  loc_AB835A: VCallAd Control_ID_dgdABMS
  loc_AB835D: CVarAd
  loc_AB8361: ParmAry1St
  loc_AB8367: FLdRfVar var_AC
  loc_AB836A: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AB836F: ILdRf var_B0
  loc_AB8372: CastAd
  loc_AB8375: FLdPr Me
  loc_AB8378: MemStAdFunc
  loc_AB837C: FLdRfVar var_AC
  loc_AB837F: Erase
  loc_AB8380: FFree1Ad var_B0
  loc_AB8383: ExitProcHresult
End Sub

Private Sub Form_Activate() '9CB778
  'Data Table: 4168F0
  loc_9CB760: FLdPr Me
  loc_9CB763: VCallAd Control_ID_Campo2Txt
  loc_9CB766: FStAdFunc var_88
  loc_9CB769: FLdPr var_88
  loc_9CB76C: Me.SetFocus
  loc_9CB771: FFree1Ad var_88
  loc_9CB774: ExitProcHresult
  loc_9CB775: FLdPr arg_0
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A10440
  'Data Table: 4168F0
  loc_A10404: ILdI2 KeyAscii
  loc_A10407: LitI2_Byte &HD
  loc_A10409: EqI2
  loc_A1040A: BranchF loc_A1041B
  loc_A1040D: LitVar_TRUE var_A4
  loc_A10410: LitStr "{Tab}"
  loc_A10413: ImpAdCallFPR4 SendKeys , 
  loc_A10418: FFree1Var var_A4 = ""
  loc_A1041B: ILdI2 KeyAscii
  loc_A1041E: LitI2_Byte &H1B
  loc_A10420: EqI2
  loc_A10421: BranchF loc_A1043E
  loc_A10424: ILdRf Me
  loc_A10427: FStAdNoPop
  loc_A1042B: ImpAdLdRf MemVar_D9C5D8
  loc_A1042E: NewIfNullPr Global
  loc_A10431: Global.Unload from_stack_1
  loc_A10436: FFree1Ad var_A8
  loc_A10439: LitI2_Byte 0
  loc_A1043B: IStI2 KeyAscii
  loc_A1043E: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9CB694
  'Data Table: 4168F0
  loc_9CB67C: ILdRf Me
  loc_9CB67F: FStAdNoPop
  loc_9CB683: ImpAdLdRf MemVar_D9C5D8
  loc_9CB686: NewIfNullPr Global
  loc_9CB689: Global.Unload from_stack_1
  loc_9CB68E: FFree1Ad var_88
  loc_9CB691: ExitProcHresult
End Sub

Private Sub Campo2Txt_Change() 'AAB568
  'Data Table: 4168F0
  loc_AAB4C0: LitStr vbNullString
  loc_AAB4C3: FLdPr Me
  loc_AAB4C6: VCallAd Control_ID_Campo1Txt
  loc_AAB4C9: FStAdFunc var_88
  loc_AAB4CC: FLdPr var_88
  loc_AAB4CF: Me.Text = from_stack_1
  loc_AAB4D4: FFree1Ad var_88
  loc_AAB4D7: LitStr "SELECT * FROM subrubro WHERE CodiRamo = "
  loc_AAB4DA: FLdPr Me
  loc_AAB4DD: MemLdI2 iCodiRamo
  loc_AAB4E0: CStrUI1
  loc_AAB4E2: FStStrNoPop var_8C
  loc_AAB4E5: ConcatStr
  loc_AAB4E6: FStStrNoPop var_90
  loc_AAB4E9: LitStr " AND CodiRubr = "
  loc_AAB4EC: ConcatStr
  loc_AAB4ED: FStStrNoPop var_94
  loc_AAB4F0: FLdPr Me
  loc_AAB4F3: MemLdStr iCodiRubr
  loc_AAB4F6: CStrI4
  loc_AAB4F8: FStStrNoPop var_98
  loc_AAB4FB: ConcatStr
  loc_AAB4FC: FStStrNoPop var_9C
  loc_AAB4FF: LitStr " AND PeriOrde = "
  loc_AAB502: ConcatStr
  loc_AAB503: FStStrNoPop var_A0
  loc_AAB506: ImpAdLdI2 MemVar_D93036
  loc_AAB509: CStrUI1
  loc_AAB50B: FStStrNoPop var_A4
  loc_AAB50E: ConcatStr
  loc_AAB50F: FStStrNoPop var_A8
  loc_AAB512: LitStr " AND DetaSubr like '" & Chr(37)
  loc_AAB515: ConcatStr
  loc_AAB516: FStStrNoPop var_B0
  loc_AAB519: FLdRfVar var_AC
  loc_AAB51C: FLdPr Me
  loc_AAB51F: VCallAd Control_ID_Campo2Txt
  loc_AAB522: FStAdFunc var_88
  loc_AAB525: FLdPr var_88
  loc_AAB528:  = Me.Text
  loc_AAB52D: ILdRf var_AC
  loc_AAB530: ConcatStr
  loc_AAB531: FStStrNoPop var_B4
  loc_AAB534: LitStr Chr(37) & "' ORDER BY DetaSubr"
  loc_AAB537: ConcatStr
  loc_AAB538: FStStrNoPop var_B8
  loc_AAB53B: FLdPr Me
  loc_AAB53E: MemLdRfVar from_stack_1.BuscarCLS
  loc_AAB541: NewIfNullPr clsbase
  loc_AAB544: Call clsbase.RedefineRS(from_stack_1v)
  loc_AAB549: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_B0 = "": var_AC = "": var_B4 = ""
  loc_AAB564: FFree1Ad var_88
  loc_AAB567: ExitProcHresult
End Sub

Public Function iCodiRamoGet() '416E1C
  iCodiRamoGet = iCodiRamo
End Function

Public Sub iCodiRamoPut(Value) '416E2B
  iCodiRamo = Value
End Sub

Public Function iCodiRubrGet() '416E3A
  iCodiRubrGet = iCodiRubr
End Function

Public Sub iCodiRubrPut(Value) '416E49
  iCodiRubr = Value
End Sub

Public Function global_4286704Get() '416E58
  global_4286704Get = global_4286704
End Function

Public Sub global_4286704Put(Value) '416E72
  global_4286704 = Value
End Sub

Public Sub global_4286704Set(Value) '416E8C
  global_4286704 = Value
End Sub
