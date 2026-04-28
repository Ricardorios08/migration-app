VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form bscPartida
  Caption = "Buscar Partida por..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "bscPartida.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 14415
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
      OleObjectBlob = "bscPartida.frx":08CA
    End
  End
  Begin VB.CommandButton OKButton
    Caption = "&Aceptar"
    Left = 6480
    Top = 5160
    Width = 1335
    Height = 495
    TabIndex = 4
    Tag = "2"
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1200
    Width = 14175
    Height = 3735
    Tag = "1"
    TabIndex = 3
    OleObjectBlob = "bscPartida.frx":092A
  End
End

Attribute VB_Name = "bscPartida"

Public iPeriInfo As Integer
Public iCodiInsu As Long
Public MuestroAnulados As Boolean
Public BuscarCLS As New Class
Public sFiltro As String


Private Sub FiltroCbo_Click() 'A03950
  'Data Table: 421B6C
  loc_A037E4: LitVarStr var_94, vbNullString
  loc_A037E9: PopAdLdVar
  loc_A037EA: FLdPr Me
  loc_A037ED: VCallAd Control_ID_FiltroMsk
  loc_A037F0: FStAdFunc var_A8
  loc_A037F3: FLdPr var_A8
  loc_A037F6: LateIdSt
  loc_A037FB: FFree1Ad var_A8
  loc_A037FE: FLdRfVar var_AA
  loc_A03801: FLdPr Me
  loc_A03804: VCallAd Control_ID_FiltroCbo
  loc_A03807: FStAdFunc var_A8
  loc_A0380A: FLdPr var_A8
  loc_A0380D:  = Me.ListIndex
  loc_A03812: FLdI2 var_AA
  loc_A03815: FStI2 var_AC
  loc_A03818: FFree1Ad var_A8
  loc_A0381B: FLdI2 var_AC
  loc_A0381E: LitI2_Byte 0
  loc_A03820: EqI2
  loc_A03821: BranchF loc_A0385B
  loc_A03824: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A03829: PopAdLdVar
  loc_A0382A: FLdPr Me
  loc_A0382D: VCallAd Control_ID_FiltroMsk
  loc_A03830: FStAdFunc var_A8
  loc_A03833: FLdPr var_A8
  loc_A03836: LateIdSt
  loc_A0383B: FFree1Ad var_A8
  loc_A0383E: LitStr "CodiPart"
  loc_A03841: FStStrCopy var_B0
  loc_A03844: FLdRfVar var_B0
  loc_A03847: FLdPr Me
  loc_A0384A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A0384D: NewIfNullPr clsbase
  loc_A03850: Call clsbase.Sort(from_stack_1v)
  loc_A03855: FFree1Str var_B0
  loc_A03858: Branch loc_A0394C
  loc_A0385B: FLdI2 var_AC
  loc_A0385E: LitI2_Byte 1
  loc_A03860: EqI2
  loc_A03861: BranchF loc_A038B5
  loc_A03864: LitVarStr var_94, "&"
  loc_A03869: PopAdLdVar
  loc_A0386A: FLdPr Me
  loc_A0386D: VCallAd Control_ID_FiltroMsk
  loc_A03870: FStAdFunc var_A8
  loc_A03873: FLdPr var_A8
  loc_A03876: LateIdSt
  loc_A0387B: FFree1Ad var_A8
  loc_A0387E: LitVarStr var_94, vbNullString
  loc_A03883: PopAdLdVar
  loc_A03884: FLdPr Me
  loc_A03887: VCallAd Control_ID_FiltroMsk
  loc_A0388A: FStAdFunc var_A8
  loc_A0388D: FLdPr var_A8
  loc_A03890: LateIdSt
  loc_A03895: FFree1Ad var_A8
  loc_A03898: LitStr "DetaPart"
  loc_A0389B: FStStrCopy var_B0
  loc_A0389E: FLdRfVar var_B0
  loc_A038A1: FLdPr Me
  loc_A038A4: MemLdRfVar from_stack_1.BuscarCLS
  loc_A038A7: NewIfNullPr clsbase
  loc_A038AA: Call clsbase.Sort(from_stack_1v)
  loc_A038AF: FFree1Str var_B0
  loc_A038B2: Branch loc_A0394C
  loc_A038B5: FLdI2 var_AC
  loc_A038B8: LitI2_Byte 2
  loc_A038BA: EqI2
  loc_A038BB: BranchF loc_A038F5
  loc_A038BE: LitVarStr var_94, "#.#.##.##.##.##"
  loc_A038C3: PopAdLdVar
  loc_A038C4: FLdPr Me
  loc_A038C7: VCallAd Control_ID_FiltroMsk
  loc_A038CA: FStAdFunc var_A8
  loc_A038CD: FLdPr var_A8
  loc_A038D0: LateIdSt
  loc_A038D5: FFree1Ad var_A8
  loc_A038D8: LitStr "CodiCuco"
  loc_A038DB: FStStrCopy var_B0
  loc_A038DE: FLdRfVar var_B0
  loc_A038E1: FLdPr Me
  loc_A038E4: MemLdRfVar from_stack_1.BuscarCLS
  loc_A038E7: NewIfNullPr clsbase
  loc_A038EA: Call clsbase.Sort(from_stack_1v)
  loc_A038EF: FFree1Str var_B0
  loc_A038F2: Branch loc_A0394C
  loc_A038F5: FLdI2 var_AC
  loc_A038F8: LitI2_Byte 3
  loc_A038FA: EqI2
  loc_A038FB: BranchF loc_A0394C
  loc_A038FE: LitVarStr var_94, "&"
  loc_A03903: PopAdLdVar
  loc_A03904: FLdPr Me
  loc_A03907: VCallAd Control_ID_FiltroMsk
  loc_A0390A: FStAdFunc var_A8
  loc_A0390D: FLdPr var_A8
  loc_A03910: LateIdSt
  loc_A03915: FFree1Ad var_A8
  loc_A03918: LitVarStr var_94, vbNullString
  loc_A0391D: PopAdLdVar
  loc_A0391E: FLdPr Me
  loc_A03921: VCallAd Control_ID_FiltroMsk
  loc_A03924: FStAdFunc var_A8
  loc_A03927: FLdPr var_A8
  loc_A0392A: LateIdSt
  loc_A0392F: FFree1Ad var_A8
  loc_A03932: LitStr "DetaCuco"
  loc_A03935: FStStrCopy var_B0
  loc_A03938: FLdRfVar var_B0
  loc_A0393B: FLdPr Me
  loc_A0393E: MemLdRfVar from_stack_1.BuscarCLS
  loc_A03941: NewIfNullPr clsbase
  loc_A03944: Call clsbase.Sort(from_stack_1v)
  loc_A03949: FFree1Str var_B0
  loc_A0394C: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '950028
  'Data Table: 421B6C
  loc_950014: FLdPr Me
  loc_950017: VCallAd Control_ID_FiltroMsk
  loc_95001A: CVarAd
  loc_95001E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950023: FFree1Var var_94 = ""
  loc_950026: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A7B5C8
  'Data Table: 421B6C
  loc_A7B1E8: ILdRf Me
  loc_A7B1EB: CastAd
  loc_A7B1EE: FStAdFunc var_88
  loc_A7B1F1: FLdRfVar var_88
  loc_A7B1F4: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A7B1F9: FFree1Ad var_88
  loc_A7B1FC: FLdPr Me
  loc_A7B1FF: VCallAd Control_ID_FiltroMsk
  loc_A7B202: FStAdFunc var_88
  loc_A7B205: FLdPr var_88
  loc_A7B208: LateIdLdVar var_98 DispID_22 0
  loc_A7B20F: CStrVarTmp
  loc_A7B210: FStStrNoPop var_9C
  loc_A7B213: ImpAdCallI2 Trim$()
  loc_A7B218: FStStrNoPop var_A0
  loc_A7B21B: LitStr vbNullString
  loc_A7B21E: NeStr
  loc_A7B220: FFreeStr var_9C = ""
  loc_A7B227: FFree1Ad var_88
  loc_A7B22A: FFree1Var var_98 = ""
  loc_A7B22D: BranchF loc_A7B4A2
  loc_A7B230: FLdRfVar var_A2
  loc_A7B233: FLdPr Me
  loc_A7B236: VCallAd Control_ID_FiltroCbo
  loc_A7B239: FStAdFunc var_88
  loc_A7B23C: FLdPr var_88
  loc_A7B23F:  = Me.ListIndex
  loc_A7B244: FLdI2 var_A2
  loc_A7B247: LitI2_Byte 0
  loc_A7B249: EqI2
  loc_A7B24A: FFree1Ad var_88
  loc_A7B24D: BranchF loc_A7B2C8
  loc_A7B250: LitStr "CodiPart LIKE '"
  loc_A7B253: FLdPr Me
  loc_A7B256: VCallAd Control_ID_FiltroMsk
  loc_A7B259: FStAdFunc var_88
  loc_A7B25C: FLdPr var_88
  loc_A7B25F: LateIdLdVar var_98 DispID_22 0
  loc_A7B266: CStrVarTmp
  loc_A7B267: FStStrNoPop var_9C
  loc_A7B26A: ConcatStr
  loc_A7B26B: FStStrNoPop var_A0
  loc_A7B26E: LitStr Chr(37) & "'"
  loc_A7B271: ConcatStr
  loc_A7B272: PopTmpLdAdStr
  loc_A7B276: FLdPr Me
  loc_A7B279: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B27C: NewIfNullPr clsbase
  loc_A7B27F: Call clsbase.Filter(from_stack_1v)
  loc_A7B284: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B28D: FFree1Ad var_88
  loc_A7B290: FFree1Var var_98 = ""
  loc_A7B293: LitStr "código comience con: "
  loc_A7B296: FLdPr Me
  loc_A7B299: VCallAd Control_ID_FiltroMsk
  loc_A7B29C: FStAdFunc var_88
  loc_A7B29F: FLdPr var_88
  loc_A7B2A2: LateIdLdVar var_98 DispID_22 0
  loc_A7B2A9: CStrVarTmp
  loc_A7B2AA: FStStrNoPop var_9C
  loc_A7B2AD: ConcatStr
  loc_A7B2AE: FStStrNoPop var_A0
  loc_A7B2B1: FLdPr Me
  loc_A7B2B4: MemStStrCopy
  loc_A7B2B8: FFreeStr var_9C = ""
  loc_A7B2BF: FFree1Ad var_88
  loc_A7B2C2: FFree1Var var_98 = ""
  loc_A7B2C5: Branch loc_A7B49F
  loc_A7B2C8: FLdRfVar var_A2
  loc_A7B2CB: FLdPr Me
  loc_A7B2CE: VCallAd Control_ID_FiltroCbo
  loc_A7B2D1: FStAdFunc var_88
  loc_A7B2D4: FLdPr var_88
  loc_A7B2D7:  = Me.ListIndex
  loc_A7B2DC: FLdI2 var_A2
  loc_A7B2DF: LitI2_Byte 1
  loc_A7B2E1: EqI2
  loc_A7B2E2: FFree1Ad var_88
  loc_A7B2E5: BranchF loc_A7B369
  loc_A7B2E8: LitStr "DetaPart LIKE '" & Chr(37)
  loc_A7B2EB: FLdPr Me
  loc_A7B2EE: VCallAd Control_ID_FiltroMsk
  loc_A7B2F1: FStAdFunc var_88
  loc_A7B2F4: FLdPr var_88
  loc_A7B2F7: LateIdLdVar var_98 DispID_22 0
  loc_A7B2FE: CStrVarTmp
  loc_A7B2FF: FStStrNoPop var_9C
  loc_A7B302: ConcatStr
  loc_A7B303: FStStrNoPop var_A0
  loc_A7B306: LitStr Chr(37) & "'"
  loc_A7B309: ConcatStr
  loc_A7B30A: PopTmpLdAdStr
  loc_A7B30E: FLdPr Me
  loc_A7B311: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B314: NewIfNullPr clsbase
  loc_A7B317: Call clsbase.Filter(from_stack_1v)
  loc_A7B31C: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B325: FFree1Ad var_88
  loc_A7B328: FFree1Var var_98 = ""
  loc_A7B32B: LitStr "detalle contiene: "
  loc_A7B32E: FLdPr Me
  loc_A7B331: VCallAd Control_ID_FiltroMsk
  loc_A7B334: FStAdFunc var_88
  loc_A7B337: FLdPr var_88
  loc_A7B33A: LateIdLdVar var_98 DispID_22 0
  loc_A7B341: CStrVarTmp
  loc_A7B342: FStStrNoPop var_9C
  loc_A7B345: ConcatStr
  loc_A7B346: FStStrNoPop var_A0
  loc_A7B349: LitStr vbNullString
  loc_A7B34C: ConcatStr
  loc_A7B34D: FStStrNoPop var_A8
  loc_A7B350: FLdPr Me
  loc_A7B353: MemStStrCopy
  loc_A7B357: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B360: FFree1Ad var_88
  loc_A7B363: FFree1Var var_98 = ""
  loc_A7B366: Branch loc_A7B49F
  loc_A7B369: FLdRfVar var_A2
  loc_A7B36C: FLdPr Me
  loc_A7B36F: VCallAd Control_ID_FiltroCbo
  loc_A7B372: FStAdFunc var_88
  loc_A7B375: FLdPr var_88
  loc_A7B378:  = Me.ListIndex
  loc_A7B37D: FLdI2 var_A2
  loc_A7B380: LitI2_Byte 2
  loc_A7B382: EqI2
  loc_A7B383: FFree1Ad var_88
  loc_A7B386: BranchF loc_A7B401
  loc_A7B389: LitStr "CodiCuco LIKE '"
  loc_A7B38C: FLdPr Me
  loc_A7B38F: VCallAd Control_ID_FiltroMsk
  loc_A7B392: FStAdFunc var_88
  loc_A7B395: FLdPr var_88
  loc_A7B398: LateIdLdVar var_98 DispID_22 0
  loc_A7B39F: CStrVarTmp
  loc_A7B3A0: FStStrNoPop var_9C
  loc_A7B3A3: ConcatStr
  loc_A7B3A4: FStStrNoPop var_A0
  loc_A7B3A7: LitStr Chr(37) & "'"
  loc_A7B3AA: ConcatStr
  loc_A7B3AB: PopTmpLdAdStr
  loc_A7B3AF: FLdPr Me
  loc_A7B3B2: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B3B5: NewIfNullPr clsbase
  loc_A7B3B8: Call clsbase.Filter(from_stack_1v)
  loc_A7B3BD: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B3C6: FFree1Ad var_88
  loc_A7B3C9: FFree1Var var_98 = ""
  loc_A7B3CC: LitStr "código comience con: "
  loc_A7B3CF: FLdPr Me
  loc_A7B3D2: VCallAd Control_ID_FiltroMsk
  loc_A7B3D5: FStAdFunc var_88
  loc_A7B3D8: FLdPr var_88
  loc_A7B3DB: LateIdLdVar var_98 DispID_22 0
  loc_A7B3E2: CStrVarTmp
  loc_A7B3E3: FStStrNoPop var_9C
  loc_A7B3E6: ConcatStr
  loc_A7B3E7: FStStrNoPop var_A0
  loc_A7B3EA: FLdPr Me
  loc_A7B3ED: MemStStrCopy
  loc_A7B3F1: FFreeStr var_9C = ""
  loc_A7B3F8: FFree1Ad var_88
  loc_A7B3FB: FFree1Var var_98 = ""
  loc_A7B3FE: Branch loc_A7B49F
  loc_A7B401: FLdRfVar var_A2
  loc_A7B404: FLdPr Me
  loc_A7B407: VCallAd Control_ID_FiltroCbo
  loc_A7B40A: FStAdFunc var_88
  loc_A7B40D: FLdPr var_88
  loc_A7B410:  = Me.ListIndex
  loc_A7B415: FLdI2 var_A2
  loc_A7B418: LitI2_Byte 3
  loc_A7B41A: EqI2
  loc_A7B41B: FFree1Ad var_88
  loc_A7B41E: BranchF loc_A7B49F
  loc_A7B421: LitStr "DetaCuco LIKE '" & Chr(37)
  loc_A7B424: FLdPr Me
  loc_A7B427: VCallAd Control_ID_FiltroMsk
  loc_A7B42A: FStAdFunc var_88
  loc_A7B42D: FLdPr var_88
  loc_A7B430: LateIdLdVar var_98 DispID_22 0
  loc_A7B437: CStrVarTmp
  loc_A7B438: FStStrNoPop var_9C
  loc_A7B43B: ConcatStr
  loc_A7B43C: FStStrNoPop var_A0
  loc_A7B43F: LitStr Chr(37) & "'"
  loc_A7B442: ConcatStr
  loc_A7B443: PopTmpLdAdStr
  loc_A7B447: FLdPr Me
  loc_A7B44A: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B44D: NewIfNullPr clsbase
  loc_A7B450: Call clsbase.Filter(from_stack_1v)
  loc_A7B455: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B45E: FFree1Ad var_88
  loc_A7B461: FFree1Var var_98 = ""
  loc_A7B464: LitStr "detalle contiene: "
  loc_A7B467: FLdPr Me
  loc_A7B46A: VCallAd Control_ID_FiltroMsk
  loc_A7B46D: FStAdFunc var_88
  loc_A7B470: FLdPr var_88
  loc_A7B473: LateIdLdVar var_98 DispID_22 0
  loc_A7B47A: CStrVarTmp
  loc_A7B47B: FStStrNoPop var_9C
  loc_A7B47E: ConcatStr
  loc_A7B47F: FStStrNoPop var_A0
  loc_A7B482: LitStr vbNullString
  loc_A7B485: ConcatStr
  loc_A7B486: FStStrNoPop var_A8
  loc_A7B489: FLdPr Me
  loc_A7B48C: MemStStrCopy
  loc_A7B490: FFreeStr var_9C = "": var_A0 = ""
  loc_A7B499: FFree1Ad var_88
  loc_A7B49C: FFree1Var var_98 = ""
  loc_A7B49F: Branch loc_A7B4C6
  loc_A7B4A2: LitStr vbNullString
  loc_A7B4A5: FStStrCopy var_9C
  loc_A7B4A8: FLdRfVar var_9C
  loc_A7B4AB: FLdPr Me
  loc_A7B4AE: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B4B1: NewIfNullPr clsbase
  loc_A7B4B4: Call clsbase.Filter(from_stack_1v)
  loc_A7B4B9: FFree1Str var_9C
  loc_A7B4BC: LitStr vbNullString
  loc_A7B4BF: FLdPr Me
  loc_A7B4C2: MemStStrCopy
  loc_A7B4C6: FLdRfVar var_AC
  loc_A7B4C9: FLdPr Me
  loc_A7B4CC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B4CF: NewIfNullPr clsbase
  loc_A7B4D2: from_stack_1 = clsbase.RecordCount
  loc_A7B4D7: ILdRf var_AC
  loc_A7B4DA: LitI4 0
  loc_A7B4DF: GtI4
  loc_A7B4E0: BranchF loc_A7B57E
  loc_A7B4E3: FLdPr Me
  loc_A7B4E6: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B4E9: NewIfNullAd
  loc_A7B4EC: FStAd var_B0 
  loc_A7B4F0: FLdRfVar var_B0
  loc_A7B4F3: CVarRef
  loc_A7B4F8: ILdRf Me
  loc_A7B4FB: CastAd
  loc_A7B4FE: FStAdFunc var_88
  loc_A7B501: FLdRfVar var_88
  loc_A7B504: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A7B509: ILdRf var_B0
  loc_A7B50C: CastAd
  loc_A7B50F: FLdPr Me
  loc_A7B512: MemStAdFunc
  loc_A7B516: FFreeAd var_88 = ""
  loc_A7B51D: LitI4 0
  loc_A7B522: LitI4 1
  loc_A7B527: FLdRfVar var_C4
  loc_A7B52A: Redim
  loc_A7B534: FLdPr Me
  loc_A7B537: MemLdRfVar from_stack_1.BuscarCLS
  loc_A7B53A: NewIfNullAd
  loc_A7B53D: FStAd var_88 
  loc_A7B541: FLdRfVar var_88
  loc_A7B544: CVarRef
  loc_A7B549: ParmAry1St
  loc_A7B54F: FLdPr Me
  loc_A7B552: VCallAd Control_ID_dgdABMS
  loc_A7B555: CVarAd
  loc_A7B559: ParmAry1St
  loc_A7B55F: FLdRfVar var_C4
  loc_A7B562: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A7B567: ILdRf var_88
  loc_A7B56A: CastAd
  loc_A7B56D: FLdPr Me
  loc_A7B570: MemStAdFunc
  loc_A7B574: FLdRfVar var_C4
  loc_A7B577: Erase
  loc_A7B578: FFree1Ad var_88
  loc_A7B57B: Branch loc_A7B592
  loc_A7B57E: ILdRf Me
  loc_A7B581: CastAd
  loc_A7B584: FStAdFunc var_88
  loc_A7B587: FLdRfVar var_88
  loc_A7B58A: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A7B58F: FFree1Ad var_88
  loc_A7B592: FLdPr Me
  loc_A7B595: VCallAd Control_ID_dgdABMS
  loc_A7B598: FStAdFunc var_B0
  loc_A7B59B: LitI4 0
  loc_A7B5A0: FStStrCopy var_9C
  loc_A7B5A3: FLdRfVar var_9C
  loc_A7B5A6: FLdPr Me
  loc_A7B5A9: MemLdStr sFiltro
  loc_A7B5AC: FLdZeroAd var_B0
  loc_A7B5AF: FStAdFunc var_88
  loc_A7B5B2: FLdRfVar var_88
  loc_A7B5B5: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A7B5BA: FFree1Str var_9C
  loc_A7B5BD: FFreeAd var_88 = ""
  loc_A7B5C4: ExitProcHresult
  loc_A7B5C5: FLdFPR4 MeFF
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '996FE4
  'Data Table: 421B6C
  loc_996F80: ILdI2 KeyAscii
  loc_996F83: LitI2_Byte &H27
  loc_996F85: EqI2
  loc_996F86: BranchF loc_996F8E
  loc_996F89: LitI2_Byte 0
  loc_996F8B: IStI2 KeyAscii
  loc_996F8E: FLdRfVar var_88
  loc_996F91: FLdPr Me
  loc_996F94: MemLdRfVar from_stack_1.BuscarCLS
  loc_996F97: NewIfNullPr clsbase
  loc_996F9A: from_stack_1 = clsbase.RecordCount
  loc_996F9F: ILdRf var_88
  loc_996FA2: LitI4 0
  loc_996FA7: EqI4
  loc_996FA8: ILdI2 KeyAscii
  loc_996FAB: CI4UI1
  loc_996FAC: LitI4 8
  loc_996FB1: NeI4
  loc_996FB2: AndI4
  loc_996FB3: FLdPr Me
  loc_996FB6: VCallAd Control_ID_FiltroMsk
  loc_996FB9: FStAdFunc var_8C
  loc_996FBC: FLdPr var_8C
  loc_996FBF: LateIdLdVar var_9C DispID_16 0
  loc_996FC6: CStrVarTmp
  loc_996FC7: FStStrNoPop var_A0
  loc_996FCA: LitStr vbNullString
  loc_996FCD: EqStr
  loc_996FCF: AndI4
  loc_996FD0: FFree1Str var_A0
  loc_996FD3: FFree1Ad var_8C
  loc_996FD6: FFree1Var var_9C = ""
  loc_996FD9: BranchF loc_996FE1
  loc_996FDC: LitI2_Byte 0
  loc_996FDE: IStI2 KeyAscii
  loc_996FE1: ExitProcHresult
  loc_996FE2: MemLdRfVar from_stack_1.global_-3072
End Sub

Private Sub dgdABMS_UnknownEvent_0 '955740
  'Data Table: 421B6C
  loc_955728: FLdPr Me
  loc_95572B: VCallAd Control_ID_dgdABMS
  loc_95572E: FStAdFunc var_88
  loc_955731: FLdRfVar var_88
  loc_955734: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_955739: FFree1Ad var_88
  loc_95573C: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9556F4
  'Data Table: 421B6C
  loc_9556DC: FLdPr Me
  loc_9556DF: VCallAd Control_ID_dgdABMS
  loc_9556E2: FStAdFunc var_88
  loc_9556E5: FLdRfVar var_88
  loc_9556E8: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9556ED: FFree1Ad var_88
  loc_9556F0: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '95578C
  'Data Table: 421B6C
  loc_955774: ILdRf Me
  loc_955777: FStAdNoPop
  loc_95577B: ImpAdLdRf MemVar_C44F9C
  loc_95577E: NewIfNullPr Me
  loc_955781: Me.Global.Unload from_stack_1
  loc_955786: FFree1Ad var_88
  loc_955789: ExitProcHresult
  loc_95578A: UMiCy
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999D0C
  'Data Table: 421B6C
  loc_999CB0: FLdRfVar var_B4
  loc_999CB3: FLdRfVar var_B0
  loc_999CB6: FLdI2 ColIndex
  loc_999CB9: CVarI2 var_A8
  loc_999CBC: PopAdLdVar
  loc_999CBD: FLdPr Me
  loc_999CC0: VCallAd Control_ID_dgdABMS
  loc_999CC3: FStAdFunc var_88
  loc_999CC6: FLdPr var_88
  loc_999CC9: LateIdLdVar var_98 DispID_105 0
  loc_999CD0: CastAdVar Me
  loc_999CD4: FStAdFunc var_AC
  loc_999CD7: FLdPr var_AC
  loc_999CDA: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_999CDF: FLdPr var_B0
  loc_999CE2:  = Me.DataField
  loc_999CE7: FLdZeroAd var_B4
  loc_999CEA: PopTmpLdAdStr
  loc_999CEE: FLdPr Me
  loc_999CF1: MemLdRfVar from_stack_1.BuscarCLS
  loc_999CF4: NewIfNullPr clsbase
  loc_999CF7: Call clsbase.Sort(from_stack_1v)
  loc_999CFC: FFree1Str var_B8
  loc_999CFF: FFreeAd var_88 = "": var_AC = ""
  loc_999D08: FFree1Var var_98 = ""
  loc_999D0B: ExitProcHresult
End Sub

Private Sub OKButton_Click() '955578
  'Data Table: 421B6C
  loc_955560: ILdRf Me
  loc_955563: FStAdNoPop
  loc_955567: ImpAdLdRf MemVar_C44F9C
  loc_95556A: NewIfNullPr Me
  loc_95556D: Me.Global.Unload from_stack_1
  loc_955572: FFree1Ad var_88
  loc_955575: ExitProcHresult
End Sub

Private Sub Form_Load() 'A78FF4
  'Data Table: 421B6C
  loc_A78C58: FLdPr Me
  loc_A78C5B: MemLdI2 iPeriInfo
  loc_A78C5E: LitI2_Byte 0
  loc_A78C60: EqI2
  loc_A78C61: BranchF loc_A78C6D
  loc_A78C64: ImpAdLdI2 MemVar_C3D064
  loc_A78C67: FLdPr Me
  loc_A78C6A: MemStI2 iPeriInfo
  loc_A78C6D: FLdPr Me
  loc_A78C70: MemLdI2 iPeriInfo
  loc_A78C73: ImpAdLdI2 MemVar_C3D064
  loc_A78C76: NeI2
  loc_A78C77: BranchF loc_A78CB1
  loc_A78C7A: FLdRfVar var_88
  loc_A78C7D: FLdPr Me
  loc_A78C80:  = Me.Caption
  loc_A78C85: ILdRf var_88
  loc_A78C88: LitStr " - Periodo: "
  loc_A78C8B: ConcatStr
  loc_A78C8C: FStStrNoPop var_8C
  loc_A78C8F: FLdPr Me
  loc_A78C92: MemLdI2 iPeriInfo
  loc_A78C95: CStrUI1
  loc_A78C97: FStStrNoPop var_90
  loc_A78C9A: ConcatStr
  loc_A78C9B: FStStrNoPop var_94
  loc_A78C9E: FLdPr Me
  loc_A78CA1: Me.Caption = from_stack_1
  loc_A78CA6: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_A78CB1: FLdRfVar var_98
  loc_A78CB4: FLdPr Me
  loc_A78CB7: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78CBA: NewIfNullPr clsbase
  loc_A78CBD: from_stack_1v = clsbase.RsFrmGet()
  loc_A78CC2: ILdRf var_98
  loc_A78CC5: LitNothing
  loc_A78CC7: Is
  loc_A78CC9: FFree1Ad var_98
  loc_A78CCC: BranchF loc_A78F09
  loc_A78CCF: LitI2_Byte 0
  loc_A78CD1: BranchF loc_A78E60
  loc_A78CD4: FLdPr Me
  loc_A78CD7: MemLdStr iCodiInsu
  loc_A78CDA: LitI4 0
  loc_A78CDF: EqI4
  loc_A78CE0: BranchF loc_A78D8F
  loc_A78CE3: LitStr "SELECT CodiPart, DetaPart, IF(ImpuPart=0,'No','Si') ImpuPart, IF(InvePart=0,'No','Si') InvePart"
  loc_A78CE6: LitStr ", partida.CredPart"
  loc_A78CE9: ConcatStr
  loc_A78CEA: FStStrNoPop var_88
  loc_A78CED: LitStr ", IF((SELECT partcred.PeriInfo FROM partida partcred WHERE partcred.PeriInfo = partida.PeriInfo AND partcred.CredPart = partida.CodiPart GROUP BY partida.CredPart) IS NULL,'No','Si') EsPartCred"
  loc_A78CF0: ConcatStr
  loc_A78CF1: FStStrNoPop var_8C
  loc_A78CF4: LitStr ", partida.CodiCuco, IFNULL(DetaCuco,'') AS DetaCuco"
  loc_A78CF7: ConcatStr
  loc_A78CF8: FStStrNoPop var_90
  loc_A78CFB: LitStr " FROM partida"
  loc_A78CFE: ConcatStr
  loc_A78CFF: FStStrNoPop var_94
  loc_A78D02: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = partida.PeriInfo AND cc.CodiCuco = partida.CodiCuco"
  loc_A78D05: ConcatStr
  loc_A78D06: FStStrNoPop var_9C
  loc_A78D09: LitStr " WHERE partida.PeriInfo = "
  loc_A78D0C: ConcatStr
  loc_A78D0D: FStStrNoPop var_A0
  loc_A78D10: FLdPr Me
  loc_A78D13: MemLdI2 iPeriInfo
  loc_A78D16: CStrUI1
  loc_A78D18: FStStrNoPop var_A4
  loc_A78D1B: ConcatStr
  loc_A78D1C: CVarStr var_114
  loc_A78D1F: LitVarStr var_E4, " AND partida.BajaUsua = '' "
  loc_A78D24: FStVarCopyObj var_F4
  loc_A78D27: FLdRfVar var_F4
  loc_A78D2A: LitVarStr var_C4, vbNullString
  loc_A78D2F: FStVarCopyObj var_D4
  loc_A78D32: FLdRfVar var_D4
  loc_A78D35: FLdPr Me
  loc_A78D38: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A78D3B: CVarRef
  loc_A78D40: FLdRfVar var_104
  loc_A78D43: ImpAdCallFPR4  = IIf(, , )
  loc_A78D48: FLdRfVar var_104
  loc_A78D4B: ConcatVar var_124
  loc_A78D4F: LitVarStr var_134, " ORDER BY TRUE"
  loc_A78D54: ConcatVar var_144
  loc_A78D58: CStrVarVal var_148
  loc_A78D5C: FLdPr Me
  loc_A78D5F: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78D62: NewIfNullPr clsbase
  loc_A78D65: Call clsbase.RedefineRS(from_stack_1v)
  loc_A78D6A: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A78D7D: FFreeVar var_D4 = "": var_F4 = "": var_114 = "": var_104 = "": var_124 = ""
  loc_A78D8C: Branch loc_A78E5D
  loc_A78D8F: LitStr "SELECT insupart.CodiPart, DetaPart, IF(ImpuPart=0,'No','Si') ImpuPart, IF(InvePart=0,'No','Si') InvePart"
  loc_A78D92: LitStr ", partida.CredPart"
  loc_A78D95: ConcatStr
  loc_A78D96: FStStrNoPop var_88
  loc_A78D99: LitStr ", IF((SELECT partcred.PeriInfo FROM partida partcred WHERE partcred.PeriInfo = partida.PeriInfo AND partcred.CredPart = partida.CodiPart GROUP BY partida.CredPart) IS NULL,'No','Si') EsPartCred"
  loc_A78D9C: ConcatStr
  loc_A78D9D: FStStrNoPop var_8C
  loc_A78DA0: LitStr ", partida.CodiCuco, IFNULL(DetaCuco,'') AS DetaCuco"
  loc_A78DA3: ConcatStr
  loc_A78DA4: FStStrNoPop var_90
  loc_A78DA7: LitStr " FROM insupart"
  loc_A78DAA: ConcatStr
  loc_A78DAB: FStStrNoPop var_94
  loc_A78DAE: LitStr " INNER JOIN partida ON partida.PeriInfo = insupart.PeriInfo AND partida.CodiPart = insupart.CodiPart"
  loc_A78DB1: ConcatStr
  loc_A78DB2: FStStrNoPop var_9C
  loc_A78DB5: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = partida.PeriInfo AND cc.CodiCuco = partida.CodiCuco"
  loc_A78DB8: ConcatStr
  loc_A78DB9: FStStrNoPop var_A0
  loc_A78DBC: LitStr " WHERE insupart.PeriInfo = "
  loc_A78DBF: ConcatStr
  loc_A78DC0: FStStrNoPop var_A4
  loc_A78DC3: FLdPr Me
  loc_A78DC6: MemLdI2 iPeriInfo
  loc_A78DC9: CStrUI1
  loc_A78DCB: FStStrNoPop var_148
  loc_A78DCE: ConcatStr
  loc_A78DCF: FStStrNoPop var_14C
  loc_A78DD2: LitStr " AND CodiInsu = "
  loc_A78DD5: ConcatStr
  loc_A78DD6: FStStrNoPop var_150
  loc_A78DD9: FLdPr Me
  loc_A78DDC: MemLdStr iCodiInsu
  loc_A78DDF: CStrI4
  loc_A78DE1: FStStrNoPop var_154
  loc_A78DE4: ConcatStr
  loc_A78DE5: CVarStr var_114
  loc_A78DE8: LitVarStr var_E4, " AND partida.BajaUsua = '' "
  loc_A78DED: FStVarCopyObj var_F4
  loc_A78DF0: FLdRfVar var_F4
  loc_A78DF3: LitVarStr var_C4, vbNullString
  loc_A78DF8: FStVarCopyObj var_D4
  loc_A78DFB: FLdRfVar var_D4
  loc_A78DFE: FLdPr Me
  loc_A78E01: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A78E04: CVarRef
  loc_A78E09: FLdRfVar var_104
  loc_A78E0C: ImpAdCallFPR4  = IIf(, , )
  loc_A78E11: FLdRfVar var_104
  loc_A78E14: ConcatVar var_124
  loc_A78E18: LitVarStr var_134, " ORDER BY TRUE"
  loc_A78E1D: ConcatVar var_144
  loc_A78E21: CStrVarVal var_158
  loc_A78E25: FLdPr Me
  loc_A78E28: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78E2B: NewIfNullPr clsbase
  loc_A78E2E: Call clsbase.RedefineRS(from_stack_1v)
  loc_A78E33: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = ""
  loc_A78E4E: FFreeVar var_D4 = "": var_F4 = "": var_114 = "": var_104 = "": var_124 = ""
  loc_A78E5D: Branch loc_A78F09
  loc_A78E60: LitStr "SELECT CodiPart, DetaPart, IF(ImpuPart=0,'No','Si') ImpuPart, IF(InvePart=0,'No','Si') InvePart"
  loc_A78E63: LitStr ", partida.CredPart"
  loc_A78E66: ConcatStr
  loc_A78E67: FStStrNoPop var_88
  loc_A78E6A: LitStr ", IF((SELECT partcred.PeriInfo FROM partida partcred WHERE partcred.PeriInfo = partida.PeriInfo AND partcred.CredPart = partida.CodiPart GROUP BY partida.CredPart) IS NULL,'No','Si') EsPartCred"
  loc_A78E6D: ConcatStr
  loc_A78E6E: FStStrNoPop var_8C
  loc_A78E71: LitStr ", partida.CodiCuco, IFNULL(DetaCuco,'') AS DetaCuco"
  loc_A78E74: ConcatStr
  loc_A78E75: FStStrNoPop var_90
  loc_A78E78: LitStr " FROM partida"
  loc_A78E7B: ConcatStr
  loc_A78E7C: FStStrNoPop var_94
  loc_A78E7F: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = partida.PeriInfo AND cc.CodiCuco = partida.CodiCuco"
  loc_A78E82: ConcatStr
  loc_A78E83: FStStrNoPop var_9C
  loc_A78E86: LitStr " WHERE partida.PeriInfo = "
  loc_A78E89: ConcatStr
  loc_A78E8A: FStStrNoPop var_A0
  loc_A78E8D: FLdPr Me
  loc_A78E90: MemLdI2 iPeriInfo
  loc_A78E93: CStrUI1
  loc_A78E95: FStStrNoPop var_A4
  loc_A78E98: ConcatStr
  loc_A78E99: CVarStr var_114
  loc_A78E9C: LitVarStr var_E4, " AND partida.BajaUsua = '' "
  loc_A78EA1: FStVarCopyObj var_F4
  loc_A78EA4: FLdRfVar var_F4
  loc_A78EA7: LitVarStr var_C4, vbNullString
  loc_A78EAC: FStVarCopyObj var_D4
  loc_A78EAF: FLdRfVar var_D4
  loc_A78EB2: FLdPr Me
  loc_A78EB5: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A78EB8: CVarRef
  loc_A78EBD: FLdRfVar var_104
  loc_A78EC0: ImpAdCallFPR4  = IIf(, , )
  loc_A78EC5: FLdRfVar var_104
  loc_A78EC8: ConcatVar var_124
  loc_A78ECC: LitVarStr var_134, " ORDER BY partida.PeriInfo"
  loc_A78ED1: ConcatVar var_144
  loc_A78ED5: CStrVarVal var_148
  loc_A78ED9: FLdPr Me
  loc_A78EDC: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78EDF: NewIfNullPr clsbase
  loc_A78EE2: Call clsbase.RedefineRS(from_stack_1v)
  loc_A78EE7: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A78EFA: FFreeVar var_D4 = "": var_F4 = "": var_114 = "": var_104 = "": var_124 = ""
  loc_A78F09: LitVarI2 var_B4, 0
  loc_A78F0E: PopAdLdVar
  loc_A78F0F: LitStr "Partida (Código)"
  loc_A78F12: FLdPr Me
  loc_A78F15: VCallAd Control_ID_FiltroCbo
  loc_A78F18: FStAdFunc var_98
  loc_A78F1B: FLdPr var_98
  loc_A78F1E: Me.AddItem from_stack_1, from_stack_2
  loc_A78F23: FFree1Ad var_98
  loc_A78F26: LitVarI2 var_B4, 1
  loc_A78F2B: PopAdLdVar
  loc_A78F2C: LitStr "Partida (Detalle)"
  loc_A78F2F: FLdPr Me
  loc_A78F32: VCallAd Control_ID_FiltroCbo
  loc_A78F35: FStAdFunc var_98
  loc_A78F38: FLdPr var_98
  loc_A78F3B: Me.AddItem from_stack_1, from_stack_2
  loc_A78F40: FFree1Ad var_98
  loc_A78F43: LitVarI2 var_B4, 2
  loc_A78F48: PopAdLdVar
  loc_A78F49: LitStr "Cuenta Contable (Código)"
  loc_A78F4C: FLdPr Me
  loc_A78F4F: VCallAd Control_ID_FiltroCbo
  loc_A78F52: FStAdFunc var_98
  loc_A78F55: FLdPr var_98
  loc_A78F58: Me.AddItem from_stack_1, from_stack_2
  loc_A78F5D: FFree1Ad var_98
  loc_A78F60: LitVarI2 var_B4, 3
  loc_A78F65: PopAdLdVar
  loc_A78F66: LitStr "Cuenta Contable (Detalle)"
  loc_A78F69: FLdPr Me
  loc_A78F6C: VCallAd Control_ID_FiltroCbo
  loc_A78F6F: FStAdFunc var_98
  loc_A78F72: FLdPr var_98
  loc_A78F75: Me.AddItem from_stack_1, from_stack_2
  loc_A78F7A: FFree1Ad var_98
  loc_A78F7D: LitI2_Byte 1
  loc_A78F7F: FLdPr Me
  loc_A78F82: VCallAd Control_ID_FiltroCbo
  loc_A78F85: FStAdFunc var_98
  loc_A78F88: FLdPr var_98
  loc_A78F8B: Me.ListIndex = from_stack_1
  loc_A78F90: FFree1Ad var_98
  loc_A78F93: LitI4 0
  loc_A78F98: LitI4 1
  loc_A78F9D: FLdRfVar var_15C
  loc_A78FA0: Redim
  loc_A78FAA: FLdPr Me
  loc_A78FAD: MemLdRfVar from_stack_1.BuscarCLS
  loc_A78FB0: NewIfNullAd
  loc_A78FB3: FStAd var_98 
  loc_A78FB7: FLdRfVar var_98
  loc_A78FBA: CVarRef
  loc_A78FBF: ParmAry1St
  loc_A78FC5: FLdPr Me
  loc_A78FC8: VCallAd Control_ID_dgdABMS
  loc_A78FCB: CVarAd
  loc_A78FCF: ParmAry1St
  loc_A78FD5: FLdRfVar var_15C
  loc_A78FD8: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A78FDD: ILdRf var_98
  loc_A78FE0: CastAd
  loc_A78FE3: FLdPr Me
  loc_A78FE6: MemStAdFunc
  loc_A78FEA: FLdRfVar var_15C
  loc_A78FED: Erase
  loc_A78FEE: FFree1Ad var_98
  loc_A78FF1: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '975C98
  'Data Table: 421B6C
  loc_975C6C: LitI2_Byte 0
  loc_975C6E: FLdPr Me
  loc_975C71: MemStI2 iPeriInfo
  loc_975C74: LitI4 0
  loc_975C79: FLdPr Me
  loc_975C7C: MemStI4 iCodiInsu
  loc_975C7F: ILdRf Me
  loc_975C82: FStAdNoPop
  loc_975C86: ImpAdLdRf MemVar_C44F9C
  loc_975C89: NewIfNullPr Me
  loc_975C8C: Me.Global.Unload from_stack_1
  loc_975C91: FFree1Ad var_88
  loc_975C94: ExitProcHresult
End Sub

Private Sub Form_Activate() '952AE8
  'Data Table: 421B6C
  loc_952AD4: FLdPr Me
  loc_952AD7: VCallAd Control_ID_FiltroMsk
  loc_952ADA: CVarAd
  loc_952ADE: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_952AE3: FFree1Var var_94 = ""
  loc_952AE6: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '96A4B0
  'Data Table: 421B6C
  loc_96A494: On Error Resume Next
  loc_96A499: ILdI2 KeyAscii
  loc_96A49C: CI4UI1
  loc_96A49D: LitI4 &HD
  loc_96A4A2: EqI4
  loc_96A4A3: BranchF loc_96A4AD
  loc_96A4A8: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_96A4AF: ExitProcHresult
End Sub

Public Function iPeriInfoGet() '4220B0
  iPeriInfoGet = iPeriInfo
End Function

Public Sub iPeriInfoPut(Value) '4220BF
  iPeriInfo = Value
End Sub

Public Function iCodiInsuGet() '4220CE
  iCodiInsuGet = iCodiInsu
End Function

Public Sub iCodiInsuPut(Value) '4220DD
  iCodiInsu = Value
End Sub

Public Function MuestroAnuladosGet() '4220EC
  MuestroAnuladosGet = MuestroAnulados
End Function

Public Sub MuestroAnuladosPut(Value) '4220FB
  MuestroAnulados = Value
End Sub

Public Function global_4332396Get() '42210A
  global_4332396Get = global_4332396
End Function

Public Sub global_4332396Put(Value) '422124
  global_4332396 = Value
End Sub

Public Sub global_4332396Set(Value) '42213E
  global_4332396 = Value
End Sub

Public Function sFiltroGet() '422158
  sFiltroGet = sFiltro
End Function

Public Sub sFiltroPut(Value) '422167
  sFiltro = Value
End Sub

Public Sub Constructor(wPeriInfo, wCodiInsu, sWhere) 'A460BC
  'Data Table: 421B6C
  loc_A45E7C: ILdRf wCodiInsu
  loc_A45E7F: FStStrCopy var_88
  loc_A45E82: ILdRf sWhere
  loc_A45E85: FStStrCopy var_8C
  loc_A45E88: LitI2_Byte 0
  loc_A45E8A: BranchF loc_A46011
  loc_A45E8D: ILdRf var_88
  loc_A45E90: CR8Str
  loc_A45E92: LitI2_Byte 0
  loc_A45E94: CR8I2
  loc_A45E95: EqR4
  loc_A45E96: BranchF loc_A45F43
  loc_A45E99: LitStr "SELECT CodiPart, DetaPart, IF(ImpuPart=0,'No','Si') ImpuPart, IF(InvePart=0,'No','Si') InvePart"
  loc_A45E9C: LitStr ", partida.CredPart"
  loc_A45E9F: ConcatStr
  loc_A45EA0: FStStrNoPop var_90
  loc_A45EA3: LitStr ", IF((SELECT partcred.PeriInfo FROM partida partcred WHERE partcred.PeriInfo = partida.PeriInfo AND partcred.CredPart = partida.CodiPart GROUP BY partida.CredPart) IS NULL,'No','Si') EsPartCred"
  loc_A45EA6: ConcatStr
  loc_A45EA7: FStStrNoPop var_94
  loc_A45EAA: LitStr ", partida.CodiCuco, IFNULL(DetaCuco,'') AS DetaCuco"
  loc_A45EAD: ConcatStr
  loc_A45EAE: FStStrNoPop var_98
  loc_A45EB1: LitStr " FROM partida"
  loc_A45EB4: ConcatStr
  loc_A45EB5: FStStrNoPop var_9C
  loc_A45EB8: LitStr " LEFT JOIN infogov.cuentacontable cc ON cc.PeriInfo = partida.PeriInfo AND cc.CodiCuco = partida.CodiCuco"
  loc_A45EBB: ConcatStr
  loc_A45EBC: FStStrNoPop var_A0
  loc_A45EBF: LitStr " WHERE partida.PeriInfo = "
  loc_A45EC2: ConcatStr
  loc_A45EC3: FStStrNoPop var_A4
  loc_A45EC6: FLdI2 wPeriInfo
  loc_A45EC9: CStrUI1
  loc_A45ECB: FStStrNoPop var_A8
  loc_A45ECE: ConcatStr
  loc_A45ECF: CVarStr var_118
  loc_A45ED2: LitVarStr var_E8, " AND partida.BajaUsua = '' "
  loc_A45ED7: FStVarCopyObj var_F8
  loc_A45EDA: FLdRfVar var_F8
  loc_A45EDD: LitVarStr var_C8, vbNullString
  loc_A45EE2: FStVarCopyObj var_D8
  loc_A45EE5: FLdRfVar var_D8
  loc_A45EE8: FLdPr Me
  loc_A45EEB: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A45EEE: CVarRef
  loc_A45EF3: FLdRfVar var_108
  loc_A45EF6: ImpAdCallFPR4  = IIf(, , )
  loc_A45EFB: FLdRfVar var_108
  loc_A45EFE: ConcatVar var_128
  loc_A45F02: ILdRf var_8C
  loc_A45F05: CVarStr var_138
  loc_A45F08: ConcatVar var_148
  loc_A45F0C: CStrVarVal var_14C
  loc_A45F10: FLdPr Me
  loc_A45F13: MemLdRfVar from_stack_1.BuscarCLS
  loc_A45F16: NewIfNullPr clsbase
  loc_A45F19: Call clsbase.RedefineRS(from_stack_1v)
  loc_A45F1E: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A45F31: FFreeVar var_D8 = "": var_F8 = "": var_118 = "": var_108 = "": var_128 = ""
  loc_A45F40: Branch loc_A4600E
  loc_A45F43: LitStr "SELECT insupart.CodiPart, DetaPart, IF(ImpuPart=0,'No','Si') ImpuPart, IF(InvePart=0,'No','Si') InvePart"
  loc_A45F46: LitStr ", partida.CredPart"
  loc_A45F49: ConcatStr
  loc_A45F4A: FStStrNoPop var_90
  loc_A45F4D: LitStr ", IF((SELECT partcred.PeriInfo FROM partida partcred WHERE partcred.PeriInfo = partida.PeriInfo AND partcred.CredPart = partida.CodiPart GROUP BY partida.CredPart) IS NULL,'No','Si') EsPartCred"
  loc_A45F50: ConcatStr
  loc_A45F51: FStStrNoPop var_94
  loc_A45F54: LitStr ", partida.CodiCuco, IFNULL(DetaCuco,'') AS DetaCuco"
  loc_A45F57: ConcatStr
  loc_A45F58: FStStrNoPop var_98
  loc_A45F5B: LitStr " FROM insupart"
  loc_A45F5E: ConcatStr
  loc_A45F5F: FStStrNoPop var_9C
  loc_A45F62: LitStr " INNER JOIN partida ON partida.PeriInfo = insupart.PeriInfo AND partida.CodiPart = insupart.CodiPart"
  loc_A45F65: ConcatStr
  loc_A45F66: FStStrNoPop var_A0
  loc_A45F69: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = partida.PeriInfo AND cc.CodiCuco = partida.CodiCuco"
  loc_A45F6C: ConcatStr
  loc_A45F6D: FStStrNoPop var_A4
  loc_A45F70: LitStr " WHERE insupart.PeriInfo = "
  loc_A45F73: ConcatStr
  loc_A45F74: FStStrNoPop var_A8
  loc_A45F77: FLdI2 wPeriInfo
  loc_A45F7A: CStrUI1
  loc_A45F7C: FStStrNoPop var_14C
  loc_A45F7F: ConcatStr
  loc_A45F80: FStStrNoPop var_150
  loc_A45F83: LitStr " AND CodiInsu = '"
  loc_A45F86: ConcatStr
  loc_A45F87: FStStrNoPop var_154
  loc_A45F8A: ILdRf var_88
  loc_A45F8D: ConcatStr
  loc_A45F8E: FStStrNoPop var_158
  loc_A45F91: LitStr "'"
  loc_A45F94: ConcatStr
  loc_A45F95: CVarStr var_118
  loc_A45F98: LitVarStr var_E8, " AND partida.BajaUsua = '' "
  loc_A45F9D: FStVarCopyObj var_F8
  loc_A45FA0: FLdRfVar var_F8
  loc_A45FA3: LitVarStr var_C8, vbNullString
  loc_A45FA8: FStVarCopyObj var_D8
  loc_A45FAB: FLdRfVar var_D8
  loc_A45FAE: FLdPr Me
  loc_A45FB1: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A45FB4: CVarRef
  loc_A45FB9: FLdRfVar var_108
  loc_A45FBC: ImpAdCallFPR4  = IIf(, , )
  loc_A45FC1: FLdRfVar var_108
  loc_A45FC4: ConcatVar var_128
  loc_A45FC8: ILdRf var_8C
  loc_A45FCB: CVarStr var_138
  loc_A45FCE: ConcatVar var_148
  loc_A45FD2: CStrVarVal var_15C
  loc_A45FD6: FLdPr Me
  loc_A45FD9: MemLdRfVar from_stack_1.BuscarCLS
  loc_A45FDC: NewIfNullPr clsbase
  loc_A45FDF: Call clsbase.RedefineRS(from_stack_1v)
  loc_A45FE4: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = ""
  loc_A45FFF: FFreeVar var_D8 = "": var_F8 = "": var_118 = "": var_108 = "": var_128 = ""
  loc_A4600E: Branch loc_A460B8
  loc_A46011: LitStr "SELECT CodiPart, DetaPart, IF(ImpuPart=0,'No','Si') ImpuPart, IF(InvePart=0,'No','Si') InvePart"
  loc_A46014: LitStr ", partida.CredPart"
  loc_A46017: ConcatStr
  loc_A46018: FStStrNoPop var_90
  loc_A4601B: LitStr ", IF((SELECT partcred.PeriInfo FROM partida partcred WHERE partcred.PeriInfo = partida.PeriInfo AND partcred.CredPart = partida.CodiPart GROUP BY partida.CredPart) IS NULL,'No','Si') EsPartCred"
  loc_A4601E: ConcatStr
  loc_A4601F: FStStrNoPop var_94
  loc_A46022: LitStr ", partida.CodiCuco, IFNULL(DetaCuco,'') AS DetaCuco"
  loc_A46025: ConcatStr
  loc_A46026: FStStrNoPop var_98
  loc_A46029: LitStr " FROM partida"
  loc_A4602C: ConcatStr
  loc_A4602D: FStStrNoPop var_9C
  loc_A46030: LitStr " LEFT JOIN infogov.cuentacontable AS cc ON cc.PeriInfo = partida.PeriInfo AND cc.CodiCuco = partida.CodiCuco"
  loc_A46033: ConcatStr
  loc_A46034: FStStrNoPop var_A0
  loc_A46037: LitStr " WHERE partida.PeriInfo = "
  loc_A4603A: ConcatStr
  loc_A4603B: FStStrNoPop var_A4
  loc_A4603E: FLdI2 wPeriInfo
  loc_A46041: CStrUI1
  loc_A46043: FStStrNoPop var_A8
  loc_A46046: ConcatStr
  loc_A46047: CVarStr var_118
  loc_A4604A: LitVarStr var_E8, " AND partida.BajaUsua = '' "
  loc_A4604F: FStVarCopyObj var_F8
  loc_A46052: FLdRfVar var_F8
  loc_A46055: LitVarStr var_C8, vbNullString
  loc_A4605A: FStVarCopyObj var_D8
  loc_A4605D: FLdRfVar var_D8
  loc_A46060: FLdPr Me
  loc_A46063: MemLdRfVar from_stack_1.MuestroAnulados
  loc_A46066: CVarRef
  loc_A4606B: FLdRfVar var_108
  loc_A4606E: ImpAdCallFPR4  = IIf(, , )
  loc_A46073: FLdRfVar var_108
  loc_A46076: ConcatVar var_128
  loc_A4607A: ILdRf var_8C
  loc_A4607D: CVarStr var_138
  loc_A46080: ConcatVar var_148
  loc_A46084: CStrVarVal var_14C
  loc_A46088: FLdPr Me
  loc_A4608B: MemLdRfVar from_stack_1.BuscarCLS
  loc_A4608E: NewIfNullPr clsbase
  loc_A46091: Call clsbase.RedefineRS(from_stack_1v)
  loc_A46096: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_A460A9: FFreeVar var_D8 = "": var_F8 = "": var_118 = "": var_108 = "": var_128 = ""
  loc_A460B8: ExitProcHresult
End Sub
