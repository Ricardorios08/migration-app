VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoVII
  Caption = "Acuerdo 2988 - Anexo VII"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoVII.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9270
  ClientHeight = 2775
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2520
    Width = 9270
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptA2988AnexoVII.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 4
    Cancel = -1  'True
    Picture = "rptA2988AnexoVII.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoVII.frx":0B9C
    Left = 360
    Top = 240
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1320
    Width = 5895
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdTXT
      Caption = "&TXT HTC"
      Left = 4440
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 14
    End
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1320
    Width = 3015
    Height = 1095
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 1215
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4440
      Top = 360
      Width = 2055
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 2055
      Top = 360
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 1335
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8040
    Top = 480
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 5
    OleObjectBlob = "rptA2988AnexoVII.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoVII"

Public htmFile As Variant
Public txtFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00583FA0
  bStruc(40) As Byte ' String fields: 10
End Type


Private Sub cmdXLS_Click() '96B7BC
  'Data Table: 447F94
  loc_96B7A0: LitI2_Byte &HFF
  loc_96B7A2: LitI2_Byte 0
  loc_96B7A4: ILdRf Me
  loc_96B7A7: CastAd
  loc_96B7AA: FStAdFunc var_88
  loc_96B7AD: FLdRfVar var_88
  loc_96B7B0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B7B5: FFree1Ad var_88
  loc_96B7B8: ExitProcHresult
End Sub

Private Sub Form_Load() '9E3280
  'Data Table: 447F94
  loc_9E3180: LitVar_TRUE var_D8
  loc_9E3183: LitVar_FALSE
  loc_9E3187: LitStr "Municipalidad de Guaymallén"
  loc_9E318A: LitStr "Municipalidad de Malargüe"
  loc_9E318D: EqStr
  loc_9E318F: CVarBoolI2 var_98
  loc_9E3193: FLdRfVar var_E8
  loc_9E3196: ImpAdCallFPR4  = IIf(, , )
  loc_9E319B: FLdRfVar var_E8
  loc_9E319E: CBoolVar
  loc_9E31A0: ImpAdStI2 MemVar_C3D840
  loc_9E31A3: FFreeVar var_98 = "": var_B8 = "": var_D8 = ""
  loc_9E31AE: ILdRf Me
  loc_9E31B1: CastAd
  loc_9E31B4: FStAdFunc var_EC
  loc_9E31B7: FLdRfVar var_EC
  loc_9E31BA: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9E31BF: FFree1Ad var_EC
  loc_9E31C2: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9E31C5: FLdRfVar var_88
  loc_9E31C8: NewIfNullPr clsperiodo
  loc_9E31CB: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9E31D0: FLdRfVar var_F0
  loc_9E31D3: FLdRfVar var_88
  loc_9E31D6: NewIfNullPr clsperiodo
  loc_9E31D9: from_stack_1 = clsperiodo.RecordCount
  loc_9E31DE: ILdRf var_F0
  loc_9E31E1: LitI4 0
  loc_9E31E6: GtI4
  loc_9E31E7: BranchF loc_9E327A
  loc_9E31EA: FLdRfVar var_88
  loc_9E31ED: NewIfNullPr clsperiodo
  loc_9E31F0: Call clsperiodo.MoveFirst()
  loc_9E31F5: FLdRfVar var_F2
  loc_9E31F8: FLdRfVar var_88
  loc_9E31FB: NewIfNullPr clsperiodo
  loc_9E31FE: from_stack_1 = clsperiodo.EOF
  loc_9E3203: FLdI2 var_F2
  loc_9E3206: NotI4
  loc_9E3207: BranchF loc_9E327A
  loc_9E320A: LitVar_Missing var_A8
  loc_9E320D: PopAdLdVar
  loc_9E320E: FLdRfVar var_B8
  loc_9E3211: FLdRfVar var_FC
  loc_9E3214: LitVarStr var_98, "PeriInfo"
  loc_9E3219: PopAdLdVar
  loc_9E321A: FLdRfVar var_F8
  loc_9E321D: FLdRfVar var_EC
  loc_9E3220: FLdRfVar var_88
  loc_9E3223: NewIfNullPr clsperiodo
  loc_9E3226: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9E322B: FLdPr var_EC
  loc_9E322E:  = Me.Fields
  loc_9E3233: FLdPr var_F8
  loc_9E3236: from_stack_2 = Me.Item(from_stack_1)
  loc_9E323B: FLdPr var_FC
  loc_9E323E:  = Me.Value
  loc_9E3243: FLdRfVar var_B8
  loc_9E3246: CStrVarTmp
  loc_9E3247: FStStrNoPop var_100
  loc_9E324A: FLdPr Me
  loc_9E324D: VCallAd Control_ID_cboPeriodo
  loc_9E3250: FStAdFunc var_104
  loc_9E3253: FLdPr var_104
  loc_9E3256: Me.AddItem from_stack_1, from_stack_2
  loc_9E325B: FFree1Str var_100
  loc_9E325E: FFreeAd var_EC = "": var_F8 = "": var_FC = ""
  loc_9E3269: FFree1Var var_B8 = ""
  loc_9E326C: FLdRfVar var_88
  loc_9E326F: NewIfNullPr clsperiodo
  loc_9E3272: Call clsperiodo.MoveSiguiente()
  loc_9E3277: Branch loc_9E31F5
  loc_9E327A: Call cmdNueva_Click()
  loc_9E327F: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9587A4
  'Data Table: 447F94
  loc_95878C: FLdPr Me
  loc_95878F: VCallAd Control_ID_wbbReporte
  loc_958792: FStAdFunc var_88
  loc_958795: FLdRfVar var_88
  loc_958798: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_95879D: FFree1Ad var_88
  loc_9587A0: ExitProcHresult
  loc_9587A1: FLdRfVar Cancel00
End Sub

Private Sub cmdHtml_Click() '95766C
  'Data Table: 447F94
  loc_957654: ILdRf Me
  loc_957657: CastAd
  loc_95765A: FStAdFunc var_88
  loc_95765D: FLdRfVar var_88
  loc_957660: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_957665: FFree1Ad var_88
  loc_957668: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '954570
  'Data Table: 447F94
  loc_954558: ILdRf Me
  loc_95455B: CastAd
  loc_95455E: FStAdFunc var_88
  loc_954561: FLdRfVar var_88
  loc_954564: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_954569: FFree1Ad var_88
  loc_95456C: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988E34
  'Data Table: 447F94
  loc_988DFC: FLdPr Me
  loc_988DFF: VCallAd Control_ID_statusBar
  loc_988E02: FStAdFunc var_88
  loc_988E05: FLdPr var_88
  loc_988E08: LateIdLdVar var_98 DispID_1 0
  loc_988E0F: CStrVarTmp
  loc_988E10: CVarStr var_A8
  loc_988E13: PopAdLdVar
  loc_988E14: FLdPr Me
  loc_988E17: VCallAd Control_ID_statusBar
  loc_988E1A: FStAdFunc var_BC
  loc_988E1D: FLdPr var_BC
  loc_988E20: LateIdSt
  loc_988E25: FFreeAd var_88 = ""
  loc_988E2C: FFreeVar var_98 = ""
  loc_988E33: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '978FD4
  'Data Table: 447F94
  loc_978FA4: LitVarStr var_94, "Cerrando..."
  loc_978FA9: PopAdLdVar
  loc_978FAA: FLdPr Me
  loc_978FAD: VCallAd Control_ID_statusBar
  loc_978FB0: FStAdFunc var_A8
  loc_978FB3: FLdPr var_A8
  loc_978FB6: LateIdSt
  loc_978FBB: FFree1Ad var_A8
  loc_978FBE: ILdRf Me
  loc_978FC1: FStAdNoPop
  loc_978FC5: ImpAdLdRf MemVar_C44F9C
  loc_978FC8: NewIfNullPr Me
  loc_978FCB: Me.Global.Unload from_stack_1
  loc_978FD0: FFree1Ad var_A8
  loc_978FD3: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9573C0
  'Data Table: 447F94
  loc_9573A8: ILdRf Me
  loc_9573AB: CastAd
  loc_9573AE: FStAdFunc var_88
  loc_9573B1: FLdRfVar var_88
  loc_9573B4: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9573B9: FFree1Ad var_88
  loc_9573BC: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '98FB60
  'Data Table: 447F94
  loc_98FB14: LitI2_Byte 0
  loc_98FB16: FLdPr Me
  loc_98FB19: MemStI2 bGenerado
  loc_98FB1C: LitI2_Byte &HFF
  loc_98FB1E: FLdPr Me
  loc_98FB21: MemStI2 bLogos
  loc_98FB24: ImpAdLdI2 MemVar_C3D064
  loc_98FB27: CStrUI1
  loc_98FB29: FStStrNoPop var_88
  loc_98FB2C: FLdPr Me
  loc_98FB2F: VCallAd Control_ID_cboPeriodo
  loc_98FB32: FStAdFunc var_8C
  loc_98FB35: FLdPr var_8C
  loc_98FB38: Me.Text = from_stack_1
  loc_98FB3D: FFree1Str var_88
  loc_98FB40: FFree1Ad var_8C
  loc_98FB43: Call HabilitarCriterio()
  loc_98FB48: ILdRf Me
  loc_98FB4B: CastAd
  loc_98FB4E: FStAdFunc var_8C
  loc_98FB51: FLdRfVar var_8C
  loc_98FB54: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_98FB59: FFree1Ad var_8C
  loc_98FB5C: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '957918
  'Data Table: 447F94
  loc_957900: LitI2_Byte 0
  loc_957902: ILdRf Me
  loc_957905: CastAd
  loc_957908: FStAdFunc var_88
  loc_95790B: FLdRfVar var_88
  loc_95790E: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_957913: FFree1Ad var_88
  loc_957916: ExitProcHresult
End Sub

Private Sub cmdTxt_Click() '96FD58
  'Data Table: 447F94
  loc_96FD34: LitStr "AutApliArt100.txt"
  loc_96FD37: FLdPr Me
  loc_96FD3A: Me.Tag = from_stack_1
  loc_96FD3F: LitI2_Byte 0
  loc_96FD41: ILdRf Me
  loc_96FD44: CastAd
  loc_96FD47: FStAdFunc var_88
  loc_96FD4A: FLdRfVar var_88
  loc_96FD4D: ImpAdCallFPR4 Proc_263_3_9FD750(, )
  loc_96FD52: FFree1Ad var_88
  loc_96FD55: ExitProcHresult
End Sub

Public Function htmFileGet() '448B8C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '448B9B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '448BAA
  htmFile = Value
End Sub

Public Function txtFileGet() '448BB9
  txtFileGet = txtFile
End Function

Public Sub txtFilePut(Value) '448BC8
  txtFile = Value
End Sub

Public Sub txtFileSet(Value) '448BD7
  txtFile = Value
End Sub

Public Function bLogosGet() '448BE6
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '448BF5
  bLogos = Value
End Sub

Public Function bGeneradoGet() '448C04
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '448C13
  bGenerado = Value
End Sub

Public Sub GeneraTXT() 'A46344
  'Data Table: 447F94
  loc_A4613C: FLdRfVar var_90
  loc_A4613F: FLdPr Me
  loc_A46142: VCallAd Control_ID_cboPeriodo
  loc_A46145: FStAdFunc var_8C
  loc_A46148: FLdPr var_8C
  loc_A4614B:  = Me.Text
  loc_A46150: FLdZeroAd var_90
  loc_A46153: FStStr var_88
  loc_A46156: FFree1Ad var_8C
  loc_A46159: FLdRfVar var_8C
  loc_A4615C: LitI2_Byte 0
  loc_A4615E: LitI2_Byte &HFF
  loc_A46160: ImpAdLdI4 MemVar_C3D05C
  loc_A46163: FLdPr Me
  loc_A46166: MemLdRfVar from_stack_1.global_92
  loc_A46169: NewIfNullPr IFileSystem3
  loc_A4616C: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A46171: ILdRf var_8C
  loc_A46174: FLdPr Me
  loc_A46177: MemStVarAd
  loc_A4617B: FFree1Ad var_8C
  loc_A4617E: LitVarStr var_B0, "PeriodoPresenta|ExpID|CuentaCod|CuentaDet|NormaLegal|Concepto|PrimerEjercicioAfectado|UltimoEjercicioAfectado|MontoOriginal|MontoCierre|MontoEjericiosFuturos"
  loc_A46183: LitI4 &HD
  loc_A46188: FLdRfVar var_A0
  loc_A4618B: ImpAdCallFPR4  = Chr()
  loc_A46190: FLdRfVar var_A0
  loc_A46193: ConcatVar var_C0
  loc_A46197: LitI4 &HA
  loc_A4619C: FLdRfVar var_D0
  loc_A4619F: ImpAdCallFPR4  = Chr()
  loc_A461A4: FLdRfVar var_D0
  loc_A461A7: ConcatVar var_E0
  loc_A461AB: PopAdLdVar
  loc_A461AC: FLdPr Me
  loc_A461AF: MemLdRfVar from_stack_1.txtFile
  loc_A461B2: LdPrVar
  loc_A461B4: LateMemCall
  loc_A461BA: FFreeVar var_A0 = "": var_C0 = "": var_D0 = ""
  loc_A461C5: LitI2_Byte 1
  loc_A461C7: FLdPr Me
  loc_A461CA: MemLdRfVar from_stack_1.global_100
  loc_A461CD: FLdPr Me
  loc_A461D0: MemLdStr global_96
  loc_A461D3: LitI2_Byte 1
  loc_A461D5: FnUBound
  loc_A461D7: CI2I4
  loc_A461D8: ForI2 var_F4
  loc_A461DE: FLdPr Me
  loc_A461E1: MemLdI2 global_100
  loc_A461E4: CI4UI1
  loc_A461E5: FLdPr Me
  loc_A461E8: MemLdStr global_96
  loc_A461EB: AryLock
  loc_A461EE: Ary1LdRf
  loc_A461EF: FStR4 var_FC
  loc_A461F2: ILdRf var_88
  loc_A461F5: LitStr "|"
  loc_A461F8: ConcatStr
  loc_A461F9: FStStrNoPop var_90
  loc_A461FC: LitStr "eee-2022-060204"
  loc_A461FF: ConcatStr
  loc_A46200: FStStrNoPop var_100
  loc_A46203: LitStr "|"
  loc_A46206: ConcatStr
  loc_A46207: FStStrNoPop var_104
  loc_A4620A: FMemLdR4 var_FC(0)
  loc_A4620F: ConcatStr
  loc_A46210: FStStrNoPop var_108
  loc_A46213: LitStr "|"
  loc_A46216: ConcatStr
  loc_A46217: FStStrNoPop var_10C
  loc_A4621A: FMemLdR4 var_FC(4)
  loc_A4621F: ConcatStr
  loc_A46220: FStStrNoPop var_110
  loc_A46223: LitStr "|"
  loc_A46226: ConcatStr
  loc_A46227: FStStrNoPop var_114
  loc_A4622A: FMemLdR4 var_FC(8)
  loc_A4622F: ConcatStr
  loc_A46230: FStStrNoPop var_118
  loc_A46233: LitStr "|"
  loc_A46236: ConcatStr
  loc_A46237: FStStrNoPop var_11C
  loc_A4623A: FMemLdR4 var_FC(12)
  loc_A4623F: ConcatStr
  loc_A46240: FStStrNoPop var_120
  loc_A46243: LitStr "|"
  loc_A46246: ConcatStr
  loc_A46247: FStStrNoPop var_124
  loc_A4624A: FMemLdR4 var_FC(16)
  loc_A4624F: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A46254: FStStrNoPop var_128
  loc_A46257: ConcatStr
  loc_A46258: FStStrNoPop var_12C
  loc_A4625B: LitStr "|"
  loc_A4625E: ConcatStr
  loc_A4625F: FStStrNoPop var_130
  loc_A46262: FMemLdR4 var_FC(20)
  loc_A46267: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A4626C: FStStrNoPop var_134
  loc_A4626F: ConcatStr
  loc_A46270: FStStrNoPop var_138
  loc_A46273: LitStr "|"
  loc_A46276: ConcatStr
  loc_A46277: FStStrNoPop var_13C
  loc_A4627A: FMemLdR4 var_FC(24)
  loc_A4627F: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A46284: FStStrNoPop var_140
  loc_A46287: ConcatStr
  loc_A46288: FStStrNoPop var_144
  loc_A4628B: LitStr "|"
  loc_A4628E: ConcatStr
  loc_A4628F: FStStrNoPop var_148
  loc_A46292: FMemLdR4 var_FC(28)
  loc_A46297: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A4629C: FStStrNoPop var_14C
  loc_A4629F: ConcatStr
  loc_A462A0: FStStrNoPop var_150
  loc_A462A3: LitStr "|"
  loc_A462A6: ConcatStr
  loc_A462A7: FStStrNoPop var_154
  loc_A462AA: FMemLdR4 var_FC(32)
  loc_A462AF: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A462B4: FStStrNoPop var_158
  loc_A462B7: ConcatStr
  loc_A462B8: FStStrNoPop var_15C
  loc_A462BB: LitStr "|"
  loc_A462BE: ConcatStr
  loc_A462BF: FStStrNoPop var_160
  loc_A462C2: FMemLdR4 var_FC(36)
  loc_A462C7: ImpAdCallI2 Proc_261_60_9953E4()
  loc_A462CC: FStStrNoPop var_164
  loc_A462CF: ConcatStr
  loc_A462D0: CVarStr var_A0
  loc_A462D3: PopAdLdVar
  loc_A462D4: FLdPr Me
  loc_A462D7: MemLdRfVar from_stack_1.txtFile
  loc_A462DA: LdPrVar
  loc_A462DC: LateMemCall
  loc_A462E2: FFreeStr var_90 = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = "": var_160 = ""
  loc_A4631B: FFree1Var var_A0 = ""
  loc_A4631E: LitI4 0
  loc_A46323: FStR4 var_FC
  loc_A46326: AryUnlock
  loc_A46329: FLdPr Me
  loc_A4632C: MemLdRfVar from_stack_1.global_100
  loc_A4632F: NextI2 var_F4, loc_A461DE
  loc_A46334: FLdPr Me
  loc_A46337: MemLdRfVar from_stack_1.txtFile
  loc_A4633A: LdPrVar
  loc_A4633C: LateMemCall
  loc_A46342: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '984AF4
  'Data Table: 447F94
  loc_984AC0: LitI4 0
  loc_984AC5: LitI4 0
  loc_984ACA: FLdRfVar var_88
  loc_984ACD: Redim
  loc_984AD7: FLdPr Me
  loc_984ADA: VCallAd Control_ID_cboPeriodo
  loc_984ADD: CVarAd
  loc_984AE1: ParmAry1St
  loc_984AE7: FLdRfVar var_88
  loc_984AEA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984AEF: FLdRfVar var_88
  loc_984AF2: Erase
  loc_984AF3: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B20198
  'Data Table: 447F94
  loc_B1F8E4: FLdPr Me
  loc_B1F8E7: MemLdI2 bGenerado
  loc_B1F8EA: BranchF loc_B1F8EE
  loc_B1F8ED: ExitProcHresult
  loc_B1F8EE: LitVarStr var_94, "Generando reporte..."
  loc_B1F8F3: PopAdLdVar
  loc_B1F8F4: FLdPr Me
  loc_B1F8F7: VCallAd Control_ID_statusBar
  loc_B1F8FA: FStAdFunc var_A8
  loc_B1F8FD: FLdPr var_A8
  loc_B1F900: LateIdSt
  loc_B1F905: FFree1Ad var_A8
  loc_B1F908: LitI4 &HB
  loc_B1F90D: CI2I4
  loc_B1F90E: FLdPr Me
  loc_B1F911: Me.MousePointer = from_stack_1
  loc_B1F916: FLdPr Me
  loc_B1F919: MemLdRfVar from_stack_1.global_88
  loc_B1F91C: NewIfNullAd
  loc_B1F91F: FStAd var_AC 
  loc_B1F923: FLdRfVar var_B0
  loc_B1F926: FLdPr Me
  loc_B1F929: VCallAd Control_ID_cboPeriodo
  loc_B1F92C: FStAdFunc var_A8
  loc_B1F92F: FLdPr var_A8
  loc_B1F932:  = Me.Text
  loc_B1F937: ILdRf var_B0
  loc_B1F93A: CI2Str
  loc_B1F93C: FLdPr var_AC
  loc_B1F93F: Call clsbase.Anexos_IX_VII_XIV(from_stack_1v)
  loc_B1F944: FFree1Str var_B0
  loc_B1F947: FFree1Ad var_A8
  loc_B1F94A: LitStr "Municipalidad de Guaymallén"
  loc_B1F94D: FStStrCopy var_B4
  loc_B1F950: ILdRf var_B4
  loc_B1F953: LitStr "Municipalidad de Rivadavia"
  loc_B1F956: EqStr
  loc_B1F958: BranchF loc_B1FB41
  loc_B1F95B: FLdRfVar var_B0
  loc_B1F95E: FLdPr Me
  loc_B1F961: VCallAd Control_ID_cboPeriodo
  loc_B1F964: FStAdFunc var_A8
  loc_B1F967: FLdPr var_A8
  loc_B1F96A:  = Me.Text
  loc_B1F96F: FLdZeroAd var_B0
  loc_B1F972: FStStr var_B8
  loc_B1F975: FFree1Ad var_A8
  loc_B1F978: ILdRf var_B8
  loc_B1F97B: LitStr "2011"
  loc_B1F97E: EqStr
  loc_B1F980: BranchF loc_B1FA09
  loc_B1F983: LitStr "SELECT '' NoleAsie, '' OrgaAsie, tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu"
  loc_B1F986: LitStr ", SaldIniH-SaldIniD SaldInic"
  loc_B1F989: ConcatStr
  loc_B1F98A: FStStrNoPop var_B0
  loc_B1F98D: LitStr ", MoviFonD Egresos, MoviFonH Ingresos"
  loc_B1F990: ConcatStr
  loc_B1F991: FStStrNoPop var_BC
  loc_B1F994: LitStr ", VarPatD AjusDebe"
  loc_B1F997: ConcatStr
  loc_B1F998: FStStrNoPop var_C0
  loc_B1F99B: LitStr ", VarPatH AjusHabe"
  loc_B1F99E: ConcatStr
  loc_B1F99F: FStStrNoPop var_C4
  loc_B1F9A2: LitStr ", SaldFinaH-SaldFinaD SaldFina"
  loc_B1F9A5: ConcatStr
  loc_B1F9A6: FStStrNoPop var_C8
  loc_B1F9A9: LitStr " FROM tmovi"
  loc_B1F9AC: ConcatStr
  loc_B1F9AD: FStStrNoPop var_CC
  loc_B1F9B0: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B1F9B3: ConcatStr
  loc_B1F9B4: FStStrNoPop var_D0
  loc_B1F9B7: LitStr " WHERE tmovi.CodiCuco <> CajaPaco"
  loc_B1F9BA: ConcatStr
  loc_B1F9BB: FStStrNoPop var_D4
  loc_B1F9BE: LitStr " AND ( ((CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "') AND (MoviFonD <> 0 OR MoviFonH <> 0))"
  loc_B1F9C1: ConcatStr
  loc_B1F9C2: FStStrNoPop var_D8
  loc_B1F9C5: LitStr " OR (CodiTicu Like '2113' OR CodiTicu Like '2114' OR CodiTicu LIKE '2115' OR CodiTicu LIKE '2116' OR CodiTicu LIKE '2117')"
  loc_B1F9C8: ConcatStr
  loc_B1F9C9: FStStrNoPop var_DC
  loc_B1F9CC: LitStr " OR CodiCuco IN (1125020000,1125030000,1125050000,1125120000,1125150000,1125180000,1125190000,1125200000,1125230000,1126030000,1126050000,1126080000,1126100000,1126110000,1126150000,1126160000,1126170000,1131010000)"
  loc_B1F9CF: ConcatStr
  loc_B1F9D0: FStStrNoPop var_E0
  loc_B1F9D3: LitStr " OR CodiCuco LIKE '112523" & Chr(37) & "' )"
  loc_B1F9D6: ConcatStr
  loc_B1F9D7: FStStrNoPop var_E4
  loc_B1F9DA: LitStr " AND CodiCuco <> '2117010000'"
  loc_B1F9DD: ConcatStr
  loc_B1F9DE: FStStrNoPop var_E8
  loc_B1F9E1: FLdPr var_AC
  loc_B1F9E4: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1F9E9: FFreeStr var_B0 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B1FA06: Branch loc_B1FB3E
  loc_B1FA09: ILdRf var_B8
  loc_B1FA0C: LitStr "2012"
  loc_B1FA0F: EqStr
  loc_B1FA11: BranchT loc_B1FA2A
  loc_B1FA14: ILdRf var_B8
  loc_B1FA17: LitStr "2013"
  loc_B1FA1A: EqStr
  loc_B1FA1C: BranchT loc_B1FA2A
  loc_B1FA1F: ILdRf var_B8
  loc_B1FA22: LitStr "2014"
  loc_B1FA25: EqStr
  loc_B1FA27: BranchF loc_B1FAB0
  loc_B1FA2A: LitStr "SELECT '' NoleAsie, '' OrgaAsie, tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu"
  loc_B1FA2D: LitStr ", SaldIniH-SaldIniD SaldInic"
  loc_B1FA30: ConcatStr
  loc_B1FA31: FStStrNoPop var_B0
  loc_B1FA34: LitStr ", MoviFonD Egresos, MoviFonH Ingresos"
  loc_B1FA37: ConcatStr
  loc_B1FA38: FStStrNoPop var_BC
  loc_B1FA3B: LitStr ", VarPatD AjusDebe"
  loc_B1FA3E: ConcatStr
  loc_B1FA3F: FStStrNoPop var_C0
  loc_B1FA42: LitStr ", VarPatH AjusHabe"
  loc_B1FA45: ConcatStr
  loc_B1FA46: FStStrNoPop var_C4
  loc_B1FA49: LitStr ", SaldFinaH-SaldFinaD SaldFina"
  loc_B1FA4C: ConcatStr
  loc_B1FA4D: FStStrNoPop var_C8
  loc_B1FA50: LitStr " FROM tmovi"
  loc_B1FA53: ConcatStr
  loc_B1FA54: FStStrNoPop var_CC
  loc_B1FA57: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B1FA5A: ConcatStr
  loc_B1FA5B: FStStrNoPop var_D0
  loc_B1FA5E: LitStr " WHERE tmovi.CodiCuco <> CajaPaco"
  loc_B1FA61: ConcatStr
  loc_B1FA62: FStStrNoPop var_D4
  loc_B1FA65: LitStr " AND ( ((CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "') AND (MoviFonD <> 0 OR MoviFonH <> 0))"
  loc_B1FA68: ConcatStr
  loc_B1FA69: FStStrNoPop var_D8
  loc_B1FA6C: LitStr " OR (CodiTicu Like '2113' OR CodiTicu Like '2114' OR CodiTicu LIKE '2115' OR CodiTicu LIKE '2116' OR CodiTicu LIKE '2117')"
  loc_B1FA6F: ConcatStr
  loc_B1FA70: FStStrNoPop var_DC
  loc_B1FA73: LitStr " OR CodiCuco IN (1125020000,1125030000,1125050000,1125120000,1125150000,1125180000,1125190000,1125200000,1125230000,1126030000,1126050000,1126080000,1126100000,1126110000,1126150000,1126160000,1126170000,1131010000,2226000000,2227000000,2111010000,2111020000,2111040000,2111060000,2111070000,2111080000,2111090000,2111100000,2111120000,2111110000)"
  loc_B1FA76: ConcatStr
  loc_B1FA77: FStStrNoPop var_E0
  loc_B1FA7A: LitStr " OR CodiCuco LIKE '112523" & Chr(37) & "' )"
  loc_B1FA7D: ConcatStr
  loc_B1FA7E: FStStrNoPop var_E4
  loc_B1FA81: LitStr " AND CodiCuco <> '2117010000'"
  loc_B1FA84: ConcatStr
  loc_B1FA85: FStStrNoPop var_E8
  loc_B1FA88: FLdPr var_AC
  loc_B1FA8B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1FA90: FFreeStr var_B0 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B1FAAD: Branch loc_B1FB3E
  loc_B1FAB0: ILdRf var_B8
  loc_B1FAB3: LitStr "2015"
  loc_B1FAB6: EqStr
  loc_B1FAB8: BranchF loc_B1FB3E
  loc_B1FABB: LitStr "SELECT '' NoleAsie, '' OrgaAsie, tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu"
  loc_B1FABE: LitStr ", SaldIniH-SaldIniD SaldInic"
  loc_B1FAC1: ConcatStr
  loc_B1FAC2: FStStrNoPop var_B0
  loc_B1FAC5: LitStr ", MoviFonD Egresos, MoviFonH Ingresos"
  loc_B1FAC8: ConcatStr
  loc_B1FAC9: FStStrNoPop var_BC
  loc_B1FACC: LitStr ", VarPatD AjusDebe"
  loc_B1FACF: ConcatStr
  loc_B1FAD0: FStStrNoPop var_C0
  loc_B1FAD3: LitStr ", VarPatH AjusHabe"
  loc_B1FAD6: ConcatStr
  loc_B1FAD7: FStStrNoPop var_C4
  loc_B1FADA: LitStr ", SaldFinaH-SaldFinaD SaldFina"
  loc_B1FADD: ConcatStr
  loc_B1FADE: FStStrNoPop var_C8
  loc_B1FAE1: LitStr " FROM tmovi"
  loc_B1FAE4: ConcatStr
  loc_B1FAE5: FStStrNoPop var_CC
  loc_B1FAE8: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B1FAEB: ConcatStr
  loc_B1FAEC: FStStrNoPop var_D0
  loc_B1FAEF: LitStr " WHERE tmovi.CodiCuco <> CajaPaco"
  loc_B1FAF2: ConcatStr
  loc_B1FAF3: FStStrNoPop var_D4
  loc_B1FAF6: LitStr " AND ( ((CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "') AND (MoviFonD <> 0 OR MoviFonH <> 0))"
  loc_B1FAF9: ConcatStr
  loc_B1FAFA: FStStrNoPop var_D8
  loc_B1FAFD: LitStr " OR (CodiTicu Like '2113' OR CodiTicu Like '2114' OR CodiTicu LIKE '2115' OR CodiTicu LIKE '2116' OR CodiTicu LIKE '2117')"
  loc_B1FB00: ConcatStr
  loc_B1FB01: FStStrNoPop var_DC
  loc_B1FB04: LitStr " OR CodiCuco IN (1125020000,1125030000,1125050000,1125120000,1125150000,1125180000,1125190000,1125200000,1125230000,1126030000,1126050000,1126080000,1126100000,1126110000,1126150000,1126160000,1126170000,1131010000,2226000000,2227000000,2111010000,2111020000,2111040000,2111060000,2111070000,2111080000,2111090000,2111100000,2111120000,2111110000,2231000000,2232000000,2233000000,2234000000)"
  loc_B1FB07: ConcatStr
  loc_B1FB08: FStStrNoPop var_E0
  loc_B1FB0B: LitStr " OR CodiCuco LIKE '112523" & Chr(37) & "' )"
  loc_B1FB0E: ConcatStr
  loc_B1FB0F: FStStrNoPop var_E4
  loc_B1FB12: LitStr " AND CodiCuco <> '2117010000'"
  loc_B1FB15: ConcatStr
  loc_B1FB16: FStStrNoPop var_E8
  loc_B1FB19: FLdPr var_AC
  loc_B1FB1C: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1FB21: FFreeStr var_B0 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_B1FB3E: Branch loc_B1FC97
  loc_B1FB41: ILdRf var_B4
  loc_B1FB44: LitStr "Municipalidad de Lavalle"
  loc_B1FB47: EqStr
  loc_B1FB49: BranchF loc_B1FBB7
  loc_B1FB4C: LitStr "SELECT '' NoleAsie, '' OrgaAsie, tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu"
  loc_B1FB4F: LitStr ", SaldIniH-SaldIniD SaldInic"
  loc_B1FB52: ConcatStr
  loc_B1FB53: FStStrNoPop var_B0
  loc_B1FB56: LitStr ", MoviFonD Egresos, MoviFonH Ingresos"
  loc_B1FB59: ConcatStr
  loc_B1FB5A: FStStrNoPop var_BC
  loc_B1FB5D: LitStr ", VarPatD AjusDebe"
  loc_B1FB60: ConcatStr
  loc_B1FB61: FStStrNoPop var_C0
  loc_B1FB64: LitStr ", VarPatH AjusHabe"
  loc_B1FB67: ConcatStr
  loc_B1FB68: FStStrNoPop var_C4
  loc_B1FB6B: LitStr ", SaldFinaH-SaldFinaD SaldFina"
  loc_B1FB6E: ConcatStr
  loc_B1FB6F: FStStrNoPop var_C8
  loc_B1FB72: LitStr " FROM tmovi"
  loc_B1FB75: ConcatStr
  loc_B1FB76: FStStrNoPop var_CC
  loc_B1FB79: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B1FB7C: ConcatStr
  loc_B1FB7D: FStStrNoPop var_D0
  loc_B1FB80: LitStr " WHERE tmovi.CodiCuco <> CajaPaco"
  loc_B1FB83: ConcatStr
  loc_B1FB84: FStStrNoPop var_D4
  loc_B1FB87: LitStr " AND (CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "')"
  loc_B1FB8A: ConcatStr
  loc_B1FB8B: FStStrNoPop var_D8
  loc_B1FB8E: LitStr " AND (CodiTicu Like '2113' or (MoviFonD != 0 or MoviFonH != 0) )"
  loc_B1FB91: ConcatStr
  loc_B1FB92: FStStrNoPop var_DC
  loc_B1FB95: FLdPr var_AC
  loc_B1FB98: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1FB9D: FFreeStr var_B0 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B1FBB4: Branch loc_B1FC97
  loc_B1FBB7: ILdRf var_B4
  loc_B1FBBA: LitStr "Municipalidad de Tunuyán"
  loc_B1FBBD: EqStr
  loc_B1FBBF: BranchT loc_B1FBCD
  loc_B1FBC2: ILdRf var_B4
  loc_B1FBC5: LitStr "Municipalidad de General Alvear"
  loc_B1FBC8: EqStr
  loc_B1FBCA: BranchF loc_B1FC38
  loc_B1FBCD: LitStr "SELECT '' NoleAsie, '' OrgaAsie, tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu"
  loc_B1FBD0: LitStr ", SaldIniH-SaldIniD SaldInic"
  loc_B1FBD3: ConcatStr
  loc_B1FBD4: FStStrNoPop var_B0
  loc_B1FBD7: LitStr ", MoviFonD Egresos, MoviFonH Ingresos"
  loc_B1FBDA: ConcatStr
  loc_B1FBDB: FStStrNoPop var_BC
  loc_B1FBDE: LitStr ", VarPatD AjusDebe"
  loc_B1FBE1: ConcatStr
  loc_B1FBE2: FStStrNoPop var_C0
  loc_B1FBE5: LitStr ", VarPatH AjusHabe"
  loc_B1FBE8: ConcatStr
  loc_B1FBE9: FStStrNoPop var_C4
  loc_B1FBEC: LitStr ", SaldFinaH-SaldFinaD SaldFina"
  loc_B1FBEF: ConcatStr
  loc_B1FBF0: FStStrNoPop var_C8
  loc_B1FBF3: LitStr " FROM tmovi"
  loc_B1FBF6: ConcatStr
  loc_B1FBF7: FStStrNoPop var_CC
  loc_B1FBFA: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B1FBFD: ConcatStr
  loc_B1FBFE: FStStrNoPop var_D0
  loc_B1FC01: LitStr " WHERE tmovi.CodiCuco <> CajaPaco"
  loc_B1FC04: ConcatStr
  loc_B1FC05: FStStrNoPop var_D4
  loc_B1FC08: LitStr " AND ( ((CodiTicu Like '1" & Chr(37) & "' OR CodiTicu Like '2" & Chr(37) & "' OR CodiTicu Like '3" & Chr(37) & "') AND (MoviFonD <> 0 OR MoviFonH <> 0))"
  loc_B1FC0B: ConcatStr
  loc_B1FC0C: FStStrNoPop var_D8
  loc_B1FC0F: LitStr " OR (CodiTicu Like '2113' OR CodiTicu Like '2114' OR CodiTicu LIKE '2115' OR CodiTicu LIKE '2116' OR CodiTicu LIKE '2117'))"
  loc_B1FC12: ConcatStr
  loc_B1FC13: FStStrNoPop var_DC
  loc_B1FC16: FLdPr var_AC
  loc_B1FC19: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1FC1E: FFreeStr var_B0 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B1FC35: Branch loc_B1FC97
  loc_B1FC38: LitStr "SELECT '' NoleAsie, '' OrgaAsie, tmovi.PeriInfo, CodiCuco, DetaCuco, CodiTicu"
  loc_B1FC3B: LitStr ", SaldIniH-SaldIniD SaldInic"
  loc_B1FC3E: ConcatStr
  loc_B1FC3F: FStStrNoPop var_B0
  loc_B1FC42: LitStr ", MoviFonD Egresos, MoviFonH Ingresos"
  loc_B1FC45: ConcatStr
  loc_B1FC46: FStStrNoPop var_BC
  loc_B1FC49: LitStr ", VarPatD AjusDebe"
  loc_B1FC4C: ConcatStr
  loc_B1FC4D: FStStrNoPop var_C0
  loc_B1FC50: LitStr ", VarPatH AjusHabe"
  loc_B1FC53: ConcatStr
  loc_B1FC54: FStStrNoPop var_C4
  loc_B1FC57: LitStr ", SaldFinaH-SaldFinaD SaldFina"
  loc_B1FC5A: ConcatStr
  loc_B1FC5B: FStStrNoPop var_C8
  loc_B1FC5E: LitStr " FROM tmovi"
  loc_B1FC61: ConcatStr
  loc_B1FC62: FStStrNoPop var_CC
  loc_B1FC65: LitStr " INNER JOIN paraconta ON paraconta.PeriInfo = tmovi.PeriInfo"
  loc_B1FC68: ConcatStr
  loc_B1FC69: FStStrNoPop var_D0
  loc_B1FC6C: LitStr " WHERE tmovi.CodiCuco <> CajaPaco"
  loc_B1FC6F: ConcatStr
  loc_B1FC70: FStStrNoPop var_D4
  loc_B1FC73: LitStr " AND (CodiTicu Like '2113' OR CodiTicu Like '2114' OR CodiTicu LIKE '2115' OR CodiTicu LIKE '2116' OR CodiTicu LIKE '2117')"
  loc_B1FC76: ConcatStr
  loc_B1FC77: FStStrNoPop var_D8
  loc_B1FC7A: FLdPr var_AC
  loc_B1FC7D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B1FC82: FFreeStr var_B0 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = ""
  loc_B1FC97: FLdRfVar var_EC
  loc_B1FC9A: FLdPr var_AC
  loc_B1FC9D: from_stack_1 = clsbase.RecordCount
  loc_B1FCA2: ILdRf var_EC
  loc_B1FCA5: LitI4 1
  loc_B1FCAA: LtI4
  loc_B1FCAB: BranchF loc_B1FCBE
  loc_B1FCAE: LitI4 0
  loc_B1FCB3: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B1FCB6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B1FCBB: Branch loc_B2016F
  loc_B1FCBE: FLdPr var_AC
  loc_B1FCC1: Call clsbase.MoveFirst()
  loc_B1FCC6: LitI4 0
  loc_B1FCCB: LitI4 1
  loc_B1FCD0: FLdPr Me
  loc_B1FCD3: MemLdRfVar from_stack_1.global_104
  loc_B1FCD6: Redim
  loc_B1FCE0: LitI4 0
  loc_B1FCE5: FLdRfVar var_EC
  loc_B1FCE8: FLdPr var_AC
  loc_B1FCEB: from_stack_1 = clsbase.RecordCount
  loc_B1FCF0: ILdRf var_EC
  loc_B1FCF3: FLdPr Me
  loc_B1FCF6: MemLdRfVar from_stack_1.global_96
  loc_B1FCF9: Redim
  loc_B1FD03: LitI2_Byte 1
  loc_B1FD05: FLdPr Me
  loc_B1FD08: MemLdRfVar from_stack_1.global_100
  loc_B1FD0B: FLdPr Me
  loc_B1FD0E: MemLdStr global_96
  loc_B1FD11: LitI2_Byte 1
  loc_B1FD13: FnUBound
  loc_B1FD15: CI2I4
  loc_B1FD16: ForI2 var_F0
  loc_B1FD1C: FLdRfVar var_F8
  loc_B1FD1F: LitVarStr var_94, "NoleAsie"
  loc_B1FD24: PopAdLdVar
  loc_B1FD25: FLdRfVar var_F4
  loc_B1FD28: FLdRfVar var_A8
  loc_B1FD2B: FLdPr var_AC
  loc_B1FD2E: from_stack_1v = clsbase.RsFrmGet()
  loc_B1FD33: FLdPr var_A8
  loc_B1FD36:  = Me.Fields
  loc_B1FD3B: FLdPr var_F4
  loc_B1FD3E: from_stack_2 = Me.Item(from_stack_1)
  loc_B1FD43: LitI2_Byte 0
  loc_B1FD45: LitVar_Missing var_11C
  loc_B1FD48: LitI2_Byte 0
  loc_B1FD4A: FLdZeroAd var_F8
  loc_B1FD4D: CVarAd
  loc_B1FD51: PopAdLdVar
  loc_B1FD52: FLdPr Me
  loc_B1FD55: MemLdI2 global_100
  loc_B1FD58: CI4UI1
  loc_B1FD59: FLdPr Me
  loc_B1FD5C: MemLdStr global_96
  loc_B1FD5F: AryLock
  loc_B1FD62: Ary1LdPr
  loc_B1FD63: MemLdRfVar from_stack_1.global_0
  loc_B1FD66: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1FD6B: AryUnlock
  loc_B1FD6E: FFreeAd var_A8 = ""
  loc_B1FD75: FFreeVar var_10C = ""
  loc_B1FD7C: FLdRfVar var_F8
  loc_B1FD7F: LitVarStr var_94, "OrgaAsie"
  loc_B1FD84: PopAdLdVar
  loc_B1FD85: FLdRfVar var_F4
  loc_B1FD88: FLdRfVar var_A8
  loc_B1FD8B: FLdPr var_AC
  loc_B1FD8E: from_stack_1v = clsbase.RsFrmGet()
  loc_B1FD93: FLdPr var_A8
  loc_B1FD96:  = Me.Fields
  loc_B1FD9B: FLdPr var_F4
  loc_B1FD9E: from_stack_2 = Me.Item(from_stack_1)
  loc_B1FDA3: LitI2_Byte 0
  loc_B1FDA5: LitVar_Missing var_11C
  loc_B1FDA8: LitI2_Byte 0
  loc_B1FDAA: FLdZeroAd var_F8
  loc_B1FDAD: CVarAd
  loc_B1FDB1: PopAdLdVar
  loc_B1FDB2: FLdPr Me
  loc_B1FDB5: MemLdI2 global_100
  loc_B1FDB8: CI4UI1
  loc_B1FDB9: FLdPr Me
  loc_B1FDBC: MemLdStr global_96
  loc_B1FDBF: AryLock
  loc_B1FDC2: Ary1LdPr
  loc_B1FDC3: MemLdRfVar from_stack_1.global_4
  loc_B1FDC6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1FDCB: AryUnlock
  loc_B1FDCE: FFreeAd var_A8 = ""
  loc_B1FDD5: FFreeVar var_10C = ""
  loc_B1FDDC: FLdRfVar var_F8
  loc_B1FDDF: LitVarStr var_94, "CodiCuco"
  loc_B1FDE4: PopAdLdVar
  loc_B1FDE5: FLdRfVar var_F4
  loc_B1FDE8: FLdRfVar var_A8
  loc_B1FDEB: FLdPr var_AC
  loc_B1FDEE: from_stack_1v = clsbase.RsFrmGet()
  loc_B1FDF3: FLdPr var_A8
  loc_B1FDF6:  = Me.Fields
  loc_B1FDFB: FLdPr var_F4
  loc_B1FDFE: from_stack_2 = Me.Item(from_stack_1)
  loc_B1FE03: LitI2_Byte 0
  loc_B1FE05: LitVar_Missing var_11C
  loc_B1FE08: LitI2_Byte 0
  loc_B1FE0A: FLdZeroAd var_F8
  loc_B1FE0D: CVarAd
  loc_B1FE11: PopAdLdVar
  loc_B1FE12: FLdPr Me
  loc_B1FE15: MemLdI2 global_100
  loc_B1FE18: CI4UI1
  loc_B1FE19: FLdPr Me
  loc_B1FE1C: MemLdStr global_96
  loc_B1FE1F: AryLock
  loc_B1FE22: Ary1LdPr
  loc_B1FE23: MemLdRfVar from_stack_1.global_8
  loc_B1FE26: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1FE2B: AryUnlock
  loc_B1FE2E: FFreeAd var_A8 = ""
  loc_B1FE35: FFreeVar var_10C = ""
  loc_B1FE3C: FLdRfVar var_F8
  loc_B1FE3F: LitVarStr var_94, "DetaCuco"
  loc_B1FE44: PopAdLdVar
  loc_B1FE45: FLdRfVar var_F4
  loc_B1FE48: FLdRfVar var_A8
  loc_B1FE4B: FLdPr var_AC
  loc_B1FE4E: from_stack_1v = clsbase.RsFrmGet()
  loc_B1FE53: FLdPr var_A8
  loc_B1FE56:  = Me.Fields
  loc_B1FE5B: FLdPr var_F4
  loc_B1FE5E: from_stack_2 = Me.Item(from_stack_1)
  loc_B1FE63: LitI2_Byte 0
  loc_B1FE65: LitVar_Missing var_11C
  loc_B1FE68: LitI2_Byte 0
  loc_B1FE6A: FLdZeroAd var_F8
  loc_B1FE6D: CVarAd
  loc_B1FE71: PopAdLdVar
  loc_B1FE72: FLdPr Me
  loc_B1FE75: MemLdI2 global_100
  loc_B1FE78: CI4UI1
  loc_B1FE79: FLdPr Me
  loc_B1FE7C: MemLdStr global_96
  loc_B1FE7F: AryLock
  loc_B1FE82: Ary1LdPr
  loc_B1FE83: MemLdRfVar from_stack_1.global_12
  loc_B1FE86: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1FE8B: AryUnlock
  loc_B1FE8E: FFreeAd var_A8 = ""
  loc_B1FE95: FFreeVar var_10C = ""
  loc_B1FE9C: FLdRfVar var_F8
  loc_B1FE9F: LitVarStr var_94, "SaldInic"
  loc_B1FEA4: PopAdLdVar
  loc_B1FEA5: FLdRfVar var_F4
  loc_B1FEA8: FLdRfVar var_A8
  loc_B1FEAB: FLdPr var_AC
  loc_B1FEAE: from_stack_1v = clsbase.RsFrmGet()
  loc_B1FEB3: FLdPr var_A8
  loc_B1FEB6:  = Me.Fields
  loc_B1FEBB: FLdPr var_F4
  loc_B1FEBE: from_stack_2 = Me.Item(from_stack_1)
  loc_B1FEC3: LitI2_Byte 0
  loc_B1FEC5: LitI4 1
  loc_B1FECA: FLdPr Me
  loc_B1FECD: MemLdStr global_104
  loc_B1FED0: AryLock
  loc_B1FED3: Ary1LdPr
  loc_B1FED4: MemLdRfVar from_stack_1.global_16
  loc_B1FED7: CVarRef
  loc_B1FEDC: LitI2_Byte &HFF
  loc_B1FEDE: FLdZeroAd var_F8
  loc_B1FEE1: CVarAd
  loc_B1FEE5: PopAdLdVar
  loc_B1FEE6: FLdPr Me
  loc_B1FEE9: MemLdI2 global_100
  loc_B1FEEC: CI4UI1
  loc_B1FEED: FLdPr Me
  loc_B1FEF0: MemLdStr global_96
  loc_B1FEF3: AryLock
  loc_B1FEF6: Ary1LdPr
  loc_B1FEF7: MemLdRfVar from_stack_1.global_16
  loc_B1FEFA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1FEFF: AryUnlock
  loc_B1FF02: AryUnlock
  loc_B1FF05: FFreeAd var_A8 = ""
  loc_B1FF0C: FFree1Var var_10C = ""
  loc_B1FF0F: FLdRfVar var_F8
  loc_B1FF12: LitVarStr var_94, "Ingresos"
  loc_B1FF17: PopAdLdVar
  loc_B1FF18: FLdRfVar var_F4
  loc_B1FF1B: FLdRfVar var_A8
  loc_B1FF1E: FLdPr var_AC
  loc_B1FF21: from_stack_1v = clsbase.RsFrmGet()
  loc_B1FF26: FLdPr var_A8
  loc_B1FF29:  = Me.Fields
  loc_B1FF2E: FLdPr var_F4
  loc_B1FF31: from_stack_2 = Me.Item(from_stack_1)
  loc_B1FF36: LitI2_Byte 0
  loc_B1FF38: LitI4 1
  loc_B1FF3D: FLdPr Me
  loc_B1FF40: MemLdStr global_104
  loc_B1FF43: AryLock
  loc_B1FF46: Ary1LdPr
  loc_B1FF47: MemLdRfVar from_stack_1.global_20
  loc_B1FF4A: CVarRef
  loc_B1FF4F: LitI2_Byte &HFF
  loc_B1FF51: FLdZeroAd var_F8
  loc_B1FF54: CVarAd
  loc_B1FF58: PopAdLdVar
  loc_B1FF59: FLdPr Me
  loc_B1FF5C: MemLdI2 global_100
  loc_B1FF5F: CI4UI1
  loc_B1FF60: FLdPr Me
  loc_B1FF63: MemLdStr global_96
  loc_B1FF66: AryLock
  loc_B1FF69: Ary1LdPr
  loc_B1FF6A: MemLdRfVar from_stack_1.global_20
  loc_B1FF6D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1FF72: AryUnlock
  loc_B1FF75: AryUnlock
  loc_B1FF78: FFreeAd var_A8 = ""
  loc_B1FF7F: FFree1Var var_10C = ""
  loc_B1FF82: FLdRfVar var_F8
  loc_B1FF85: LitVarStr var_94, "Egresos"
  loc_B1FF8A: PopAdLdVar
  loc_B1FF8B: FLdRfVar var_F4
  loc_B1FF8E: FLdRfVar var_A8
  loc_B1FF91: FLdPr var_AC
  loc_B1FF94: from_stack_1v = clsbase.RsFrmGet()
  loc_B1FF99: FLdPr var_A8
  loc_B1FF9C:  = Me.Fields
  loc_B1FFA1: FLdPr var_F4
  loc_B1FFA4: from_stack_2 = Me.Item(from_stack_1)
  loc_B1FFA9: LitI2_Byte 0
  loc_B1FFAB: LitI4 1
  loc_B1FFB0: FLdPr Me
  loc_B1FFB3: MemLdStr global_104
  loc_B1FFB6: AryLock
  loc_B1FFB9: Ary1LdPr
  loc_B1FFBA: MemLdRfVar from_stack_1.global_24
  loc_B1FFBD: CVarRef
  loc_B1FFC2: LitI2_Byte &HFF
  loc_B1FFC4: FLdZeroAd var_F8
  loc_B1FFC7: CVarAd
  loc_B1FFCB: PopAdLdVar
  loc_B1FFCC: FLdPr Me
  loc_B1FFCF: MemLdI2 global_100
  loc_B1FFD2: CI4UI1
  loc_B1FFD3: FLdPr Me
  loc_B1FFD6: MemLdStr global_96
  loc_B1FFD9: AryLock
  loc_B1FFDC: Ary1LdPr
  loc_B1FFDD: MemLdRfVar from_stack_1.global_24
  loc_B1FFE0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B1FFE5: AryUnlock
  loc_B1FFE8: AryUnlock
  loc_B1FFEB: FFreeAd var_A8 = ""
  loc_B1FFF2: FFree1Var var_10C = ""
  loc_B1FFF5: FLdRfVar var_F8
  loc_B1FFF8: LitVarStr var_94, "AjusDebe"
  loc_B1FFFD: PopAdLdVar
  loc_B1FFFE: FLdRfVar var_F4
  loc_B20001: FLdRfVar var_A8
  loc_B20004: FLdPr var_AC
  loc_B20007: from_stack_1v = clsbase.RsFrmGet()
  loc_B2000C: FLdPr var_A8
  loc_B2000F:  = Me.Fields
  loc_B20014: FLdPr var_F4
  loc_B20017: from_stack_2 = Me.Item(from_stack_1)
  loc_B2001C: LitI2_Byte 0
  loc_B2001E: LitI4 1
  loc_B20023: FLdPr Me
  loc_B20026: MemLdStr global_104
  loc_B20029: AryLock
  loc_B2002C: Ary1LdPr
  loc_B2002D: MemLdRfVar from_stack_1.global_28
  loc_B20030: CVarRef
  loc_B20035: LitI2_Byte &HFF
  loc_B20037: FLdZeroAd var_F8
  loc_B2003A: CVarAd
  loc_B2003E: PopAdLdVar
  loc_B2003F: FLdPr Me
  loc_B20042: MemLdI2 global_100
  loc_B20045: CI4UI1
  loc_B20046: FLdPr Me
  loc_B20049: MemLdStr global_96
  loc_B2004C: AryLock
  loc_B2004F: Ary1LdPr
  loc_B20050: MemLdRfVar from_stack_1.global_28
  loc_B20053: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B20058: AryUnlock
  loc_B2005B: AryUnlock
  loc_B2005E: FFreeAd var_A8 = ""
  loc_B20065: FFree1Var var_10C = ""
  loc_B20068: FLdRfVar var_F8
  loc_B2006B: LitVarStr var_94, "AjusHabe"
  loc_B20070: PopAdLdVar
  loc_B20071: FLdRfVar var_F4
  loc_B20074: FLdRfVar var_A8
  loc_B20077: FLdPr var_AC
  loc_B2007A: from_stack_1v = clsbase.RsFrmGet()
  loc_B2007F: FLdPr var_A8
  loc_B20082:  = Me.Fields
  loc_B20087: FLdPr var_F4
  loc_B2008A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2008F: LitI2_Byte 0
  loc_B20091: LitI4 1
  loc_B20096: FLdPr Me
  loc_B20099: MemLdStr global_104
  loc_B2009C: AryLock
  loc_B2009F: Ary1LdPr
  loc_B200A0: MemLdRfVar from_stack_1.global_32
  loc_B200A3: CVarRef
  loc_B200A8: LitI2_Byte &HFF
  loc_B200AA: FLdZeroAd var_F8
  loc_B200AD: CVarAd
  loc_B200B1: PopAdLdVar
  loc_B200B2: FLdPr Me
  loc_B200B5: MemLdI2 global_100
  loc_B200B8: CI4UI1
  loc_B200B9: FLdPr Me
  loc_B200BC: MemLdStr global_96
  loc_B200BF: AryLock
  loc_B200C2: Ary1LdPr
  loc_B200C3: MemLdRfVar from_stack_1.global_32
  loc_B200C6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B200CB: AryUnlock
  loc_B200CE: AryUnlock
  loc_B200D1: FFreeAd var_A8 = ""
  loc_B200D8: FFree1Var var_10C = ""
  loc_B200DB: FLdRfVar var_F8
  loc_B200DE: LitVarStr var_94, "SaldFina"
  loc_B200E3: PopAdLdVar
  loc_B200E4: FLdRfVar var_F4
  loc_B200E7: FLdRfVar var_A8
  loc_B200EA: FLdPr var_AC
  loc_B200ED: from_stack_1v = clsbase.RsFrmGet()
  loc_B200F2: FLdPr var_A8
  loc_B200F5:  = Me.Fields
  loc_B200FA: FLdPr var_F4
  loc_B200FD: from_stack_2 = Me.Item(from_stack_1)
  loc_B20102: LitI2_Byte 0
  loc_B20104: LitI4 1
  loc_B20109: FLdPr Me
  loc_B2010C: MemLdStr global_104
  loc_B2010F: AryLock
  loc_B20112: Ary1LdPr
  loc_B20113: MemLdRfVar from_stack_1.global_36
  loc_B20116: CVarRef
  loc_B2011B: LitI2_Byte &HFF
  loc_B2011D: FLdZeroAd var_F8
  loc_B20120: CVarAd
  loc_B20124: PopAdLdVar
  loc_B20125: FLdPr Me
  loc_B20128: MemLdI2 global_100
  loc_B2012B: CI4UI1
  loc_B2012C: FLdPr Me
  loc_B2012F: MemLdStr global_96
  loc_B20132: AryLock
  loc_B20135: Ary1LdPr
  loc_B20136: MemLdRfVar from_stack_1.global_36
  loc_B20139: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2013E: AryUnlock
  loc_B20141: AryUnlock
  loc_B20144: FFreeAd var_A8 = ""
  loc_B2014B: FFree1Var var_10C = ""
  loc_B2014E: FLdPr var_AC
  loc_B20151: Call clsbase.MoveNext()
  loc_B20156: FLdPr Me
  loc_B20159: MemLdRfVar from_stack_1.global_100
  loc_B2015C: NextI2 var_F0, loc_B1FD1C
  loc_B20161: LitNothing
  loc_B20163: FStAd var_AC 
  loc_B20167: LitI2_Byte &HFF
  loc_B20169: FLdPr Me
  loc_B2016C: MemStI2 bGenerado
  loc_B2016F: LitI4 0
  loc_B20174: CI2I4
  loc_B20175: FLdPr Me
  loc_B20178: Me.MousePointer = from_stack_1
  loc_B2017D: LitVarStr var_94, vbNullString
  loc_B20182: PopAdLdVar
  loc_B20183: FLdPr Me
  loc_B20186: VCallAd Control_ID_statusBar
  loc_B20189: FStAdFunc var_A8
  loc_B2018C: FLdPr var_A8
  loc_B2018F: LateIdSt
  loc_B20194: FFree1Ad var_A8
  loc_B20197: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A7461C
  'Data Table: 447F94
  loc_A7424C: FLdRfVar var_88
  loc_A7424F: LitI2_Byte 0
  loc_A74251: LitI2_Byte &HFF
  loc_A74253: ImpAdLdI4 MemVar_C3D83C
  loc_A74256: FLdPr Me
  loc_A74259: MemLdRfVar from_stack_1.global_92
  loc_A7425C: NewIfNullPr IFileSystem3
  loc_A7425F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A74264: ILdRf var_88
  loc_A74267: FLdPr Me
  loc_A7426A: MemStVarAd
  loc_A7426E: FFree1Ad var_88
  loc_A74271: Call Proc_152_26_A882D0()
  loc_A74276: LitI2_Byte 1
  loc_A74278: FLdPr Me
  loc_A7427B: MemLdRfVar from_stack_1.global_100
  loc_A7427E: FLdPr Me
  loc_A74281: MemLdStr global_96
  loc_A74284: LitI2_Byte 1
  loc_A74286: FnUBound
  loc_A74288: CI2I4
  loc_A74289: ForI2 var_8C
  loc_A7428F: FLdPr Me
  loc_A74292: MemLdI2 global_100
  loc_A74295: CI4UI1
  loc_A74296: FLdPr Me
  loc_A74299: MemLdStr global_96
  loc_A7429C: AryLock
  loc_A7429F: Ary1LdRf
  loc_A742A0: FStR4 var_94
  loc_A742A3: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A742A8: PopAdLdVar
  loc_A742A9: FLdPr Me
  loc_A742AC: MemLdRfVar from_stack_1.htmFile
  loc_A742AF: LdPrVar
  loc_A742B1: LateMemCall
  loc_A742B7: LitI4 0
  loc_A742BC: LitI4 0
  loc_A742C1: LitI2_Byte 0
  loc_A742C3: LitStr "left"
  loc_A742C6: FMemLdR4 var_94(0)
  loc_A742CB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A742D0: CVarStr var_C4
  loc_A742D3: PopAdLdVar
  loc_A742D4: FLdPr Me
  loc_A742D7: MemLdRfVar from_stack_1.htmFile
  loc_A742DA: LdPrVar
  loc_A742DC: LateMemCall
  loc_A742E2: FFree1Var var_C4 = ""
  loc_A742E5: LitI4 0
  loc_A742EA: LitI4 0
  loc_A742EF: LitI2_Byte 0
  loc_A742F1: LitStr "left"
  loc_A742F4: FMemLdR4 var_94(4)
  loc_A742F9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A742FE: CVarStr var_C4
  loc_A74301: PopAdLdVar
  loc_A74302: FLdPr Me
  loc_A74305: MemLdRfVar from_stack_1.htmFile
  loc_A74308: LdPrVar
  loc_A7430A: LateMemCall
  loc_A74310: FFree1Var var_C4 = ""
  loc_A74313: LitI4 0
  loc_A74318: LitI4 0
  loc_A7431D: LitI2_Byte 0
  loc_A7431F: LitStr "left"
  loc_A74322: FMemLdR4 var_94(8)
  loc_A74327: LitStr " - "
  loc_A7432A: ConcatStr
  loc_A7432B: FStStrNoPop var_C8
  loc_A7432E: FMemLdR4 var_94(12)
  loc_A74333: ConcatStr
  loc_A74334: FStStrNoPop var_CC
  loc_A74337: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7433C: CVarStr var_C4
  loc_A7433F: PopAdLdVar
  loc_A74340: FLdPr Me
  loc_A74343: MemLdRfVar from_stack_1.htmFile
  loc_A74346: LdPrVar
  loc_A74348: LateMemCall
  loc_A7434E: FFreeStr var_C8 = ""
  loc_A74355: FFree1Var var_C4 = ""
  loc_A74358: LitI4 0
  loc_A7435D: LitI4 0
  loc_A74362: LitI2_Byte &HFF
  loc_A74364: LitStr "right"
  loc_A74367: FMemLdR4 var_94(16)
  loc_A7436C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A74371: CVarStr var_C4
  loc_A74374: PopAdLdVar
  loc_A74375: FLdPr Me
  loc_A74378: MemLdRfVar from_stack_1.htmFile
  loc_A7437B: LdPrVar
  loc_A7437D: LateMemCall
  loc_A74383: FFree1Var var_C4 = ""
  loc_A74386: LitI4 0
  loc_A7438B: LitI4 0
  loc_A74390: LitI2_Byte &HFF
  loc_A74392: LitStr "right"
  loc_A74395: FMemLdR4 var_94(20)
  loc_A7439A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A7439F: CVarStr var_C4
  loc_A743A2: PopAdLdVar
  loc_A743A3: FLdPr Me
  loc_A743A6: MemLdRfVar from_stack_1.htmFile
  loc_A743A9: LdPrVar
  loc_A743AB: LateMemCall
  loc_A743B1: FFree1Var var_C4 = ""
  loc_A743B4: LitI4 0
  loc_A743B9: LitI4 0
  loc_A743BE: LitI2_Byte &HFF
  loc_A743C0: LitStr "right"
  loc_A743C3: FMemLdR4 var_94(24)
  loc_A743C8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A743CD: CVarStr var_C4
  loc_A743D0: PopAdLdVar
  loc_A743D1: FLdPr Me
  loc_A743D4: MemLdRfVar from_stack_1.htmFile
  loc_A743D7: LdPrVar
  loc_A743D9: LateMemCall
  loc_A743DF: FFree1Var var_C4 = ""
  loc_A743E2: LitI4 0
  loc_A743E7: LitI4 0
  loc_A743EC: LitI2_Byte &HFF
  loc_A743EE: LitStr "right"
  loc_A743F1: FMemLdR4 var_94(28)
  loc_A743F6: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A743FB: CVarStr var_C4
  loc_A743FE: PopAdLdVar
  loc_A743FF: FLdPr Me
  loc_A74402: MemLdRfVar from_stack_1.htmFile
  loc_A74405: LdPrVar
  loc_A74407: LateMemCall
  loc_A7440D: FFree1Var var_C4 = ""
  loc_A74410: LitI4 0
  loc_A74415: LitI4 0
  loc_A7441A: LitI2_Byte &HFF
  loc_A7441C: LitStr "right"
  loc_A7441F: FMemLdR4 var_94(32)
  loc_A74424: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A74429: CVarStr var_C4
  loc_A7442C: PopAdLdVar
  loc_A7442D: FLdPr Me
  loc_A74430: MemLdRfVar from_stack_1.htmFile
  loc_A74433: LdPrVar
  loc_A74435: LateMemCall
  loc_A7443B: FFree1Var var_C4 = ""
  loc_A7443E: LitI4 0
  loc_A74443: LitI4 0
  loc_A74448: LitI2_Byte &HFF
  loc_A7444A: LitStr "right"
  loc_A7444D: FMemLdR4 var_94(36)
  loc_A74452: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A74457: CVarStr var_C4
  loc_A7445A: PopAdLdVar
  loc_A7445B: FLdPr Me
  loc_A7445E: MemLdRfVar from_stack_1.htmFile
  loc_A74461: LdPrVar
  loc_A74463: LateMemCall
  loc_A74469: FFree1Var var_C4 = ""
  loc_A7446C: LitVarStr var_A4, "     </tr>"
  loc_A74471: PopAdLdVar
  loc_A74472: FLdPr Me
  loc_A74475: MemLdRfVar from_stack_1.htmFile
  loc_A74478: LdPrVar
  loc_A7447A: LateMemCall
  loc_A74480: LitI4 0
  loc_A74485: FStR4 var_94
  loc_A74488: AryUnlock
  loc_A7448B: FLdPr Me
  loc_A7448E: MemLdRfVar from_stack_1.global_100
  loc_A74491: NextI2 var_8C, loc_A7428F
  loc_A74496: LitVarStr var_A4, " <tr class=""Totales"" align=""left"">"
  loc_A7449B: PopAdLdVar
  loc_A7449C: FLdPr Me
  loc_A7449F: MemLdRfVar from_stack_1.htmFile
  loc_A744A2: LdPrVar
  loc_A744A4: LateMemCall
  loc_A744AA: LitVarStr var_A4, "   <th colspan=""3""  class=""Encabezado"">Totales</th>"
  loc_A744AF: PopAdLdVar
  loc_A744B0: FLdPr Me
  loc_A744B3: MemLdRfVar from_stack_1.htmFile
  loc_A744B6: LdPrVar
  loc_A744B8: LateMemCall
  loc_A744BE: LitI4 1
  loc_A744C3: FLdPr Me
  loc_A744C6: MemLdStr global_104
  loc_A744C9: AryLock
  loc_A744CC: Ary1LdRf
  loc_A744CD: FStR4 var_D4
  loc_A744D0: LitI4 0
  loc_A744D5: LitI4 0
  loc_A744DA: LitI2_Byte &HFF
  loc_A744DC: LitStr "right"
  loc_A744DF: FMemLdR4 var_D4(16)
  loc_A744E4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A744E9: CVarStr var_C4
  loc_A744EC: PopAdLdVar
  loc_A744ED: FLdPr Me
  loc_A744F0: MemLdRfVar from_stack_1.htmFile
  loc_A744F3: LdPrVar
  loc_A744F5: LateMemCall
  loc_A744FB: FFree1Var var_C4 = ""
  loc_A744FE: LitI4 0
  loc_A74503: LitI4 0
  loc_A74508: LitI2_Byte &HFF
  loc_A7450A: LitStr "right"
  loc_A7450D: FMemLdR4 var_D4(20)
  loc_A74512: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A74517: CVarStr var_C4
  loc_A7451A: PopAdLdVar
  loc_A7451B: FLdPr Me
  loc_A7451E: MemLdRfVar from_stack_1.htmFile
  loc_A74521: LdPrVar
  loc_A74523: LateMemCall
  loc_A74529: FFree1Var var_C4 = ""
  loc_A7452C: LitI4 0
  loc_A74531: LitI4 0
  loc_A74536: LitI2_Byte &HFF
  loc_A74538: LitStr "right"
  loc_A7453B: FMemLdR4 var_D4(24)
  loc_A74540: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A74545: CVarStr var_C4
  loc_A74548: PopAdLdVar
  loc_A74549: FLdPr Me
  loc_A7454C: MemLdRfVar from_stack_1.htmFile
  loc_A7454F: LdPrVar
  loc_A74551: LateMemCall
  loc_A74557: FFree1Var var_C4 = ""
  loc_A7455A: LitI4 0
  loc_A7455F: LitI4 0
  loc_A74564: LitI2_Byte &HFF
  loc_A74566: LitStr "right"
  loc_A74569: FMemLdR4 var_D4(28)
  loc_A7456E: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A74573: CVarStr var_C4
  loc_A74576: PopAdLdVar
  loc_A74577: FLdPr Me
  loc_A7457A: MemLdRfVar from_stack_1.htmFile
  loc_A7457D: LdPrVar
  loc_A7457F: LateMemCall
  loc_A74585: FFree1Var var_C4 = ""
  loc_A74588: LitI4 0
  loc_A7458D: LitI4 0
  loc_A74592: LitI2_Byte &HFF
  loc_A74594: LitStr "right"
  loc_A74597: FMemLdR4 var_D4(32)
  loc_A7459C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A745A1: CVarStr var_C4
  loc_A745A4: PopAdLdVar
  loc_A745A5: FLdPr Me
  loc_A745A8: MemLdRfVar from_stack_1.htmFile
  loc_A745AB: LdPrVar
  loc_A745AD: LateMemCall
  loc_A745B3: FFree1Var var_C4 = ""
  loc_A745B6: LitI4 0
  loc_A745BB: LitI4 0
  loc_A745C0: LitI2_Byte &HFF
  loc_A745C2: LitStr "right"
  loc_A745C5: FMemLdR4 var_D4(36)
  loc_A745CA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A745CF: CVarStr var_C4
  loc_A745D2: PopAdLdVar
  loc_A745D3: FLdPr Me
  loc_A745D6: MemLdRfVar from_stack_1.htmFile
  loc_A745D9: LdPrVar
  loc_A745DB: LateMemCall
  loc_A745E1: FFree1Var var_C4 = ""
  loc_A745E4: LitI4 0
  loc_A745E9: FStR4 var_D4
  loc_A745EC: AryUnlock
  loc_A745EF: LitVarStr var_A4, "     </tr>"
  loc_A745F4: PopAdLdVar
  loc_A745F5: FLdPr Me
  loc_A745F8: MemLdRfVar from_stack_1.htmFile
  loc_A745FB: LdPrVar
  loc_A745FD: LateMemCall
  loc_A74603: Call Proc_152_27_A00F34()
  loc_A74608: FLdPr Me
  loc_A7460B: MemLdRfVar from_stack_1.htmFile
  loc_A7460E: LdPrVar
  loc_A74610: LateMemCall
  loc_A74616: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A7461B: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94BEA4
  'Data Table: 447F94
  loc_94BE8C: LitI2_Byte 0
  loc_94BE8E: FLdPr Me
  loc_94BE91: MemStI2 bLogos
  loc_94BE94: Call GeneraHTML()
  loc_94BE99: LitI2_Byte &HFF
  loc_94BE9B: FLdPr Me
  loc_94BE9E: MemStI2 bLogos
  loc_94BEA1: ExitProcHresult
End Sub

Private Function Proc_152_26_A882D0() 'A882D0
  'Data Table: 447F94
  loc_A87EB4: LitVarStr var_94, "<html>"
  loc_A87EB9: PopAdLdVar
  loc_A87EBA: FLdPr Me
  loc_A87EBD: MemLdRfVar from_stack_1.htmFile
  loc_A87EC0: LdPrVar
  loc_A87EC2: LateMemCall
  loc_A87EC8: LitVarStr var_94, "<head>"
  loc_A87ECD: PopAdLdVar
  loc_A87ECE: FLdPr Me
  loc_A87ED1: MemLdRfVar from_stack_1.htmFile
  loc_A87ED4: LdPrVar
  loc_A87ED6: LateMemCall
  loc_A87EDC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A87EE1: PopAdLdVar
  loc_A87EE2: FLdPr Me
  loc_A87EE5: MemLdRfVar from_stack_1.htmFile
  loc_A87EE8: LdPrVar
  loc_A87EEA: LateMemCall
  loc_A87EF0: LitStr "<title>"
  loc_A87EF3: FLdRfVar var_A8
  loc_A87EF6: FLdPr Me
  loc_A87EF9:  = Me.Caption
  loc_A87EFE: ILdRf var_A8
  loc_A87F01: ConcatStr
  loc_A87F02: FStStrNoPop var_AC
  loc_A87F05: LitStr " - "
  loc_A87F08: ConcatStr
  loc_A87F09: FStStrNoPop var_B0
  loc_A87F0C: LitStr "Municipalidad de Guaymallén"
  loc_A87F0F: ConcatStr
  loc_A87F10: FStStrNoPop var_B4
  loc_A87F13: LitStr "</title>"
  loc_A87F16: ConcatStr
  loc_A87F17: CVarStr var_C4
  loc_A87F1A: PopAdLdVar
  loc_A87F1B: FLdPr Me
  loc_A87F1E: MemLdRfVar from_stack_1.htmFile
  loc_A87F21: LdPrVar
  loc_A87F23: LateMemCall
  loc_A87F29: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A87F34: FFree1Var var_C4 = ""
  loc_A87F37: LitStr vbNullString
  loc_A87F3A: ILdRf Me
  loc_A87F3D: CastAd
  loc_A87F40: FStAdFunc var_C8
  loc_A87F43: FLdRfVar var_C8
  loc_A87F46: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A87F4B: FFree1Ad var_C8
  loc_A87F4E: LitI4 0
  loc_A87F53: FStStrCopy var_AC
  loc_A87F56: FLdRfVar var_AC
  loc_A87F59: LitI4 0
  loc_A87F5E: FStStrCopy var_A8
  loc_A87F61: FLdRfVar var_A8
  loc_A87F64: LitI2_Byte &HFF
  loc_A87F66: PopTmpLdAd2 var_CA
  loc_A87F69: FLdPr Me
  loc_A87F6C: MemLdRfVar from_stack_1.htmFile
  loc_A87F6F: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A87F74: FFreeStr var_A8 = ""
  loc_A87F7B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A87F80: PopAdLdVar
  loc_A87F81: FLdPr Me
  loc_A87F84: MemLdRfVar from_stack_1.htmFile
  loc_A87F87: LdPrVar
  loc_A87F89: LateMemCall
  loc_A87F8F: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A87F94: PopAdLdVar
  loc_A87F95: FLdPr Me
  loc_A87F98: MemLdRfVar from_stack_1.htmFile
  loc_A87F9B: LdPrVar
  loc_A87F9D: LateMemCall
  loc_A87FA3: LitVarStr var_94, "    <th align=""center"" valign=""center""><p>"
  loc_A87FA8: PopAdLdVar
  loc_A87FA9: FLdPr Me
  loc_A87FAC: MemLdRfVar from_stack_1.htmFile
  loc_A87FAF: LdPrVar
  loc_A87FB1: LateMemCall
  loc_A87FB7: FLdPr Me
  loc_A87FBA: MemLdI2 bLogos
  loc_A87FBD: BranchF loc_A87FD4
  loc_A87FC0: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>ACUERDO<span class=""Titulo2""> N&ordm; 2988 <br>"
  loc_A87FC5: PopAdLdVar
  loc_A87FC6: FLdPr Me
  loc_A87FC9: MemLdRfVar from_stack_1.htmFile
  loc_A87FCC: LdPrVar
  loc_A87FCE: LateMemCall
  loc_A87FD4: LitVarStr var_94, "      ANEXO VII: DE LOS MOVIMIENTOS DE LAS CUENTAS A QUE SE REFIERE EL ART. 9º (FONDOS DE TERCEROS)</span></p>"
  loc_A87FD9: PopAdLdVar
  loc_A87FDA: FLdPr Me
  loc_A87FDD: MemLdRfVar from_stack_1.htmFile
  loc_A87FE0: LdPrVar
  loc_A87FE2: LateMemCall
  loc_A87FE8: LitVarStr var_94, "    </th>"
  loc_A87FED: PopAdLdVar
  loc_A87FEE: FLdPr Me
  loc_A87FF1: MemLdRfVar from_stack_1.htmFile
  loc_A87FF4: LdPrVar
  loc_A87FF6: LateMemCall
  loc_A87FFC: LitVarStr var_94, "  </tr>"
  loc_A88001: PopAdLdVar
  loc_A88002: FLdPr Me
  loc_A88005: MemLdRfVar from_stack_1.htmFile
  loc_A88008: LdPrVar
  loc_A8800A: LateMemCall
  loc_A88010: LitVarStr var_94, "  <tr>"
  loc_A88015: PopAdLdVar
  loc_A88016: FLdPr Me
  loc_A88019: MemLdRfVar from_stack_1.htmFile
  loc_A8801C: LdPrVar
  loc_A8801E: LateMemCall
  loc_A88024: LitVarStr var_94, "    <th>"
  loc_A88029: PopAdLdVar
  loc_A8802A: FLdPr Me
  loc_A8802D: MemLdRfVar from_stack_1.htmFile
  loc_A88030: LdPrVar
  loc_A88032: LateMemCall
  loc_A88038: LitVarStr var_A4, "      <p align=""left"" class=""Titulo2"">      Repartici&oacute;n/Organismo: "
  loc_A8803D: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A88042: FStVarCopyObj var_C4
  loc_A88045: FLdRfVar var_C4
  loc_A88048: FLdRfVar var_DC
  loc_A8804B: ImpAdCallFPR4  = Ucase()
  loc_A88050: FLdRfVar var_DC
  loc_A88053: ConcatVar var_EC
  loc_A88057: LitVarStr var_FC, "<br>"
  loc_A8805C: ConcatVar var_10C
  loc_A88060: PopAdLdVar
  loc_A88061: FLdPr Me
  loc_A88064: MemLdRfVar from_stack_1.htmFile
  loc_A88067: LdPrVar
  loc_A88069: LateMemCall
  loc_A8806F: FFreeVar var_C4 = "": var_DC = "": var_EC = ""
  loc_A8807A: FLdRfVar var_B0
  loc_A8807D: FLdPr Me
  loc_A88080: VCallAd Control_ID_cboPeriodo
  loc_A88083: FStAdFunc var_120
  loc_A88086: FLdPr var_120
  loc_A88089:  = Me.Text
  loc_A8808E: ILdRf var_B0
  loc_A88091: CI2Str
  loc_A88093: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_A88098: CVarStr var_C4
  loc_A8809B: FLdRfVar var_DC
  loc_A8809E: ImpAdCallFPR4  = Month()
  loc_A880A3: LitStr "    Ejercicio: "
  loc_A880A6: FLdRfVar var_A8
  loc_A880A9: FLdPr Me
  loc_A880AC: VCallAd Control_ID_cboPeriodo
  loc_A880AF: FStAdFunc var_C8
  loc_A880B2: FLdPr var_C8
  loc_A880B5:  = Me.Text
  loc_A880BA: ILdRf var_A8
  loc_A880BD: ConcatStr
  loc_A880BE: FStStrNoPop var_AC
  loc_A880C1: LitStr " ("
  loc_A880C4: ConcatStr
  loc_A880C5: CVarStr var_160
  loc_A880C8: LitVarStr var_FC, "Definitivo"
  loc_A880CD: FStVarCopyObj var_140
  loc_A880D0: FLdRfVar var_140
  loc_A880D3: LitVarStr var_A4, "Provisorio"
  loc_A880D8: FStVarCopyObj var_130
  loc_A880DB: FLdRfVar var_130
  loc_A880DE: LitVarI2 var_94, 12
  loc_A880E3: HardType
  loc_A880E4: FLdRfVar var_DC
  loc_A880E7: GtVar var_EC
  loc_A880EB: FStVar var_10C
  loc_A880EF: FLdRfVar var_10C
  loc_A880F2: FLdRfVar var_150
  loc_A880F5: ImpAdCallFPR4  = IIf(, , )
  loc_A880FA: FLdRfVar var_150
  loc_A880FD: ConcatVar var_170
  loc_A88101: LitVarStr var_11C, ")"
  loc_A88106: ConcatVar var_180
  loc_A8810A: PopAdLdVar
  loc_A8810B: FLdPr Me
  loc_A8810E: MemLdRfVar from_stack_1.htmFile
  loc_A88111: LdPrVar
  loc_A88113: LateMemCall
  loc_A88119: FFreeStr var_A8 = "": var_AC = ""
  loc_A88122: FFreeAd var_C8 = ""
  loc_A88129: FFreeVar var_C4 = "": var_DC = "": var_10C = "": var_130 = "": var_140 = "": var_160 = "": var_150 = "": var_170 = ""
  loc_A8813E: LitVarStr var_94, "  </p></th></tr>"
  loc_A88143: PopAdLdVar
  loc_A88144: FLdPr Me
  loc_A88147: MemLdRfVar from_stack_1.htmFile
  loc_A8814A: LdPrVar
  loc_A8814C: LateMemCall
  loc_A88152: LitVarStr var_94, "</table>"
  loc_A88157: PopAdLdVar
  loc_A88158: FLdPr Me
  loc_A8815B: MemLdRfVar from_stack_1.htmFile
  loc_A8815E: LdPrVar
  loc_A88160: LateMemCall
  loc_A88166: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A8816B: PopAdLdVar
  loc_A8816C: FLdPr Me
  loc_A8816F: MemLdRfVar from_stack_1.htmFile
  loc_A88172: LdPrVar
  loc_A88174: LateMemCall
  loc_A8817A: LitVarStr var_94, "  <THEAD>"
  loc_A8817F: PopAdLdVar
  loc_A88180: FLdPr Me
  loc_A88183: MemLdRfVar from_stack_1.htmFile
  loc_A88186: LdPrVar
  loc_A88188: LateMemCall
  loc_A8818E: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_A88193: PopAdLdVar
  loc_A88194: FLdPr Me
  loc_A88197: MemLdRfVar from_stack_1.htmFile
  loc_A8819A: LdPrVar
  loc_A8819C: LateMemCall
  loc_A881A2: LitVarStr var_94, "     <th colspan=""2"">ORIGEN DE LOS FONDOS</th>"
  loc_A881A7: PopAdLdVar
  loc_A881A8: FLdPr Me
  loc_A881AB: MemLdRfVar from_stack_1.htmFile
  loc_A881AE: LdPrVar
  loc_A881B0: LateMemCall
  loc_A881B6: LitVarStr var_94, "     <th rowspan=""2"" width=""6" & Chr(37) & """>CUENTA</th>"
  loc_A881BB: PopAdLdVar
  loc_A881BC: FLdPr Me
  loc_A881BF: MemLdRfVar from_stack_1.htmFile
  loc_A881C2: LdPrVar
  loc_A881C4: LateMemCall
  loc_A881CA: LitVarStr var_94, "     <th rowspan=""2"" width=""6" & Chr(37) & """>SALDO<br>INICIAL</th>"
  loc_A881CF: PopAdLdVar
  loc_A881D0: FLdPr Me
  loc_A881D3: MemLdRfVar from_stack_1.htmFile
  loc_A881D6: LdPrVar
  loc_A881D8: LateMemCall
  loc_A881DE: LitVarStr var_94, "     <th rowspan=""2"" width=""6" & Chr(37) & """>INGRESOS</th>"
  loc_A881E3: PopAdLdVar
  loc_A881E4: FLdPr Me
  loc_A881E7: MemLdRfVar from_stack_1.htmFile
  loc_A881EA: LdPrVar
  loc_A881EC: LateMemCall
  loc_A881F2: LitVarStr var_94, "     <th rowspan=""2"" width=""6" & Chr(37) & """>EGRESOS</th>"
  loc_A881F7: PopAdLdVar
  loc_A881F8: FLdPr Me
  loc_A881FB: MemLdRfVar from_stack_1.htmFile
  loc_A881FE: LdPrVar
  loc_A88200: LateMemCall
  loc_A88206: LitVarStr var_94, "     <th colspan=""2"">AJUSTES</th>"
  loc_A8820B: PopAdLdVar
  loc_A8820C: FLdPr Me
  loc_A8820F: MemLdRfVar from_stack_1.htmFile
  loc_A88212: LdPrVar
  loc_A88214: LateMemCall
  loc_A8821A: LitVarStr var_94, "     <th rowspan=""2"" width=""6" & Chr(37) & """>SALDO<br>FINAL</th>"
  loc_A8821F: PopAdLdVar
  loc_A88220: FLdPr Me
  loc_A88223: MemLdRfVar from_stack_1.htmFile
  loc_A88226: LdPrVar
  loc_A88228: LateMemCall
  loc_A8822E: LitVarStr var_94, " </tr>"
  loc_A88233: PopAdLdVar
  loc_A88234: FLdPr Me
  loc_A88237: MemLdRfVar from_stack_1.htmFile
  loc_A8823A: LdPrVar
  loc_A8823C: LateMemCall
  loc_A88242: LitVarStr var_94, " <tr align=""center"" class=""Encabezado"">"
  loc_A88247: PopAdLdVar
  loc_A88248: FLdPr Me
  loc_A8824B: MemLdRfVar from_stack_1.htmFile
  loc_A8824E: LdPrVar
  loc_A88250: LateMemCall
  loc_A88256: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>NORMA<br>LEGAL</th>"
  loc_A8825B: PopAdLdVar
  loc_A8825C: FLdPr Me
  loc_A8825F: MemLdRfVar from_stack_1.htmFile
  loc_A88262: LdPrVar
  loc_A88264: LateMemCall
  loc_A8826A: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>ORGANISMO</th>"
  loc_A8826F: PopAdLdVar
  loc_A88270: FLdPr Me
  loc_A88273: MemLdRfVar from_stack_1.htmFile
  loc_A88276: LdPrVar
  loc_A88278: LateMemCall
  loc_A8827E: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>DEBE</th>"
  loc_A88283: PopAdLdVar
  loc_A88284: FLdPr Me
  loc_A88287: MemLdRfVar from_stack_1.htmFile
  loc_A8828A: LdPrVar
  loc_A8828C: LateMemCall
  loc_A88292: LitVarStr var_94, "     <th width=""6" & Chr(37) & """>HABER</th>"
  loc_A88297: PopAdLdVar
  loc_A88298: FLdPr Me
  loc_A8829B: MemLdRfVar from_stack_1.htmFile
  loc_A8829E: LdPrVar
  loc_A882A0: LateMemCall
  loc_A882A6: LitVarStr var_94, "   </tr>"
  loc_A882AB: PopAdLdVar
  loc_A882AC: FLdPr Me
  loc_A882AF: MemLdRfVar from_stack_1.htmFile
  loc_A882B2: LdPrVar
  loc_A882B4: LateMemCall
  loc_A882BA: LitVarStr var_94, "  </THEAD>"
  loc_A882BF: PopAdLdVar
  loc_A882C0: FLdPr Me
  loc_A882C3: MemLdRfVar from_stack_1.htmFile
  loc_A882C6: LdPrVar
  loc_A882C8: LateMemCall
  loc_A882CE: ExitProcHresult
End Function

Private Function Proc_152_27_A00F34() 'A00F34
  'Data Table: 447F94
  loc_A00DC8: LitVarStr var_94, "</table>"
  loc_A00DCD: PopAdLdVar
  loc_A00DCE: FLdPr Me
  loc_A00DD1: MemLdRfVar from_stack_1.htmFile
  loc_A00DD4: LdPrVar
  loc_A00DD6: LateMemCall
  loc_A00DDC: LitVarStr var_94, "<br>"
  loc_A00DE1: PopAdLdVar
  loc_A00DE2: FLdPr Me
  loc_A00DE5: MemLdRfVar from_stack_1.htmFile
  loc_A00DE8: LdPrVar
  loc_A00DEA: LateMemCall
  loc_A00DF0: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A00DF5: PopAdLdVar
  loc_A00DF6: FLdPr Me
  loc_A00DF9: MemLdRfVar from_stack_1.htmFile
  loc_A00DFC: LdPrVar
  loc_A00DFE: LateMemCall
  loc_A00E04: LitVarStr var_94, "  <tr>"
  loc_A00E09: PopAdLdVar
  loc_A00E0A: FLdPr Me
  loc_A00E0D: MemLdRfVar from_stack_1.htmFile
  loc_A00E10: LdPrVar
  loc_A00E12: LateMemCall
  loc_A00E18: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A00E1D: PopAdLdVar
  loc_A00E1E: FLdPr Me
  loc_A00E21: MemLdRfVar from_stack_1.htmFile
  loc_A00E24: LdPrVar
  loc_A00E26: LateMemCall
  loc_A00E2C: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A00E31: PopAdLdVar
  loc_A00E32: FLdPr Me
  loc_A00E35: MemLdRfVar from_stack_1.htmFile
  loc_A00E38: LdPrVar
  loc_A00E3A: LateMemCall
  loc_A00E40: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A00E45: PopAdLdVar
  loc_A00E46: FLdPr Me
  loc_A00E49: MemLdRfVar from_stack_1.htmFile
  loc_A00E4C: LdPrVar
  loc_A00E4E: LateMemCall
  loc_A00E54: LitVarStr var_94, "          <map name=""Map"">"
  loc_A00E59: PopAdLdVar
  loc_A00E5A: FLdPr Me
  loc_A00E5D: MemLdRfVar from_stack_1.htmFile
  loc_A00E60: LdPrVar
  loc_A00E62: LateMemCall
  loc_A00E68: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A00E6D: PopAdLdVar
  loc_A00E6E: FLdPr Me
  loc_A00E71: MemLdRfVar from_stack_1.htmFile
  loc_A00E74: LdPrVar
  loc_A00E76: LateMemCall
  loc_A00E7C: LitVarStr var_94, "          </map>"
  loc_A00E81: PopAdLdVar
  loc_A00E82: FLdPr Me
  loc_A00E85: MemLdRfVar from_stack_1.htmFile
  loc_A00E88: LdPrVar
  loc_A00E8A: LateMemCall
  loc_A00E90: LitVarStr var_94, "    </div></th>"
  loc_A00E95: PopAdLdVar
  loc_A00E96: FLdPr Me
  loc_A00E99: MemLdRfVar from_stack_1.htmFile
  loc_A00E9C: LdPrVar
  loc_A00E9E: LateMemCall
  loc_A00EA4: LitVarStr var_94, "  </tr>"
  loc_A00EA9: PopAdLdVar
  loc_A00EAA: FLdPr Me
  loc_A00EAD: MemLdRfVar from_stack_1.htmFile
  loc_A00EB0: LdPrVar
  loc_A00EB2: LateMemCall
  loc_A00EB8: LitVarStr var_94, "  <tr>"
  loc_A00EBD: PopAdLdVar
  loc_A00EBE: FLdPr Me
  loc_A00EC1: MemLdRfVar from_stack_1.htmFile
  loc_A00EC4: LdPrVar
  loc_A00EC6: LateMemCall
  loc_A00ECC: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A00ED1: PopAdLdVar
  loc_A00ED2: FLdPr Me
  loc_A00ED5: MemLdRfVar from_stack_1.htmFile
  loc_A00ED8: LdPrVar
  loc_A00EDA: LateMemCall
  loc_A00EE0: LitVarStr var_94, "  </tr>"
  loc_A00EE5: PopAdLdVar
  loc_A00EE6: FLdPr Me
  loc_A00EE9: MemLdRfVar from_stack_1.htmFile
  loc_A00EEC: LdPrVar
  loc_A00EEE: LateMemCall
  loc_A00EF4: LitVarStr var_94, "</table>"
  loc_A00EF9: PopAdLdVar
  loc_A00EFA: FLdPr Me
  loc_A00EFD: MemLdRfVar from_stack_1.htmFile
  loc_A00F00: LdPrVar
  loc_A00F02: LateMemCall
  loc_A00F08: LitVarStr var_94, "</body>"
  loc_A00F0D: PopAdLdVar
  loc_A00F0E: FLdPr Me
  loc_A00F11: MemLdRfVar from_stack_1.htmFile
  loc_A00F14: LdPrVar
  loc_A00F16: LateMemCall
  loc_A00F1C: LitVarStr var_94, "</html>"
  loc_A00F21: PopAdLdVar
  loc_A00F22: FLdPr Me
  loc_A00F25: MemLdRfVar from_stack_1.htmFile
  loc_A00F28: LdPrVar
  loc_A00F2A: LateMemCall
  loc_A00F30: ExitProcHresult
  loc_A00F31: ExitProcHresult
End Function
