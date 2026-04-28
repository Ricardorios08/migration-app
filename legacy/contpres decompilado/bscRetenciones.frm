VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscRetenciones
  Caption = "Buscar Retención por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscRetenciones.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 10950
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
      OleObjectBlob = "bscRetenciones.frx":08CA
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
    Width = 10695
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscRetenciones.frx":092A
  End
End

Attribute VB_Name = "bscRetenciones"

Public iPeriInfo As Integer
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() 'A04814
  'Data Table: 41BCA0
  loc_A046A8: LitVarStr var_94, vbNullString
  loc_A046AD: PopAdLdVar
  loc_A046AE: FLdPr Me
  loc_A046B1: VCallAd Control_ID_FiltroMsk
  loc_A046B4: FStAdFunc var_A8
  loc_A046B7: FLdPr var_A8
  loc_A046BA: LateIdSt
  loc_A046BF: FFree1Ad var_A8
  loc_A046C2: FLdRfVar var_AA
  loc_A046C5: FLdPr Me
  loc_A046C8: VCallAd Control_ID_FiltroCbo
  loc_A046CB: FStAdFunc var_A8
  loc_A046CE: FLdPr var_A8
  loc_A046D1:  = Me.ListIndex
  loc_A046D6: FLdI2 var_AA
  loc_A046D9: FStI2 var_AC
  loc_A046DC: FFree1Ad var_A8
  loc_A046DF: FLdI2 var_AC
  loc_A046E2: LitI2_Byte 0
  loc_A046E4: EqI2
  loc_A046E5: BranchF loc_A0471F
  loc_A046E8: LitVarStr var_94, "##"
  loc_A046ED: PopAdLdVar
  loc_A046EE: FLdPr Me
  loc_A046F1: VCallAd Control_ID_FiltroMsk
  loc_A046F4: FStAdFunc var_A8
  loc_A046F7: FLdPr var_A8
  loc_A046FA: LateIdSt
  loc_A046FF: FFree1Ad var_A8
  loc_A04702: LitStr "CodiRete"
  loc_A04705: FStStrCopy var_B0
  loc_A04708: FLdRfVar var_B0
  loc_A0470B: FLdPr Me
  loc_A0470E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A04711: NewIfNullPr clsbase
  loc_A04714: Call clsbase.Sort(from_stack_1v)
  loc_A04719: FFree1Str var_B0
  loc_A0471C: Branch loc_A04813
  loc_A0471F: FLdI2 var_AC
  loc_A04722: LitI2_Byte 1
  loc_A04724: EqI2
  loc_A04725: BranchF loc_A0475F
  loc_A04728: LitVarStr var_94, vbNullString
  loc_A0472D: PopAdLdVar
  loc_A0472E: FLdPr Me
  loc_A04731: VCallAd Control_ID_FiltroMsk
  loc_A04734: FStAdFunc var_A8
  loc_A04737: FLdPr var_A8
  loc_A0473A: LateIdSt
  loc_A0473F: FFree1Ad var_A8
  loc_A04742: LitStr "DetaRete"
  loc_A04745: FStStrCopy var_B0
  loc_A04748: FLdRfVar var_B0
  loc_A0474B: FLdPr Me
  loc_A0474E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A04751: NewIfNullPr clsbase
  loc_A04754: Call clsbase.Sort(from_stack_1v)
  loc_A04759: FFree1Str var_B0
  loc_A0475C: Branch loc_A04813
  loc_A0475F: FLdI2 var_AC
  loc_A04762: LitI2_Byte 2
  loc_A04764: EqI2
  loc_A04765: BranchF loc_A0479F
  loc_A04768: LitVarStr var_94, "##"
  loc_A0476D: PopAdLdVar
  loc_A0476E: FLdPr Me
  loc_A04771: VCallAd Control_ID_FiltroMsk
  loc_A04774: FStAdFunc var_A8
  loc_A04777: FLdPr var_A8
  loc_A0477A: LateIdSt
  loc_A0477F: FFree1Ad var_A8
  loc_A04782: LitStr "CodiCuco"
  loc_A04785: FStStrCopy var_B0
  loc_A04788: FLdRfVar var_B0
  loc_A0478B: FLdPr Me
  loc_A0478E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A04791: NewIfNullPr clsbase
  loc_A04794: Call clsbase.Sort(from_stack_1v)
  loc_A04799: FFree1Str var_B0
  loc_A0479C: Branch loc_A04813
  loc_A0479F: FLdI2 var_AC
  loc_A047A2: LitI2_Byte 3
  loc_A047A4: EqI2
  loc_A047A5: BranchF loc_A047DF
  loc_A047A8: LitVarStr var_94, vbNullString
  loc_A047AD: PopAdLdVar
  loc_A047AE: FLdPr Me
  loc_A047B1: VCallAd Control_ID_FiltroMsk
  loc_A047B4: FStAdFunc var_A8
  loc_A047B7: FLdPr var_A8
  loc_A047BA: LateIdSt
  loc_A047BF: FFree1Ad var_A8
  loc_A047C2: LitStr "DetaCuco"
  loc_A047C5: FStStrCopy var_B0
  loc_A047C8: FLdRfVar var_B0
  loc_A047CB: FLdPr Me
  loc_A047CE: MemLdRfVar from_stack_1.BuscarCLS
  loc_A047D1: NewIfNullPr clsbase
  loc_A047D4: Call clsbase.Sort(from_stack_1v)
  loc_A047D9: FFree1Str var_B0
  loc_A047DC: Branch loc_A04813
  loc_A047DF: LitVarStr var_94, vbNullString
  loc_A047E4: PopAdLdVar
  loc_A047E5: FLdPr Me
  loc_A047E8: VCallAd Control_ID_FiltroMsk
  loc_A047EB: FStAdFunc var_A8
  loc_A047EE: FLdPr var_A8
  loc_A047F1: LateIdSt
  loc_A047F6: FFree1Ad var_A8
  loc_A047F9: LitStr "CodiRete"
  loc_A047FC: FStStrCopy var_B0
  loc_A047FF: FLdRfVar var_B0
  loc_A04802: FLdPr Me
  loc_A04805: MemLdRfVar from_stack_1.BuscarCLS
  loc_A04808: NewIfNullPr clsbase
  loc_A0480B: Call clsbase.Sort(from_stack_1v)
  loc_A04810: FFree1Str var_B0
  loc_A04813: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '950808
  'Data Table: 41BCA0
  loc_9507F4: FLdPr Me
  loc_9507F7: VCallAd Control_ID_FiltroMsk
  loc_9507FA: CVarAd
  loc_9507FE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950803: FFree1Var var_94 = ""
  loc_950806: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A7B9FC
  'Data Table: 41BCA0
  loc_A7B61C: ILdRf Me
  loc_A7B61F: CastAd
  loc_A7B622: FStAdFunc var_88
  loc_A7B625: FLdRfVar var_88
  loc_A7B628: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A7B62D: FFree1Ad var_88
  loc_A7B630: FLdPr Me
  loc_A7B633: VCallAd Control_ID_FiltroMsk
  loc_A7B636: FStAdFunc var_88
  loc_A7B639: FLdPr var_88
  loc_A7B63C: LateIdLdVar var_98 DispID_22 0
  loc_A7B643: CStrVarTmp
  loc_A7B644: FStStrNoPop var_9C
  loc_A7B647: ImpAdCallI2 Trim$()
  loc_A7B64C: FStStrNoPop var_A0
  loc_A7B64F: LitStr vbNullString
  loc_A7B652: NeStr
  loc_A7B654: FFreeStr var_9C = ""
  loc_A7B65B: FFree1Ad var_88
  loc_A7B65E: FFree1Var var_98 = ""
  loc_A7B661: BranchF loc_A7B8D6
  loc_A7B664: FLdRfVar var_A2
  loc_A7B667: FLdPr Me
  loc_A7B66A: VCallAd Control_ID_FiltroCbo
  loc_A7B66D: FStAdFunc var_88
  loc_A7B670: FLdPr var_88
  loc_A7B673:  = Me.ListIndex
  loc_A7B678: FLdI2 var_A2
  loc_A7B67B: LitI2_Byte 0
  loc_A7B67D: EqI2
  loc_A7B67E: FFree1Ad var_88
  loc_A7B681: BranchF loc_A7B6F3
  loc_A7B684: LitStr "CodiRete = "
  loc_A7B687: FLdPr Me
  loc_A7B68A: VCallAd Control_ID_FiltroMsk
  loc_A7B68D: FStAdFunc var_88
  loc_A7B690: FLdPr var_88
  loc_A7B693: LateIdLdVar var_98 DispID_22 0
  loc_A7B69A: CStrVarTmp
  loc_A7B69B: FStStrNoPop var_9C
  loc_A7B69E: ConcatStr
  loc_A7B69F: PopTmpLdAdStr
  loc_A7B6A3: FLdPr Me
  loc_A7B6A6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B6A9: NewIfNullPr clsbase
  loc_A7B6AC: Call clsbase.Filter(from_stack_1v)
  loc_A7B6B1: FFreeStr var_9C = ""
  loc_A7B6B8: FFree1Ad var_88
  loc_A7B6BB: FFree1Var var_98 = ""
  loc_A7B6BE: LitStr "código sea igual a "
  loc_A7B6C1: FLdPr Me
  loc_A7B6C4: VCallAd Control_ID_FiltroMsk
  loc_A7B6C7: FStAdFunc var_88
  loc_A7B6CA: FLdPr var_88
  loc_A7B6CD: LateIdLdVar var_98 DispID_22 0
  loc_A7B6D4: CStrVarTmp
  loc_A7B6D5: FStStrNoPop var_9C
  loc_A7B6D8: ConcatStr
  loc_A7B6D9: FStStrNoPop var_A0
  loc_A7B6DC: FLdPr Me
  loc_A7B6DF: MemStStrCopy
  loc_A7B6E3: FFreeStr var_9C = ""
  loc_A7B6EA: FFree1Ad var_88
  loc_A7B6ED: FFree1Var var_98 = ""
  loc_A7B6F0: Branch loc_A7B8D3
  loc_A7B6F3: FLdRfVar var_A2
  loc_A7B6F6: FLdPr Me
  loc_A7B6F9: VCallAd Control_ID_FiltroCbo
  loc_A7B6FC: FStAdFunc var_88
  loc_A7B6FF: FLdPr var_88
  loc_A7B702:  = Me.ListIndex
  loc_A7B707: FLdI2 var_A2
  loc_A7B70A: LitI2_Byte 1
  loc_A7B70C: EqI2
  loc_A7B70D: FFree1Ad var_88
  loc_A7B710: BranchF loc_A7B794
  loc_A7B713: LitStr "DetaRete LIKE '" & Chr(37)
  loc_A7B716: FLdPr Me
  loc_A7B719: VCallAd Control_ID_FiltroMsk
  loc_A7B71C: FStAdFunc var_88
  loc_A7B71F: FLdPr var_88
  loc_A7B722: LateIdLdVar var_98 DispID_22 0
  loc_A7B729: CStrVarTmp
  loc_A7B72A: FStStrNoPop var_9C
  loc_A7B72D: ConcatStr
  loc_A7B72E: FStStrNoPop var_A0
  loc_A7B731: LitStr Chr(37) & "'"
  loc_A7B734: ConcatStr
  loc_A7B735: PopTmpLdAdStr
  loc_A7B739: FLdPr Me
  loc_A7B73C: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B73F: NewIfNullPr clsbase
  loc_A7B742: Call clsbase.Filter(from_stack_1v)
  loc_A7B747: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B750: FFree1Ad var_88
  loc_A7B753: FFree1Var var_98 = ""
  loc_A7B756: LitStr "detalle que contiene "
  loc_A7B759: FLdPr Me
  loc_A7B75C: VCallAd Control_ID_FiltroMsk
  loc_A7B75F: FStAdFunc var_88
  loc_A7B762: FLdPr var_88
  loc_A7B765: LateIdLdVar var_98 DispID_22 0
  loc_A7B76C: CStrVarTmp
  loc_A7B76D: FStStrNoPop var_9C
  loc_A7B770: ConcatStr
  loc_A7B771: FStStrNoPop var_A0
  loc_A7B774: LitStr vbNullString
  loc_A7B777: ConcatStr
  loc_A7B778: FStStrNoPop var_A8
  loc_A7B77B: FLdPr Me
  loc_A7B77E: MemStStrCopy
  loc_A7B782: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B78B: FFree1Ad var_88
  loc_A7B78E: FFree1Var var_98 = ""
  loc_A7B791: Branch loc_A7B8D3
  loc_A7B794: FLdRfVar var_A2
  loc_A7B797: FLdPr Me
  loc_A7B79A: VCallAd Control_ID_FiltroCbo
  loc_A7B79D: FStAdFunc var_88
  loc_A7B7A0: FLdPr var_88
  loc_A7B7A3:  = Me.ListIndex
  loc_A7B7A8: FLdI2 var_A2
  loc_A7B7AB: LitI2_Byte 2
  loc_A7B7AD: EqI2
  loc_A7B7AE: FFree1Ad var_88
  loc_A7B7B1: BranchF loc_A7B835
  loc_A7B7B4: LitStr "CodiCuco LIKE '"
  loc_A7B7B7: FLdPr Me
  loc_A7B7BA: VCallAd Control_ID_FiltroMsk
  loc_A7B7BD: FStAdFunc var_88
  loc_A7B7C0: FLdPr var_88
  loc_A7B7C3: LateIdLdVar var_98 DispID_22 0
  loc_A7B7CA: CStrVarTmp
  loc_A7B7CB: FStStrNoPop var_9C
  loc_A7B7CE: ConcatStr
  loc_A7B7CF: FStStrNoPop var_A0
  loc_A7B7D2: LitStr Chr(37) & "'"
  loc_A7B7D5: ConcatStr
  loc_A7B7D6: PopTmpLdAdStr
  loc_A7B7DA: FLdPr Me
  loc_A7B7DD: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B7E0: NewIfNullPr clsbase
  loc_A7B7E3: Call clsbase.Filter(from_stack_1v)
  loc_A7B7E8: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B7F1: FFree1Ad var_88
  loc_A7B7F4: FFree1Var var_98 = ""
  loc_A7B7F7: LitStr "cuenta contable comience con "
  loc_A7B7FA: FLdPr Me
  loc_A7B7FD: VCallAd Control_ID_FiltroMsk
  loc_A7B800: FStAdFunc var_88
  loc_A7B803: FLdPr var_88
  loc_A7B806: LateIdLdVar var_98 DispID_22 0
  loc_A7B80D: CStrVarTmp
  loc_A7B80E: FStStrNoPop var_9C
  loc_A7B811: ConcatStr
  loc_A7B812: FStStrNoPop var_A0
  loc_A7B815: LitStr vbNullString
  loc_A7B818: ConcatStr
  loc_A7B819: FStStrNoPop var_A8
  loc_A7B81C: FLdPr Me
  loc_A7B81F: MemStStrCopy
  loc_A7B823: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B82C: FFree1Ad var_88
  loc_A7B82F: FFree1Var var_98 = ""
  loc_A7B832: Branch loc_A7B8D3
  loc_A7B835: FLdRfVar var_A2
  loc_A7B838: FLdPr Me
  loc_A7B83B: VCallAd Control_ID_FiltroCbo
  loc_A7B83E: FStAdFunc var_88
  loc_A7B841: FLdPr var_88
  loc_A7B844:  = Me.ListIndex
  loc_A7B849: FLdI2 var_A2
  loc_A7B84C: LitI2_Byte 3
  loc_A7B84E: EqI2
  loc_A7B84F: FFree1Ad var_88
  loc_A7B852: BranchF loc_A7B8D3
  loc_A7B855: LitStr "DetaCuco LIKE '" & Chr(37)
  loc_A7B858: FLdPr Me
  loc_A7B85B: VCallAd Control_ID_FiltroMsk
  loc_A7B85E: FStAdFunc var_88
  loc_A7B861: FLdPr var_88
  loc_A7B864: LateIdLdVar var_98 DispID_22 0
  loc_A7B86B: CStrVarTmp
  loc_A7B86C: FStStrNoPop var_9C
  loc_A7B86F: ConcatStr
  loc_A7B870: FStStrNoPop var_A0
  loc_A7B873: LitStr Chr(37) & "'"
  loc_A7B876: ConcatStr
  loc_A7B877: PopTmpLdAdStr
  loc_A7B87B: FLdPr Me
  loc_A7B87E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B881: NewIfNullPr clsbase
  loc_A7B884: Call clsbase.Filter(from_stack_1v)
  loc_A7B889: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B892: FFree1Ad var_88
  loc_A7B895: FFree1Var var_98 = ""
  loc_A7B898: LitStr "cuenta contable contiene "
  loc_A7B89B: FLdPr Me
  loc_A7B89E: VCallAd Control_ID_FiltroMsk
  loc_A7B8A1: FStAdFunc var_88
  loc_A7B8A4: FLdPr var_88
  loc_A7B8A7: LateIdLdVar var_98 DispID_22 0
  loc_A7B8AE: CStrVarTmp
  loc_A7B8AF: FStStrNoPop var_9C
  loc_A7B8B2: ConcatStr
  loc_A7B8B3: FStStrNoPop var_A0
  loc_A7B8B6: LitStr vbNullString
  loc_A7B8B9: ConcatStr
  loc_A7B8BA: FStStrNoPop var_A8
  loc_A7B8BD: FLdPr Me
  loc_A7B8C0: MemStStrCopy
  loc_A7B8C4: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B8CD: FFree1Ad var_88
  loc_A7B8D0: FFree1Var var_98 = ""
  loc_A7B8D3: Branch loc_A7B8FA
  loc_A7B8D6: LitStr vbNullString
  loc_A7B8D9: FStStrCopy var_9C
  loc_A7B8DC: FLdRfVar var_9C
  loc_A7B8DF: FLdPr Me
  loc_A7B8E2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B8E5: NewIfNullPr clsbase
  loc_A7B8E8: Call clsbase.Filter(from_stack_1v)
  loc_A7B8ED: FFree1Str var_9C
  loc_A7B8F0: LitStr vbNullString
  loc_A7B8F3: FLdPr Me
  loc_A7B8F6: MemStStrCopy
  loc_A7B8FA: FLdRfVar var_AC
  loc_A7B8FD: FLdPr Me
  loc_A7B900: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B903: NewIfNullPr clsbase
  loc_A7B906: from_stack_1 = clsbase.RecordCount
  loc_A7B90B: ILdRf var_AC
  loc_A7B90E: LitI4 0
  loc_A7B913: GtI4
  loc_A7B914: BranchF loc_A7B9B2
  loc_A7B917: FLdPr Me
  loc_A7B91A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B91D: NewIfNullAd
  loc_A7B920: FStAd var_B0 
  loc_A7B924: FLdRfVar var_B0
  loc_A7B927: CVarRef
  loc_A7B92C: ILdRf Me
  loc_A7B92F: CastAd
  loc_A7B932: FStAdFunc var_88
  loc_A7B935: FLdRfVar var_88
  loc_A7B938: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A7B93D: ILdRf var_B0
  loc_A7B940: CastAd
  loc_A7B943: FLdPr Me
  loc_A7B946: MemStAdFunc
  loc_A7B94A: FFreeAd var_88 = ""
  loc_A7B951: LitI4 0
  loc_A7B956: LitI4 1
  loc_A7B95B: FLdRfVar var_C4
  loc_A7B95E: Redim
  loc_A7B968: FLdPr Me
  loc_A7B96B: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B96E: NewIfNullAd
  loc_A7B971: FStAd var_88 
  loc_A7B975: FLdRfVar var_88
  loc_A7B978: CVarRef
  loc_A7B97D: ParmAry1St
  loc_A7B983: FLdPr Me
  loc_A7B986: VCallAd Control_ID_dgdABMS
  loc_A7B989: CVarAd
  loc_A7B98D: ParmAry1St
  loc_A7B993: FLdRfVar var_C4
  loc_A7B996: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A7B99B: ILdRf var_88
  loc_A7B99E: CastAd
  loc_A7B9A1: FLdPr Me
  loc_A7B9A4: MemStAdFunc
  loc_A7B9A8: FLdRfVar var_C4
  loc_A7B9AB: Erase
  loc_A7B9AC: FFree1Ad var_88
  loc_A7B9AF: Branch loc_A7B9C6
  loc_A7B9B2: ILdRf Me
  loc_A7B9B5: CastAd
  loc_A7B9B8: FStAdFunc var_88
  loc_A7B9BB: FLdRfVar var_88
  loc_A7B9BE: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A7B9C3: FFree1Ad var_88
  loc_A7B9C6: FLdPr Me
  loc_A7B9C9: VCallAd Control_ID_dgdABMS
  loc_A7B9CC: FStAdFunc var_B0
  loc_A7B9CF: LitI4 0
  loc_A7B9D4: FStStrCopy var_9C
  loc_A7B9D7: FLdRfVar var_9C
  loc_A7B9DA: FLdPr Me
  loc_A7B9DD: MemLdStr sFiltro
  loc_A7B9E0: FLdZeroAd var_B0
  loc_A7B9E3: FStAdFunc var_88
  loc_A7B9E6: FLdRfVar var_88
  loc_A7B9E9: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A7B9EE: FFree1Str var_9C
  loc_A7B9F1: FFreeAd var_88 = ""
  loc_A7B9F8: ExitProcHresult
  loc_A7B9F9: ImpAdLdRf MemVar_0
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '997DA4
  'Data Table: 41BCA0
  loc_997D40: ILdI2 KeyAscii
  loc_997D43: LitI2_Byte &H27
  loc_997D45: EqI2
  loc_997D46: BranchF loc_997D4E
  loc_997D49: LitI2_Byte 0
  loc_997D4B: IStI2 KeyAscii
  loc_997D4E: FLdRfVar var_88
  loc_997D51: FLdPr Me
  loc_997D54: MemLdRfVar from_stack_1.BuscarCLS
  loc_997D57: NewIfNullPr clsbase
  loc_997D5A: from_stack_1 = clsbase.RecordCount
  loc_997D5F: ILdRf var_88
  loc_997D62: LitI4 0
  loc_997D67: EqI4
  loc_997D68: ILdI2 KeyAscii
  loc_997D6B: CI4UI1
  loc_997D6C: LitI4 8
  loc_997D71: NeI4
  loc_997D72: AndI4
  loc_997D73: FLdPr Me
  loc_997D76: VCallAd Control_ID_FiltroMsk
  loc_997D79: FStAdFunc var_8C
  loc_997D7C: FLdPr var_8C
  loc_997D7F: LateIdLdVar var_9C DispID_16 0
  loc_997D86: CStrVarTmp
  loc_997D87: FStStrNoPop var_A0
  loc_997D8A: LitStr vbNullString
  loc_997D8D: EqStr
  loc_997D8F: AndI4
  loc_997D90: FFree1Str var_A0
  loc_997D93: FFree1Ad var_8C
  loc_997D96: FFree1Var var_9C = ""
  loc_997D99: BranchF loc_997DA1
  loc_997D9C: LitI2_Byte 0
  loc_997D9E: IStI2 KeyAscii
  loc_997DA1: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '959A0C
  'Data Table: 41BCA0
  loc_9599F4: FLdPr Me
  loc_9599F7: VCallAd Control_ID_dgdABMS
  loc_9599FA: FStAdFunc var_88
  loc_9599FD: FLdRfVar var_88
  loc_959A00: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_959A05: FFree1Ad var_88
  loc_959A08: ExitProcHresult
  loc_959A09: FStAdFunc var_88
End Sub

Private Sub dgdABMS_UnknownEvent_1 '959974
  'Data Table: 41BCA0
  loc_95995C: FLdPr Me
  loc_95995F: VCallAd Control_ID_dgdABMS
  loc_959962: FStAdFunc var_88
  loc_959965: FLdRfVar var_88
  loc_959968: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95996D: FFree1Ad var_88
  loc_959970: ExitProcHresult
  loc_959971: CR4Var
End Sub

Private Sub dgdABMS_DblClick() '959A58
  'Data Table: 41BCA0
  loc_959A40: ILdRf Me
  loc_959A43: FStAdNoPop
  loc_959A47: ImpAdLdRf MemVar_C44F9C
  loc_959A4A: NewIfNullPr Me
  loc_959A4D: Me.Global.Unload from_stack_1
  loc_959A52: FFree1Ad var_88
  loc_959A55: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99B93C
  'Data Table: 41BCA0
  loc_99B8E0: FLdRfVar var_B4
  loc_99B8E3: FLdRfVar var_B0
  loc_99B8E6: FLdI2 ColIndex
  loc_99B8E9: CVarI2 var_A8
  loc_99B8EC: PopAdLdVar
  loc_99B8ED: FLdPr Me
  loc_99B8F0: VCallAd Control_ID_dgdABMS
  loc_99B8F3: FStAdFunc var_88
  loc_99B8F6: FLdPr var_88
  loc_99B8F9: LateIdLdVar var_98 DispID_105 0
  loc_99B900: CastAdVar Me
  loc_99B904: FStAdFunc var_AC
  loc_99B907: FLdPr var_AC
  loc_99B90A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99B90F: FLdPr var_B0
  loc_99B912:  = Me.DataField
  loc_99B917: FLdZeroAd var_B4
  loc_99B91A: PopTmpLdAdStr
  loc_99B91E: FLdPr Me
  loc_99B921: MemLdRfVar from_stack_1.BuscarCLS
  loc_99B924: NewIfNullPr clsbase
  loc_99B927: Call clsbase.Sort(from_stack_1v)
  loc_99B92C: FFree1Str var_B8
  loc_99B92F: FFreeAd var_88 = "": var_AC = ""
  loc_99B938: FFree1Var var_98 = ""
  loc_99B93B: ExitProcHresult
End Sub

Private Sub OKButton_Click() '958EC4
  'Data Table: 41BCA0
  loc_958EAC: ILdRf Me
  loc_958EAF: FStAdNoPop
  loc_958EB3: ImpAdLdRf MemVar_C44F9C
  loc_958EB6: NewIfNullPr Me
  loc_958EB9: Me.Global.Unload from_stack_1
  loc_958EBE: FFree1Ad var_88
  loc_958EC1: ExitProcHresult
End Sub

Private Sub Form_Load() 'A0E300
  'Data Table: 41BCA0
  loc_A0E1AC: FLdPr Me
  loc_A0E1AF: MemLdI2 iPeriInfo
  loc_A0E1B2: LitI2_Byte 0
  loc_A0E1B4: EqI2
  loc_A0E1B5: BranchF loc_A0E1C1
  loc_A0E1B8: ImpAdLdI2 MemVar_C3D064
  loc_A0E1BB: FLdPr Me
  loc_A0E1BE: MemStI2 iPeriInfo
  loc_A0E1C1: LitStr "SELECT retenciones.*, IFNULL(DetaCuco,'') DetaCuco"
  loc_A0E1C4: LitStr " FROM retenciones"
  loc_A0E1C7: ConcatStr
  loc_A0E1C8: FStStrNoPop var_88
  loc_A0E1CB: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = retenciones.PeriInfo AND cc.CodiCuco = retenciones.CodiCuco"
  loc_A0E1CE: ConcatStr
  loc_A0E1CF: FStStrNoPop var_8C
  loc_A0E1D2: LitStr " WHERE retenciones.PeriInfo = "
  loc_A0E1D5: ConcatStr
  loc_A0E1D6: FStStrNoPop var_90
  loc_A0E1D9: FLdPr Me
  loc_A0E1DC: MemLdI2 iPeriInfo
  loc_A0E1DF: CStrUI1
  loc_A0E1E1: FStStrNoPop var_94
  loc_A0E1E4: ConcatStr
  loc_A0E1E5: FStStrNoPop var_98
  loc_A0E1E8: LitStr " AND CodiRete > 0"
  loc_A0E1EB: ConcatStr
  loc_A0E1EC: FStStrNoPop var_9C
  loc_A0E1EF: LitStr " ORDER BY CodiRete"
  loc_A0E1F2: ConcatStr
  loc_A0E1F3: FStStrNoPop var_A0
  loc_A0E1F6: FLdPr Me
  loc_A0E1F9: MemLdRfVar from_stack_1.BuscarCLS
  loc_A0E1FC: NewIfNullPr clsbase
  loc_A0E1FF: Call clsbase.RedefineRS(from_stack_1v)
  loc_A0E204: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = ""
  loc_A0E215: LitVarI2 var_B0, 0
  loc_A0E21A: PopAdLdVar
  loc_A0E21B: LitStr "Retenciones (Código)"
  loc_A0E21E: FLdPr Me
  loc_A0E221: VCallAd Control_ID_FiltroCbo
  loc_A0E224: FStAdFunc var_B4
  loc_A0E227: FLdPr var_B4
  loc_A0E22A: Me.AddItem from_stack_1, from_stack_2
  loc_A0E22F: FFree1Ad var_B4
  loc_A0E232: LitVarI2 var_B0, 1
  loc_A0E237: PopAdLdVar
  loc_A0E238: LitStr "Retenciones (Detalle)"
  loc_A0E23B: FLdPr Me
  loc_A0E23E: VCallAd Control_ID_FiltroCbo
  loc_A0E241: FStAdFunc var_B4
  loc_A0E244: FLdPr var_B4
  loc_A0E247: Me.AddItem from_stack_1, from_stack_2
  loc_A0E24C: FFree1Ad var_B4
  loc_A0E24F: LitVarI2 var_B0, 2
  loc_A0E254: PopAdLdVar
  loc_A0E255: LitStr "Cuenta Contable (Código)"
  loc_A0E258: FLdPr Me
  loc_A0E25B: VCallAd Control_ID_FiltroCbo
  loc_A0E25E: FStAdFunc var_B4
  loc_A0E261: FLdPr var_B4
  loc_A0E264: Me.AddItem from_stack_1, from_stack_2
  loc_A0E269: FFree1Ad var_B4
  loc_A0E26C: LitVarI2 var_B0, 3
  loc_A0E271: PopAdLdVar
  loc_A0E272: LitStr "Cuenta Contable (Detalle)"
  loc_A0E275: FLdPr Me
  loc_A0E278: VCallAd Control_ID_FiltroCbo
  loc_A0E27B: FStAdFunc var_B4
  loc_A0E27E: FLdPr var_B4
  loc_A0E281: Me.AddItem from_stack_1, from_stack_2
  loc_A0E286: FFree1Ad var_B4
  loc_A0E289: LitI2_Byte 0
  loc_A0E28B: FLdPr Me
  loc_A0E28E: VCallAd Control_ID_FiltroCbo
  loc_A0E291: FStAdFunc var_B4
  loc_A0E294: FLdPr var_B4
  loc_A0E297: Me.ListIndex = from_stack_1
  loc_A0E29C: FFree1Ad var_B4
  loc_A0E29F: LitI4 0
  loc_A0E2A4: LitI4 1
  loc_A0E2A9: FLdRfVar var_B8
  loc_A0E2AC: Redim
  loc_A0E2B6: FLdPr Me
  loc_A0E2B9: MemLdRfVar from_stack_1.BuscarCLS
  loc_A0E2BC: NewIfNullAd
  loc_A0E2BF: FStAd var_B4 
  loc_A0E2C3: FLdRfVar var_B4
  loc_A0E2C6: CVarRef
  loc_A0E2CB: ParmAry1St
  loc_A0E2D1: FLdPr Me
  loc_A0E2D4: VCallAd Control_ID_dgdABMS
  loc_A0E2D7: CVarAd
  loc_A0E2DB: ParmAry1St
  loc_A0E2E1: FLdRfVar var_B8
  loc_A0E2E4: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A0E2E9: ILdRf var_B4
  loc_A0E2EC: CastAd
  loc_A0E2EF: FLdPr Me
  loc_A0E2F2: MemStAdFunc
  loc_A0E2F6: FLdRfVar var_B8
  loc_A0E2F9: Erase
  loc_A0E2FA: FFree1Ad var_B4
  loc_A0E2FD: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96C9AC
  'Data Table: 41BCA0
  loc_96C98C: LitI2_Byte 0
  loc_96C98E: FLdPr Me
  loc_96C991: MemStI2 iPeriInfo
  loc_96C994: ILdRf Me
  loc_96C997: FStAdNoPop
  loc_96C99B: ImpAdLdRf MemVar_C44F9C
  loc_96C99E: NewIfNullPr Me
  loc_96C9A1: Me.Global.Unload from_stack_1
  loc_96C9A6: FFree1Ad var_88
  loc_96C9A9: ExitProcHresult
End Sub

Private Sub Form_Activate() '950778
  'Data Table: 41BCA0
  loc_950764: FLdPr Me
  loc_950767: VCallAd Control_ID_FiltroMsk
  loc_95076A: CVarAd
  loc_95076E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_950773: FFree1Var var_94 = ""
  loc_950776: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949C00
  'Data Table: 41BCA0
  loc_949BEC: ILdI2 KeyAscii
  loc_949BEF: CI4UI1
  loc_949BF0: LitI4 &HD
  loc_949BF5: EqI4
  loc_949BF6: BranchF loc_949BFE
  loc_949BF9: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949BFE: ExitProcHresult
End Sub

Public Function iPeriInfoGet() '41C190
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '41C19F
  iPeriInfo = Value
End Sub

Public Function global_4308128Get() '41C1AE
  global_4308128Get = global_4308128
End Function

Public Sub global_4308128Put(Value) '41C1C8
  global_4308128 = Value
End Sub

Public Sub global_4308128Set(Value) '41C1E2
  global_4308128 = Value
End Sub

Public Function sFiltroGet() '41C1FC
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '41C20B
  sFiltro = Value
End Sub
