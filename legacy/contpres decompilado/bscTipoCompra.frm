VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscTipoCompra
  Caption = "Buscar Tipo de Compra por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscTipoCompra.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 11100
  ClientHeight = 5910
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 120
    Width = 10695
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "bscTipoCompra.frx":08CA
    End
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 4320
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "2"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1200
    Width = 10815
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscTipoCompra.frx":092A
  End
End

Attribute VB_Name = "bscTipoCompra"

Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9B75D4
  'Data Table: 41A128
  loc_9B751C: LitVarStr var_94, vbNullString
  loc_9B7521: PopAdLdVar
  loc_9B7522: FLdPr Me
  loc_9B7525: VCallAd Control_ID_FiltroMsk
  loc_9B7528: FStAdFunc var_A8
  loc_9B752B: FLdPr var_A8
  loc_9B752E: LateIdSt
  loc_9B7533: FFree1Ad var_A8
  loc_9B7536: FLdRfVar var_AA
  loc_9B7539: FLdPr Me
  loc_9B753C: VCallAd Control_ID_FiltroCbo
  loc_9B753F: FStAdFunc var_A8
  loc_9B7542: FLdPr var_A8
  loc_9B7545:  = Me.ListIndex
  loc_9B754A: FLdI2 var_AA
  loc_9B754D: FStI2 var_AC
  loc_9B7550: FFree1Ad var_A8
  loc_9B7553: FLdI2 var_AC
  loc_9B7556: LitI2_Byte 0
  loc_9B7558: EqI2
  loc_9B7559: BranchF loc_9B7593
  loc_9B755C: LitVarStr var_94, "##"
  loc_9B7561: PopAdLdVar
  loc_9B7562: FLdPr Me
  loc_9B7565: VCallAd Control_ID_FiltroMsk
  loc_9B7568: FStAdFunc var_A8
  loc_9B756B: FLdPr var_A8
  loc_9B756E: LateIdSt
  loc_9B7573: FFree1Ad var_A8
  loc_9B7576: LitStr "CodiTico"
  loc_9B7579: FStStrCopy var_B0
  loc_9B757C: FLdRfVar var_B0
  loc_9B757F: FLdPr Me
  loc_9B7582: MemLdRfVar from_stack_1.BuscarCLS
  loc_9B7585: NewIfNullPr clsbase
  loc_9B7588: Call clsbase.Sort(from_stack_1v)
  loc_9B758D: FFree1Str var_B0
  loc_9B7590: Branch loc_9B75D0
  loc_9B7593: FLdI2 var_AC
  loc_9B7596: LitI2_Byte 1
  loc_9B7598: EqI2
  loc_9B7599: BranchF loc_9B75D0
  loc_9B759C: LitVarStr var_94, vbNullString
  loc_9B75A1: PopAdLdVar
  loc_9B75A2: FLdPr Me
  loc_9B75A5: VCallAd Control_ID_FiltroMsk
  loc_9B75A8: FStAdFunc var_A8
  loc_9B75AB: FLdPr var_A8
  loc_9B75AE: LateIdSt
  loc_9B75B3: FFree1Ad var_A8
  loc_9B75B6: LitStr "DetaTico"
  loc_9B75B9: FStStrCopy var_B0
  loc_9B75BC: FLdRfVar var_B0
  loc_9B75BF: FLdPr Me
  loc_9B75C2: MemLdRfVar from_stack_1.BuscarCLS
  loc_9B75C5: NewIfNullPr clsbase
  loc_9B75C8: Call clsbase.Sort(from_stack_1v)
  loc_9B75CD: FFree1Str var_B0
  loc_9B75D0: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '951390
  'Data Table: 41A128
  loc_95137C: FLdPr Me
  loc_95137F: VCallAd Control_ID_FiltroMsk
  loc_951382: CVarAd
  loc_951386: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95138B: FFree1Var var_94 = ""
  loc_95138E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A4E098
  'Data Table: 41A128
  loc_A4DDFC: ILdRf Me
  loc_A4DDFF: CastAd
  loc_A4DE02: FStAdFunc var_88
  loc_A4DE05: FLdRfVar var_88
  loc_A4DE08: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A4DE0D: FFree1Ad var_88
  loc_A4DE10: FLdPr Me
  loc_A4DE13: VCallAd Control_ID_FiltroMsk
  loc_A4DE16: FStAdFunc var_88
  loc_A4DE19: FLdPr var_88
  loc_A4DE1C: LateIdLdVar var_98 DispID_22 0
  loc_A4DE23: CStrVarTmp
  loc_A4DE24: FStStrNoPop var_9C
  loc_A4DE27: ImpAdCallI2 Trim$()
  loc_A4DE2C: FStStrNoPop var_A0
  loc_A4DE2F: LitStr vbNullString
  loc_A4DE32: NeStr
  loc_A4DE34: FFreeStr var_9C = ""
  loc_A4DE3B: FFree1Ad var_88
  loc_A4DE3E: FFree1Var var_98 = ""
  loc_A4DE41: BranchF loc_A4DF74
  loc_A4DE44: FLdRfVar var_A2
  loc_A4DE47: FLdPr Me
  loc_A4DE4A: VCallAd Control_ID_FiltroCbo
  loc_A4DE4D: FStAdFunc var_88
  loc_A4DE50: FLdPr var_88
  loc_A4DE53:  = Me.ListIndex
  loc_A4DE58: FLdI2 var_A2
  loc_A4DE5B: LitI2_Byte 0
  loc_A4DE5D: EqI2
  loc_A4DE5E: FFree1Ad var_88
  loc_A4DE61: BranchF loc_A4DED3
  loc_A4DE64: LitStr "CodiTico = "
  loc_A4DE67: FLdPr Me
  loc_A4DE6A: VCallAd Control_ID_FiltroMsk
  loc_A4DE6D: FStAdFunc var_88
  loc_A4DE70: FLdPr var_88
  loc_A4DE73: LateIdLdVar var_98 DispID_22 0
  loc_A4DE7A: CStrVarTmp
  loc_A4DE7B: FStStrNoPop var_9C
  loc_A4DE7E: ConcatStr
  loc_A4DE7F: PopTmpLdAdStr
  loc_A4DE83: FLdPr Me
  loc_A4DE86: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DE89: NewIfNullPr clsbase
  loc_A4DE8C: Call clsbase.Filter(from_stack_1v)
  loc_A4DE91: FFreeStr var_9C = ""
  loc_A4DE98: FFree1Ad var_88
  loc_A4DE9B: FFree1Var var_98 = ""
  loc_A4DE9E: LitStr "código sea igual a "
  loc_A4DEA1: FLdPr Me
  loc_A4DEA4: VCallAd Control_ID_FiltroMsk
  loc_A4DEA7: FStAdFunc var_88
  loc_A4DEAA: FLdPr var_88
  loc_A4DEAD: LateIdLdVar var_98 DispID_22 0
  loc_A4DEB4: CStrVarTmp
  loc_A4DEB5: FStStrNoPop var_9C
  loc_A4DEB8: ConcatStr
  loc_A4DEB9: FStStrNoPop var_A0
  loc_A4DEBC: FLdPr Me
  loc_A4DEBF: MemStStrCopy
  loc_A4DEC3: FFreeStr var_9C = ""
  loc_A4DECA: FFree1Ad var_88
  loc_A4DECD: FFree1Var var_98 = ""
  loc_A4DED0: Branch loc_A4DF71
  loc_A4DED3: FLdRfVar var_A2
  loc_A4DED6: FLdPr Me
  loc_A4DED9: VCallAd Control_ID_FiltroCbo
  loc_A4DEDC: FStAdFunc var_88
  loc_A4DEDF: FLdPr var_88
  loc_A4DEE2:  = Me.ListIndex
  loc_A4DEE7: FLdI2 var_A2
  loc_A4DEEA: LitI2_Byte 1
  loc_A4DEEC: EqI2
  loc_A4DEED: FFree1Ad var_88
  loc_A4DEF0: BranchF loc_A4DF71
  loc_A4DEF3: LitStr "DetaTico LIKE '" & Chr(37)
  loc_A4DEF6: FLdPr Me
  loc_A4DEF9: VCallAd Control_ID_FiltroMsk
  loc_A4DEFC: FStAdFunc var_88
  loc_A4DEFF: FLdPr var_88
  loc_A4DF02: LateIdLdVar var_98 DispID_22 0
  loc_A4DF09: CStrVarTmp
  loc_A4DF0A: FStStrNoPop var_9C
  loc_A4DF0D: ConcatStr
  loc_A4DF0E: FStStrNoPop var_A0
  loc_A4DF11: LitStr Chr(37) & "'"
  loc_A4DF14: ConcatStr
  loc_A4DF15: PopTmpLdAdStr
  loc_A4DF19: FLdPr Me
  loc_A4DF1C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DF1F: NewIfNullPr clsbase
  loc_A4DF22: Call clsbase.Filter(from_stack_1v)
  loc_A4DF27: FFreeStr var_9C = "": var_A0 = ""
  loc_A4DF30: FFree1Ad var_88
  loc_A4DF33: FFree1Var var_98 = ""
  loc_A4DF36: LitStr "detalle que contiene "
  loc_A4DF39: FLdPr Me
  loc_A4DF3C: VCallAd Control_ID_FiltroMsk
  loc_A4DF3F: FStAdFunc var_88
  loc_A4DF42: FLdPr var_88
  loc_A4DF45: LateIdLdVar var_98 DispID_22 0
  loc_A4DF4C: CStrVarTmp
  loc_A4DF4D: FStStrNoPop var_9C
  loc_A4DF50: ConcatStr
  loc_A4DF51: FStStrNoPop var_A0
  loc_A4DF54: LitStr vbNullString
  loc_A4DF57: ConcatStr
  loc_A4DF58: FStStrNoPop var_A8
  loc_A4DF5B: FLdPr Me
  loc_A4DF5E: MemStStrCopy
  loc_A4DF62: FFreeStr var_9C = "": var_A0 = ""
  loc_A4DF6B: FFree1Ad var_88
  loc_A4DF6E: FFree1Var var_98 = ""
  loc_A4DF71: Branch loc_A4DF98
  loc_A4DF74: LitStr vbNullString
  loc_A4DF77: FStStrCopy var_9C
  loc_A4DF7A: FLdRfVar var_9C
  loc_A4DF7D: FLdPr Me
  loc_A4DF80: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DF83: NewIfNullPr clsbase
  loc_A4DF86: Call clsbase.Filter(from_stack_1v)
  loc_A4DF8B: FFree1Str var_9C
  loc_A4DF8E: LitStr vbNullString
  loc_A4DF91: FLdPr Me
  loc_A4DF94: MemStStrCopy
  loc_A4DF98: FLdRfVar var_AC
  loc_A4DF9B: FLdPr Me
  loc_A4DF9E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DFA1: NewIfNullPr clsbase
  loc_A4DFA4: from_stack_1 = clsbase.RecordCount
  loc_A4DFA9: ILdRf var_AC
  loc_A4DFAC: LitI4 0
  loc_A4DFB1: GtI4
  loc_A4DFB2: BranchF loc_A4E050
  loc_A4DFB5: FLdPr Me
  loc_A4DFB8: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4DFBB: NewIfNullAd
  loc_A4DFBE: FStAd var_B0 
  loc_A4DFC2: FLdRfVar var_B0
  loc_A4DFC5: CVarRef
  loc_A4DFCA: ILdRf Me
  loc_A4DFCD: CastAd
  loc_A4DFD0: FStAdFunc var_88
  loc_A4DFD3: FLdRfVar var_88
  loc_A4DFD6: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A4DFDB: ILdRf var_B0
  loc_A4DFDE: CastAd
  loc_A4DFE1: FLdPr Me
  loc_A4DFE4: MemStAdFunc
  loc_A4DFE8: FFreeAd var_88 = ""
  loc_A4DFEF: LitI4 0
  loc_A4DFF4: LitI4 1
  loc_A4DFF9: FLdRfVar var_C4
  loc_A4DFFC: Redim
  loc_A4E006: FLdPr Me
  loc_A4E009: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4E00C: NewIfNullAd
  loc_A4E00F: FStAd var_88 
  loc_A4E013: FLdRfVar var_88
  loc_A4E016: CVarRef
  loc_A4E01B: ParmAry1St
  loc_A4E021: FLdPr Me
  loc_A4E024: VCallAd Control_ID_dgdABMS
  loc_A4E027: CVarAd
  loc_A4E02B: ParmAry1St
  loc_A4E031: FLdRfVar var_C4
  loc_A4E034: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4E039: ILdRf var_88
  loc_A4E03C: CastAd
  loc_A4E03F: FLdPr Me
  loc_A4E042: MemStAdFunc
  loc_A4E046: FLdRfVar var_C4
  loc_A4E049: Erase
  loc_A4E04A: FFree1Ad var_88
  loc_A4E04D: Branch loc_A4E064
  loc_A4E050: ILdRf Me
  loc_A4E053: CastAd
  loc_A4E056: FStAdFunc var_88
  loc_A4E059: FLdRfVar var_88
  loc_A4E05C: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A4E061: FFree1Ad var_88
  loc_A4E064: FLdPr Me
  loc_A4E067: VCallAd Control_ID_dgdABMS
  loc_A4E06A: FStAdFunc var_B0
  loc_A4E06D: LitI4 0
  loc_A4E072: FStStrCopy var_9C
  loc_A4E075: FLdRfVar var_9C
  loc_A4E078: FLdPr Me
  loc_A4E07B: MemLdStr sFiltro
  loc_A4E07E: FLdZeroAd var_B0
  loc_A4E081: FStAdFunc var_88
  loc_A4E084: FLdRfVar var_88
  loc_A4E087: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A4E08C: FFree1Str var_9C
  loc_A4E08F: FFreeAd var_88 = ""
  loc_A4E096: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9971C4
  'Data Table: 41A128
  loc_997160: ILdI2 KeyAscii
  loc_997163: LitI2_Byte &H27
  loc_997165: EqI2
  loc_997166: BranchF loc_99716E
  loc_997169: LitI2_Byte 0
  loc_99716B: IStI2 KeyAscii
  loc_99716E: FLdRfVar var_88
  loc_997171: FLdPr Me
  loc_997174: MemLdRfVar from_stack_1.BuscarCLS
  loc_997177: NewIfNullPr clsbase
  loc_99717A: from_stack_1 = clsbase.RecordCount
  loc_99717F: ILdRf var_88
  loc_997182: LitI4 0
  loc_997187: EqI4
  loc_997188: ILdI2 KeyAscii
  loc_99718B: CI4UI1
  loc_99718C: LitI4 8
  loc_997191: NeI4
  loc_997192: AndI4
  loc_997193: FLdPr Me
  loc_997196: VCallAd Control_ID_FiltroMsk
  loc_997199: FStAdFunc var_8C
  loc_99719C: FLdPr var_8C
  loc_99719F: LateIdLdVar var_9C DispID_16 0
  loc_9971A6: CStrVarTmp
  loc_9971A7: FStStrNoPop var_A0
  loc_9971AA: LitStr vbNullString
  loc_9971AD: EqStr
  loc_9971AF: AndI4
  loc_9971B0: FFree1Str var_A0
  loc_9971B3: FFree1Ad var_8C
  loc_9971B6: FFree1Var var_9C = ""
  loc_9971B9: BranchF loc_9971C1
  loc_9971BC: LitI2_Byte 0
  loc_9971BE: IStI2 KeyAscii
  loc_9971C1: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '958168
  'Data Table: 41A128
  loc_958150: FLdPr Me
  loc_958153: VCallAd Control_ID_dgdABMS
  loc_958156: FStAdFunc var_88
  loc_958159: FLdRfVar var_88
  loc_95815C: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_958161: FFree1Ad var_88
  loc_958164: ExitProcHresult
  loc_958165: ImpI4
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9581B4
  'Data Table: 41A128
  loc_95819C: FLdPr Me
  loc_95819F: VCallAd Control_ID_dgdABMS
  loc_9581A2: FStAdFunc var_88
  loc_9581A5: FLdRfVar var_88
  loc_9581A8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9581AD: FFree1Ad var_88
  loc_9581B0: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '954998
  'Data Table: 41A128
  loc_954980: ILdRf Me
  loc_954983: FStAdNoPop
  loc_954987: ImpAdLdRf MemVar_C44F9C
  loc_95498A: NewIfNullPr Me
  loc_95498D: Me.Global.Unload from_stack_1
  loc_954992: FFree1Ad var_88
  loc_954995: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99B4C0
  'Data Table: 41A128
  loc_99B464: FLdRfVar var_B4
  loc_99B467: FLdRfVar var_B0
  loc_99B46A: FLdI2 ColIndex
  loc_99B46D: CVarI2 var_A8
  loc_99B470: PopAdLdVar
  loc_99B471: FLdPr Me
  loc_99B474: VCallAd Control_ID_dgdABMS
  loc_99B477: FStAdFunc var_88
  loc_99B47A: FLdPr var_88
  loc_99B47D: LateIdLdVar var_98 DispID_105 0
  loc_99B484: CastAdVar Me
  loc_99B488: FStAdFunc var_AC
  loc_99B48B: FLdPr var_AC
  loc_99B48E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99B493: FLdPr var_B0
  loc_99B496:  = Me.DataField
  loc_99B49B: FLdZeroAd var_B4
  loc_99B49E: PopTmpLdAdStr
  loc_99B4A2: FLdPr Me
  loc_99B4A5: MemLdRfVar from_stack_1.BuscarCLS
  loc_99B4A8: NewIfNullPr clsbase
  loc_99B4AB: Call clsbase.Sort(from_stack_1v)
  loc_99B4B0: FFree1Str var_B8
  loc_99B4B3: FFreeAd var_88 = "": var_AC = ""
  loc_99B4BC: FFree1Var var_98 = ""
  loc_99B4BF: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9571AC
  'Data Table: 41A128
  loc_957194: ILdRf Me
  loc_957197: FStAdNoPop
  loc_95719B: ImpAdLdRf MemVar_C44F9C
  loc_95719E: NewIfNullPr Me
  loc_9571A1: Me.Global.Unload from_stack_1
  loc_9571A6: FFree1Ad var_88
  loc_9571A9: ExitProcHresult
End Sub

Private Sub Form_Load() '9E73C8
  'Data Table: 41A128
  loc_9E72C4: LitStr "SELECT tipocompra.*, IFNULL(DetaPers,'') AS DetaPers"
  loc_9E72C7: LitStr ", IF(ticoxusua.CodiTico IS NULL,'No','Si') Autorizado"
  loc_9E72CA: ConcatStr
  loc_9E72CB: FStStrNoPop var_88
  loc_9E72CE: LitStr " FROM tipocompra"
  loc_9E72D1: ConcatStr
  loc_9E72D2: FStStrNoPop var_8C
  loc_9E72D5: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = tipocompra.CucuPers"
  loc_9E72D8: ConcatStr
  loc_9E72D9: FStStrNoPop var_90
  loc_9E72DC: LitStr " LEFT JOIN ticoxusua ON ticoxusua.CodiTico = tipocompra.CodiTico AND ticoxusua.CodiUsua = '"
  loc_9E72DF: ConcatStr
  loc_9E72E0: FStStrNoPop var_94
  loc_9E72E3: ImpAdLdI4 MemVar_C3D03C
  loc_9E72E6: ConcatStr
  loc_9E72E7: FStStrNoPop var_98
  loc_9E72EA: LitStr "'"
  loc_9E72ED: ConcatStr
  loc_9E72EE: FStStrNoPop var_9C
  loc_9E72F1: LitStr " ORDER BY CodiTico"
  loc_9E72F4: ConcatStr
  loc_9E72F5: FStStrNoPop var_A0
  loc_9E72F8: FLdPr Me
  loc_9E72FB: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E72FE: NewIfNullPr clsbase
  loc_9E7301: Call clsbase.RedefineRS(from_stack_1v)
  loc_9E7306: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_9E7317: LitVarI2 var_B0, 0
  loc_9E731C: PopAdLdVar
  loc_9E731D: LitStr "Tipo de Compra (Código)"
  loc_9E7320: FLdPr Me
  loc_9E7323: VCallAd Control_ID_FiltroCbo
  loc_9E7326: FStAdFunc var_B4
  loc_9E7329: FLdPr var_B4
  loc_9E732C: Me.AddItem from_stack_1, from_stack_2
  loc_9E7331: FFree1Ad var_B4
  loc_9E7334: LitVarI2 var_B0, 1
  loc_9E7339: PopAdLdVar
  loc_9E733A: LitStr "Tipo de Compra (Detalle)"
  loc_9E733D: FLdPr Me
  loc_9E7340: VCallAd Control_ID_FiltroCbo
  loc_9E7343: FStAdFunc var_B4
  loc_9E7346: FLdPr var_B4
  loc_9E7349: Me.AddItem from_stack_1, from_stack_2
  loc_9E734E: FFree1Ad var_B4
  loc_9E7351: LitI2_Byte 0
  loc_9E7353: FLdPr Me
  loc_9E7356: VCallAd Control_ID_FiltroCbo
  loc_9E7359: FStAdFunc var_B4
  loc_9E735C: FLdPr var_B4
  loc_9E735F: Me.ListIndex = from_stack_1
  loc_9E7364: FFree1Ad var_B4
  loc_9E7367: LitI4 0
  loc_9E736C: LitI4 1
  loc_9E7371: FLdRfVar var_B8
  loc_9E7374: Redim
  loc_9E737E: FLdPr Me
  loc_9E7381: MemLdRfVar from_stack_1.BuscarCLS
  loc_9E7384: NewIfNullAd
  loc_9E7387: FStAd var_B4 
  loc_9E738B: FLdRfVar var_B4
  loc_9E738E: CVarRef
  loc_9E7393: ParmAry1St
  loc_9E7399: FLdPr Me
  loc_9E739C: VCallAd Control_ID_dgdABMS
  loc_9E739F: CVarAd
  loc_9E73A3: ParmAry1St
  loc_9E73A9: FLdRfVar var_B8
  loc_9E73AC: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9E73B1: ILdRf var_B4
  loc_9E73B4: CastAd
  loc_9E73B7: FLdPr Me
  loc_9E73BA: MemStAdFunc
  loc_9E73BE: FLdRfVar var_B8
  loc_9E73C1: Erase
  loc_9E73C2: FFree1Ad var_B4
  loc_9E73C5: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '954738
  'Data Table: 41A128
  loc_954720: ILdRf Me
  loc_954723: FStAdNoPop
  loc_954727: ImpAdLdRf MemVar_C44F9C
  loc_95472A: NewIfNullPr Me
  loc_95472D: Me.Global.Unload from_stack_1
  loc_954732: FFree1Ad var_88
  loc_954735: ExitProcHresult
  loc_954736: CI4Str
End Sub

Private Sub Form_Activate() '9516A8
  'Data Table: 41A128
  loc_951694: FLdPr Me
  loc_951697: VCallAd Control_ID_FiltroMsk
  loc_95169A: CVarAd
  loc_95169E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9516A3: FFree1Var var_94 = ""
  loc_9516A6: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949B78
  'Data Table: 41A128
  loc_949B64: ILdI2 KeyAscii
  loc_949B67: CI4UI1
  loc_949B68: LitI4 &HD
  loc_949B6D: EqI4
  loc_949B6E: BranchF loc_949B76
  loc_949B71: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949B76: ExitProcHresult
End Sub

Public Function global_4301096Get() '41A5F4
  global_4301096Get = global_4301096
End Function

Public Sub global_4301096Put(Value) '41A60E
  global_4301096 = Value
End Sub

Public Sub global_4301096Set(Value) '41A628
  global_4301096 = Value
End Sub

Public Function sFiltroGet() '41A642
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41A651
  sFiltro = Value
End Sub
