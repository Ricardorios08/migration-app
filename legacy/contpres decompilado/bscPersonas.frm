VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscPersonas
  Caption = "Buscar Personas por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscPersonas.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10980
  ClientHeight = 5895
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
      OleObjectBlob = "bscPersonas.frx":08CA
    End
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 4320
    Top = 5160
    Width = 1215
    Height = 495
    TabIndex = 4
    Tag = "2"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1200
    Width = 10695
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscPersonas.frx":092A
  End
End

Attribute VB_Name = "bscPersonas"

Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() '9D0298
  'Data Table: 4193DC
  loc_9D01AC: LitVarStr var_94, vbNullString
  loc_9D01B1: PopAdLdVar
  loc_9D01B2: FLdPr Me
  loc_9D01B5: VCallAd Control_ID_FiltroMsk
  loc_9D01B8: FStAdFunc var_A8
  loc_9D01BB: FLdPr var_A8
  loc_9D01BE: LateIdSt
  loc_9D01C3: FFree1Ad var_A8
  loc_9D01C6: FLdRfVar var_AA
  loc_9D01C9: FLdPr Me
  loc_9D01CC: VCallAd Control_ID_FiltroCbo
  loc_9D01CF: FStAdFunc var_A8
  loc_9D01D2: FLdPr var_A8
  loc_9D01D5:  = Me.ListIndex
  loc_9D01DA: FLdI2 var_AA
  loc_9D01DD: FStI2 var_AC
  loc_9D01E0: FFree1Ad var_A8
  loc_9D01E3: FLdI2 var_AC
  loc_9D01E6: LitI2_Byte 0
  loc_9D01E8: EqI2
  loc_9D01E9: BranchF loc_9D0223
  loc_9D01EC: LitVarStr var_94, "###########"
  loc_9D01F1: PopAdLdVar
  loc_9D01F2: FLdPr Me
  loc_9D01F5: VCallAd Control_ID_FiltroMsk
  loc_9D01F8: FStAdFunc var_A8
  loc_9D01FB: FLdPr var_A8
  loc_9D01FE: LateIdSt
  loc_9D0203: FFree1Ad var_A8
  loc_9D0206: LitStr "CucuPers"
  loc_9D0209: FStStrCopy var_B0
  loc_9D020C: FLdRfVar var_B0
  loc_9D020F: FLdPr Me
  loc_9D0212: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D0215: NewIfNullPr clsbase
  loc_9D0218: Call clsbase.Sort(from_stack_1v)
  loc_9D021D: FFree1Str var_B0
  loc_9D0220: Branch loc_9D0297
  loc_9D0223: FLdI2 var_AC
  loc_9D0226: LitI2_Byte 1
  loc_9D0228: EqI2
  loc_9D0229: BranchF loc_9D0263
  loc_9D022C: LitVarStr var_94, vbNullString
  loc_9D0231: PopAdLdVar
  loc_9D0232: FLdPr Me
  loc_9D0235: VCallAd Control_ID_FiltroMsk
  loc_9D0238: FStAdFunc var_A8
  loc_9D023B: FLdPr var_A8
  loc_9D023E: LateIdSt
  loc_9D0243: FFree1Ad var_A8
  loc_9D0246: LitStr "DetaPers"
  loc_9D0249: FStStrCopy var_B0
  loc_9D024C: FLdRfVar var_B0
  loc_9D024F: FLdPr Me
  loc_9D0252: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D0255: NewIfNullPr clsbase
  loc_9D0258: Call clsbase.Sort(from_stack_1v)
  loc_9D025D: FFree1Str var_B0
  loc_9D0260: Branch loc_9D0297
  loc_9D0263: LitVarStr var_94, vbNullString
  loc_9D0268: PopAdLdVar
  loc_9D0269: FLdPr Me
  loc_9D026C: VCallAd Control_ID_FiltroMsk
  loc_9D026F: FStAdFunc var_A8
  loc_9D0272: FLdPr var_A8
  loc_9D0275: LateIdSt
  loc_9D027A: FFree1Ad var_A8
  loc_9D027D: LitStr "DetaPers"
  loc_9D0280: FStStrCopy var_B0
  loc_9D0283: FLdRfVar var_B0
  loc_9D0286: FLdPr Me
  loc_9D0289: MemLdRfVar from_stack_1.BuscarCLS
  loc_9D028C: NewIfNullPr clsbase
  loc_9D028F: Call clsbase.Sort(from_stack_1v)
  loc_9D0294: FFree1Str var_B0
  loc_9D0297: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '950190
  'Data Table: 4193DC
  loc_95017C: FLdPr Me
  loc_95017F: VCallAd Control_ID_FiltroMsk
  loc_950182: CVarAd
  loc_950186: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95018B: FFree1Var var_94 = ""
  loc_95018E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A60670
  'Data Table: 4193DC
  loc_A60374: ILdRf Me
  loc_A60377: CastAd
  loc_A6037A: FStAdFunc var_88
  loc_A6037D: FLdRfVar var_88
  loc_A60380: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A60385: FFree1Ad var_88
  loc_A60388: FLdPr Me
  loc_A6038B: VCallAd Control_ID_FiltroMsk
  loc_A6038E: FStAdFunc var_88
  loc_A60391: FLdPr var_88
  loc_A60394: LateIdLdVar var_98 DispID_22 0
  loc_A6039B: CStrVarTmp
  loc_A6039C: FStStrNoPop var_9C
  loc_A6039F: ImpAdCallI2 Trim$()
  loc_A603A4: FStStrNoPop var_A0
  loc_A603A7: LitStr vbNullString
  loc_A603AA: NeStr
  loc_A603AC: FFreeStr var_9C = ""
  loc_A603B3: FFree1Ad var_88
  loc_A603B6: FFree1Var var_98 = ""
  loc_A603B9: BranchF loc_A6054A
  loc_A603BC: FLdRfVar var_A2
  loc_A603BF: FLdPr Me
  loc_A603C2: VCallAd Control_ID_FiltroCbo
  loc_A603C5: FStAdFunc var_88
  loc_A603C8: FLdPr var_88
  loc_A603CB:  = Me.ListIndex
  loc_A603D0: FLdI2 var_A2
  loc_A603D3: LitI2_Byte 0
  loc_A603D5: EqI2
  loc_A603D6: FFree1Ad var_88
  loc_A603D9: BranchF loc_A604A9
  loc_A603DC: FLdPr Me
  loc_A603DF: VCallAd Control_ID_FiltroMsk
  loc_A603E2: FStAdFunc var_A8
  loc_A603E5: FLdPr var_A8
  loc_A603E8: LateIdLdVar var_B8 DispID_22 0
  loc_A603EF: PopAd
  loc_A603F1: LitStr "CucuPers >= '"
  loc_A603F4: FLdPr Me
  loc_A603F7: VCallAd Control_ID_FiltroMsk
  loc_A603FA: FStAdFunc var_88
  loc_A603FD: FLdPr var_88
  loc_A60400: LateIdLdVar var_98 DispID_22 0
  loc_A60407: CStrVarTmp
  loc_A60408: FStStrNoPop var_9C
  loc_A6040B: ConcatStr
  loc_A6040C: CVarStr var_F8
  loc_A6040F: LitVarStr var_C8, "0"
  loc_A60414: FStVarCopyObj var_D8
  loc_A60417: FLdRfVar var_D8
  loc_A6041A: LitI4 &HB
  loc_A6041F: FLdRfVar var_B8
  loc_A60422: CStrVarTmp
  loc_A60423: FStStrNoPop var_A0
  loc_A60426: FnLenStr
  loc_A60427: SubI4
  loc_A60428: FLdRfVar var_E8
  loc_A6042B: ImpAdCallFPR4  = String(, )
  loc_A60430: FLdRfVar var_E8
  loc_A60433: ConcatVar var_108
  loc_A60437: LitVarStr var_118, "'"
  loc_A6043C: ConcatVar var_128
  loc_A60440: CStrVarTmp
  loc_A60441: PopTmpLdAdStr
  loc_A60445: FLdPr Me
  loc_A60448: MemLdRfVar from_stack_1.BuscarCLS
  loc_A6044B: NewIfNullPr clsbase
  loc_A6044E: Call clsbase.Filter(from_stack_1v)
  loc_A60453: FFreeStr var_9C = "": var_A0 = ""
  loc_A6045C: FFreeAd var_88 = ""
  loc_A60463: FFreeVar var_98 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = ""
  loc_A60474: LitStr "CUIT-CUIL que comience con "
  loc_A60477: FLdPr Me
  loc_A6047A: VCallAd Control_ID_FiltroMsk
  loc_A6047D: FStAdFunc var_88
  loc_A60480: FLdPr var_88
  loc_A60483: LateIdLdVar var_98 DispID_22 0
  loc_A6048A: CStrVarTmp
  loc_A6048B: FStStrNoPop var_9C
  loc_A6048E: ConcatStr
  loc_A6048F: FStStrNoPop var_A0
  loc_A60492: FLdPr Me
  loc_A60495: MemStStrCopy
  loc_A60499: FFreeStr var_9C = ""
  loc_A604A0: FFree1Ad var_88
  loc_A604A3: FFree1Var var_98 = ""
  loc_A604A6: Branch loc_A60547
  loc_A604A9: FLdRfVar var_A2
  loc_A604AC: FLdPr Me
  loc_A604AF: VCallAd Control_ID_FiltroCbo
  loc_A604B2: FStAdFunc var_88
  loc_A604B5: FLdPr var_88
  loc_A604B8:  = Me.ListIndex
  loc_A604BD: FLdI2 var_A2
  loc_A604C0: LitI2_Byte 1
  loc_A604C2: EqI2
  loc_A604C3: FFree1Ad var_88
  loc_A604C6: BranchF loc_A60547
  loc_A604C9: LitStr "DetaPers LIKE '" & Chr(37)
  loc_A604CC: FLdPr Me
  loc_A604CF: VCallAd Control_ID_FiltroMsk
  loc_A604D2: FStAdFunc var_88
  loc_A604D5: FLdPr var_88
  loc_A604D8: LateIdLdVar var_98 DispID_22 0
  loc_A604DF: CStrVarTmp
  loc_A604E0: FStStrNoPop var_9C
  loc_A604E3: ConcatStr
  loc_A604E4: FStStrNoPop var_A0
  loc_A604E7: LitStr Chr(37) & "'"
  loc_A604EA: ConcatStr
  loc_A604EB: PopTmpLdAdStr
  loc_A604EF: FLdPr Me
  loc_A604F2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A604F5: NewIfNullPr clsbase
  loc_A604F8: Call clsbase.Filter(from_stack_1v)
  loc_A604FD: FFreeStr var_9C = "": var_A0 = ""
  loc_A60506: FFree1Ad var_88
  loc_A60509: FFree1Var var_98 = ""
  loc_A6050C: LitStr "Apellido y Nombre que contiene "
  loc_A6050F: FLdPr Me
  loc_A60512: VCallAd Control_ID_FiltroMsk
  loc_A60515: FStAdFunc var_88
  loc_A60518: FLdPr var_88
  loc_A6051B: LateIdLdVar var_98 DispID_22 0
  loc_A60522: CStrVarTmp
  loc_A60523: FStStrNoPop var_9C
  loc_A60526: ConcatStr
  loc_A60527: FStStrNoPop var_A0
  loc_A6052A: LitStr vbNullString
  loc_A6052D: ConcatStr
  loc_A6052E: FStStrNoPop var_12C
  loc_A60531: FLdPr Me
  loc_A60534: MemStStrCopy
  loc_A60538: FFreeStr var_9C = "": var_A0 = ""
  loc_A60541: FFree1Ad var_88
  loc_A60544: FFree1Var var_98 = ""
  loc_A60547: Branch loc_A6056E
  loc_A6054A: LitStr vbNullString
  loc_A6054D: FStStrCopy var_9C
  loc_A60550: FLdRfVar var_9C
  loc_A60553: FLdPr Me
  loc_A60556: MemLdRfVar from_stack_1.BuscarCLS
  loc_A60559: NewIfNullPr clsbase
  loc_A6055C: Call clsbase.Filter(from_stack_1v)
  loc_A60561: FFree1Str var_9C
  loc_A60564: LitStr vbNullString
  loc_A60567: FLdPr Me
  loc_A6056A: MemStStrCopy
  loc_A6056E: FLdRfVar var_130
  loc_A60571: FLdPr Me
  loc_A60574: MemLdRfVar from_stack_1.BuscarCLS
  loc_A60577: NewIfNullPr clsbase
  loc_A6057A: from_stack_1 = clsbase.RecordCount
  loc_A6057F: ILdRf var_130
  loc_A60582: LitI4 0
  loc_A60587: GtI4
  loc_A60588: BranchF loc_A60626
  loc_A6058B: FLdPr Me
  loc_A6058E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A60591: NewIfNullAd
  loc_A60594: FStAd var_A8 
  loc_A60598: FLdRfVar var_A8
  loc_A6059B: CVarRef
  loc_A605A0: ILdRf Me
  loc_A605A3: CastAd
  loc_A605A6: FStAdFunc var_88
  loc_A605A9: FLdRfVar var_88
  loc_A605AC: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A605B1: ILdRf var_A8
  loc_A605B4: CastAd
  loc_A605B7: FLdPr Me
  loc_A605BA: MemStAdFunc
  loc_A605BE: FFreeAd var_88 = ""
  loc_A605C5: LitI4 0
  loc_A605CA: LitI4 1
  loc_A605CF: FLdRfVar var_134
  loc_A605D2: Redim
  loc_A605DC: FLdPr Me
  loc_A605DF: MemLdRfVar from_stack_1.BuscarCLS
  loc_A605E2: NewIfNullAd
  loc_A605E5: FStAd var_88 
  loc_A605E9: FLdRfVar var_88
  loc_A605EC: CVarRef
  loc_A605F1: ParmAry1St
  loc_A605F7: FLdPr Me
  loc_A605FA: VCallAd Control_ID_dgdABMS
  loc_A605FD: CVarAd
  loc_A60601: ParmAry1St
  loc_A60607: FLdRfVar var_134
  loc_A6060A: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A6060F: ILdRf var_88
  loc_A60612: CastAd
  loc_A60615: FLdPr Me
  loc_A60618: MemStAdFunc
  loc_A6061C: FLdRfVar var_134
  loc_A6061F: Erase
  loc_A60620: FFree1Ad var_88
  loc_A60623: Branch loc_A6063A
  loc_A60626: ILdRf Me
  loc_A60629: CastAd
  loc_A6062C: FStAdFunc var_88
  loc_A6062F: FLdRfVar var_88
  loc_A60632: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A60637: FFree1Ad var_88
  loc_A6063A: FLdPr Me
  loc_A6063D: VCallAd Control_ID_dgdABMS
  loc_A60640: FStAdFunc var_A8
  loc_A60643: LitI4 0
  loc_A60648: FStStrCopy var_9C
  loc_A6064B: FLdRfVar var_9C
  loc_A6064E: FLdPr Me
  loc_A60651: MemLdStr sFiltro
  loc_A60654: FLdZeroAd var_A8
  loc_A60657: FStAdFunc var_88
  loc_A6065A: FLdRfVar var_88
  loc_A6065D: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A60662: FFree1Str var_9C
  loc_A60665: FFreeAd var_88 = ""
  loc_A6066C: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997E44
  'Data Table: 4193DC
  loc_997DE0: ILdI2 KeyAscii
  loc_997DE3: LitI2_Byte &H27
  loc_997DE5: EqI2
  loc_997DE6: BranchF loc_997DEE
  loc_997DE9: LitI2_Byte 0
  loc_997DEB: IStI2 KeyAscii
  loc_997DEE: FLdRfVar var_88
  loc_997DF1: FLdPr Me
  loc_997DF4: MemLdRfVar from_stack_1.BuscarCLS
  loc_997DF7: NewIfNullPr clsbase
  loc_997DFA: from_stack_1 = clsbase.RecordCount
  loc_997DFF: ILdRf var_88
  loc_997E02: LitI4 0
  loc_997E07: EqI4
  loc_997E08: ILdI2 KeyAscii
  loc_997E0B: CI4UI1
  loc_997E0C: LitI4 8
  loc_997E11: NeI4
  loc_997E12: AndI4
  loc_997E13: FLdPr Me
  loc_997E16: VCallAd Control_ID_FiltroMsk
  loc_997E19: FStAdFunc var_8C
  loc_997E1C: FLdPr var_8C
  loc_997E1F: LateIdLdVar var_9C DispID_16 0
  loc_997E26: CStrVarTmp
  loc_997E27: FStStrNoPop var_A0
  loc_997E2A: LitStr vbNullString
  loc_997E2D: EqStr
  loc_997E2F: AndI4
  loc_997E30: FFree1Str var_A0
  loc_997E33: FFree1Ad var_8C
  loc_997E36: FFree1Var var_9C = ""
  loc_997E39: BranchF loc_997E41
  loc_997E3C: LitI2_Byte 0
  loc_997E3E: IStI2 KeyAscii
  loc_997E41: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '955494
  'Data Table: 4193DC
  loc_95547C: FLdPr Me
  loc_95547F: VCallAd Control_ID_dgdABMS
  loc_955482: FStAdFunc var_88
  loc_955485: FLdRfVar var_88
  loc_955488: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95548D: FFree1Ad var_88
  loc_955490: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95A684
  'Data Table: 4193DC
  loc_95A66C: FLdPr Me
  loc_95A66F: VCallAd Control_ID_dgdABMS
  loc_95A672: FStAdFunc var_88
  loc_95A675: FLdRfVar var_88
  loc_95A678: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95A67D: FFree1Ad var_88
  loc_95A680: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9554E0
  'Data Table: 4193DC
  loc_9554C8: ILdRf Me
  loc_9554CB: FStAdNoPop
  loc_9554CF: ImpAdLdRf MemVar_C44F9C
  loc_9554D2: NewIfNullPr Me
  loc_9554D5: Me.Global.Unload from_stack_1
  loc_9554DA: FFree1Ad var_88
  loc_9554DD: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '9997EC
  'Data Table: 4193DC
  loc_999790: FLdRfVar var_B4
  loc_999793: FLdRfVar var_B0
  loc_999796: FLdI2 ColIndex
  loc_999799: CVarI2 var_A8
  loc_99979C: PopAdLdVar
  loc_99979D: FLdPr Me
  loc_9997A0: VCallAd Control_ID_dgdABMS
  loc_9997A3: FStAdFunc var_88
  loc_9997A6: FLdPr var_88
  loc_9997A9: LateIdLdVar var_98 DispID_105 0
  loc_9997B0: CastAdVar Me
  loc_9997B4: FStAdFunc var_AC
  loc_9997B7: FLdPr var_AC
  loc_9997BA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_9997BF: FLdPr var_B0
  loc_9997C2:  = Me.DataField
  loc_9997C7: FLdZeroAd var_B4
  loc_9997CA: PopTmpLdAdStr
  loc_9997CE: FLdPr Me
  loc_9997D1: MemLdRfVar from_stack_1.BuscarCLS
  loc_9997D4: NewIfNullPr clsbase
  loc_9997D7: Call clsbase.Sort(from_stack_1v)
  loc_9997DC: FFree1Str var_B8
  loc_9997DF: FFreeAd var_88 = "": var_AC = ""
  loc_9997E8: FFree1Var var_98 = ""
  loc_9997EB: ExitProcHresult
End Sub

Private Sub OKButton_Click() '95A5A0
  'Data Table: 4193DC
  loc_95A588: ILdRf Me
  loc_95A58B: FStAdNoPop
  loc_95A58F: ImpAdLdRf MemVar_C44F9C
  loc_95A592: NewIfNullPr Me
  loc_95A595: Me.Global.Unload from_stack_1
  loc_95A59A: FFree1Ad var_88
  loc_95A59D: ExitProcHresult
End Sub

Private Sub Form_Load() '9C04E8
  'Data Table: 4193DC
  loc_9C0428: LitStr "SELECT * FROM infogov.persona WHERE CcokPers = 1 ORDER BY DetaPers"
  loc_9C042B: FLdPr Me
  loc_9C042E: MemLdRfVar from_stack_1.BuscarCLS
  loc_9C0431: NewIfNullPr clsbase
  loc_9C0434: Call clsbase.RedefineRS(from_stack_1v)
  loc_9C0439: LitVarI2 var_94, 0
  loc_9C043E: PopAdLdVar
  loc_9C043F: LitStr "CUIT-CUIL"
  loc_9C0442: FLdPr Me
  loc_9C0445: VCallAd Control_ID_FiltroCbo
  loc_9C0448: FStAdFunc var_98
  loc_9C044B: FLdPr var_98
  loc_9C044E: Me.AddItem from_stack_1, from_stack_2
  loc_9C0453: FFree1Ad var_98
  loc_9C0456: LitVarI2 var_94, 1
  loc_9C045B: PopAdLdVar
  loc_9C045C: LitStr "Apellido y Nombre)"
  loc_9C045F: FLdPr Me
  loc_9C0462: VCallAd Control_ID_FiltroCbo
  loc_9C0465: FStAdFunc var_98
  loc_9C0468: FLdPr var_98
  loc_9C046B: Me.AddItem from_stack_1, from_stack_2
  loc_9C0470: FFree1Ad var_98
  loc_9C0473: LitI2_Byte 1
  loc_9C0475: FLdPr Me
  loc_9C0478: VCallAd Control_ID_FiltroCbo
  loc_9C047B: FStAdFunc var_98
  loc_9C047E: FLdPr var_98
  loc_9C0481: Me.ListIndex = from_stack_1
  loc_9C0486: FFree1Ad var_98
  loc_9C0489: LitI4 0
  loc_9C048E: LitI4 1
  loc_9C0493: FLdRfVar var_9C
  loc_9C0496: Redim
  loc_9C04A0: FLdPr Me
  loc_9C04A3: MemLdRfVar from_stack_1.BuscarCLS
  loc_9C04A6: NewIfNullAd
  loc_9C04A9: FStAd var_98 
  loc_9C04AD: FLdRfVar var_98
  loc_9C04B0: CVarRef
  loc_9C04B5: ParmAry1St
  loc_9C04BB: FLdPr Me
  loc_9C04BE: VCallAd Control_ID_dgdABMS
  loc_9C04C1: CVarAd
  loc_9C04C5: ParmAry1St
  loc_9C04CB: FLdRfVar var_9C
  loc_9C04CE: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9C04D3: ILdRf var_98
  loc_9C04D6: CastAd
  loc_9C04D9: FLdPr Me
  loc_9C04DC: MemStAdFunc
  loc_9C04E0: FLdRfVar var_9C
  loc_9C04E3: Erase
  loc_9C04E4: FFree1Ad var_98
  loc_9C04E7: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '95A5EC
  'Data Table: 4193DC
  loc_95A5D4: ILdRf Me
  loc_95A5D7: FStAdNoPop
  loc_95A5DB: ImpAdLdRf MemVar_C44F9C
  loc_95A5DE: NewIfNullPr Me
  loc_95A5E1: Me.Global.Unload from_stack_1
  loc_95A5E6: FFree1Ad var_88
  loc_95A5E9: ExitProcHresult
End Sub

Private Sub Form_Activate() '9500B8
  'Data Table: 4193DC
  loc_9500A4: FLdPr Me
  loc_9500A7: VCallAd Control_ID_FiltroMsk
  loc_9500AA: CVarAd
  loc_9500AE: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9500B3: FFree1Var var_94 = ""
  loc_9500B6: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949738
  'Data Table: 4193DC
  loc_949724: ILdI2 KeyAscii
  loc_949727: CI4UI1
  loc_949728: LitI4 &HD
  loc_94972D: EqI4
  loc_94972E: BranchF loc_949736
  loc_949731: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949736: ExitProcHresult
End Sub

Public Function global_4297692Get() '419898
  global_4297692Get = global_4297692
End Function

Public Sub global_4297692Put(Value) '4198B2
  global_4297692 = Value
End Sub

Public Sub global_4297692Set(Value) '4198CC
  global_4297692 = Value
End Sub

Public Function sFiltroGet() '4198E6
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '4198F5
  sFiltro = Value
End Sub
