VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmActualizacionCuentaCorriente
  Caption = "Actualizacion en la cuenta corriente"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 14544
  ClientHeight = 8604
  Begin VB.CommandButton HabilitarCmd
    Caption = "Crear Registro"
    Left = 6240
    Top = 3600
    Width = 1455
    Height = 615
    TabIndex = 13
    Picture = "frmActualizacionCuentaCorriente.frx":0000
    Style = 1
  End
  Begin VB.TextBox HastaNumeTxt
    ForeColor = &HFF0000&
    Left = 6600
    Top = 6360
    Width = 855
    Height = 420
    TabIndex = 6
    MaxLength = 4
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
  Begin VB.TextBox DesdeNumeTxt
    ForeColor = &HFF0000&
    Left = 6600
    Top = 5760
    Width = 855
    Height = 420
    TabIndex = 5
    MaxLength = 4
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
  Begin VB.CommandButton ConfirmarCmd
    Left = 6360
    Top = 7800
    Width = 1455
    Height = 615
    TabIndex = 7
    Picture = "frmActualizacionCuentaCorriente.frx":0532
    Style = 1
  End
  Begin VB.CommandButton DesdeFechaCmd
    Left = 8040
    Top = 4560
    Width = 375
    Height = 405
    TabIndex = 2
    Picture = "frmActualizacionCuentaCorriente.frx":0860
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton HastaFechaCmd
    Left = 8040
    Top = 5160
    Width = 375
    Height = 405
    TabIndex = 4
    Picture = "frmActualizacionCuentaCorriente.frx":0DA2
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton cmdSalir
    Left = 12720
    Top = 840
    Width = 975
    Height = 855
    TabIndex = 8
    Picture = "frmActualizacionCuentaCorriente.frx":12E4
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox DesdeFechaMsk
    Left = 6600
    Top = 4560
    Width = 1335
    Height = 435
    TabIndex = 1
    OleObjectBlob = "frmActualizacionCuentaCorriente.frx":1536
  End
  Begin MSMask.MaskEdBox HastaFechaMsk
    Left = 6600
    Top = 5160
    Width = 1335
    Height = 435
    TabIndex = 3
    OleObjectBlob = "frmActualizacionCuentaCorriente.frx":15E6
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 2160
    Top = 600
    Width = 10080
    Height = 2715
    TabIndex = 0
    OleObjectBlob = "frmActualizacionCuentaCorriente.frx":1696
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 2760
    Top = 7080
    Width = 8775
    Height = 495
    Visible = 0   'False
    TabIndex = 14
    OleObjectBlob = "frmActualizacionCuentaCorriente.frx":1A44
  End
  Begin VB.Label Label3
    Caption = "Hasta Numero de Grupo:"
    Left = 3870
    Top = 6360
    Width = 2670
    Height = 300
    TabIndex = 12
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
  Begin VB.Label Label1
    Caption = "Desde Numero de Grupo:"
    Left = 3810
    Top = 5760
    Width = 2730
    Height = 300
    TabIndex = 11
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
  Begin VB.Label Label4
    Caption = "Desde Fecha:"
    Left = 5040
    Top = 4560
    Width = 1500
    Height = 300
    TabIndex = 10
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
    Caption = "Hasta Fecha:"
    Left = 5100
    Top = 5160
    Width = 1440
    Height = 300
    TabIndex = 9
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

Attribute VB_Name = "frmActualizacionCuentaCorriente"


Private Sub DesdeFechaMsk_UnknownEvent_0 '9C6230
  'Data Table: 45CB14
  loc_9C621C: FLdPr Me
  loc_9C621F: VCallAd Control_ID_DesdeFechaMsk
  loc_9C6222: CVarAd
  loc_9C6226: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C622B: FFree1Var var_94 = ""
  loc_9C622E: ExitProcHresult
End Sub

Private Sub DesdeFechaMsk_UnknownEvent_8 'A94A94
  'Data Table: 45CB14
  loc_A949E8: FLdPr Me
  loc_A949EB: VCallAd Control_ID_DesdeFechaMsk
  loc_A949EE: FStAdFunc var_88
  loc_A949F1: FLdPr var_88
  loc_A949F4: LateIdLdVar var_98 DispID_13 -32767
  loc_A949FB: CBoolVar
  loc_A949FD: LitI2_Byte &HFF
  loc_A949FF: EqI2
  loc_A94A00: FFree1Ad var_88
  loc_A94A03: FFree1Var var_98 = ""
  loc_A94A06: BranchF loc_A94A92
  loc_A94A09: LitVarStr var_A8, vbNullString
  loc_A94A0E: PopAdLdVar
  loc_A94A0F: FLdPr Me
  loc_A94A12: VCallAd Control_ID_DesdeFechaMsk
  loc_A94A15: FStAdFunc var_88
  loc_A94A18: FLdPr var_88
  loc_A94A1B: LateIdSt
  loc_A94A20: FFree1Ad var_88
  loc_A94A23: FLdRfVar var_C0
  loc_A94A26: FLdPr Me
  loc_A94A29: VCallAd Control_ID_DesdeFechaMsk
  loc_A94A2C: FStAdFunc var_88
  loc_A94A2F: FLdPr var_88
  loc_A94A32: LateIdLdVar var_98 DispID_22 0
  loc_A94A39: CStrVarTmp
  loc_A94A3A: FStStrNoPop var_BC
  loc_A94A3D: FLdPr Me
  loc_A94A40: MemLdRfVar from_stack_1.global_52
  loc_A94A43: NewIfNullPr clsacrepago
  loc_A94A46: from_stack_2v = clsacrepago.ValidaFeenAcpa(from_stack_1v)
  loc_A94A4B: ILdRf var_C0
  loc_A94A4E: FLdPr Me
  loc_A94A51: MemStStrCopy
  loc_A94A55: FFreeStr var_BC = ""
  loc_A94A5C: FFree1Ad var_88
  loc_A94A5F: FFree1Var var_98 = ""
  loc_A94A62: FLdPr Me
  loc_A94A65: MemLdStr global_72
  loc_A94A68: LitStr vbNullString
  loc_A94A6B: NeStr
  loc_A94A6D: BranchF loc_A94A92
  loc_A94A70: FLdPr Me
  loc_A94A73: MemLdStr global_72
  loc_A94A76: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A94A7B: FLdPr Me
  loc_A94A7E: VCallAd Control_ID_DesdeFechaMsk
  loc_A94A81: CVarAd
  loc_A94A85: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A94A8A: FFree1Var var_98 = ""
  loc_A94A8D: LitI2_Byte &HFF
  loc_A94A8F: IStI2 Button
  loc_A94A92: ExitProcHresult
End Sub

Private Sub ConfirmarCmd_Click() 'BB4DF4
  'Data Table: 45CB14
  loc_BB47D4: LitI2_Byte 0
  loc_BB47D6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BB47DB: CVarDate var_B8
  loc_BB47DF: FLdRfVar var_C8
  loc_BB47E2: ImpAdCallFPR4  = Year()
  loc_BB47E7: FLdRfVar var_C8
  loc_BB47EA: CI2Var
  loc_BB47EB: FStI2 var_8A
  loc_BB47EE: FFreeVar var_B8 = ""
  loc_BB47F5: LitI2_Byte 0
  loc_BB47F7: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BB47FC: CVarDate var_B8
  loc_BB4800: FLdRfVar var_C8
  loc_BB4803: ImpAdCallFPR4  = Month()
  loc_BB4808: FLdRfVar var_C8
  loc_BB480B: CI2Var
  loc_BB480C: FStI2 var_8C
  loc_BB480F: FFreeVar var_B8 = ""
  loc_BB4816: FLdPr Me
  loc_BB4819: VCallAd Control_ID_DesdeFechaMsk
  loc_BB481C: FStAdFunc var_CC
  loc_BB481F: FLdPr var_CC
  loc_BB4822: LateIdLdVar var_B8 DispID_15 0
  loc_BB4829: CStrVarTmp
  loc_BB482A: CVarStr var_C8
  loc_BB482D: ImpAdCallI2 IsDate()
  loc_BB4832: NotI4
  loc_BB4833: FLdPr Me
  loc_BB4836: VCallAd Control_ID_HastaFechaMsk
  loc_BB4839: FStAdFunc var_D0
  loc_BB483C: FLdPr var_D0
  loc_BB483F: LateIdLdVar var_E0 DispID_15 0
  loc_BB4846: CStrVarTmp
  loc_BB4847: CVarStr var_F0
  loc_BB484A: ImpAdCallI2 IsDate()
  loc_BB484F: NotI4
  loc_BB4850: OrI4
  loc_BB4851: FFreeAd var_CC = ""
  loc_BB4858: FFreeVar var_B8 = "": var_C8 = "": var_E0 = ""
  loc_BB4863: BranchF loc_BB486F
  loc_BB4866: LitStr "La fecha es incorrecta. Verifique"
  loc_BB4869: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BB486E: ExitProcHresult
  loc_BB486F: FLdRfVar var_F4
  loc_BB4872: FLdPr Me
  loc_BB4875: VCallAd Control_ID_DesdeNumeTxt
  loc_BB4878: FStAdFunc var_CC
  loc_BB487B: FLdPr var_CC
  loc_BB487E:  = Me.Text
  loc_BB4883: FLdZeroAd var_F4
  loc_BB4886: CVarStr var_B8
  loc_BB4889: ImpAdCallI2 IsNumeric()
  loc_BB488E: NotI4
  loc_BB488F: FLdRfVar var_F8
  loc_BB4892: FLdPr Me
  loc_BB4895: VCallAd Control_ID_HastaNumeTxt
  loc_BB4898: FStAdFunc var_D0
  loc_BB489B: FLdPr var_D0
  loc_BB489E:  = Me.Text
  loc_BB48A3: FLdZeroAd var_F8
  loc_BB48A6: CVarStr var_C8
  loc_BB48A9: ImpAdCallI2 IsNumeric()
  loc_BB48AE: NotI4
  loc_BB48AF: OrI4
  loc_BB48B0: FFreeAd var_CC = ""
  loc_BB48B7: FFreeVar var_B8 = ""
  loc_BB48BE: BranchF loc_BB48CA
  loc_BB48C1: LitStr "La numero de grupo es incorrecto. Verifique"
  loc_BB48C4: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BB48C9: ExitProcHresult
  loc_BB48CA: FLdRfVar var_F4
  loc_BB48CD: FLdPr Me
  loc_BB48D0: VCallAd Control_ID_DesdeNumeTxt
  loc_BB48D3: FStAdFunc var_CC
  loc_BB48D6: FLdPr var_CC
  loc_BB48D9:  = Me.Text
  loc_BB48DE: ILdRf var_F4
  loc_BB48E1: CI2Str
  loc_BB48E3: LitI2_Byte 0
  loc_BB48E5: EqI2
  loc_BB48E6: FFree1Str var_F4
  loc_BB48E9: FFree1Ad var_CC
  loc_BB48EC: BranchF loc_BB48F7
  loc_BB48EF: LitI2_Byte 1
  loc_BB48F1: FStI2 var_86
  loc_BB48F4: Branch loc_BB4919
  loc_BB48F7: FLdRfVar var_F4
  loc_BB48FA: FLdPr Me
  loc_BB48FD: VCallAd Control_ID_DesdeNumeTxt
  loc_BB4900: FStAdFunc var_CC
  loc_BB4903: FLdPr var_CC
  loc_BB4906:  = Me.Text
  loc_BB490B: ILdRf var_F4
  loc_BB490E: CI2Str
  loc_BB4910: FStI2 var_86
  loc_BB4913: FFree1Str var_F4
  loc_BB4916: FFree1Ad var_CC
  loc_BB4919: FLdRfVar var_F4
  loc_BB491C: FLdPr Me
  loc_BB491F: VCallAd Control_ID_HastaNumeTxt
  loc_BB4922: FStAdFunc var_CC
  loc_BB4925: FLdPr var_CC
  loc_BB4928:  = Me.Text
  loc_BB492D: ILdRf var_F4
  loc_BB4930: CI2Str
  loc_BB4932: LitI2_Byte 0
  loc_BB4934: EqI2
  loc_BB4935: FFree1Str var_F4
  loc_BB4938: FFree1Ad var_CC
  loc_BB493B: BranchF loc_BB4947
  loc_BB493E: LitI2 999
  loc_BB4941: FStI2 var_88
  loc_BB4944: Branch loc_BB4969
  loc_BB4947: FLdRfVar var_F4
  loc_BB494A: FLdPr Me
  loc_BB494D: VCallAd Control_ID_HastaNumeTxt
  loc_BB4950: FStAdFunc var_CC
  loc_BB4953: FLdPr var_CC
  loc_BB4956:  = Me.Text
  loc_BB495B: ILdRf var_F4
  loc_BB495E: CI2Str
  loc_BB4960: FStI2 var_88
  loc_BB4963: FFree1Str var_F4
  loc_BB4966: FFree1Ad var_CC
  loc_BB4969: LitI2_Byte 0
  loc_BB496B: PopTmpLdAd2 var_FA
  loc_BB496E: Call HastaNumeTxt_Validate(from_stack_1v)
  loc_BB4973: FLdPr Me
  loc_BB4976: MemLdStr global_72
  loc_BB4979: LitStr vbNullString
  loc_BB497C: NeStr
  loc_BB497E: BranchF loc_BB4982
  loc_BB4981: ExitProcHresult
  loc_BB4982: LitI2_Byte &HB
  loc_BB4984: FLdPr Me
  loc_BB4987: Me.MousePointer = from_stack_1
  loc_BB498C: LitI4 0
  loc_BB4991: LitI4 2
  loc_BB4996: FLdRfVar var_100
  loc_BB4999: Redim
  loc_BB49A3: FLdPr Me
  loc_BB49A6: VCallAd Control_ID_ConfirmarCmd
  loc_BB49A9: CVarAd
  loc_BB49AD: ParmAry1St
  loc_BB49B3: FLdPr Me
  loc_BB49B6: VCallAd Control_ID_cmdSalir
  loc_BB49B9: CVarAd
  loc_BB49BD: ParmAry1St
  loc_BB49C3: FLdPr Me
  loc_BB49C6: VCallAd Control_ID_dgdABMS
  loc_BB49C9: CVarAd
  loc_BB49CD: ParmAry1St
  loc_BB49D3: FLdRfVar var_100
  loc_BB49D6: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BB49DB: FLdRfVar var_100
  loc_BB49DE: Erase
  loc_BB49DF: FLdPr Me
  loc_BB49E2: VCallAd Control_ID_DesdeFechaMsk
  loc_BB49E5: FStAdFunc var_CC
  loc_BB49E8: FLdPr var_CC
  loc_BB49EB: LateIdLdVar var_B8 DispID_15 0
  loc_BB49F2: PopAd
  loc_BB49F4: FLdPr Me
  loc_BB49F7: VCallAd Control_ID_HastaFechaMsk
  loc_BB49FA: FStAdFunc var_D0
  loc_BB49FD: FLdPr var_D0
  loc_BB4A00: LateIdLdVar var_C8 DispID_15 0
  loc_BB4A07: PopAd
  loc_BB4A09: FLdI2 var_88
  loc_BB4A0C: FLdI2 var_86
  loc_BB4A0F: FLdRfVar var_C8
  loc_BB4A12: CStrVarTmp
  loc_BB4A13: FStStrNoPop var_F8
  loc_BB4A16: FLdRfVar var_B8
  loc_BB4A19: CStrVarTmp
  loc_BB4A1A: FStStrNoPop var_F4
  loc_BB4A1D: FLdPr Me
  loc_BB4A20: MemLdRfVar from_stack_1.global_68
  loc_BB4A23: NewIfNullPr clsctacte
  loc_BB4A26: Call clsctacte.ActualizaciondeCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BB4A2B: FFreeStr var_F4 = ""
  loc_BB4A32: FFreeAd var_CC = ""
  loc_BB4A39: FFreeVar var_B8 = ""
  loc_BB4A40: LitStr "DROP TEMPORARY TABLE IF EXISTS acrepagotmp; "
  loc_BB4A43: LitStr "CREATE TEMPORARY TABLE acrepagotmp ("
  loc_BB4A46: ConcatStr
  loc_BB4A47: FStStrNoPop var_F4
  loc_BB4A4A: LitStr "eenAcpa` date default NULL,"
  loc_BB4A4D: ConcatStr
  loc_BB4A4E: FStStrNoPop var_F8
  loc_BB4A51: LitStr "umeAcpa` smallint(3) unsigned NOT NULL default '0',"
  loc_BB4A54: ConcatStr
  loc_BB4A55: FStStrNoPop var_104
  loc_BB4A58: LitStr "odiEnre` smallint(3) unsigned NOT NULL default '0',"
  loc_BB4A5B: ConcatStr
  loc_BB4A5C: FStStrNoPop var_108
  loc_BB4A5F: LitStr "ocoAcpa` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_BB4A62: ConcatStr
  loc_BB4A63: FStStrNoPop var_10C
  loc_BB4A66: LitStr "mpoAcpa` decimal(12,2) NOT NULL DEFAULT '0.00',"
  loc_BB4A69: ConcatStr
  loc_BB4A6A: FStStrNoPop var_110
  loc_BB4A6D: LitStr "ctuAcpa` char(2) NOT NULL default ''"
  loc_BB4A70: ConcatStr
  loc_BB4A71: FStStrNoPop var_114
  loc_BB4A74: LitStr " ) ENGINE=InnoDB DEFAULT CHARSET=latin1"
  loc_BB4A77: ConcatStr
  loc_BB4A78: FStStrNoPop var_118
  loc_BB4A7B: FLdPr Me
  loc_BB4A7E: MemLdRfVar from_stack_1.global_60
  loc_BB4A81: NewIfNullPr clsacrepago
  loc_BB4A84: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_BB4A89: FFreeStr var_F4 = "": var_F8 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_BB4A9C: LitStr "Municipalidad de Guaymallén"
  loc_BB4A9F: LitStr "Municipalidad de Guaymallén"
  loc_BB4AA2: EqStr
  loc_BB4AA4: BranchF loc_BB4AC5
  loc_BB4AA7: LitStr "SELECT FeenAcpa, acrepago.NumeAcpa, acrepago.CodiEnre, DetaEnre, TocoAcpa, ImpoAcpa, ActuAcpa FROM acrepago "
  loc_BB4AAA: LitStr " LEFT JOIN infogov.entereca ON acrepago.CodiEnre = infogov.entereca.CodiEnre WHERE ActuAcpa = 'No' AND ContAcpa = 1 ORDER BY FeenAcpa, NumeAcpa"
  loc_BB4AAD: ConcatStr
  loc_BB4AAE: FStStrNoPop var_F4
  loc_BB4AB1: FLdPr Me
  loc_BB4AB4: MemLdRfVar from_stack_1.global_56
  loc_BB4AB7: NewIfNullPr clsacrepago
  loc_BB4ABA: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_BB4ABF: FFree1Str var_F4
  loc_BB4AC2: Branch loc_BB4AE0
  loc_BB4AC5: LitStr "SELECT FeenAcpa, acrepago.NumeAcpa, acrepago.CodiEnre, DetaEnre, TocoAcpa, ImpoAcpa, ActuAcpa FROM acrepago "
  loc_BB4AC8: LitStr " LEFT JOIN infogov.entereca ON acrepago.CodiEnre = infogov.entereca.CodiEnre WHERE ActuAcpa = 'No' ORDER BY FeenAcpa, NumeAcpa"
  loc_BB4ACB: ConcatStr
  loc_BB4ACC: FStStrNoPop var_F4
  loc_BB4ACF: FLdPr Me
  loc_BB4AD2: MemLdRfVar from_stack_1.global_56
  loc_BB4AD5: NewIfNullPr clsacrepago
  loc_BB4AD8: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_BB4ADD: FFree1Str var_F4
  loc_BB4AE0: FLdRfVar var_11C
  loc_BB4AE3: FLdPr Me
  loc_BB4AE6: MemLdRfVar from_stack_1.global_56
  loc_BB4AE9: NewIfNullPr clsacrepago
  loc_BB4AEC: from_stack_1 = clsacrepago.RecordCount
  loc_BB4AF1: ILdRf var_11C
  loc_BB4AF4: LitI4 0
  loc_BB4AF9: GtI4
  loc_BB4AFA: BranchF loc_BB4CE2
  loc_BB4AFD: FLdPr Me
  loc_BB4B00: MemLdRfVar from_stack_1.global_56
  loc_BB4B03: NewIfNullPr clsacrepago
  loc_BB4B06: Call clsacrepago.MoveFirst()
  loc_BB4B0B: FLdRfVar var_FA
  loc_BB4B0E: FLdPr Me
  loc_BB4B11: MemLdRfVar from_stack_1.global_56
  loc_BB4B14: NewIfNullPr clsacrepago
  loc_BB4B17: from_stack_1 = clsacrepago.EOF
  loc_BB4B1C: FLdI2 var_FA
  loc_BB4B1F: NotI4
  loc_BB4B20: BranchF loc_BB4CE2
  loc_BB4B23: FLdRfVar var_B8
  loc_BB4B26: FLdPr Me
  loc_BB4B29: MemLdRfVar from_stack_1.global_56
  loc_BB4B2C: NewIfNullPr clsacrepago
  loc_BB4B2F: from_stack_1 = clsacrepago.FeenAcpa
  loc_BB4B34: FLdRfVar var_FA
  loc_BB4B37: FLdPr Me
  loc_BB4B3A: MemLdRfVar from_stack_1.global_56
  loc_BB4B3D: NewIfNullPr clsacrepago
  loc_BB4B40: from_stack_1 = clsacrepago.NumeAcpa
  loc_BB4B45: FLdI2 var_FA
  loc_BB4B48: FLdRfVar var_B8
  loc_BB4B4B: CStrVarVal var_F4
  loc_BB4B4F: ImpAdCallI2 Proc_18_111_C62EC8(, )
  loc_BB4B54: LitI2_Byte 0
  loc_BB4B56: EqI2
  loc_BB4B57: FFree1Str var_F4
  loc_BB4B5A: FFree1Var var_B8 = ""
  loc_BB4B5D: BranchF loc_BB4CD1
  loc_BB4B60: FLdRfVar var_B8
  loc_BB4B63: FLdPr Me
  loc_BB4B66: MemLdRfVar from_stack_1.global_56
  loc_BB4B69: NewIfNullPr clsacrepago
  loc_BB4B6C: from_stack_1 = clsacrepago.FeenAcpa
  loc_BB4B71: FLdRfVar var_11C
  loc_BB4B74: FLdPr Me
  loc_BB4B77: MemLdRfVar from_stack_1.global_56
  loc_BB4B7A: NewIfNullPr clsacrepago
  loc_BB4B7D: from_stack_1 = clsacrepago.TocoAcpa
  loc_BB4B82: FLdRfVar var_13C
  loc_BB4B85: FLdPr Me
  loc_BB4B88: MemLdRfVar from_stack_1.global_56
  loc_BB4B8B: NewIfNullPr clsacrepago
  loc_BB4B8E: from_stack_1 = clsacrepago.ImpoAcpa
  loc_BB4B93: LitStr "INSERT INTO acrepagotmp (FeenAcpa, NumeAcpa, CodiEnre, TocoAcpa, ImpoAcpa, ActuAcpa)"
  loc_BB4B96: LitStr " VALUE ("
  loc_BB4B99: ConcatStr
  loc_BB4B9A: FStStrNoPop var_F4
  loc_BB4B9D: LitI4 1
  loc_BB4BA2: LitI4 1
  loc_BB4BA7: LitVarStr var_A8, "'yyyy-mm-dd'"
  loc_BB4BAC: FStVarCopyObj var_C8
  loc_BB4BAF: FLdRfVar var_C8
  loc_BB4BB2: FLdRfVar var_B8
  loc_BB4BB5: ImpAdCallI2 Format$(, )
  loc_BB4BBA: FStStrNoPop var_F8
  loc_BB4BBD: ConcatStr
  loc_BB4BBE: FStStrNoPop var_104
  loc_BB4BC1: LitStr ","
  loc_BB4BC4: ConcatStr
  loc_BB4BC5: FStStrNoPop var_108
  loc_BB4BC8: FLdRfVar var_FA
  loc_BB4BCB: FLdPr Me
  loc_BB4BCE: MemLdRfVar from_stack_1.global_56
  loc_BB4BD1: NewIfNullPr clsacrepago
  loc_BB4BD4: from_stack_1 = clsacrepago.NumeAcpa
  loc_BB4BD9: FLdI2 var_FA
  loc_BB4BDC: CStrUI1
  loc_BB4BDE: FStStrNoPop var_10C
  loc_BB4BE1: ConcatStr
  loc_BB4BE2: FStStrNoPop var_110
  loc_BB4BE5: LitStr ","
  loc_BB4BE8: ConcatStr
  loc_BB4BE9: FStStrNoPop var_114
  loc_BB4BEC: FLdRfVar var_11E
  loc_BB4BEF: FLdPr Me
  loc_BB4BF2: MemLdRfVar from_stack_1.global_56
  loc_BB4BF5: NewIfNullPr clsacrepago
  loc_BB4BF8: from_stack_1 = clsacrepago.CodiEnre
  loc_BB4BFD: FLdI2 var_11E
  loc_BB4C00: CStrUI1
  loc_BB4C02: FStStrNoPop var_118
  loc_BB4C05: ConcatStr
  loc_BB4C06: FStStrNoPop var_124
  loc_BB4C09: LitStr ","
  loc_BB4C0C: ConcatStr
  loc_BB4C0D: FStStrNoPop var_12C
  loc_BB4C10: LitI4 0
  loc_BB4C15: LitI4 -1
  loc_BB4C1A: LitI4 1
  loc_BB4C1F: LitStr "."
  loc_BB4C22: LitStr ","
  loc_BB4C25: ILdRf var_11C
  loc_BB4C28: CStrI4
  loc_BB4C2A: FStStrNoPop var_128
  loc_BB4C2D: ImpAdCallI2 Replace(, , , , , )
  loc_BB4C32: FStStrNoPop var_130
  loc_BB4C35: ConcatStr
  loc_BB4C36: FStStrNoPop var_134
  loc_BB4C39: LitStr ","
  loc_BB4C3C: ConcatStr
  loc_BB4C3D: FStStrNoPop var_144
  loc_BB4C40: LitI4 0
  loc_BB4C45: LitI4 -1
  loc_BB4C4A: LitI4 1
  loc_BB4C4F: LitStr "."
  loc_BB4C52: LitStr ","
  loc_BB4C55: FLdFPR8 var_13C
  loc_BB4C58: CStrR8
  loc_BB4C5A: FStStrNoPop var_140
  loc_BB4C5D: ImpAdCallI2 Replace(, , , , , )
  loc_BB4C62: FStStrNoPop var_148
  loc_BB4C65: ConcatStr
  loc_BB4C66: FStStrNoPop var_14C
  loc_BB4C69: LitStr ",'"
  loc_BB4C6C: ConcatStr
  loc_BB4C6D: FStStrNoPop var_154
  loc_BB4C70: FLdRfVar var_150
  loc_BB4C73: FLdPr Me
  loc_BB4C76: MemLdRfVar from_stack_1.global_56
  loc_BB4C79: NewIfNullPr clsacrepago
  loc_BB4C7C: from_stack_1 = clsacrepago.ActuAcpa
  loc_BB4C81: ILdRf var_150
  loc_BB4C84: ConcatStr
  loc_BB4C85: FStStrNoPop var_158
  loc_BB4C88: LitStr "')"
  loc_BB4C8B: ConcatStr
  loc_BB4C8C: FStStrNoPop var_15C
  loc_BB4C8F: FLdPr Me
  loc_BB4C92: MemLdRfVar from_stack_1.global_60
  loc_BB4C95: NewIfNullPr clsacrepago
  loc_BB4C98: Call clsacrepago.EjecutarRs2(from_stack_1v)
  loc_BB4C9D: FFreeStr var_F4 = "": var_F8 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_154 = "": var_150 = "": var_158 = ""
  loc_BB4CCA: FFreeVar var_B8 = ""
  loc_BB4CD1: FLdPr Me
  loc_BB4CD4: MemLdRfVar from_stack_1.global_56
  loc_BB4CD7: NewIfNullPr clsacrepago
  loc_BB4CDA: Call clsacrepago.MoveSiguiente()
  loc_BB4CDF: Branch loc_BB4B0B
  loc_BB4CE2: LitStr "SELECT acrepagotmp.FeenAcpa, acrepagotmp.NumeAcpa, acrepagotmp.CodiEnre, DetaEnre, acrepagotmp.TocoAcpa, acrepagotmp.ImpoAcpa FROM acrepagotmp "
  loc_BB4CE5: LitStr " LEFT JOIN infogov.entereca ON acrepagotmp.CodiEnre = infogov.entereca.CodiEnre WHERE acrepagotmp.ActuAcpa = 'No' ORDER BY acrepagotmp.FeenAcpa, acrepagotmp.NumeAcpa"
  loc_BB4CE8: ConcatStr
  loc_BB4CE9: FStStrNoPop var_F4
  loc_BB4CEC: FLdPr Me
  loc_BB4CEF: MemLdRfVar from_stack_1.global_56
  loc_BB4CF2: NewIfNullPr clsacrepago
  loc_BB4CF5: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_BB4CFA: FFree1Str var_F4
  loc_BB4CFD: Call EnlazaTodo()
  loc_BB4D02: LitI2_Byte 0
  loc_BB4D04: FLdPr Me
  loc_BB4D07: Me.MousePointer = from_stack_1
  loc_BB4D0C: LitI4 0
  loc_BB4D11: LitI4 6
  loc_BB4D16: FLdRfVar var_100
  loc_BB4D19: Redim
  loc_BB4D23: FLdPr Me
  loc_BB4D26: VCallAd Control_ID_DesdeFechaMsk
  loc_BB4D29: CVarAd
  loc_BB4D2D: ParmAry1St
  loc_BB4D33: FLdPr Me
  loc_BB4D36: VCallAd Control_ID_DesdeFechaCmd
  loc_BB4D39: CVarAd
  loc_BB4D3D: ParmAry1St
  loc_BB4D43: FLdPr Me
  loc_BB4D46: VCallAd Control_ID_HastaFechaMsk
  loc_BB4D49: CVarAd
  loc_BB4D4D: ParmAry1St
  loc_BB4D53: FLdPr Me
  loc_BB4D56: VCallAd Control_ID_HastaFechaCmd
  loc_BB4D59: CVarAd
  loc_BB4D5D: ParmAry1St
  loc_BB4D63: FLdPr Me
  loc_BB4D66: VCallAd Control_ID_DesdeNumeTxt
  loc_BB4D69: CVarAd
  loc_BB4D6D: ParmAry1St
  loc_BB4D73: FLdPr Me
  loc_BB4D76: VCallAd Control_ID_HastaNumeTxt
  loc_BB4D79: CVarAd
  loc_BB4D7D: ParmAry1St
  loc_BB4D83: FLdPr Me
  loc_BB4D86: VCallAd Control_ID_ConfirmarCmd
  loc_BB4D89: CVarAd
  loc_BB4D8D: ParmAry1St
  loc_BB4D93: FLdRfVar var_100
  loc_BB4D96: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BB4D9B: FLdRfVar var_100
  loc_BB4D9E: Erase
  loc_BB4D9F: LitI4 0
  loc_BB4DA4: LitI4 2
  loc_BB4DA9: FLdRfVar var_100
  loc_BB4DAC: Redim
  loc_BB4DB6: FLdPr Me
  loc_BB4DB9: VCallAd Control_ID_HabilitarCmd
  loc_BB4DBC: CVarAd
  loc_BB4DC0: ParmAry1St
  loc_BB4DC6: FLdPr Me
  loc_BB4DC9: VCallAd Control_ID_cmdSalir
  loc_BB4DCC: CVarAd
  loc_BB4DD0: ParmAry1St
  loc_BB4DD6: FLdPr Me
  loc_BB4DD9: VCallAd Control_ID_dgdABMS
  loc_BB4DDC: CVarAd
  loc_BB4DE0: ParmAry1St
  loc_BB4DE6: FLdRfVar var_100
  loc_BB4DE9: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_BB4DEE: FLdRfVar var_100
  loc_BB4DF1: Erase
  loc_BB4DF2: ExitProcHresult
End Sub

Private Sub HastaFechaMsk_UnknownEvent_0 '9C7DC0
  'Data Table: 45CB14
  loc_9C7DAC: FLdPr Me
  loc_9C7DAF: VCallAd Control_ID_HastaFechaMsk
  loc_9C7DB2: CVarAd
  loc_9C7DB6: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C7DBB: FFree1Var var_94 = ""
  loc_9C7DBE: ExitProcHresult
End Sub

Private Function HastaFechaMsk_UnknownEvent_8(arg_C) 'A9628C
  'Data Table: 45CB14
  loc_A961E0: FLdPr Me
  loc_A961E3: VCallAd Control_ID_HastaFechaMsk
  loc_A961E6: FStAdFunc var_88
  loc_A961E9: FLdPr var_88
  loc_A961EC: LateIdLdVar var_98 DispID_13 -32767
  loc_A961F3: CBoolVar
  loc_A961F5: LitI2_Byte &HFF
  loc_A961F7: EqI2
  loc_A961F8: FFree1Ad var_88
  loc_A961FB: FFree1Var var_98 = ""
  loc_A961FE: BranchF loc_A9628A
  loc_A96201: LitVarStr var_A8, vbNullString
  loc_A96206: PopAdLdVar
  loc_A96207: FLdPr Me
  loc_A9620A: VCallAd Control_ID_HastaFechaMsk
  loc_A9620D: FStAdFunc var_88
  loc_A96210: FLdPr var_88
  loc_A96213: LateIdSt
  loc_A96218: FFree1Ad var_88
  loc_A9621B: FLdRfVar var_C0
  loc_A9621E: FLdPr Me
  loc_A96221: VCallAd Control_ID_HastaFechaMsk
  loc_A96224: FStAdFunc var_88
  loc_A96227: FLdPr var_88
  loc_A9622A: LateIdLdVar var_98 DispID_22 0
  loc_A96231: CStrVarTmp
  loc_A96232: FStStrNoPop var_BC
  loc_A96235: FLdPr Me
  loc_A96238: MemLdRfVar from_stack_1.global_52
  loc_A9623B: NewIfNullPr clsacrepago
  loc_A9623E: from_stack_2v = clsacrepago.ValidaFeenAcpa(from_stack_1v)
  loc_A96243: ILdRf var_C0
  loc_A96246: FLdPr Me
  loc_A96249: MemStStrCopy
  loc_A9624D: FFreeStr var_BC = ""
  loc_A96254: FFree1Ad var_88
  loc_A96257: FFree1Var var_98 = ""
  loc_A9625A: FLdPr Me
  loc_A9625D: MemLdStr global_72
  loc_A96260: LitStr vbNullString
  loc_A96263: NeStr
  loc_A96265: BranchF loc_A9628A
  loc_A96268: FLdPr Me
  loc_A9626B: MemLdStr global_72
  loc_A9626E: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A96273: FLdPr Me
  loc_A96276: VCallAd Control_ID_HastaFechaMsk
  loc_A96279: CVarAd
  loc_A9627D: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A96282: FFree1Var var_98 = ""
  loc_A96285: LitI2_Byte &HFF
  loc_A96287: IStI2 arg_C
  loc_A9628A: ExitProcHresult
End Function

Private Sub cmdSalir_Click() '9D8B24
  'Data Table: 45CB14
  loc_9D8B0C: ILdRf Me
  loc_9D8B0F: FStAdNoPop
  loc_9D8B13: ImpAdLdRf MemVar_D9C5D8
  loc_9D8B16: NewIfNullPr Global
  loc_9D8B19: Global.Unload from_stack_1
  loc_9D8B1E: FFree1Ad var_88
  loc_9D8B21: ExitProcHresult
End Sub

Private Sub Form_Load() 'B6F5D0
  'Data Table: 45CB14
  loc_B6F19C: LitI2_Byte 0
  loc_B6F19E: CR8I2
  loc_B6F19F: PopFPR4
  loc_B6F1A0: FLdPr Me
  loc_B6F1A3: Me.Left = from_stack_1s
  loc_B6F1A8: LitI2_Byte 0
  loc_B6F1AA: CR8I2
  loc_B6F1AB: PopFPR4
  loc_B6F1AC: FLdPr Me
  loc_B6F1AF: Me.Top = from_stack_1s
  loc_B6F1B4: LitStr "DROP TEMPORARY TABLE IF EXISTS acrepagotmp; "
  loc_B6F1B7: LitStr "CREATE TEMPORARY TABLE acrepagotmp ("
  loc_B6F1BA: ConcatStr
  loc_B6F1BB: FStStrNoPop var_88
  loc_B6F1BE: LitStr "eenAcpa` date default NULL,"
  loc_B6F1C1: ConcatStr
  loc_B6F1C2: FStStrNoPop var_8C
  loc_B6F1C5: LitStr "umeAcpa` smallint(3) unsigned NOT NULL default '0',"
  loc_B6F1C8: ConcatStr
  loc_B6F1C9: FStStrNoPop var_90
  loc_B6F1CC: LitStr "odiEnre` smallint(3) unsigned NOT NULL default '0',"
  loc_B6F1CF: ConcatStr
  loc_B6F1D0: FStStrNoPop var_94
  loc_B6F1D3: LitStr "ocoAcpa` decimal(10,2) NOT NULL DEFAULT '0.00',"
  loc_B6F1D6: ConcatStr
  loc_B6F1D7: FStStrNoPop var_98
  loc_B6F1DA: LitStr "mpoAcpa` decimal(13,2) NOT NULL DEFAULT '0.00',"
  loc_B6F1DD: ConcatStr
  loc_B6F1DE: FStStrNoPop var_9C
  loc_B6F1E1: LitStr "ctuAcpa` char(2) NOT NULL default '',"
  loc_B6F1E4: ConcatStr
  loc_B6F1E5: FStStrNoPop var_A0
  loc_B6F1E8: LitStr "ontAcpa` tinyint(2) unsigned NOT NULL default '0'"
  loc_B6F1EB: ConcatStr
  loc_B6F1EC: FStStrNoPop var_A4
  loc_B6F1EF: LitStr " ) ENGINE=InnoDB DEFAULT CHARSET=latin1"
  loc_B6F1F2: ConcatStr
  loc_B6F1F3: FStStrNoPop var_A8
  loc_B6F1F6: FLdPr Me
  loc_B6F1F9: MemLdRfVar from_stack_1.global_60
  loc_B6F1FC: NewIfNullPr clsacrepago
  loc_B6F1FF: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_B6F204: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_B6F219: LitStr "SELECT FeenAcpa, acrepago.NumeAcpa, acrepago.CodiEnre, DetaEnre, TocoAcpa, ImpoAcpa, ActuAcpa, ContAcpa FROM acrepago "
  loc_B6F21C: LitStr " LEFT JOIN infogov.entereca ON acrepago.CodiEnre = infogov.entereca.CodiEnre WHERE ActuAcpa = 'No' AND ContAcpa = 1 ORDER BY FeenAcpa, NumeAcpa"
  loc_B6F21F: ConcatStr
  loc_B6F220: FStStrNoPop var_88
  loc_B6F223: FLdPr Me
  loc_B6F226: MemLdRfVar from_stack_1.global_56
  loc_B6F229: NewIfNullPr clsacrepago
  loc_B6F22C: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_B6F231: FFree1Str var_88
  loc_B6F234: FLdRfVar var_AC
  loc_B6F237: FLdPr Me
  loc_B6F23A: MemLdRfVar from_stack_1.global_56
  loc_B6F23D: NewIfNullPr clsacrepago
  loc_B6F240: from_stack_1 = clsacrepago.RecordCount
  loc_B6F245: ILdRf var_AC
  loc_B6F248: LitI4 0
  loc_B6F24D: GtI4
  loc_B6F24E: BranchF loc_B6F45B
  loc_B6F251: FLdPr Me
  loc_B6F254: MemLdRfVar from_stack_1.global_56
  loc_B6F257: NewIfNullPr clsacrepago
  loc_B6F25A: Call clsacrepago.MoveFirst()
  loc_B6F25F: FLdRfVar var_AE
  loc_B6F262: FLdPr Me
  loc_B6F265: MemLdRfVar from_stack_1.global_56
  loc_B6F268: NewIfNullPr clsacrepago
  loc_B6F26B: from_stack_1 = clsacrepago.EOF
  loc_B6F270: FLdI2 var_AE
  loc_B6F273: NotI4
  loc_B6F274: BranchF loc_B6F45B
  loc_B6F277: FLdRfVar var_C0
  loc_B6F27A: FLdPr Me
  loc_B6F27D: MemLdRfVar from_stack_1.global_56
  loc_B6F280: NewIfNullPr clsacrepago
  loc_B6F283: from_stack_1 = clsacrepago.FeenAcpa
  loc_B6F288: FLdRfVar var_AE
  loc_B6F28B: FLdPr Me
  loc_B6F28E: MemLdRfVar from_stack_1.global_56
  loc_B6F291: NewIfNullPr clsacrepago
  loc_B6F294: from_stack_1 = clsacrepago.NumeAcpa
  loc_B6F299: FLdI2 var_AE
  loc_B6F29C: FLdRfVar var_C0
  loc_B6F29F: CStrVarVal var_88
  loc_B6F2A3: ImpAdCallI2 Proc_18_111_C62EC8(, )
  loc_B6F2A8: LitI2_Byte 0
  loc_B6F2AA: EqI2
  loc_B6F2AB: FFree1Str var_88
  loc_B6F2AE: FFree1Var var_C0 = ""
  loc_B6F2B1: BranchF loc_B6F44A
  loc_B6F2B4: FLdRfVar var_C0
  loc_B6F2B7: FLdPr Me
  loc_B6F2BA: MemLdRfVar from_stack_1.global_56
  loc_B6F2BD: NewIfNullPr clsacrepago
  loc_B6F2C0: from_stack_1 = clsacrepago.FeenAcpa
  loc_B6F2C5: FLdRfVar var_AC
  loc_B6F2C8: FLdPr Me
  loc_B6F2CB: MemLdRfVar from_stack_1.global_56
  loc_B6F2CE: NewIfNullPr clsacrepago
  loc_B6F2D1: from_stack_1 = clsacrepago.TocoAcpa
  loc_B6F2D6: FLdRfVar var_FC
  loc_B6F2D9: FLdPr Me
  loc_B6F2DC: MemLdRfVar from_stack_1.global_56
  loc_B6F2DF: NewIfNullPr clsacrepago
  loc_B6F2E2: from_stack_1 = clsacrepago.ImpoAcpa
  loc_B6F2E7: LitStr "INSERT INTO acrepagotmp (FeenAcpa, NumeAcpa, CodiEnre, TocoAcpa, ImpoAcpa, ActuAcpa, ContAcpa)"
  loc_B6F2EA: LitStr " VALUE ("
  loc_B6F2ED: ConcatStr
  loc_B6F2EE: FStStrNoPop var_88
  loc_B6F2F1: LitI4 1
  loc_B6F2F6: LitI4 1
  loc_B6F2FB: LitVarStr var_D0, "'yyyy-mm-dd'"
  loc_B6F300: FStVarCopyObj var_E0
  loc_B6F303: FLdRfVar var_E0
  loc_B6F306: FLdRfVar var_C0
  loc_B6F309: ImpAdCallI2 Format$(, )
  loc_B6F30E: FStStrNoPop var_8C
  loc_B6F311: ConcatStr
  loc_B6F312: FStStrNoPop var_90
  loc_B6F315: LitStr ","
  loc_B6F318: ConcatStr
  loc_B6F319: FStStrNoPop var_94
  loc_B6F31C: FLdRfVar var_AE
  loc_B6F31F: FLdPr Me
  loc_B6F322: MemLdRfVar from_stack_1.global_56
  loc_B6F325: NewIfNullPr clsacrepago
  loc_B6F328: from_stack_1 = clsacrepago.NumeAcpa
  loc_B6F32D: FLdI2 var_AE
  loc_B6F330: CStrUI1
  loc_B6F332: FStStrNoPop var_98
  loc_B6F335: ConcatStr
  loc_B6F336: FStStrNoPop var_9C
  loc_B6F339: LitStr ","
  loc_B6F33C: ConcatStr
  loc_B6F33D: FStStrNoPop var_A0
  loc_B6F340: FLdRfVar var_E2
  loc_B6F343: FLdPr Me
  loc_B6F346: MemLdRfVar from_stack_1.global_56
  loc_B6F349: NewIfNullPr clsacrepago
  loc_B6F34C: from_stack_1 = clsacrepago.CodiEnre
  loc_B6F351: FLdI2 var_E2
  loc_B6F354: CStrUI1
  loc_B6F356: FStStrNoPop var_A4
  loc_B6F359: ConcatStr
  loc_B6F35A: FStStrNoPop var_A8
  loc_B6F35D: LitStr ","
  loc_B6F360: ConcatStr
  loc_B6F361: FStStrNoPop var_EC
  loc_B6F364: LitI4 0
  loc_B6F369: LitI4 -1
  loc_B6F36E: LitI4 1
  loc_B6F373: LitStr "."
  loc_B6F376: LitStr ","
  loc_B6F379: ILdRf var_AC
  loc_B6F37C: CStrI4
  loc_B6F37E: FStStrNoPop var_E8
  loc_B6F381: ImpAdCallI2 Replace(, , , , , )
  loc_B6F386: FStStrNoPop var_F0
  loc_B6F389: ConcatStr
  loc_B6F38A: FStStrNoPop var_F4
  loc_B6F38D: LitStr ","
  loc_B6F390: ConcatStr
  loc_B6F391: FStStrNoPop var_104
  loc_B6F394: LitI4 0
  loc_B6F399: LitI4 -1
  loc_B6F39E: LitI4 1
  loc_B6F3A3: LitStr "."
  loc_B6F3A6: LitStr ","
  loc_B6F3A9: FLdFPR8 var_FC
  loc_B6F3AC: CStrR8
  loc_B6F3AE: FStStrNoPop var_100
  loc_B6F3B1: ImpAdCallI2 Replace(, , , , , )
  loc_B6F3B6: FStStrNoPop var_108
  loc_B6F3B9: ConcatStr
  loc_B6F3BA: FStStrNoPop var_10C
  loc_B6F3BD: LitStr ",'"
  loc_B6F3C0: ConcatStr
  loc_B6F3C1: FStStrNoPop var_114
  loc_B6F3C4: FLdRfVar var_110
  loc_B6F3C7: FLdPr Me
  loc_B6F3CA: MemLdRfVar from_stack_1.global_56
  loc_B6F3CD: NewIfNullPr clsacrepago
  loc_B6F3D0: from_stack_1 = clsacrepago.ActuAcpa
  loc_B6F3D5: ILdRf var_110
  loc_B6F3D8: ConcatStr
  loc_B6F3D9: FStStrNoPop var_118
  loc_B6F3DC: LitStr "',"
  loc_B6F3DF: ConcatStr
  loc_B6F3E0: FStStrNoPop var_120
  loc_B6F3E3: FLdRfVar var_11C
  loc_B6F3E6: FLdPr Me
  loc_B6F3E9: MemLdRfVar from_stack_1.global_56
  loc_B6F3EC: NewIfNullPr clsacrepago
  loc_B6F3EF: from_stack_1 = clsacrepago.ContAcpa
  loc_B6F3F4: ILdRf var_11C
  loc_B6F3F7: ConcatStr
  loc_B6F3F8: FStStrNoPop var_124
  loc_B6F3FB: LitStr ")"
  loc_B6F3FE: ConcatStr
  loc_B6F3FF: FStStrNoPop var_128
  loc_B6F402: FLdPr Me
  loc_B6F405: MemLdRfVar from_stack_1.global_60
  loc_B6F408: NewIfNullPr clsacrepago
  loc_B6F40B: Call clsacrepago.EjecutarRs2(from_stack_1v)
  loc_B6F410: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_114 = "": var_110 = "": var_118 = "": var_120 = "": var_11C = "": var_124 = ""
  loc_B6F443: FFreeVar var_C0 = ""
  loc_B6F44A: FLdPr Me
  loc_B6F44D: MemLdRfVar from_stack_1.global_56
  loc_B6F450: NewIfNullPr clsacrepago
  loc_B6F453: Call clsacrepago.MoveSiguiente()
  loc_B6F458: Branch loc_B6F25F
  loc_B6F45B: LitStr "SELECT acrepagotmp.FeenAcpa, acrepagotmp.NumeAcpa, acrepagotmp.CodiEnre, DetaEnre, acrepagotmp.TocoAcpa, acrepagotmp.ImpoAcpa FROM acrepagotmp "
  loc_B6F45E: LitStr " LEFT JOIN infogov.entereca ON acrepagotmp.CodiEnre = infogov.entereca.CodiEnre WHERE acrepagotmp.ActuAcpa = 'No' AND acrepagotmp.ContAcpa = 1 ORDER BY acrepagotmp.FeenAcpa, acrepagotmp.NumeAcpa"
  loc_B6F461: ConcatStr
  loc_B6F462: FStStrNoPop var_88
  loc_B6F465: FLdPr Me
  loc_B6F468: MemLdRfVar from_stack_1.global_56
  loc_B6F46B: NewIfNullPr clsacrepago
  loc_B6F46E: Call clsacrepago.RedefineRS(from_stack_1v)
  loc_B6F473: FFree1Str var_88
  loc_B6F476: LitVarStr var_D0, "FeenAcpa"
  loc_B6F47B: PopAdLdVar
  loc_B6F47C: FLdPr Me
  loc_B6F47F: VCallAd Control_ID_DesdeFechaMsk
  loc_B6F482: FStAdFunc var_13C
  loc_B6F485: FLdPr var_13C
  loc_B6F488: LateIdSt
  loc_B6F48D: FFree1Ad var_13C
  loc_B6F490: LitVarStr var_D0, "FeenAcpa"
  loc_B6F495: PopAdLdVar
  loc_B6F496: FLdPr Me
  loc_B6F499: VCallAd Control_ID_HastaFechaMsk
  loc_B6F49C: FStAdFunc var_13C
  loc_B6F49F: FLdPr var_13C
  loc_B6F4A2: LateIdSt
  loc_B6F4A7: FFree1Ad var_13C
  loc_B6F4AA: LitStr "NumeAcpa"
  loc_B6F4AD: FLdPr Me
  loc_B6F4B0: VCallAd Control_ID_DesdeNumeTxt
  loc_B6F4B3: FStAdFunc var_13C
  loc_B6F4B6: FLdPr var_13C
  loc_B6F4B9: Me.DataField = from_stack_1
  loc_B6F4BE: FFree1Ad var_13C
  loc_B6F4C1: LitStr "NumeAcpa"
  loc_B6F4C4: FLdPr Me
  loc_B6F4C7: VCallAd Control_ID_HastaNumeTxt
  loc_B6F4CA: FStAdFunc var_13C
  loc_B6F4CD: FLdPr var_13C
  loc_B6F4D0: Me.DataField = from_stack_1
  loc_B6F4D5: FFree1Ad var_13C
  loc_B6F4D8: LitI4 0
  loc_B6F4DD: LitI4 6
  loc_B6F4E2: FLdRfVar var_140
  loc_B6F4E5: Redim
  loc_B6F4EF: FLdPr Me
  loc_B6F4F2: VCallAd Control_ID_DesdeFechaMsk
  loc_B6F4F5: CVarAd
  loc_B6F4F9: ParmAry1St
  loc_B6F4FF: FLdPr Me
  loc_B6F502: VCallAd Control_ID_DesdeFechaCmd
  loc_B6F505: CVarAd
  loc_B6F509: ParmAry1St
  loc_B6F50F: FLdPr Me
  loc_B6F512: VCallAd Control_ID_HastaFechaMsk
  loc_B6F515: CVarAd
  loc_B6F519: ParmAry1St
  loc_B6F51F: FLdPr Me
  loc_B6F522: VCallAd Control_ID_HastaFechaCmd
  loc_B6F525: CVarAd
  loc_B6F529: ParmAry1St
  loc_B6F52F: FLdPr Me
  loc_B6F532: VCallAd Control_ID_DesdeNumeTxt
  loc_B6F535: CVarAd
  loc_B6F539: ParmAry1St
  loc_B6F53F: FLdPr Me
  loc_B6F542: VCallAd Control_ID_HastaNumeTxt
  loc_B6F545: CVarAd
  loc_B6F549: ParmAry1St
  loc_B6F54F: FLdPr Me
  loc_B6F552: VCallAd Control_ID_ConfirmarCmd
  loc_B6F555: CVarAd
  loc_B6F559: ParmAry1St
  loc_B6F55F: FLdRfVar var_140
  loc_B6F562: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_B6F567: FLdRfVar var_140
  loc_B6F56A: Erase
  loc_B6F56B: LitI4 0
  loc_B6F570: LitI4 1
  loc_B6F575: FLdRfVar var_140
  loc_B6F578: Redim
  loc_B6F582: FLdPr Me
  loc_B6F585: MemLdRfVar from_stack_1.global_56
  loc_B6F588: NewIfNullAd
  loc_B6F58B: FStAd var_13C 
  loc_B6F58F: FLdRfVar var_13C
  loc_B6F592: CVarRef
  loc_B6F597: ParmAry1St
  loc_B6F59D: FLdPr Me
  loc_B6F5A0: VCallAd Control_ID_dgdABMS
  loc_B6F5A3: CVarAd
  loc_B6F5A7: ParmAry1St
  loc_B6F5AD: FLdRfVar var_140
  loc_B6F5B0: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B6F5B5: ILdRf var_13C
  loc_B6F5B8: CastAd
  loc_B6F5BB: FLdPr Me
  loc_B6F5BE: MemStAdFunc
  loc_B6F5C2: FLdRfVar var_140
  loc_B6F5C5: Erase
  loc_B6F5C6: FFree1Ad var_13C
  loc_B6F5C9: Call EnlazaTodo()
  loc_B6F5CE: ExitProcHresult
End Sub

Private Sub Form_Activate() '9B7E38
  'Data Table: 45CB14
  loc_9B7E28: FLdPr Me
  loc_9B7E2B: MemLdRfVar from_stack_1.global_56
  loc_9B7E2E: NewIfNullPr clsacrepago
  loc_9B7E31: Call clsacrepago.Requery()
  loc_9B7E36: ExitProcHresult
End Sub

Private Sub DesdeFechaCmd_Click() 'A47254
  'Data Table: 45CB14
  loc_A47200: LitVar_Missing var_A4
  loc_A47203: PopAdLdVar
  loc_A47204: LitVarI4
  loc_A4720C: PopAdLdVar
  loc_A4720D: ImpAdLdRf MemVar_D930A4
  loc_A47210: NewIfNullPr frmCalendario
  loc_A47213: frmCalendario.Show from_stack_1, from_stack_2
  loc_A47218: ImpAdLdI4 MemVar_D93028
  loc_A4721B: LitStr vbNullString
  loc_A4721E: NeStr
  loc_A47220: BranchF loc_A4723E
  loc_A47223: ImpAdLdRf MemVar_D93028
  loc_A47226: CDargRef
  loc_A4722A: FLdPr Me
  loc_A4722D: VCallAd Control_ID_DesdeFechaMsk
  loc_A47230: FStAdFunc var_A8
  loc_A47233: FLdPr var_A8
  loc_A47236: LateIdSt
  loc_A4723B: FFree1Ad var_A8
  loc_A4723E: FLdPr Me
  loc_A47241: VCallAd Control_ID_DesdeFechaMsk
  loc_A47244: CVarAd
  loc_A47248: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4724D: FFree1Var var_B8 = ""
  loc_A47250: ExitProcHresult
End Sub

Private Sub HastaFechaCmd_Click() 'A44FE0
  'Data Table: 45CB14
  loc_A44F8C: LitVar_Missing var_A4
  loc_A44F8F: PopAdLdVar
  loc_A44F90: LitVarI4
  loc_A44F98: PopAdLdVar
  loc_A44F99: ImpAdLdRf MemVar_D930A4
  loc_A44F9C: NewIfNullPr frmCalendario
  loc_A44F9F: frmCalendario.Show from_stack_1, from_stack_2
  loc_A44FA4: ImpAdLdI4 MemVar_D93028
  loc_A44FA7: LitStr vbNullString
  loc_A44FAA: NeStr
  loc_A44FAC: BranchF loc_A44FCA
  loc_A44FAF: ImpAdLdRf MemVar_D93028
  loc_A44FB2: CDargRef
  loc_A44FB6: FLdPr Me
  loc_A44FB9: VCallAd Control_ID_HastaFechaMsk
  loc_A44FBC: FStAdFunc var_A8
  loc_A44FBF: FLdPr var_A8
  loc_A44FC2: LateIdSt
  loc_A44FC7: FFree1Ad var_A8
  loc_A44FCA: FLdPr Me
  loc_A44FCD: VCallAd Control_ID_HastaFechaMsk
  loc_A44FD0: CVarAd
  loc_A44FD4: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A44FD9: FFree1Var var_B8 = ""
  loc_A44FDC: ExitProcHresult
End Sub

Private Sub HabilitarCmd_Click() 'AC97D0
  'Data Table: 45CB14
  loc_AC96D8: FLdRfVar var_88
  loc_AC96DB: FLdPr Me
  loc_AC96DE: MemLdRfVar from_stack_1.global_56
  loc_AC96E1: NewIfNullPr clsacrepago
  loc_AC96E4: from_stack_1 = clsacrepago.RecordCount
  loc_AC96E9: ILdRf var_88
  loc_AC96EC: LitI4 0
  loc_AC96F1: GtI4
  loc_AC96F2: BranchF loc_AC97CF
  loc_AC96F5: ILdRf Me
  loc_AC96F8: CastAd
  loc_AC96FB: FStAdFunc var_8C
  loc_AC96FE: FLdRfVar var_8C
  loc_AC9701: ImpAdCallFPR4  = Proc_272_15_A6AD3C()
  loc_AC9706: FFree1Ad var_8C
  loc_AC9709: LitI4 0
  loc_AC970E: LitI4 6
  loc_AC9713: FLdRfVar var_90
  loc_AC9716: Redim
  loc_AC9720: FLdPr Me
  loc_AC9723: VCallAd Control_ID_DesdeFechaMsk
  loc_AC9726: CVarAd
  loc_AC972A: ParmAry1St
  loc_AC9730: FLdPr Me
  loc_AC9733: VCallAd Control_ID_DesdeFechaCmd
  loc_AC9736: CVarAd
  loc_AC973A: ParmAry1St
  loc_AC9740: FLdPr Me
  loc_AC9743: VCallAd Control_ID_HastaFechaMsk
  loc_AC9746: CVarAd
  loc_AC974A: ParmAry1St
  loc_AC9750: FLdPr Me
  loc_AC9753: VCallAd Control_ID_HastaFechaCmd
  loc_AC9756: CVarAd
  loc_AC975A: ParmAry1St
  loc_AC9760: FLdPr Me
  loc_AC9763: VCallAd Control_ID_DesdeNumeTxt
  loc_AC9766: CVarAd
  loc_AC976A: ParmAry1St
  loc_AC9770: FLdPr Me
  loc_AC9773: VCallAd Control_ID_HastaNumeTxt
  loc_AC9776: CVarAd
  loc_AC977A: ParmAry1St
  loc_AC9780: FLdPr Me
  loc_AC9783: VCallAd Control_ID_ConfirmarCmd
  loc_AC9786: CVarAd
  loc_AC978A: ParmAry1St
  loc_AC9790: FLdRfVar var_90
  loc_AC9793: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AC9798: FLdRfVar var_90
  loc_AC979B: Erase
  loc_AC979C: LitI4 0
  loc_AC97A1: LitI4 0
  loc_AC97A6: FLdRfVar var_90
  loc_AC97A9: Redim
  loc_AC97B3: FLdPr Me
  loc_AC97B6: VCallAd Control_ID_HabilitarCmd
  loc_AC97B9: CVarAd
  loc_AC97BD: ParmAry1St
  loc_AC97C3: FLdRfVar var_90
  loc_AC97C6: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_AC97CB: FLdRfVar var_90
  loc_AC97CE: Erase
  loc_AC97CF: ExitProcHresult
End Sub

Private Sub DesdeNumeTxt_GotFocus() '9C8048
  'Data Table: 45CB14
  loc_9C8034: FLdPr Me
  loc_9C8037: VCallAd Control_ID_DesdeNumeTxt
  loc_9C803A: CVarAd
  loc_9C803E: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C8043: FFree1Var var_94 = ""
  loc_9C8046: ExitProcHresult
End Sub

Private Sub DesdeNumeTxt_KeyPress(KeyAscii As Integer) '9D8CEC
  'Data Table: 45CB14
  loc_9D8CD4: LitStr "0123456789"
  loc_9D8CD7: FStStrCopy var_88
  loc_9D8CDA: FLdRfVar var_88
  loc_9D8CDD: ILdRf KeyAscii
  loc_9D8CE0: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D8CE5: IStI2 KeyAscii
  loc_9D8CE8: FFree1Str var_88
  loc_9D8CEB: ExitProcHresult
End Sub

Private Sub DesdeNumeTxt_LostFocus() 'A255F0
  'Data Table: 45CB14
  loc_A255AC: FLdRfVar var_8C
  loc_A255AF: FLdPr Me
  loc_A255B2: VCallAd Control_ID_DesdeNumeTxt
  loc_A255B5: FStAdFunc var_88
  loc_A255B8: FLdPr var_88
  loc_A255BB:  = Me.Text
  loc_A255C0: ILdRf var_8C
  loc_A255C3: LitStr vbNullString
  loc_A255C6: EqStr
  loc_A255C8: FFree1Str var_8C
  loc_A255CB: FFree1Ad var_88
  loc_A255CE: BranchF loc_A255EF
  loc_A255D1: LitI2_Byte 0
  loc_A255D3: CStrUI1
  loc_A255D5: FStStrNoPop var_8C
  loc_A255D8: FLdPr Me
  loc_A255DB: VCallAd Control_ID_DesdeNumeTxt
  loc_A255DE: FStAdFunc var_88
  loc_A255E1: FLdPr var_88
  loc_A255E4: Me.Text = from_stack_1
  loc_A255E9: FFree1Str var_8C
  loc_A255EC: FFree1Ad var_88
  loc_A255EF: ExitProcHresult
End Sub

Private Sub HastaNumeTxt_GotFocus() '9C7CA0
  'Data Table: 45CB14
  loc_9C7C8C: FLdPr Me
  loc_9C7C8F: VCallAd Control_ID_HastaNumeTxt
  loc_9C7C92: CVarAd
  loc_9C7C96: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9C7C9B: FFree1Var var_94 = ""
  loc_9C7C9E: ExitProcHresult
End Sub

Private Sub HastaNumeTxt_KeyPress(KeyAscii As Integer) '9D8E1C
  'Data Table: 45CB14
  loc_9D8E04: LitStr "0123456789"
  loc_9D8E07: FStStrCopy var_88
  loc_9D8E0A: FLdRfVar var_88
  loc_9D8E0D: ILdRf KeyAscii
  loc_9D8E10: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9D8E15: IStI2 KeyAscii
  loc_9D8E18: FFree1Str var_88
  loc_9D8E1B: ExitProcHresult
End Sub

Private Sub HastaNumeTxt_LostFocus() 'A25764
  'Data Table: 45CB14
  loc_A25720: FLdRfVar var_8C
  loc_A25723: FLdPr Me
  loc_A25726: VCallAd Control_ID_HastaNumeTxt
  loc_A25729: FStAdFunc var_88
  loc_A2572C: FLdPr var_88
  loc_A2572F:  = Me.Text
  loc_A25734: ILdRf var_8C
  loc_A25737: LitStr vbNullString
  loc_A2573A: EqStr
  loc_A2573C: FFree1Str var_8C
  loc_A2573F: FFree1Ad var_88
  loc_A25742: BranchF loc_A25763
  loc_A25745: LitI2_Byte 0
  loc_A25747: CStrUI1
  loc_A25749: FStStrNoPop var_8C
  loc_A2574C: FLdPr Me
  loc_A2574F: VCallAd Control_ID_HastaNumeTxt
  loc_A25752: FStAdFunc var_88
  loc_A25755: FLdPr var_88
  loc_A25758: Me.Text = from_stack_1
  loc_A2575D: FFree1Str var_8C
  loc_A25760: FFree1Ad var_88
  loc_A25763: ExitProcHresult
End Sub

Private Sub HastaNumeTxt_Validate(Cancel As Boolean) 'AC1AE8
  'Data Table: 45CB14
  loc_AC19EC: FLdRfVar var_8E
  loc_AC19EF: FLdPr Me
  loc_AC19F2: VCallAd Control_ID_HastaNumeTxt
  loc_AC19F5: FStAdFunc var_8C
  loc_AC19F8: FLdPr var_8C
  loc_AC19FB:  = Me.Enabled
  loc_AC1A00: FLdI2 var_8E
  loc_AC1A03: LitI2_Byte &HFF
  loc_AC1A05: EqI2
  loc_AC1A06: FFree1Ad var_8C
  loc_AC1A09: BranchF loc_AC1AE5
  loc_AC1A0C: FLdRfVar var_94
  loc_AC1A0F: FLdPr Me
  loc_AC1A12: VCallAd Control_ID_HastaNumeTxt
  loc_AC1A15: FStAdFunc var_8C
  loc_AC1A18: FLdPr var_8C
  loc_AC1A1B:  = Me.Text
  loc_AC1A20: LitI2_Byte 0
  loc_AC1A22: LitI2_Byte 0
  loc_AC1A24: ILdRf var_94
  loc_AC1A27: LitStr "codigo"
  loc_AC1A2A: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_AC1A2F: FStStrNoPop var_98
  loc_AC1A32: FLdPr Me
  loc_AC1A35: MemStStrCopy
  loc_AC1A39: FFreeStr var_94 = ""
  loc_AC1A40: FFree1Ad var_8C
  loc_AC1A43: FLdPr Me
  loc_AC1A46: MemLdStr global_72
  loc_AC1A49: LitStr vbNullString
  loc_AC1A4C: NeStr
  loc_AC1A4E: BranchF loc_AC1A74
  loc_AC1A51: FLdPr Me
  loc_AC1A54: MemLdStr global_72
  loc_AC1A57: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC1A5C: FLdPr Me
  loc_AC1A5F: VCallAd Control_ID_HastaFechaMsk
  loc_AC1A62: CVarAd
  loc_AC1A66: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC1A6B: FFree1Var var_A8 = ""
  loc_AC1A6E: LitI2_Byte &HFF
  loc_AC1A70: IStI2 Cancel
  loc_AC1A73: ExitProcHresult
  loc_AC1A74: FLdRfVar var_94
  loc_AC1A77: FLdPr Me
  loc_AC1A7A: VCallAd Control_ID_HastaNumeTxt
  loc_AC1A7D: FStAdFunc var_8C
  loc_AC1A80: FLdPr var_8C
  loc_AC1A83:  = Me.Text
  loc_AC1A88: ILdRf var_94
  loc_AC1A8B: CI2Str
  loc_AC1A8D: FLdRfVar var_98
  loc_AC1A90: FLdPr Me
  loc_AC1A93: VCallAd Control_ID_DesdeNumeTxt
  loc_AC1A96: FStAdFunc var_AC
  loc_AC1A99: FLdPr var_AC
  loc_AC1A9C:  = Me.Text
  loc_AC1AA1: ILdRf var_98
  loc_AC1AA4: CI2Str
  loc_AC1AA6: LtI2
  loc_AC1AA7: FFreeStr var_94 = ""
  loc_AC1AAE: FFreeAd var_8C = ""
  loc_AC1AB5: BranchF loc_AC1AE5
  loc_AC1AB8: LitStr "El numero de grupo hasta no puede ser menor al numero de grupo desde."
  loc_AC1ABB: FLdPr Me
  loc_AC1ABE: MemStStrCopy
  loc_AC1AC2: FLdPr Me
  loc_AC1AC5: MemLdStr global_72
  loc_AC1AC8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AC1ACD: FLdPr Me
  loc_AC1AD0: VCallAd Control_ID_HastaNumeTxt
  loc_AC1AD3: CVarAd
  loc_AC1AD7: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AC1ADC: FFree1Var var_A8 = ""
  loc_AC1ADF: LitI2_Byte &HFF
  loc_AC1AE1: IStI2 Cancel
  loc_AC1AE4: ExitProcHresult
  loc_AC1AE5: ExitProcHresult
End Sub

Public Sub EnlazaTodo() 'A8E574
  'Data Table: 45CB14
  loc_A8E4E4: LitI4 0
  loc_A8E4E9: LitI4 4
  loc_A8E4EE: FLdRfVar var_88
  loc_A8E4F1: Redim
  loc_A8E4FB: FLdPr Me
  loc_A8E4FE: MemLdRfVar from_stack_1.global_56
  loc_A8E501: NewIfNullAd
  loc_A8E504: FStAd var_8C 
  loc_A8E508: FLdRfVar var_8C
  loc_A8E50B: CVarRef
  loc_A8E510: ParmAry1St
  loc_A8E516: FLdPr Me
  loc_A8E519: VCallAd Control_ID_DesdeFechaMsk
  loc_A8E51C: CVarAd
  loc_A8E520: ParmAry1St
  loc_A8E526: FLdPr Me
  loc_A8E529: VCallAd Control_ID_HastaFechaMsk
  loc_A8E52C: CVarAd
  loc_A8E530: ParmAry1St
  loc_A8E536: FLdPr Me
  loc_A8E539: VCallAd Control_ID_DesdeNumeTxt
  loc_A8E53C: CVarAd
  loc_A8E540: ParmAry1St
  loc_A8E546: FLdPr Me
  loc_A8E549: VCallAd Control_ID_HastaNumeTxt
  loc_A8E54C: CVarAd
  loc_A8E550: ParmAry1St
  loc_A8E556: FLdRfVar var_88
  loc_A8E559: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_A8E55E: ILdRf var_8C
  loc_A8E561: CastAd
  loc_A8E564: FLdPr Me
  loc_A8E567: MemStAdFunc
  loc_A8E56B: FLdRfVar var_88
  loc_A8E56E: Erase
  loc_A8E56F: FFree1Ad var_8C
  loc_A8E572: ExitProcHresult
End Sub
