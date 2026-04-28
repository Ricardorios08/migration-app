VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Begin VB.Form frmConciliacionAutomaticaBancoNacion
  Caption = "Conciliación Automática Banco Nación"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "frmConciliacionAutomaticaBancoNacion.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 450
  ClientWidth = 12450
  ClientHeight = 8160
  Begin MSComDlg.CommonDialog cdlAbrir
    OleObjectBlob = "frmConciliacionAutomaticaBancoNacion.frx":08CA
    Left = 7920
    Top = 120
  End
  Begin MSDataGridLib.DataGrid dgdConci
    Left = 120
    Top = 2880
    Width = 12615
    Height = 5535
    TabIndex = 12
    OleObjectBlob = "frmConciliacionAutomaticaBancoNacion.frx":092E
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9135
    Height = 2775
    TabIndex = 0
    Begin MSComctlLib.ProgressBar ProgressBar
      Left = 120
      Top = 2280
      Width = 5175
      Height = 375
      TabIndex = 9
      OleObjectBlob = "frmConciliacionAutomaticaBancoNacion.frx":0D54
    End
    Begin VB.CommandButton cmdImportar
      Caption = "Importar"
      Left = 5400
      Top = 2280
      Width = 2295
      Height = 375
      TabIndex = 10
    End
    Begin VB.CommandButton cmdArchivo
      Left = 1200
      Top = 1680
      Width = 375
      Height = 375
      TabIndex = 7
      Picture = "frmConciliacionAutomaticaBancoNacion.frx":0DBC
      Style = 1
    End
    Begin MSMask.MaskEdBox CodiBancMsk
      Left = 1200
      Top = 360
      Width = 495
      Height = 405
      TabIndex = 2
      OleObjectBlob = "frmConciliacionAutomaticaBancoNacion.frx":12EE
    End
    Begin MSMask.MaskEdBox FecoMobaMsk
      Left = 1080
      Top = 1080
      Width = 1335
      Height = 360
      TabIndex = 5
      OleObjectBlob = "frmConciliacionAutomaticaBancoNacion.frx":137A
      DataField = "FechImpu"
    End
    Begin VB.Label ArchivoLbl
      Left = 1680
      Top = 1680
      Width = 7215
      Height = 375
      TabIndex = 8
      BorderStyle = 1 'Fixed Single
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
      Caption = "Archivo:"
      Left = 240
      Top = 1740
      Width = 840
      Height = 255
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
    Begin VB.Label DetaBancLbl
      Left = 1740
      Top = 360
      Width = 7245
      Height = 375
      TabIndex = 3
      BorderStyle = 1 'Fixed Single
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
      Caption = "Fecha:"
      Left = 240
      Top = 1080
      Width = 735
      Height = 300
      TabIndex = 4
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label1
      Caption = "Banco:"
      Left = 330
      Top = 360
      Width = 750
      Height = 300
      TabIndex = 1
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.CommandButton cmdConfirmar
    Left = 9600
    Top = 2160
    Width = 1215
    Height = 615
    TabIndex = 11
    Picture = "frmConciliacionAutomaticaBancoNacion.frx":142A
    Style = 1
  End
  Begin VB.CommandButton cmdSalir
    Left = 11400
    Top = 2160
    Width = 855
    Height = 615
    TabIndex = 13
    Picture = "frmConciliacionAutomaticaBancoNacion.frx":1758
    Style = 1
    CausesValidation = 0   'False
  End
End

Attribute VB_Name = "frmConciliacionAutomaticaBancoNacion"


Private Sub FecoMobaMsk_UnknownEvent_0 '951270
  'Data Table: 434D54
  loc_95125C: FLdPr Me
  loc_95125F: VCallAd Control_ID_FecoMobaMsk
  loc_951262: CVarAd
  loc_951266: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95126B: FFree1Var var_94 = ""
  loc_95126E: ExitProcHresult
End Sub

Private Function FecoMobaMsk_UnknownEvent_8(arg_C) '9BEF8C
  'Data Table: 434D54
  loc_9BEED4: FLdPr Me
  loc_9BEED7: VCallAd Control_ID_FecoMobaMsk
  loc_9BEEDA: FStAdFunc var_88
  loc_9BEEDD: FLdPr var_88
  loc_9BEEE0: LateIdLdVar var_98 DispID_13 -32767
  loc_9BEEE7: CBoolVar
  loc_9BEEE9: FFree1Ad var_88
  loc_9BEEEC: FFree1Var var_98 = ""
  loc_9BEEEF: BranchF loc_9BEF8A
  loc_9BEEF2: FLdPr Me
  loc_9BEEF5: VCallAd Control_ID_FecoMobaMsk
  loc_9BEEF8: FStAdFunc var_88
  loc_9BEEFB: FLdPr var_88
  loc_9BEEFE: LateIdLdVar var_98 DispID_15 0
  loc_9BEF05: PopAd
  loc_9BEF07: FLdPr Me
  loc_9BEF0A: VCallAd Control_ID_FecoMobaMsk
  loc_9BEF0D: FStAdFunc var_AC
  loc_9BEF10: LitI2_Byte &HFF
  loc_9BEF12: PopTmpLdAd2 var_A2
  loc_9BEF15: FLdZeroAd var_AC
  loc_9BEF18: FStAdFunc var_A0
  loc_9BEF1B: FLdRfVar var_A0
  loc_9BEF1E: LitStr "01/01/2018"
  loc_9BEF21: LitI2_Byte &HFF
  loc_9BEF23: LitI2_Byte &HFF
  loc_9BEF25: FLdRfVar var_98
  loc_9BEF28: CStrVarTmp
  loc_9BEF29: FStStrNoPop var_9C
  loc_9BEF2C: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9BEF31: FStStrNoPop var_A8
  loc_9BEF34: FLdPr Me
  loc_9BEF37: MemStStrCopy
  loc_9BEF3B: FFreeStr var_9C = ""
  loc_9BEF42: FFreeAd var_88 = "": var_A0 = ""
  loc_9BEF4B: FFree1Var var_98 = ""
  loc_9BEF4E: FLdPr Me
  loc_9BEF51: VCallAd Control_ID_FecoMobaMsk
  loc_9BEF54: FStAdFunc var_B0
  loc_9BEF57: LitNothing
  loc_9BEF59: CastAd
  loc_9BEF5C: FStAdFunc var_AC
  loc_9BEF5F: FLdRfVar var_AC
  loc_9BEF62: FLdZeroAd var_B0
  loc_9BEF65: FStAdFuncNoPop
  loc_9BEF68: CastAd
  loc_9BEF6B: FStAdFunc var_A0
  loc_9BEF6E: FLdRfVar var_A0
  loc_9BEF71: FLdPr Me
  loc_9BEF74: MemLdRfVar from_stack_1.global_60
  loc_9BEF77: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BEF7C: IStI2 arg_C
  loc_9BEF7F: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9BEF8A: ExitProcHresult
End Function

Private Sub FecoMobaMsk_KeyPress(KeyAscii As Integer) '985BA0
  'Data Table: 434D54
  loc_985B5C: ILdI2 KeyAscii
  loc_985B5F: CI4UI1
  loc_985B60: LitI4 &H20
  loc_985B65: EqI4
  loc_985B66: BranchF loc_985B9C
  loc_985B69: LitVar_Missing var_A4
  loc_985B6C: PopAdLdVar
  loc_985B6D: LitVarI4
  loc_985B75: PopAdLdVar
  loc_985B76: ImpAdLdRf MemVar_C3D9A8
  loc_985B79: NewIfNullPr frmCalendario
  loc_985B7C: frmCalendario.Show from_stack_1, from_stack_2
  loc_985B81: ImpAdLdRf MemVar_C3D038
  loc_985B84: CDargRef
  loc_985B88: FLdPr Me
  loc_985B8B: VCallAd Control_ID_FecoMobaMsk
  loc_985B8E: FStAdFunc var_A8
  loc_985B91: FLdPr var_A8
  loc_985B94: LateIdSt
  loc_985B99: FFree1Ad var_A8
  loc_985B9C: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '9578CC
  'Data Table: 434D54
  loc_9578B4: ILdRf Me
  loc_9578B7: FStAdNoPop
  loc_9578BB: ImpAdLdRf MemVar_C44F9C
  loc_9578BE: NewIfNullPr Me
  loc_9578C1: Me.Global.Unload from_stack_1
  loc_9578C6: FFree1Ad var_88
  loc_9578C9: ExitProcHresult
End Sub

Private Sub cmdArchivo_Click() '9EA7E8
  'Data Table: 434D54
  loc_9EA6CC: OnErrorGoto loc_9EA753
  loc_9EA6CF: FLdPr Me
  loc_9EA6D2: VCallAd Control_ID_cdlAbrir
  loc_9EA6D5: FStAdFunc var_88
  loc_9EA6D8: LitVar_TRUE var_98
  loc_9EA6DB: PopAdLdVar
  loc_9EA6DC: FLdPr var_88
  loc_9EA6DF: LateIdSt
  loc_9EA6E4: LitVarI4
  loc_9EA6EC: PopAdLdVar
  loc_9EA6ED: FLdPr var_88
  loc_9EA6F0: LateIdSt
  loc_9EA6F5: LitVarStr var_98, "Archivos delimitados (*.csv)|*.csv"
  loc_9EA6FA: PopAdLdVar
  loc_9EA6FB: FLdPr var_88
  loc_9EA6FE: LateIdSt
  loc_9EA703: FLdPr var_88
  loc_9EA706: LateIdCall
  loc_9EA70E: FLdPr var_88
  loc_9EA711: LateIdLdVar var_B8 DispID_1 0
  loc_9EA718: CStrVarTmp
  loc_9EA719: FStStrNoPop var_BC
  loc_9EA71C: FLdPr Me
  loc_9EA71F: VCallAd Control_ID_ArchivoLbl
  loc_9EA722: FStAdFunc var_C0
  loc_9EA725: FLdPr var_C0
  loc_9EA728: Me.Caption = from_stack_1
  loc_9EA72D: FFree1Str var_BC
  loc_9EA730: FFree1Ad var_C0
  loc_9EA733: FFree1Var var_B8 = ""
  loc_9EA736: LitI2_Byte &HFF
  loc_9EA738: FLdPr Me
  loc_9EA73B: VCallAd Control_ID_cmdImportar
  loc_9EA73E: FStAdFunc var_C0
  loc_9EA741: FLdPr var_C0
  loc_9EA744: Me.Enabled = from_stack_1b
  loc_9EA749: FFree1Ad var_C0
  loc_9EA74C: LitNothing
  loc_9EA74E: FStAd var_88 
  loc_9EA752: ExitProcHresult
  loc_9EA753: FLdRfVar var_C4
  loc_9EA756: ImpAdCallI2 Err 'rtcErrObj
  loc_9EA75B: FStAdFunc var_C0
  loc_9EA75E: FLdPr var_C0
  loc_9EA761:  = Err.Number
  loc_9EA766: ILdRf var_C4
  loc_9EA769: LitI4 &H7FF3
  loc_9EA76E: EqI4
  loc_9EA76F: FFree1Ad var_C0
  loc_9EA772: BranchF loc_9EA78E
  loc_9EA775: LitI2_Byte 0
  loc_9EA777: FLdPr Me
  loc_9EA77A: VCallAd Control_ID_cmdImportar
  loc_9EA77D: FStAdFunc var_C0
  loc_9EA780: FLdPr var_C0
  loc_9EA783: Me.Enabled = from_stack_1b
  loc_9EA788: FFree1Ad var_C0
  loc_9EA78B: Branch loc_9EA7E6
  loc_9EA78E: LitI4 0
  loc_9EA793: FLdRfVar var_C4
  loc_9EA796: ImpAdCallI2 Err 'rtcErrObj
  loc_9EA79B: FStAdFunc var_C0
  loc_9EA79E: FLdPr var_C0
  loc_9EA7A1:  = Err.Number
  loc_9EA7A6: ILdRf var_C4
  loc_9EA7A9: CStrI4
  loc_9EA7AB: FStStrNoPop var_BC
  loc_9EA7AE: LitStr ": "
  loc_9EA7B1: ConcatStr
  loc_9EA7B2: FStStrNoPop var_D0
  loc_9EA7B5: FLdRfVar var_CC
  loc_9EA7B8: ImpAdCallI2 Err 'rtcErrObj
  loc_9EA7BD: FStAdFunc var_C8
  loc_9EA7C0: FLdPr var_C8
  loc_9EA7C3:  = Err.Description
  loc_9EA7C8: ILdRf var_CC
  loc_9EA7CB: ConcatStr
  loc_9EA7CC: FStStrNoPop var_D4
  loc_9EA7CF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9EA7D4: FFreeStr var_BC = "": var_D0 = "": var_CC = ""
  loc_9EA7DF: FFreeAd var_C0 = ""
  loc_9EA7E6: ExitProcHresult
End Sub

Private Sub cmdImportar_Click() 'B60364
  'Data Table: 434D54
  loc_B5F910: LitI4 0
  loc_B5F915: LitI4 4
  loc_B5F91A: FLdRfVar var_C4
  loc_B5F91D: Redim
  loc_B5F927: FLdPr Me
  loc_B5F92A: VCallAd Control_ID_CodiBancMsk
  loc_B5F92D: CVarAd
  loc_B5F931: ParmAry1St
  loc_B5F937: FLdPr Me
  loc_B5F93A: VCallAd Control_ID_FecoMobaMsk
  loc_B5F93D: CVarAd
  loc_B5F941: ParmAry1St
  loc_B5F947: FLdPr Me
  loc_B5F94A: VCallAd Control_ID_cmdArchivo
  loc_B5F94D: CVarAd
  loc_B5F951: ParmAry1St
  loc_B5F957: FLdPr Me
  loc_B5F95A: VCallAd Control_ID_cmdImportar
  loc_B5F95D: CVarAd
  loc_B5F961: ParmAry1St
  loc_B5F967: FLdPr Me
  loc_B5F96A: VCallAd Control_ID_cmdSalir
  loc_B5F96D: CVarAd
  loc_B5F971: ParmAry1St
  loc_B5F977: FLdRfVar var_C4
  loc_B5F97A: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B5F97F: FLdRfVar var_C4
  loc_B5F982: Erase
  loc_B5F985: FLdPr Me
  loc_B5F988: VCallAd Control_ID_cdlAbrir
  loc_B5F98B: FStAdFunc var_118
  loc_B5F98E: FLdPr var_118
  loc_B5F991: LateIdLdVar var_D4 DispID_1 0
  loc_B5F998: PopAd
  loc_B5F99A: FLdRfVar var_120
  loc_B5F99D: LitI4 -2
  loc_B5F9A2: LitI2_Byte 0
  loc_B5F9A4: LitI4 1
  loc_B5F9A9: FLdRfVar var_D4
  loc_B5F9AC: CStrVarTmp
  loc_B5F9AD: FStStrNoPop var_11C
  loc_B5F9B0: FLdRfVar var_9C
  loc_B5F9B3: NewIfNullPr IFileSystem3
  loc_B5F9B6: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5F9BB: FLdZeroAd var_120
  loc_B5F9BE: FStVarAdFunc
  loc_B5F9C2: FFree1Str var_11C
  loc_B5F9C5: FFree1Ad var_118
  loc_B5F9C8: FFree1Var var_D4 = ""
  loc_B5F9CD: FLdRfVar var_94
  loc_B5F9D0: VarLateMemLdVar var_D4, .ReadAll
  loc_B5F9D6: PopAd
  loc_B5F9D8: LitI4 0
  loc_B5F9DD: LitI4 -1
  loc_B5F9E2: LitVarStr var_130, vbCrLf
  loc_B5F9E7: FStVarCopyObj var_E4
  loc_B5F9EA: FLdRfVar var_E4
  loc_B5F9ED: FLdRfVar var_D4
  loc_B5F9F0: CStrVarVal var_11C
  loc_B5F9F4: FLdRfVar var_F4
  loc_B5F9F7: ImpAdCallFPR4  = Split(, , , )
  loc_B5F9FC: FLdRfVar var_F4
  loc_B5F9FF: CRefVarAry
  loc_B5FA01: PopAdLd4
  loc_B5FA02: LitI2_Byte 1
  loc_B5FA04: FnUBound
  loc_B5FA06: LitI4 3
  loc_B5FA0B: AddI4
  loc_B5FA0C: CR8I4
  loc_B5FA0D: CVarR4
  loc_B5FA11: PopAdLdVar
  loc_B5FA12: FLdPr Me
  loc_B5FA15: VCallAd Control_ID_ProgressBar
  loc_B5FA18: FStAdFunc var_118
  loc_B5FA1B: FLdPr var_118
  loc_B5FA1E: LateIdSt
  loc_B5FA23: FFree1Str var_11C
  loc_B5FA26: FFree1Ad var_118
  loc_B5FA29: FFreeVar var_D4 = "": var_E4 = ""
  loc_B5FA34: FLdRfVar var_94
  loc_B5FA37: LdPrVar
  loc_B5FA39: LateMemCall
  loc_B5FA41: FLdPr Me
  loc_B5FA44: VCallAd Control_ID_cdlAbrir
  loc_B5FA47: FStAdFunc var_118
  loc_B5FA4A: FLdPr var_118
  loc_B5FA4D: LateIdLdVar var_D4 DispID_1 0
  loc_B5FA54: PopAd
  loc_B5FA56: FLdRfVar var_120
  loc_B5FA59: LitI4 -2
  loc_B5FA5E: LitI2_Byte 0
  loc_B5FA60: LitI4 1
  loc_B5FA65: FLdRfVar var_D4
  loc_B5FA68: CStrVarTmp
  loc_B5FA69: FStStrNoPop var_11C
  loc_B5FA6C: FLdRfVar var_9C
  loc_B5FA6F: NewIfNullPr IFileSystem3
  loc_B5FA72: from_stack_5 = IFileSystem3.IFileSystem.OpenTextFile(from_stack_1v, from_stack_2v, from_stack_3b, from_stack_4v)
  loc_B5FA77: FLdZeroAd var_120
  loc_B5FA7A: FStVarAdFunc
  loc_B5FA7E: FFree1Str var_11C
  loc_B5FA81: FFree1Ad var_118
  loc_B5FA84: FFree1Var var_D4 = ""
  loc_B5FA89: LitVar_TRUE var_130
  loc_B5FA8C: PopAdLdVar
  loc_B5FA8D: FLdPr Me
  loc_B5FA90: VCallAd Control_ID_ProgressBar
  loc_B5FA93: FStAdFunc var_118
  loc_B5FA96: FLdPr var_118
  loc_B5FA99: LateIdSt
  loc_B5FA9E: FFree1Ad var_118
  loc_B5FAA3: On Error Resume Next
  loc_B5FAA8: FLdPr Me
  loc_B5FAAB: MemLdRfVar from_stack_1.global_52
  loc_B5FAAE: NewIfNullAd
  loc_B5FAB1: FStAd var_154 
  loc_B5FAB7: FLdRfVar var_94
  loc_B5FABA: VarLateMemLdVar var_D4, .AtEndOfStream
  loc_B5FAC0: CBoolVarNull
  loc_B5FAC2: NotI4
  loc_B5FAC3: FFree1Var var_D4 = ""
  loc_B5FAC6: BranchF loc_B60079
  loc_B5FACB: FLdRfVar var_94
  loc_B5FACE: VarLateMemLdVar var_E4, .Line
  loc_B5FAD4: FLdPr Me
  loc_B5FAD7: VCallAd Control_ID_ProgressBar
  loc_B5FADA: FStAdFunc var_118
  loc_B5FADD: FLdPr var_118
  loc_B5FAE0: LateIdLdVar var_D4 DispID_1 0
  loc_B5FAE7: CR8Var
  loc_B5FAE9: CVarR4
  loc_B5FAED: HardType
  loc_B5FAEE: LeVarBool
  loc_B5FAF0: FFree1Ad var_118
  loc_B5FAF3: FFreeVar var_D4 = ""
  loc_B5FAFA: BranchF loc_B5FB26
  loc_B5FAFF: FLdRfVar var_94
  loc_B5FB02: VarLateMemLdVar var_D4, .Line
  loc_B5FB08: CR8Var
  loc_B5FB0A: CVarR4
  loc_B5FB0E: PopAdLdVar
  loc_B5FB0F: FLdPr Me
  loc_B5FB12: VCallAd Control_ID_ProgressBar
  loc_B5FB15: FStAdFunc var_118
  loc_B5FB18: FLdPr var_118
  loc_B5FB1B: LateIdSt
  loc_B5FB20: FFree1Ad var_118
  loc_B5FB23: FFree1Var var_D4 = ""
  loc_B5FB28: FLdRfVar var_94
  loc_B5FB2B: VarLateMemLdVar var_D4, .ReadLine
  loc_B5FB31: CStrVarVal var_11C
  loc_B5FB35: ImpAdCallI2 Trim$()
  loc_B5FB3A: FStStr var_98
  loc_B5FB3D: FFree1Str var_11C
  loc_B5FB40: FFree1Var var_D4 = ""
  loc_B5FB45: ImpAdCallFPR4 DoEvents()
  loc_B5FB4C: ILdRf var_98
  loc_B5FB4F: LitStr vbNullString
  loc_B5FB52: NeStr
  loc_B5FB54: BranchF loc_B60072
  loc_B5FB59: LitI2_Byte 2
  loc_B5FB5B: CUI1I2
  loc_B5FB5D: FStUI1 var_9E
  loc_B5FB63: LitI4 1
  loc_B5FB68: ILdRf var_98
  loc_B5FB6B: LitStr ","
  loc_B5FB6E: LitI4 0
  loc_B5FB73: FnInStr4
  loc_B5FB75: CUI1I4
  loc_B5FB77: FStUI1 var_A0
  loc_B5FB7D: FLdUI1
  loc_B5FB81: CI2UI1
  loc_B5FB83: LitI2_Byte 3
  loc_B5FB85: SubI2
  loc_B5FB86: CVarI2 var_D4
  loc_B5FB89: FLdUI1
  loc_B5FB8D: CI4UI1
  loc_B5FB8E: ILdRf var_98
  loc_B5FB91: ImpAdCallI2 Mid$(, , )
  loc_B5FB96: FStStr var_A4
  loc_B5FB99: FFree1Var var_D4 = ""
  loc_B5FB9E: FLdUI1
  loc_B5FBA2: CI2UI1
  loc_B5FBA4: LitI2_Byte 2
  loc_B5FBA6: AddI2
  loc_B5FBA7: CUI1I2
  loc_B5FBA9: FStUI1 var_9E
  loc_B5FBAF: FLdUI1
  loc_B5FBB3: CI4UI1
  loc_B5FBB4: ILdRf var_98
  loc_B5FBB7: LitStr ","
  loc_B5FBBA: LitI4 0
  loc_B5FBBF: FnInStr4
  loc_B5FBC1: CUI1I4
  loc_B5FBC3: FStUI1 var_A0
  loc_B5FBC9: FLdUI1
  loc_B5FBCD: CI2UI1
  loc_B5FBCF: LitI2_Byte 1
  loc_B5FBD1: SubI2
  loc_B5FBD2: FLdUI1
  loc_B5FBD6: CI2UI1
  loc_B5FBD8: SubI2
  loc_B5FBD9: CVarI2 var_D4
  loc_B5FBDC: FLdUI1
  loc_B5FBE0: CI4UI1
  loc_B5FBE1: FLdRfVar var_98
  loc_B5FBE4: CVarRef
  loc_B5FBE9: FLdRfVar var_E4
  loc_B5FBEC: ImpAdCallFPR4  = Mid(, , )
  loc_B5FBF1: FLdRfVar var_E4
  loc_B5FBF4: FStVar var_C0
  loc_B5FBF8: FFree1Var var_D4 = ""
  loc_B5FBFD: LitI4 0
  loc_B5FC02: LitI4 -1
  loc_B5FC07: LitI4 1
  loc_B5FC0C: LitStr vbNullString
  loc_B5FC0F: LitStr """"
  loc_B5FC12: FLdRfVar var_C0
  loc_B5FC15: CStrVarVal var_11C
  loc_B5FC19: ImpAdCallI2 Replace(, , , , , )
  loc_B5FC1E: CVarStr var_D4
  loc_B5FC21: FStVar var_C0
  loc_B5FC25: FFree1Str var_11C
  loc_B5FC2A: LitI4 0
  loc_B5FC2F: LitI4 -1
  loc_B5FC34: LitI4 1
  loc_B5FC39: LitStr "-Ene-"
  loc_B5FC3C: LitStr "-Jan-"
  loc_B5FC3F: FLdRfVar var_C0
  loc_B5FC42: CStrVarVal var_11C
  loc_B5FC46: ImpAdCallI2 Replace(, , , , , )
  loc_B5FC4B: CVarStr var_D4
  loc_B5FC4E: FStVar var_C0
  loc_B5FC52: FFree1Str var_11C
  loc_B5FC57: FLdUI1
  loc_B5FC5B: CI2UI1
  loc_B5FC5D: LitI2_Byte 2
  loc_B5FC5F: AddI2
  loc_B5FC60: CUI1I2
  loc_B5FC62: FStUI1 var_9E
  loc_B5FC68: FLdUI1
  loc_B5FC6C: CI4UI1
  loc_B5FC6D: ILdRf var_98
  loc_B5FC70: LitStr ","
  loc_B5FC73: LitI4 0
  loc_B5FC78: FnInStr4
  loc_B5FC7A: CUI1I4
  loc_B5FC7C: FStUI1 var_A0
  loc_B5FC82: FLdUI1
  loc_B5FC86: CI2UI1
  loc_B5FC88: LitI2_Byte 1
  loc_B5FC8A: SubI2
  loc_B5FC8B: FLdUI1
  loc_B5FC8F: CI2UI1
  loc_B5FC91: SubI2
  loc_B5FC92: CVarI2 var_D4
  loc_B5FC95: FLdUI1
  loc_B5FC99: CI4UI1
  loc_B5FC9A: ILdRf var_98
  loc_B5FC9D: ImpAdCallI2 Mid$(, , )
  loc_B5FCA2: FStStr var_A8
  loc_B5FCA5: FFree1Var var_D4 = ""
  loc_B5FCAA: LitI4 0
  loc_B5FCAF: LitI4 -1
  loc_B5FCB4: LitI4 1
  loc_B5FCB9: LitStr vbNullString
  loc_B5FCBC: LitStr """"
  loc_B5FCBF: ILdRf var_A8
  loc_B5FCC2: ImpAdCallI2 Replace(, , , , , )
  loc_B5FCC7: FStStr var_A8
  loc_B5FCCC: FLdUI1
  loc_B5FCD0: CI2UI1
  loc_B5FCD2: LitI2_Byte 2
  loc_B5FCD4: AddI2
  loc_B5FCD5: CUI1I2
  loc_B5FCD7: FStUI1 var_9E
  loc_B5FCDD: FLdUI1
  loc_B5FCE1: CI4UI1
  loc_B5FCE2: ILdRf var_98
  loc_B5FCE5: LitStr ","
  loc_B5FCE8: LitI4 0
  loc_B5FCED: FnInStr4
  loc_B5FCEF: CUI1I4
  loc_B5FCF1: FStUI1 var_A0
  loc_B5FCF7: FLdUI1
  loc_B5FCFB: CI2UI1
  loc_B5FCFD: LitI2_Byte 1
  loc_B5FCFF: SubI2
  loc_B5FD00: FLdUI1
  loc_B5FD04: CI2UI1
  loc_B5FD06: SubI2
  loc_B5FD07: CVarI2 var_D4
  loc_B5FD0A: FLdUI1
  loc_B5FD0E: CI4UI1
  loc_B5FD0F: ILdRf var_98
  loc_B5FD12: ImpAdCallI2 Mid$(, , )
  loc_B5FD17: FStStr var_AC
  loc_B5FD1A: FFree1Var var_D4 = ""
  loc_B5FD1F: FLdUI1
  loc_B5FD23: CI2UI1
  loc_B5FD25: LitI2_Byte 2
  loc_B5FD27: AddI2
  loc_B5FD28: CUI1I2
  loc_B5FD2A: FStUI1 var_9E
  loc_B5FD30: FLdUI1
  loc_B5FD34: CI4UI1
  loc_B5FD35: ILdRf var_98
  loc_B5FD38: LitStr ","
  loc_B5FD3B: LitI4 0
  loc_B5FD40: FnInStr4
  loc_B5FD42: CUI1I4
  loc_B5FD44: FStUI1 var_A0
  loc_B5FD4A: FLdUI1
  loc_B5FD4E: CI2UI1
  loc_B5FD50: LitI2_Byte 1
  loc_B5FD52: SubI2
  loc_B5FD53: FLdUI1
  loc_B5FD57: CI2UI1
  loc_B5FD59: SubI2
  loc_B5FD5A: CVarI2 var_D4
  loc_B5FD5D: FLdUI1
  loc_B5FD61: CI4UI1
  loc_B5FD62: ILdRf var_98
  loc_B5FD65: ImpAdCallI2 Mid$(, , )
  loc_B5FD6A: FStStr var_B0
  loc_B5FD6D: FFree1Var var_D4 = ""
  loc_B5FD72: LitI4 0
  loc_B5FD77: LitI4 -1
  loc_B5FD7C: LitI4 1
  loc_B5FD81: LitStr vbNullString
  loc_B5FD84: LitStr """"
  loc_B5FD87: ILdRf var_B0
  loc_B5FD8A: ImpAdCallI2 Replace(, , , , , )
  loc_B5FD8F: FStStr var_B0
  loc_B5FD94: FLdRfVar var_A8
  loc_B5FD97: CVarRef
  loc_B5FD9C: ImpAdCallI2 IsNumeric()
  loc_B5FDA1: FLdRfVar var_C0
  loc_B5FDA4: ImpAdCallI2 IsDate()
  loc_B5FDA9: AndI4
  loc_B5FDAA: BranchF loc_B6006E
  loc_B5FDAF: ILdRf var_B0
  loc_B5FDB2: CR8Str
  loc_B5FDB4: LitI2_Byte 0
  loc_B5FDB6: CR8I2
  loc_B5FDB7: LtR8
  loc_B5FDB8: BranchF loc_B5FF18
  loc_B5FDBD: LitI4 0
  loc_B5FDC2: LitI4 -1
  loc_B5FDC7: LitI4 1
  loc_B5FDCC: LitStr "."
  loc_B5FDCF: LitStr ","
  loc_B5FDD2: ILdRf var_B0
  loc_B5FDD5: ImpAdCallI2 Replace(, , , , , )
  loc_B5FDDA: FStStr var_32C
  loc_B5FDDD: LitStr "INSERT IGNORE INTO moviextracto (PeriInfo,CodiBanc,NumeMoba,FechMoba,DebeMoba,HabeMoba,DetaMoba,AutoMoex,AltaUsua)"
  loc_B5FDE0: LitStr " VALUES("
  loc_B5FDE3: ConcatStr
  loc_B5FDE4: CVarStr var_E4
  loc_B5FDE7: FLdRfVar var_C0
  loc_B5FDEA: FLdRfVar var_D4
  loc_B5FDED: ImpAdCallFPR4  = Year()
  loc_B5FDF2: FLdRfVar var_D4
  loc_B5FDF5: ConcatVar var_F4
  loc_B5FDF9: LitVarStr var_130, ","
  loc_B5FDFE: ConcatVar var_104
  loc_B5FE02: FLdPr Me
  loc_B5FE05: VCallAd Control_ID_CodiBancMsk
  loc_B5FE08: FStAdFunc var_118
  loc_B5FE0B: FLdPr var_118
  loc_B5FE0E: LateIdLdVar var_114 DispID_22 0
  loc_B5FE15: CStrVarTmp
  loc_B5FE16: CVarStr var_164
  loc_B5FE19: ConcatVar var_174
  loc_B5FE1D: LitVarStr var_140, ","
  loc_B5FE22: ConcatVar var_184
  loc_B5FE26: LitI4 7
  loc_B5FE2B: FLdRfVar var_A8
  loc_B5FE2E: CVarRef
  loc_B5FE33: FLdRfVar var_194
  loc_B5FE36: ImpAdCallFPR4  = Right(, )
  loc_B5FE3B: FLdRfVar var_194
  loc_B5FE3E: ConcatVar var_1A4
  loc_B5FE42: LitVarStr var_1B4, ","
  loc_B5FE47: ConcatVar var_1C4
  loc_B5FE4B: LitI4 1
  loc_B5FE50: LitI4 1
  loc_B5FE55: LitVarStr var_1D4, "'yyyy-mm-dd'"
  loc_B5FE5A: FStVarCopyObj var_1E4
  loc_B5FE5D: FLdRfVar var_1E4
  loc_B5FE60: FLdRfVar var_C0
  loc_B5FE63: ImpAdCallI2 Format$(, )
  loc_B5FE68: CVarStr var_1F4
  loc_B5FE6B: ConcatVar var_204
  loc_B5FE6F: LitVarStr var_214, ","
  loc_B5FE74: ConcatVar var_224
  loc_B5FE78: LitVarStr var_234, "0,"
  loc_B5FE7D: ConcatVar var_244
  loc_B5FE81: LitVar_Missing var_264
  loc_B5FE84: LitI4 2
  loc_B5FE89: FLdZeroAd var_32C
  loc_B5FE8C: FStStrNoPop var_11C
  loc_B5FE8F: ImpAdCallI2 Mid$(, , )
  loc_B5FE94: CVarStr var_274
  loc_B5FE97: ConcatVar var_284
  loc_B5FE9B: LitVarStr var_294, ",'"
  loc_B5FEA0: ConcatVar var_2A4
  loc_B5FEA4: ILdRf var_A4
  loc_B5FEA7: CVarStr var_2B4
  loc_B5FEAA: ConcatVar var_2C4
  loc_B5FEAE: LitVarStr var_2D4, "',1,'"
  loc_B5FEB3: ConcatVar var_2E4
  loc_B5FEB7: ImpAdLdI4 MemVar_C3D03C
  loc_B5FEBA: CVarStr var_2F4
  loc_B5FEBD: ConcatVar var_304
  loc_B5FEC1: LitVarStr var_314, "');"
  loc_B5FEC6: ConcatVar var_324
  loc_B5FECA: CStrVarVal var_328
  loc_B5FECE: FLdPr var_154
  loc_B5FED1: Call clsmoviextracto.RedefineRS(from_stack_1v)
  loc_B5FED6: FFreeStr var_11C = "": var_328 = ""
  loc_B5FEDF: FFree1Ad var_118
  loc_B5FEE2: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_104 = "": var_164 = "": var_174 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1E4 = "": var_1C4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_264 = "": var_244 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = "": var_304 = ""
  loc_B5FF15: Branch loc_B60069
  loc_B5FF1C: LitI4 0
  loc_B5FF21: LitI4 -1
  loc_B5FF26: LitI4 1
  loc_B5FF2B: LitStr "."
  loc_B5FF2E: LitStr ","
  loc_B5FF31: ILdRf var_B0
  loc_B5FF34: ImpAdCallI2 Replace(, , , , , )
  loc_B5FF39: FStStr var_32C
  loc_B5FF3C: LitStr "INSERT IGNORE INTO moviextracto (PeriInfo,CodiBanc,NumeMoba,FechMoba,DebeMoba,HabeMoba,DetaMoba,AutoMoex,AltaUsua)"
  loc_B5FF3F: LitStr " VALUES("
  loc_B5FF42: ConcatStr
  loc_B5FF43: CVarStr var_E4
  loc_B5FF46: FLdRfVar var_C0
  loc_B5FF49: FLdRfVar var_D4
  loc_B5FF4C: ImpAdCallFPR4  = Year()
  loc_B5FF51: FLdRfVar var_D4
  loc_B5FF54: ConcatVar var_F4
  loc_B5FF58: LitVarStr var_130, ","
  loc_B5FF5D: ConcatVar var_104
  loc_B5FF61: FLdPr Me
  loc_B5FF64: VCallAd Control_ID_CodiBancMsk
  loc_B5FF67: FStAdFunc var_118
  loc_B5FF6A: FLdPr var_118
  loc_B5FF6D: LateIdLdVar var_114 DispID_22 0
  loc_B5FF74: CStrVarTmp
  loc_B5FF75: CVarStr var_164
  loc_B5FF78: ConcatVar var_174
  loc_B5FF7C: LitVarStr var_140, ","
  loc_B5FF81: ConcatVar var_184
  loc_B5FF85: LitI4 7
  loc_B5FF8A: FLdRfVar var_A8
  loc_B5FF8D: CVarRef
  loc_B5FF92: FLdRfVar var_194
  loc_B5FF95: ImpAdCallFPR4  = Right(, )
  loc_B5FF9A: FLdRfVar var_194
  loc_B5FF9D: ConcatVar var_1A4
  loc_B5FFA1: LitVarStr var_1B4, ","
  loc_B5FFA6: ConcatVar var_1C4
  loc_B5FFAA: LitI4 1
  loc_B5FFAF: LitI4 1
  loc_B5FFB4: LitVarStr var_1D4, "'yyyy-mm-dd'"
  loc_B5FFB9: FStVarCopyObj var_1E4
  loc_B5FFBC: FLdRfVar var_1E4
  loc_B5FFBF: FLdRfVar var_C0
  loc_B5FFC2: ImpAdCallI2 Format$(, )
  loc_B5FFC7: CVarStr var_1F4
  loc_B5FFCA: ConcatVar var_204
  loc_B5FFCE: LitVarStr var_214, ","
  loc_B5FFD3: ConcatVar var_224
  loc_B5FFD7: LitVar_Missing var_244
  loc_B5FFDA: LitI4 1
  loc_B5FFDF: FLdZeroAd var_32C
  loc_B5FFE2: FStStrNoPop var_11C
  loc_B5FFE5: ImpAdCallI2 Mid$(, , )
  loc_B5FFEA: CVarStr var_264
  loc_B5FFED: ConcatVar var_274
  loc_B5FFF1: LitVarStr var_254, ",0,'"
  loc_B5FFF6: ConcatVar var_284
  loc_B5FFFA: ILdRf var_A4
  loc_B5FFFD: CVarStr var_294
  loc_B60000: ConcatVar var_2A4
  loc_B60004: LitVarStr var_2B4, "',1,'"
  loc_B60009: ConcatVar var_2C4
  loc_B6000D: ImpAdLdI4 MemVar_C3D03C
  loc_B60010: CVarStr var_2D4
  loc_B60013: ConcatVar var_2E4
  loc_B60017: LitVarStr var_2F4, "');"
  loc_B6001C: ConcatVar var_304
  loc_B60020: CStrVarVal var_328
  loc_B60024: FLdPr var_154
  loc_B60027: Call clsmoviextracto.RedefineRS(from_stack_1v)
  loc_B6002C: FFreeStr var_11C = "": var_328 = ""
  loc_B60035: FFree1Ad var_118
  loc_B60038: FFreeVar var_E4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_104 = "": var_164 = "": var_174 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1E4 = "": var_1C4 = "": var_1F4 = "": var_204 = "": var_244 = "": var_224 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = "": var_2C4 = "": var_2E4 = ""
  loc_B6006B: Branch loc_B60070
  loc_B60076: Branch loc_B5FAB5
  loc_B6007B: FLdPr Me
  loc_B6007E: VCallAd Control_ID_FecoMobaMsk
  loc_B60081: FStAdFunc var_120
  loc_B60084: FLdPr var_120
  loc_B60087: LateIdLdVar var_E4 DispID_15 0
  loc_B6008E: PopAd
  loc_B60090: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B60093: LitStr " CREATE TEMPORARY TABLE tmovi"
  loc_B60096: ConcatStr
  loc_B60097: FStStrNoPop var_11C
  loc_B6009A: LitStr " SELECT mb.*"
  loc_B6009D: ConcatStr
  loc_B6009E: FStStrNoPop var_328
  loc_B600A1: LitStr " FROM movibanco mb"
  loc_B600A4: ConcatStr
  loc_B600A5: FStStrNoPop var_32C
  loc_B600A8: LitStr " INNER JOIN moviextracto me"
  loc_B600AB: ConcatStr
  loc_B600AC: FStStrNoPop var_330
  loc_B600AF: LitStr " ON me.CodiBanc = mb.CodiBanc"
  loc_B600B2: ConcatStr
  loc_B600B3: FStStrNoPop var_334
  loc_B600B6: LitStr " AND me.HabeMoba != 0"
  loc_B600B9: ConcatStr
  loc_B600BA: FStStrNoPop var_338
  loc_B600BD: LitStr " AND Right(me.NumeMoba,4) = Right(mb.NumeMoba,4)"
  loc_B600C0: ConcatStr
  loc_B600C1: FStStrNoPop var_33C
  loc_B600C4: LitStr " AND me.HabeMoba = mb.HabeMoba"
  loc_B600C7: ConcatStr
  loc_B600C8: FStStrNoPop var_340
  loc_B600CB: LitStr " AND me.FecoMoba IS NULL AND (me.FechMoba >= mb.FechMoba OR MONTH(me.FechMoba) = MONTH(mb.FechMoba) )"
  loc_B600CE: ConcatStr
  loc_B600CF: FStStrNoPop var_344
  loc_B600D2: LitStr " WHERE (mb.PeriInfo = "
  loc_B600D5: ConcatStr
  loc_B600D6: FStStrNoPop var_348
  loc_B600D9: ImpAdLdI2 MemVar_C3D064
  loc_B600DC: LitI2_Byte 1
  loc_B600DE: SubI2
  loc_B600DF: CStrUI1
  loc_B600E1: FStStrNoPop var_34C
  loc_B600E4: ConcatStr
  loc_B600E5: FStStrNoPop var_350
  loc_B600E8: LitStr " OR mb.PeriInfo = "
  loc_B600EB: ConcatStr
  loc_B600EC: FStStrNoPop var_354
  loc_B600EF: ImpAdLdI2 MemVar_C3D064
  loc_B600F2: CStrUI1
  loc_B600F4: FStStrNoPop var_358
  loc_B600F7: ConcatStr
  loc_B600F8: FStStrNoPop var_35C
  loc_B600FB: LitStr ")"
  loc_B600FE: ConcatStr
  loc_B600FF: FStStrNoPop var_360
  loc_B60102: LitStr " AND mb.CodiTimb < 5"
  loc_B60105: ConcatStr
  loc_B60106: FStStrNoPop var_364
  loc_B60109: LitStr " AND mb.CodiBanc = "
  loc_B6010C: ConcatStr
  loc_B6010D: FStStrNoPop var_368
  loc_B60110: FLdPr Me
  loc_B60113: VCallAd Control_ID_CodiBancMsk
  loc_B60116: FStAdFunc var_118
  loc_B60119: FLdPr var_118
  loc_B6011C: LateIdLdVar var_D4 DispID_22 0
  loc_B60123: CStrVarTmp
  loc_B60124: FStStrNoPop var_36C
  loc_B60127: ConcatStr
  loc_B60128: FStStrNoPop var_370
  loc_B6012B: LitStr " AND mb.FechMoba <= "
  loc_B6012E: ConcatStr
  loc_B6012F: FStStrNoPop var_374
  loc_B60132: LitI4 1
  loc_B60137: LitI4 1
  loc_B6013C: LitVarStr var_130, "'yyyy-mm-dd'"
  loc_B60141: FStVarCopyObj var_104
  loc_B60144: FLdRfVar var_104
  loc_B60147: FLdRfVar var_E4
  loc_B6014A: CStrVarTmp
  loc_B6014B: CVarStr var_F4
  loc_B6014E: ImpAdCallI2 Format$(, )
  loc_B60153: FStStrNoPop var_378
  loc_B60156: ConcatStr
  loc_B60157: FStStrNoPop var_37C
  loc_B6015A: LitStr " AND mb.FecoMoba IS NULL;"
  loc_B6015D: ConcatStr
  loc_B6015E: FStStrNoPop var_380
  loc_B60161: FLdPr var_154
  loc_B60164: Call clsmoviextracto.RedefineRS(from_stack_1v)
  loc_B60169: FFreeStr var_11C = "": var_328 = "": var_32C = "": var_330 = "": var_334 = "": var_338 = "": var_33C = "": var_340 = "": var_344 = "": var_348 = "": var_34C = "": var_350 = "": var_354 = "": var_358 = "": var_35C = "": var_360 = "": var_364 = "": var_368 = "": var_36C = "": var_370 = "": var_374 = "": var_378 = "": var_37C = ""
  loc_B6019C: FFreeAd var_118 = ""
  loc_B601A3: FFreeVar var_D4 = "": var_E4 = "": var_F4 = ""
  loc_B601B0: LitStr "SELECT tmovi.*"
  loc_B601B3: LitStr " FROM tmovi;"
  loc_B601B6: ConcatStr
  loc_B601B7: FStStrNoPop var_11C
  loc_B601BA: FLdPr var_154
  loc_B601BD: Call clsmoviextracto.RedefineRS(from_stack_1v)
  loc_B601C2: FFree1Str var_11C
  loc_B601C7: FLdRfVar var_384
  loc_B601CA: FLdPr var_154
  loc_B601CD: from_stack_1 = clsmoviextracto.RecordCount
  loc_B601D2: ILdRf var_384
  loc_B601D5: LitI4 0
  loc_B601DA: EqI4
  loc_B601DB: BranchF loc_B60267
  loc_B601E0: LitI4 0
  loc_B601E5: LitStr "No existen coincidencias con los datos ingresados."
  loc_B601E8: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B601EF: LitI4 0
  loc_B601F4: LitI4 4
  loc_B601F9: FLdRfVar var_C4
  loc_B601FC: Redim
  loc_B60206: FLdPr Me
  loc_B60209: VCallAd Control_ID_CodiBancMsk
  loc_B6020C: CVarAd
  loc_B60210: ParmAry1St
  loc_B60216: FLdPr Me
  loc_B60219: VCallAd Control_ID_FecoMobaMsk
  loc_B6021C: CVarAd
  loc_B60220: ParmAry1St
  loc_B60226: FLdPr Me
  loc_B60229: VCallAd Control_ID_cmdArchivo
  loc_B6022C: CVarAd
  loc_B60230: ParmAry1St
  loc_B60236: FLdPr Me
  loc_B60239: VCallAd Control_ID_cmdImportar
  loc_B6023C: CVarAd
  loc_B60240: ParmAry1St
  loc_B60246: FLdPr Me
  loc_B60249: VCallAd Control_ID_cmdSalir
  loc_B6024C: CVarAd
  loc_B60250: ParmAry1St
  loc_B60256: FLdRfVar var_C4
  loc_B60259: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B6025E: FLdRfVar var_C4
  loc_B60261: Erase
  loc_B60264: Branch loc_B60353
  loc_B6026B: LitI4 0
  loc_B60270: LitI4 1
  loc_B60275: FLdRfVar var_C4
  loc_B60278: Redim
  loc_B60282: FLdPr Me
  loc_B60285: MemLdRfVar from_stack_1.global_52
  loc_B60288: NewIfNullAd
  loc_B6028B: FStAd var_118 
  loc_B6028F: FLdRfVar var_118
  loc_B60292: CVarRef
  loc_B60297: ParmAry1St
  loc_B6029D: FLdPr Me
  loc_B602A0: VCallAd Control_ID_dgdConci
  loc_B602A3: CVarAd
  loc_B602A7: ParmAry1St
  loc_B602AD: FLdRfVar var_C4
  loc_B602B0: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_B602B5: ILdRf var_118
  loc_B602B8: CastAd
  loc_B602BB: FLdPr Me
  loc_B602BE: MemStAdFunc
  loc_B602C2: FLdRfVar var_C4
  loc_B602C5: Erase
  loc_B602C6: FFree1Ad var_118
  loc_B602CB: FLdRfVar var_384
  loc_B602CE: FLdPr Me
  loc_B602D1: MemLdRfVar from_stack_1.global_52
  loc_B602D4: NewIfNullPr clsmoviextracto
  loc_B602D7: from_stack_1 = clsmoviextracto.RecordCount
  loc_B602DC: ILdRf var_384
  loc_B602DF: CStrI4
  loc_B602E1: FStStrNoPop var_11C
  loc_B602E4: LitStr " coincidencias encontradas..."
  loc_B602E7: ConcatStr
  loc_B602E8: CVarStr var_D4
  loc_B602EB: PopAdLdVar
  loc_B602EC: FLdPr Me
  loc_B602EF: VCallAd Control_ID_dgdConci
  loc_B602F2: FStAdFunc var_118
  loc_B602F5: FLdPr var_118
  loc_B602F8: LateIdSt
  loc_B602FD: FFree1Str var_11C
  loc_B60300: FFree1Ad var_118
  loc_B60303: FFree1Var var_D4 = ""
  loc_B60308: LitNothing
  loc_B6030A: FStAd var_154 
  loc_B60310: LitI4 0
  loc_B60315: LitI4 1
  loc_B6031A: FLdRfVar var_C4
  loc_B6031D: Redim
  loc_B60327: FLdPr Me
  loc_B6032A: VCallAd Control_ID_cmdConfirmar
  loc_B6032D: CVarAd
  loc_B60331: ParmAry1St
  loc_B60337: FLdPr Me
  loc_B6033A: VCallAd Control_ID_cmdSalir
  loc_B6033D: CVarAd
  loc_B60341: ParmAry1St
  loc_B60347: FLdRfVar var_C4
  loc_B6034A: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B6034F: FLdRfVar var_C4
  loc_B60352: Erase
  loc_B60355: FLdRfVar var_94
  loc_B60358: LdPrVar
  loc_B6035A: LateMemCall
  loc_B60362: ExitProcHresult
End Sub

Private Sub dgdConci_UnknownEvent_0 '957F08
  'Data Table: 434D54
  loc_957EF0: FLdPr Me
  loc_957EF3: VCallAd Control_ID_dgdConci
  loc_957EF6: FStAdFunc var_88
  loc_957EF9: FLdRfVar var_88
  loc_957EFC: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_957F01: FFree1Ad var_88
  loc_957F04: ExitProcHresult
End Sub

Private Sub dgdConci_UnknownEvent_1 '95811C
  'Data Table: 434D54
  loc_958104: FLdPr Me
  loc_958107: VCallAd Control_ID_dgdConci
  loc_95810A: FStAdFunc var_88
  loc_95810D: FLdRfVar var_88
  loc_958110: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_958115: FFree1Ad var_88
  loc_958118: ExitProcHresult
End Sub

Private Sub cmdConfirmar_Click() 'A3C60C
  'Data Table: 434D54
  loc_A3C444: LitI4 0
  loc_A3C449: LitI4 2
  loc_A3C44E: FLdRfVar var_8C
  loc_A3C451: Redim
  loc_A3C45B: FLdPr Me
  loc_A3C45E: VCallAd Control_ID_dgdConci
  loc_A3C461: CVarAd
  loc_A3C465: ParmAry1St
  loc_A3C46B: FLdPr Me
  loc_A3C46E: VCallAd Control_ID_cmdConfirmar
  loc_A3C471: CVarAd
  loc_A3C475: ParmAry1St
  loc_A3C47B: FLdPr Me
  loc_A3C47E: VCallAd Control_ID_cmdSalir
  loc_A3C481: CVarAd
  loc_A3C485: ParmAry1St
  loc_A3C48B: FLdRfVar var_8C
  loc_A3C48E: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A3C493: FLdRfVar var_8C
  loc_A3C496: Erase
  loc_A3C497: FLdPr Me
  loc_A3C49A: MemLdRfVar from_stack_1.global_52
  loc_A3C49D: NewIfNullAd
  loc_A3C4A0: FStAd var_C0 
  loc_A3C4A4: FLdPr Me
  loc_A3C4A7: VCallAd Control_ID_FecoMobaMsk
  loc_A3C4AA: FStAdFunc var_110
  loc_A3C4AD: FLdPr var_110
  loc_A3C4B0: LateIdLdVar var_AC DispID_15 0
  loc_A3C4B7: PopAd
  loc_A3C4B9: LitStr "UPDATE movibanco mb"
  loc_A3C4BC: LitStr " INNER JOIN moviextracto me"
  loc_A3C4BF: ConcatStr
  loc_A3C4C0: FStStrNoPop var_C4
  loc_A3C4C3: LitStr " ON me.CodiBanc = mb.CodiBanc"
  loc_A3C4C6: ConcatStr
  loc_A3C4C7: FStStrNoPop var_C8
  loc_A3C4CA: LitStr " AND me.HabeMoba != 0"
  loc_A3C4CD: ConcatStr
  loc_A3C4CE: FStStrNoPop var_CC
  loc_A3C4D1: LitStr " AND Right(me.NumeMoba,4) = Right(mb.NumeMoba,4)"
  loc_A3C4D4: ConcatStr
  loc_A3C4D5: FStStrNoPop var_D0
  loc_A3C4D8: LitStr " AND me.HabeMoba = mb.HabeMoba"
  loc_A3C4DB: ConcatStr
  loc_A3C4DC: FStStrNoPop var_D4
  loc_A3C4DF: LitStr " AND me.FecoMoba IS NULL AND (me.FechMoba >= mb.FechMoba OR MONTH(me.FechMoba) = MONTH(mb.FechMoba) )"
  loc_A3C4E2: ConcatStr
  loc_A3C4E3: FStStrNoPop var_D8
  loc_A3C4E6: LitStr " SET mb.FecoMoba=me.FechMoba, mb.FehocoMoba=Now(), me.FecoMoba=me.FechMoba, me.FehocoMoba=Now()"
  loc_A3C4E9: ConcatStr
  loc_A3C4EA: FStStrNoPop var_DC
  loc_A3C4ED: LitStr " WHERE (mb.PeriInfo = "
  loc_A3C4F0: ConcatStr
  loc_A3C4F1: FStStrNoPop var_E0
  loc_A3C4F4: ImpAdLdI2 MemVar_C3D064
  loc_A3C4F7: LitI2_Byte 1
  loc_A3C4F9: SubI2
  loc_A3C4FA: CStrUI1
  loc_A3C4FC: FStStrNoPop var_E4
  loc_A3C4FF: ConcatStr
  loc_A3C500: FStStrNoPop var_E8
  loc_A3C503: LitStr " OR mb.PeriInfo = "
  loc_A3C506: ConcatStr
  loc_A3C507: FStStrNoPop var_EC
  loc_A3C50A: ImpAdLdI2 MemVar_C3D064
  loc_A3C50D: CStrUI1
  loc_A3C50F: FStStrNoPop var_F0
  loc_A3C512: ConcatStr
  loc_A3C513: FStStrNoPop var_F4
  loc_A3C516: LitStr ")"
  loc_A3C519: ConcatStr
  loc_A3C51A: FStStrNoPop var_F8
  loc_A3C51D: LitStr " AND mb.CodiTimb < 5"
  loc_A3C520: ConcatStr
  loc_A3C521: FStStrNoPop var_FC
  loc_A3C524: LitStr " AND mb.CodiBanc = "
  loc_A3C527: ConcatStr
  loc_A3C528: FStStrNoPop var_104
  loc_A3C52B: FLdPr Me
  loc_A3C52E: VCallAd Control_ID_CodiBancMsk
  loc_A3C531: FStAdFunc var_100
  loc_A3C534: FLdPr var_100
  loc_A3C537: LateIdLdVar var_9C DispID_22 0
  loc_A3C53E: CStrVarTmp
  loc_A3C53F: FStStrNoPop var_108
  loc_A3C542: ConcatStr
  loc_A3C543: FStStrNoPop var_10C
  loc_A3C546: LitStr " AND mb.FechMoba <= "
  loc_A3C549: ConcatStr
  loc_A3C54A: FStStrNoPop var_134
  loc_A3C54D: LitI4 1
  loc_A3C552: LitI4 1
  loc_A3C557: LitVarStr var_120, "'yyyy-mm-dd'"
  loc_A3C55C: FStVarCopyObj var_130
  loc_A3C55F: FLdRfVar var_130
  loc_A3C562: FLdRfVar var_AC
  loc_A3C565: CStrVarTmp
  loc_A3C566: CVarStr var_BC
  loc_A3C569: ImpAdCallI2 Format$(, )
  loc_A3C56E: FStStrNoPop var_138
  loc_A3C571: ConcatStr
  loc_A3C572: FStStrNoPop var_13C
  loc_A3C575: LitStr " AND mb.FecoMoba IS NULL;"
  loc_A3C578: ConcatStr
  loc_A3C579: FStStrNoPop var_140
  loc_A3C57C: FLdPr var_C0
  loc_A3C57F: Call clsmoviextracto.RedefineRS(from_stack_1v)
  loc_A3C584: FFreeStr var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_104 = "": var_108 = "": var_10C = "": var_134 = "": var_138 = "": var_13C = ""
  loc_A3C5B3: FFreeAd var_100 = ""
  loc_A3C5BA: FFreeVar var_9C = "": var_AC = "": var_BC = ""
  loc_A3C5C5: LitI4 0
  loc_A3C5CA: LitStr "Proceso terminado..."
  loc_A3C5CD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A3C5D2: LitNothing
  loc_A3C5D4: FStAd var_C0 
  loc_A3C5D8: LitI4 0
  loc_A3C5DD: LitI4 0
  loc_A3C5E2: FLdRfVar var_8C
  loc_A3C5E5: Redim
  loc_A3C5EF: FLdPr Me
  loc_A3C5F2: VCallAd Control_ID_cmdSalir
  loc_A3C5F5: CVarAd
  loc_A3C5F9: ParmAry1St
  loc_A3C5FF: FLdRfVar var_8C
  loc_A3C602: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A3C607: FLdRfVar var_8C
  loc_A3C60A: Erase
  loc_A3C60B: ExitProcHresult
End Sub

Private Sub CodiBancMsk_UnknownEvent_0 '951348
  'Data Table: 434D54
  loc_951334: FLdPr Me
  loc_951337: VCallAd Control_ID_CodiBancMsk
  loc_95133A: CVarAd
  loc_95133E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_951343: FFree1Var var_94 = ""
  loc_951346: ExitProcHresult
End Sub

Private Function CodiBancMsk_UnknownEvent_8(arg_C) '9FB818
  'Data Table: 434D54
  loc_9FB6DC: FLdPr Me
  loc_9FB6DF: VCallAd Control_ID_CodiBancMsk
  loc_9FB6E2: FStAdFunc var_88
  loc_9FB6E5: FLdPr var_88
  loc_9FB6E8: LateIdLdVar var_98 DispID_13 -32767
  loc_9FB6EF: CBoolVar
  loc_9FB6F1: FFree1Ad var_88
  loc_9FB6F4: FFree1Var var_98 = ""
  loc_9FB6F7: BranchF loc_9FB815
  loc_9FB6FA: FLdPr Me
  loc_9FB6FD: VCallAd Control_ID_CodiBancMsk
  loc_9FB700: FStAdFunc var_88
  loc_9FB703: FLdPr var_88
  loc_9FB706: LateIdLdVar var_98 DispID_22 0
  loc_9FB70D: PopAd
  loc_9FB70F: LitI4 0
  loc_9FB714: FStStrCopy var_A4
  loc_9FB717: FLdRfVar var_A4
  loc_9FB71A: FLdPr Me
  loc_9FB71D: MemLdRfVar from_stack_1.global_64
  loc_9FB720: NewIfNullRf
  loc_9FB724: FLdRfVar var_98
  loc_9FB727: CStrVarTmp
  loc_9FB728: FStStrNoPop var_A0
  loc_9FB72B: ImpAdLdI2 MemVar_C3D064
  loc_9FB72E: CStrUI1
  loc_9FB730: FStStrNoPop var_9C
  loc_9FB733: ImpAdCallI2 Proc_259_5_B268F0(, , , )
  loc_9FB738: FFreeStr var_9C = "": var_A0 = ""
  loc_9FB741: FFree1Ad var_88
  loc_9FB744: FFree1Var var_98 = ""
  loc_9FB747: BranchF loc_9FB7BA
  loc_9FB74A: ILdI2 arg_C
  loc_9FB74D: NotI4
  loc_9FB74E: BranchF loc_9FB7B7
  loc_9FB751: FLdRfVar var_9C
  loc_9FB754: FLdPr Me
  loc_9FB757: MemLdRfVar from_stack_1.global_64
  loc_9FB75A: NewIfNullPr tblbanco
  loc_9FB75D: from_stack_1v = tblbanco.ConautBancGet()
  loc_9FB762: ILdRf var_9C
  loc_9FB765: LitStr "0"
  loc_9FB768: EqStr
  loc_9FB76A: FFree1Str var_9C
  loc_9FB76D: BranchF loc_9FB7B7
  loc_9FB770: LitStr "El Banco no está habilitado para importar el Txt. Verifique..."
  loc_9FB773: FLdPr Me
  loc_9FB776: MemStStrCopy
  loc_9FB77A: FLdPr Me
  loc_9FB77D: VCallAd Control_ID_CodiBancMsk
  loc_9FB780: FStAdFunc var_B0
  loc_9FB783: FLdPr Me
  loc_9FB786: VCallAd Control_ID_DetaBancLbl
  loc_9FB789: FStAdFunc var_AC
  loc_9FB78C: FLdRfVar var_AC
  loc_9FB78F: FLdZeroAd var_B0
  loc_9FB792: FStAdFuncNoPop
  loc_9FB795: CastAd
  loc_9FB798: FStAdFunc var_A8
  loc_9FB79B: FLdRfVar var_A8
  loc_9FB79E: FLdPr Me
  loc_9FB7A1: MemLdRfVar from_stack_1.global_60
  loc_9FB7A4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FB7A9: IStI2 arg_C
  loc_9FB7AC: FFreeAd var_88 = "": var_A8 = "": var_AC = ""
  loc_9FB7B7: Branch loc_9FB815
  loc_9FB7BA: FLdRfVar var_9C
  loc_9FB7BD: FLdPr Me
  loc_9FB7C0: MemLdRfVar from_stack_1.global_64
  loc_9FB7C3: NewIfNullPr tblbanco
  loc_9FB7C6: from_stack_1v = tblbanco.MsgErrorGet()
  loc_9FB7CB: ILdRf var_9C
  loc_9FB7CE: FLdPr Me
  loc_9FB7D1: MemStStrCopy
  loc_9FB7D5: FFree1Str var_9C
  loc_9FB7D8: FLdPr Me
  loc_9FB7DB: VCallAd Control_ID_CodiBancMsk
  loc_9FB7DE: FStAdFunc var_B0
  loc_9FB7E1: FLdPr Me
  loc_9FB7E4: VCallAd Control_ID_DetaBancLbl
  loc_9FB7E7: FStAdFunc var_AC
  loc_9FB7EA: FLdRfVar var_AC
  loc_9FB7ED: FLdZeroAd var_B0
  loc_9FB7F0: FStAdFuncNoPop
  loc_9FB7F3: CastAd
  loc_9FB7F6: FStAdFunc var_A8
  loc_9FB7F9: FLdRfVar var_A8
  loc_9FB7FC: FLdPr Me
  loc_9FB7FF: MemLdRfVar from_stack_1.global_60
  loc_9FB802: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9FB807: IStI2 arg_C
  loc_9FB80A: FFreeAd var_88 = "": var_A8 = "": var_AC = ""
  loc_9FB815: ExitProcHresult
End Function

Private Sub CodiBancMsk_KeyPress(KeyAscii As Integer) '9F034C
  'Data Table: 434D54
  loc_9F0224: ILdI2 KeyAscii
  loc_9F0227: CI4UI1
  loc_9F0228: LitI4 &H20
  loc_9F022D: EqI4
  loc_9F022E: BranchF loc_9F0349
  loc_9F0231: LitVar_Missing var_A4
  loc_9F0234: PopAdLdVar
  loc_9F0235: LitVarI4
  loc_9F023D: PopAdLdVar
  loc_9F023E: ImpAdLdRf MemVar_C3D6AC
  loc_9F0241: NewIfNullPr bscBanco
  loc_9F0244: bscBanco.Show from_stack_1, from_stack_2
  loc_9F0249: FLdRfVar var_AC
  loc_9F024C: FLdRfVar var_A8
  loc_9F024F: ImpAdLdRf MemVar_C3D6AC
  loc_9F0252: NewIfNullPr bscBanco
  loc_9F0255: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F025A: FLdPr var_A8
  loc_9F025D: from_stack_1 = clsbase.RecordCount
  loc_9F0262: ILdRf var_AC
  loc_9F0265: LitI4 0
  loc_9F026A: GtI4
  loc_9F026B: FFree1Ad var_A8
  loc_9F026E: BranchF loc_9F0349
  loc_9F0271: FLdRfVar var_C8
  loc_9F0274: FLdRfVar var_B8
  loc_9F0277: LitVarStr var_94, "CodiBanc"
  loc_9F027C: PopAdLdVar
  loc_9F027D: FLdRfVar var_B4
  loc_9F0280: FLdRfVar var_B0
  loc_9F0283: FLdRfVar var_A8
  loc_9F0286: ImpAdLdRf MemVar_C3D6AC
  loc_9F0289: NewIfNullPr bscBanco
  loc_9F028C: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F0291: FLdPr var_A8
  loc_9F0294: from_stack_1v = clsbase.RsFrmGet()
  loc_9F0299: FLdPr var_B0
  loc_9F029C:  = Me.Fields
  loc_9F02A1: FLdPr var_B4
  loc_9F02A4: from_stack_2 = Me.Item(from_stack_1)
  loc_9F02A9: FLdPr var_B8
  loc_9F02AC:  = Me.Value
  loc_9F02B1: FLdRfVar var_C8
  loc_9F02B4: CStrVarTmp
  loc_9F02B5: CVarStr var_D8
  loc_9F02B8: PopAdLdVar
  loc_9F02B9: FLdPr Me
  loc_9F02BC: VCallAd Control_ID_CodiBancMsk
  loc_9F02BF: FStAdFunc var_DC
  loc_9F02C2: FLdPr var_DC
  loc_9F02C5: LateIdSt
  loc_9F02CA: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F02D7: FFreeVar var_C8 = ""
  loc_9F02DE: FLdRfVar var_C8
  loc_9F02E1: FLdRfVar var_B8
  loc_9F02E4: LitVarStr var_94, "DetaBanc"
  loc_9F02E9: PopAdLdVar
  loc_9F02EA: FLdRfVar var_B4
  loc_9F02ED: FLdRfVar var_B0
  loc_9F02F0: FLdRfVar var_A8
  loc_9F02F3: ImpAdLdRf MemVar_C3D6AC
  loc_9F02F6: NewIfNullPr bscBanco
  loc_9F02F9: from_stack_1v = bscBanco.global_4317104Get()
  loc_9F02FE: FLdPr var_A8
  loc_9F0301: from_stack_1v = clsbase.RsFrmGet()
  loc_9F0306: FLdPr var_B0
  loc_9F0309:  = Me.Fields
  loc_9F030E: FLdPr var_B4
  loc_9F0311: from_stack_2 = Me.Item(from_stack_1)
  loc_9F0316: FLdPr var_B8
  loc_9F0319:  = Me.Value
  loc_9F031E: FLdRfVar var_C8
  loc_9F0321: CStrVarTmp
  loc_9F0322: FStStrNoPop var_E0
  loc_9F0325: FLdPr Me
  loc_9F0328: VCallAd Control_ID_DetaBancLbl
  loc_9F032B: FStAdFunc var_DC
  loc_9F032E: FLdPr var_DC
  loc_9F0331: Me.Caption = from_stack_1
  loc_9F0336: FFree1Str var_E0
  loc_9F0339: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F0346: FFree1Var var_C8 = ""
  loc_9F0349: ExitProcHresult
  loc_9F034A: NeI4
End Sub

Private Sub Form_Load() '9A59A0
  'Data Table: 434D54
  loc_9A5918: LitI2_Byte 0
  loc_9A591A: CR8I2
  loc_9A591B: PopFPR4
  loc_9A591C: FLdPr Me
  loc_9A591F: Me.Left = from_stack_1s
  loc_9A5924: LitI2_Byte 0
  loc_9A5926: CR8I2
  loc_9A5927: PopFPR4
  loc_9A5928: FLdPr Me
  loc_9A592B: Me.Top = from_stack_1s
  loc_9A5930: LitI2_Byte 0
  loc_9A5932: PopTmpLdAd2 var_86
  loc_9A5935: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_9A593A: CStrDate
  loc_9A593C: CVarStr var_98
  loc_9A593F: PopAdLdVar
  loc_9A5940: FLdPr Me
  loc_9A5943: VCallAd Control_ID_FecoMobaMsk
  loc_9A5946: FStAdFunc var_AC
  loc_9A5949: FLdPr var_AC
  loc_9A594C: LateIdSt
  loc_9A5951: FFree1Ad var_AC
  loc_9A5954: FFree1Var var_98 = ""
  loc_9A5957: LitI2_Byte 0
  loc_9A5959: FLdPr Me
  loc_9A595C: VCallAd Control_ID_cmdImportar
  loc_9A595F: FStAdFunc var_AC
  loc_9A5962: FLdPr var_AC
  loc_9A5965: Me.Enabled = from_stack_1b
  loc_9A596A: FFree1Ad var_AC
  loc_9A596D: LitI2_Byte 0
  loc_9A596F: FLdPr Me
  loc_9A5972: VCallAd Control_ID_cmdConfirmar
  loc_9A5975: FStAdFunc var_AC
  loc_9A5978: FLdPr var_AC
  loc_9A597B: Me.Enabled = from_stack_1b
  loc_9A5980: FFree1Ad var_AC
  loc_9A5983: LitVar_FALSE
  loc_9A5987: PopAdLdVar
  loc_9A5988: FLdPr Me
  loc_9A598B: VCallAd Control_ID_ProgressBar
  loc_9A598E: FStAdFunc var_AC
  loc_9A5991: FLdPr var_AC
  loc_9A5994: LateIdSt
  loc_9A5999: FFree1Ad var_AC
  loc_9A599C: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9496B0
  'Data Table: 434D54
  loc_94969C: ILdI2 KeyAscii
  loc_94969F: CI4UI1
  loc_9496A0: LitI4 &HD
  loc_9496A5: EqI4
  loc_9496A6: BranchF loc_9496AE
  loc_9496A9: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9496AE: ExitProcHresult
End Sub
