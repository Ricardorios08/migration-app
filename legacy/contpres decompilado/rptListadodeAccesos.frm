VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeAccesos
  Caption = "Listado de Accesos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeAccesos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6495
  ClientHeight = 3810
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3555
    Width = 6495
    Height = 255
    TabIndex = 10
    OleObjectBlob = "rptListadodeAccesos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5280
    Top = 2400
    Width = 735
    Height = 615
    TabIndex = 8
    Cancel = -1  'True
    Picture = "rptListadodeAccesos.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeAccesos.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 2160
    Width = 1815
    Height = 1095
    TabIndex = 6
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2160
    Width = 3015
    Height = 1095
    TabIndex = 3
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6255
    Height = 2055
    TabIndex = 0
    Begin VB.ComboBox CboPantalla
      Style = 2
      ForeColor = &HFF0000&
      Left = 1560
      Top = 1350
      Width = 4335
      Height = 315
      TabIndex = 11
    End
    Begin VB.ComboBox cboCodiUsua
      Style = 2
      ForeColor = &HFF0000&
      Left = 1560
      Top = 750
      Width = 1575
      Height = 315
      TabIndex = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4440
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 2
    End
    Begin VB.Label lblporPantalla
      Caption = "por Pantalla:"
      Left = 360
      Top = 1380
      Width = 975
      Height = 255
      TabIndex = 13
    End
    Begin VB.Label lblporUsuario
      Caption = "por Usuario:"
      Left = 480
      Top = 780
      Width = 855
      Height = 255
      TabIndex = 12
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5400
    Top = 2520
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 9
    OleObjectBlob = "rptListadodeAccesos.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeAccesos"

Public htmFile As Variant
Public bGenerado As Boolean


Private Sub cmdSalir_Click() '979F10
  'Data Table: 435968
  loc_979EE0: LitVarStr var_94, "Cerrando..."
  loc_979EE5: PopAdLdVar
  loc_979EE6: FLdPr Me
  loc_979EE9: VCallAd Control_ID_statusBar
  loc_979EEC: FStAdFunc var_A8
  loc_979EEF: FLdPr var_A8
  loc_979EF2: LateIdSt
  loc_979EF7: FFree1Ad var_A8
  loc_979EFA: ILdRf Me
  loc_979EFD: FStAdNoPop
  loc_979F01: ImpAdLdRf MemVar_C44F9C
  loc_979F04: NewIfNullPr Me
  loc_979F07: Me.Global.Unload from_stack_1
  loc_979F0C: FFree1Ad var_A8
  loc_979F0F: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '973FBC
  'Data Table: 435968
  loc_973F94: LitI2_Byte 0
  loc_973F96: FLdPr Me
  loc_973F99: MemStI2 bGenerado
  loc_973F9C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_973FA1: Call HabilitarCriterio()
  loc_973FA6: ILdRf Me
  loc_973FA9: CastAd
  loc_973FAC: FStAdFunc var_88
  loc_973FAF: FLdRfVar var_88
  loc_973FB2: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_973FB7: FFree1Ad var_88
  loc_973FBA: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95448C
  'Data Table: 435968
  loc_954474: ILdRf Me
  loc_954477: CastAd
  loc_95447A: FStAdFunc var_88
  loc_95447D: FLdRfVar var_88
  loc_954480: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_954485: FFree1Ad var_88
  loc_954488: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9566FC
  'Data Table: 435968
  loc_9566E4: LitI2_Byte 0
  loc_9566E6: ILdRf Me
  loc_9566E9: CastAd
  loc_9566EC: FStAdFunc var_88
  loc_9566EF: FLdRfVar var_88
  loc_9566F2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9566F7: FFree1Ad var_88
  loc_9566FA: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '987D54
  'Data Table: 435968
  loc_987D1C: FLdPr Me
  loc_987D1F: VCallAd Control_ID_statusBar
  loc_987D22: FStAdFunc var_88
  loc_987D25: FLdPr var_88
  loc_987D28: LateIdLdVar var_98 DispID_1 0
  loc_987D2F: CStrVarTmp
  loc_987D30: CVarStr var_A8
  loc_987D33: PopAdLdVar
  loc_987D34: FLdPr Me
  loc_987D37: VCallAd Control_ID_statusBar
  loc_987D3A: FStAdFunc var_BC
  loc_987D3D: FLdPr var_BC
  loc_987D40: LateIdSt
  loc_987D45: FFreeAd var_88 = ""
  loc_987D4C: FFreeVar var_98 = ""
  loc_987D53: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '956450
  'Data Table: 435968
  loc_956438: ILdRf Me
  loc_95643B: CastAd
  loc_95643E: FStAdFunc var_88
  loc_956441: FLdRfVar var_88
  loc_956444: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_956449: FFree1Ad var_88
  loc_95644C: ExitProcHresult
End Sub

Private Sub Form_Load() 'A598F0
  'Data Table: 435968
  loc_A5962C: LitI2_Byte &HFF
  loc_A5962E: ImpAdStI2 MemVar_C3D840
  loc_A59631: ILdRf Me
  loc_A59634: CastAd
  loc_A59637: FStAdFunc var_94
  loc_A5963A: FLdRfVar var_94
  loc_A5963D: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A59642: FFree1Ad var_94
  loc_A59645: FLdRfVar var_90
  loc_A59648: NewIfNullAd
  loc_A5964B: FStAd var_98 
  loc_A5964F: FLdPr Me
  loc_A59652: VCallAd Control_ID_cboCodiUsua
  loc_A59655: FStAdFunc var_94
  loc_A59658: FLdPr var_94
  loc_A5965B: Me.Clear
  loc_A59660: FFree1Ad var_94
  loc_A59663: LitVar_Missing var_A8
  loc_A59666: PopAdLdVar
  loc_A59667: LitStr "TODOS"
  loc_A5966A: FLdPr Me
  loc_A5966D: VCallAd Control_ID_cboCodiUsua
  loc_A59670: FStAdFunc var_94
  loc_A59673: FLdPr var_94
  loc_A59676: Me.AddItem from_stack_1, from_stack_2
  loc_A5967B: FFree1Ad var_94
  loc_A5967E: LitStr "SELECT * FROM infogov.usuario ORDER BY CodiUsua"
  loc_A59681: FLdPr var_98
  loc_A59684: Call clsbase.RedefineRS(from_stack_1v)
  loc_A59689: FLdPr var_98
  loc_A5968C: Call clsbase.MoveFirst()
  loc_A59691: FLdRfVar var_AA
  loc_A59694: FLdPr var_98
  loc_A59697: from_stack_1 = clsbase.EOF
  loc_A5969C: FLdI2 var_AA
  loc_A5969F: NotI4
  loc_A596A0: BranchF loc_A5970D
  loc_A596A3: LitVar_Missing var_D8
  loc_A596A6: PopAdLdVar
  loc_A596A7: FLdRfVar var_C4
  loc_A596AA: FLdRfVar var_B4
  loc_A596AD: LitVarStr var_A8, "CodiUsua"
  loc_A596B2: PopAdLdVar
  loc_A596B3: FLdRfVar var_B0
  loc_A596B6: FLdRfVar var_94
  loc_A596B9: FLdPr var_98
  loc_A596BC: from_stack_1v = clsbase.RsFrmGet()
  loc_A596C1: FLdPr var_94
  loc_A596C4:  = Me.Fields
  loc_A596C9: FLdPr var_B0
  loc_A596CC: from_stack_2 = Me.Item(from_stack_1)
  loc_A596D1: FLdPr var_B4
  loc_A596D4:  = Me.Value
  loc_A596D9: FLdRfVar var_C4
  loc_A596DC: CStrVarTmp
  loc_A596DD: FStStrNoPop var_C8
  loc_A596E0: FLdPr Me
  loc_A596E3: VCallAd Control_ID_cboCodiUsua
  loc_A596E6: FStAdFunc var_DC
  loc_A596E9: FLdPr var_DC
  loc_A596EC: Me.AddItem from_stack_1, from_stack_2
  loc_A596F1: FFree1Str var_C8
  loc_A596F4: FFreeAd var_94 = "": var_B0 = "": var_B4 = ""
  loc_A596FF: FFree1Var var_C4 = ""
  loc_A59702: FLdPr var_98
  loc_A59705: Call clsbase.MoveSiguiente()
  loc_A5970A: Branch loc_A59691
  loc_A5970D: LitI2_Byte 0
  loc_A5970F: FLdPr Me
  loc_A59712: VCallAd Control_ID_cboCodiUsua
  loc_A59715: FStAdFunc var_94
  loc_A59718: FLdPr var_94
  loc_A5971B: Me.ListIndex = from_stack_1
  loc_A59720: FFree1Ad var_94
  loc_A59723: LitNothing
  loc_A59725: FStAd var_98 
  loc_A59729: FLdRfVar var_90
  loc_A5972C: NewIfNullAd
  loc_A5972F: FStAd var_E0 
  loc_A59733: FLdPr Me
  loc_A59736: VCallAd Control_ID_CboPantalla
  loc_A59739: FStAdFunc var_94
  loc_A5973C: FLdPr var_94
  loc_A5973F: Me.Clear
  loc_A59744: FFree1Ad var_94
  loc_A59747: LitVar_Missing var_A8
  loc_A5974A: PopAdLdVar
  loc_A5974B: LitStr "TODOS"
  loc_A5974E: FLdPr Me
  loc_A59751: VCallAd Control_ID_CboPantalla
  loc_A59754: FStAdFunc var_94
  loc_A59757: FLdPr var_94
  loc_A5975A: Me.AddItem from_stack_1, from_stack_2
  loc_A5975F: FFree1Ad var_94
  loc_A59762: LitStr "SELECT * FROM infogov.menu WHERE CodiSist = "
  loc_A59765: LitI2_Byte 1
  loc_A59767: CStrI2
  loc_A59769: FStStrNoPop var_C8
  loc_A5976C: ConcatStr
  loc_A5976D: FStStrNoPop var_E4
  loc_A59770: LitStr " ORDER BY FormMenu"
  loc_A59773: ConcatStr
  loc_A59774: FStStrNoPop var_E8
  loc_A59777: FLdPr var_E0
  loc_A5977A: Call clsbase.RedefineRS(from_stack_1v)
  loc_A5977F: FFreeStr var_C8 = "": var_E4 = ""
  loc_A59788: FLdPr var_E0
  loc_A5978B: Call clsbase.MoveFirst()
  loc_A59790: FLdRfVar var_AA
  loc_A59793: FLdPr var_E0
  loc_A59796: from_stack_1 = clsbase.EOF
  loc_A5979B: FLdI2 var_AA
  loc_A5979E: NotI4
  loc_A5979F: BranchF loc_A598CB
  loc_A597A2: LitVar_Missing var_140
  loc_A597A5: PopAdLdVar
  loc_A597A6: FLdRfVar var_C4
  loc_A597A9: FLdRfVar var_B4
  loc_A597AC: LitVarStr var_A8, "CodiMenu"
  loc_A597B1: PopAdLdVar
  loc_A597B2: FLdRfVar var_B0
  loc_A597B5: FLdRfVar var_94
  loc_A597B8: FLdPr var_E0
  loc_A597BB: from_stack_1v = clsbase.RsFrmGet()
  loc_A597C0: FLdPr var_94
  loc_A597C3:  = Me.Fields
  loc_A597C8: FLdPr var_B0
  loc_A597CB: from_stack_2 = Me.Item(from_stack_1)
  loc_A597D0: FLdPr var_B4
  loc_A597D3:  = Me.Value
  loc_A597D8: FLdRfVar var_C4
  loc_A597DB: LitVarStr var_D8, " - "
  loc_A597E0: ConcatVar var_F8
  loc_A597E4: FLdRfVar var_120
  loc_A597E7: FLdRfVar var_110
  loc_A597EA: LitVarStr var_10C, "FormMenu"
  loc_A597EF: PopAdLdVar
  loc_A597F0: FLdRfVar var_FC
  loc_A597F3: FLdRfVar var_DC
  loc_A597F6: FLdPr var_E0
  loc_A597F9: from_stack_1v = clsbase.RsFrmGet()
  loc_A597FE: FLdPr var_DC
  loc_A59801:  = Me.Fields
  loc_A59806: FLdPr var_FC
  loc_A59809: from_stack_2 = Me.Item(from_stack_1)
  loc_A5980E: FLdPr var_110
  loc_A59811:  = Me.Value
  loc_A59816: FLdRfVar var_120
  loc_A59819: ConcatVar var_130
  loc_A5981D: CStrVarVal var_C8
  loc_A59821: FLdPr Me
  loc_A59824: VCallAd Control_ID_CboPantalla
  loc_A59827: FStAdFunc var_144
  loc_A5982A: FLdPr var_144
  loc_A5982D: Me.AddItem from_stack_1, from_stack_2
  loc_A59832: FFree1Str var_C8
  loc_A59835: FFreeAd var_94 = "": var_B0 = "": var_B4 = "": var_DC = "": var_FC = "": var_110 = ""
  loc_A59846: FFreeVar var_C4 = "": var_F8 = "": var_120 = ""
  loc_A59851: FLdRfVar var_C4
  loc_A59854: FLdRfVar var_B4
  loc_A59857: LitVarStr var_A8, "CodiMenu"
  loc_A5985C: PopAdLdVar
  loc_A5985D: FLdRfVar var_B0
  loc_A59860: FLdRfVar var_94
  loc_A59863: FLdPr var_E0
  loc_A59866: from_stack_1v = clsbase.RsFrmGet()
  loc_A5986B: FLdPr var_94
  loc_A5986E:  = Me.Fields
  loc_A59873: FLdPr var_B0
  loc_A59876: from_stack_2 = Me.Item(from_stack_1)
  loc_A5987B: FLdPr var_B4
  loc_A5987E:  = Me.Value
  loc_A59883: FLdRfVar var_C4
  loc_A59886: CI4Var
  loc_A59888: FLdRfVar var_AA
  loc_A5988B: FLdPr Me
  loc_A5988E: VCallAd Control_ID_CboPantalla
  loc_A59891: FStAdFunc var_DC
  loc_A59894: FLdPr var_DC
  loc_A59897:  = Me.NewIndex
  loc_A5989C: FLdI2 var_AA
  loc_A5989F: FLdPr Me
  loc_A598A2: VCallAd Control_ID_CboPantalla
  loc_A598A5: FStAdFunc var_FC
  loc_A598A8: FLdPr var_FC
  loc_A598AB: Me.ItemData = from_stack_1
  loc_A598B0: FFreeAd var_94 = "": var_B0 = "": var_DC = "": var_B4 = ""
  loc_A598BD: FFree1Var var_C4 = ""
  loc_A598C0: FLdPr var_E0
  loc_A598C3: Call clsbase.MoveSiguiente()
  loc_A598C8: Branch loc_A59790
  loc_A598CB: LitI2_Byte 0
  loc_A598CD: FLdPr Me
  loc_A598D0: VCallAd Control_ID_CboPantalla
  loc_A598D3: FStAdFunc var_94
  loc_A598D6: FLdPr var_94
  loc_A598D9: Me.ListIndex = from_stack_1
  loc_A598DE: FFree1Ad var_94
  loc_A598E1: LitNothing
  loc_A598E3: FStAd var_E0 
  loc_A598E7: Call cmdNueva_Click()
  loc_A598EC: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9566B0
  'Data Table: 435968
  loc_956698: FLdPr Me
  loc_95669B: VCallAd Control_ID_wbbReporte
  loc_95669E: FStAdFunc var_88
  loc_9566A1: FLdRfVar var_88
  loc_9566A4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9566A9: FFree1Ad var_88
  loc_9566AC: ExitProcHresult
End Sub

Public Function htmFileGet() '4363E4
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '4363F3
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '436402
  htmFile = Value
End Sub

Public Function bGeneradoGet() '436411
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '436420
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '991730
  'Data Table: 435968
  loc_9916EC: LitI4 0
  loc_9916F1: LitI4 1
  loc_9916F6: FLdRfVar var_88
  loc_9916F9: Redim
  loc_991703: FLdPr Me
  loc_991706: VCallAd Control_ID_cboCodiUsua
  loc_991709: CVarAd
  loc_99170D: ParmAry1St
  loc_991713: FLdPr Me
  loc_991716: VCallAd Control_ID_CboPantalla
  loc_991719: CVarAd
  loc_99171D: ParmAry1St
  loc_991723: FLdRfVar var_88
  loc_991726: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_99172B: FLdRfVar var_88
  loc_99172E: Erase
  loc_99172F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A90A90
  'Data Table: 435968
  loc_A90644: OnErrorGoto loc_A90A2B
  loc_A90647: FLdPr Me
  loc_A9064A: MemLdI2 bGenerado
  loc_A9064D: BranchF loc_A90651
  loc_A90650: ExitProcHresult
  loc_A90651: LitVarStr var_94, "Generando reporte..."
  loc_A90656: PopAdLdVar
  loc_A90657: FLdPr Me
  loc_A9065A: VCallAd Control_ID_statusBar
  loc_A9065D: FStAdFunc var_A8
  loc_A90660: FLdPr var_A8
  loc_A90663: LateIdSt
  loc_A90668: FFree1Ad var_A8
  loc_A9066B: LitI4 &HB
  loc_A90670: CI2I4
  loc_A90671: FLdPr Me
  loc_A90674: Me.MousePointer = from_stack_1
  loc_A90679: FLdRfVar var_AA
  loc_A9067C: FLdPr Me
  loc_A9067F: VCallAd Control_ID_cboCodiUsua
  loc_A90682: FStAdFunc var_A8
  loc_A90685: FLdPr var_A8
  loc_A90688:  = Me.ListIndex
  loc_A9068D: FLdI2 var_AA
  loc_A90690: LitI2_Byte 0
  loc_A90692: EqI2
  loc_A90693: FFree1Ad var_A8
  loc_A90696: BranchF loc_A906A6
  loc_A90699: LitStr vbNullString
  loc_A9069C: FLdPr Me
  loc_A9069F: MemStStrCopy
  loc_A906A3: Branch loc_A90725
  loc_A906A6: FLdRfVar var_AA
  loc_A906A9: FLdPr Me
  loc_A906AC: VCallAd Control_ID_cboCodiUsua
  loc_A906AF: FStAdFunc var_A8
  loc_A906B2: FLdPr var_A8
  loc_A906B5:  = Me.ListIndex
  loc_A906BA: FLdRfVar var_B4
  loc_A906BD: FLdPr Me
  loc_A906C0: VCallAd Control_ID_cboCodiUsua
  loc_A906C3: FStAdFunc var_B0
  loc_A906C6: FLdPr var_B0
  loc_A906C9:  = Me.Text
  loc_A906CE: LitVarStr var_A4, vbNullString
  loc_A906D3: FStVarCopyObj var_D8
  loc_A906D6: FLdRfVar var_D8
  loc_A906D9: LitStr " AND acceso.CodiUsua = '"
  loc_A906DC: ILdRf var_B4
  loc_A906DF: ConcatStr
  loc_A906E0: FStStrNoPop var_B8
  loc_A906E3: LitStr "'"
  loc_A906E6: ConcatStr
  loc_A906E7: CVarStr var_C8
  loc_A906EA: FLdI2 var_AA
  loc_A906ED: LitI2_Byte 0
  loc_A906EF: GtI2
  loc_A906F0: CVarBoolI2 var_94
  loc_A906F4: FLdRfVar var_E8
  loc_A906F7: ImpAdCallFPR4  = IIf(, , )
  loc_A906FC: FLdRfVar var_E8
  loc_A906FF: CStrVarTmp
  loc_A90700: FStStrNoPop var_EC
  loc_A90703: FLdPr Me
  loc_A90706: MemStStrCopy
  loc_A9070A: FFreeStr var_B4 = "": var_B8 = ""
  loc_A90713: FFreeAd var_A8 = ""
  loc_A9071A: FFreeVar var_94 = "": var_C8 = "": var_D8 = ""
  loc_A90725: FLdRfVar var_AA
  loc_A90728: FLdPr Me
  loc_A9072B: VCallAd Control_ID_CboPantalla
  loc_A9072E: FStAdFunc var_A8
  loc_A90731: FLdPr var_A8
  loc_A90734:  = Me.ListIndex
  loc_A90739: FLdI2 var_AA
  loc_A9073C: LitI2_Byte 0
  loc_A9073E: EqI2
  loc_A9073F: FFree1Ad var_A8
  loc_A90742: BranchF loc_A90752
  loc_A90745: LitStr vbNullString
  loc_A90748: FLdPr Me
  loc_A9074B: MemStStrCopy
  loc_A9074F: Branch loc_A90802
  loc_A90752: FLdRfVar var_AA
  loc_A90755: FLdPr Me
  loc_A90758: VCallAd Control_ID_CboPantalla
  loc_A9075B: FStAdFunc var_A8
  loc_A9075E: FLdPr var_A8
  loc_A90761:  = Me.ListIndex
  loc_A90766: FLdRfVar var_F0
  loc_A90769: FLdI2 var_AA
  loc_A9076C: FLdPr Me
  loc_A9076F: VCallAd Control_ID_CboPantalla
  loc_A90772: FStAdFunc var_B0
  loc_A90775: FLdPr var_B0
  loc_A90778:  = Me.ItemData
  loc_A9077D: FLdRfVar var_F6
  loc_A90780: FLdPr Me
  loc_A90783: VCallAd Control_ID_CboPantalla
  loc_A90786: FStAdFunc var_F4
  loc_A90789: FLdPr var_F4
  loc_A9078C:  = Me.ListIndex
  loc_A90791: LitStr " AND acceso.CodiMenu = "
  loc_A90794: FLdRfVar var_100
  loc_A90797: FLdI2 var_F6
  loc_A9079A: FLdPr Me
  loc_A9079D: VCallAd Control_ID_CboPantalla
  loc_A907A0: FStAdFunc var_FC
  loc_A907A3: FLdPr var_FC
  loc_A907A6:  = Me.ItemData
  loc_A907AB: ILdRf var_100
  loc_A907AE: CStrI4
  loc_A907B0: FStStrNoPop var_B4
  loc_A907B3: ConcatStr
  loc_A907B4: CVarStr var_D8
  loc_A907B7: LitVarStr var_A4, vbNullString
  loc_A907BC: FStVarCopyObj var_C8
  loc_A907BF: FLdRfVar var_C8
  loc_A907C2: ILdRf var_F0
  loc_A907C5: LitI4 0
  loc_A907CA: EqI4
  loc_A907CB: CVarBoolI2 var_94
  loc_A907CF: FLdRfVar var_E8
  loc_A907D2: ImpAdCallFPR4  = IIf(, , )
  loc_A907D7: FLdRfVar var_E8
  loc_A907DA: CStrVarTmp
  loc_A907DB: FStStrNoPop var_B8
  loc_A907DE: FLdPr Me
  loc_A907E1: MemStStrCopy
  loc_A907E5: FFreeStr var_B4 = ""
  loc_A907EC: FFreeAd var_A8 = "": var_B0 = "": var_F4 = ""
  loc_A907F7: FFreeVar var_94 = "": var_C8 = "": var_D8 = ""
  loc_A90802: FLdPr Me
  loc_A90805: MemLdRfVar from_stack_1.global_72
  loc_A90808: NewIfNullAd
  loc_A9080B: FStAd var_104 
  loc_A9080F: FLdPr Me
  loc_A90812: MemLdStr global_80
  loc_A90815: LitStr vbNullString
  loc_A90818: NeStr
  loc_A9081A: FLdPr Me
  loc_A9081D: MemLdStr global_84
  loc_A90820: LitStr vbNullString
  loc_A90823: EqStr
  loc_A90825: AndI4
  loc_A90826: BranchF loc_A908A0
  loc_A90829: LitStr "SELECT acceso.CodiUsua, FormMenu, IF(AltaAcce=1,'Sí','No') Alta, IF(BajaAcce=1,'Sí','No') Baja, IF(ModiAcce=1,'Sí','No') Modi"
  loc_A9082C: LitStr ", (SELECT COUNT(CodiUsua) FROM infogov.acceso a2 INNER JOIN infogov.menu ON menu.CodiSist = 1 AND WforMenu = 0 AND menu.CodiMenu = a2.CodiMenu WHERE a2.CodiUsua = acceso.CodiUsua) RowSpan"
  loc_A9082F: ConcatStr
  loc_A90830: FStStrNoPop var_B4
  loc_A90833: LitStr " FROM infogov.acceso"
  loc_A90836: ConcatStr
  loc_A90837: FStStrNoPop var_B8
  loc_A9083A: LitStr " INNER JOIN infogov.menu ON menu.CodiSist = "
  loc_A9083D: ConcatStr
  loc_A9083E: FStStrNoPop var_EC
  loc_A90841: LitI2_Byte 1
  loc_A90843: CStrI2
  loc_A90845: FStStrNoPop var_108
  loc_A90848: ConcatStr
  loc_A90849: FStStrNoPop var_10C
  loc_A9084C: LitStr " AND WforMenu = 0 AND menu.CodiMenu = acceso.CodiMenu"
  loc_A9084F: ConcatStr
  loc_A90850: FStStrNoPop var_110
  loc_A90853: LitStr " LEFT JOIN infogov.usuario ON usuario.CodiUsua = acceso.CodiUsua"
  loc_A90856: ConcatStr
  loc_A90857: FStStrNoPop var_114
  loc_A9085A: LitStr " WHERE TRUE "
  loc_A9085D: ConcatStr
  loc_A9085E: FStStrNoPop var_118
  loc_A90861: FLdPr Me
  loc_A90864: MemLdStr global_80
  loc_A90867: ConcatStr
  loc_A90868: FStStrNoPop var_11C
  loc_A9086B: FLdPr Me
  loc_A9086E: MemLdStr global_84
  loc_A90871: ConcatStr
  loc_A90872: FStStrNoPop var_120
  loc_A90875: LitStr " ORDER BY acceso.CodiUsua, FormMenu;"
  loc_A90878: ConcatStr
  loc_A90879: FStStrNoPop var_124
  loc_A9087C: FLdPr var_104
  loc_A9087F: Call clsbase.RedefineRS(from_stack_1v)
  loc_A90884: FFreeStr var_B4 = "": var_B8 = "": var_EC = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_A9089D: Branch loc_A909BF
  loc_A908A0: FLdPr Me
  loc_A908A3: MemLdStr global_80
  loc_A908A6: LitStr vbNullString
  loc_A908A9: EqStr
  loc_A908AB: FLdPr Me
  loc_A908AE: MemLdStr global_84
  loc_A908B1: LitStr vbNullString
  loc_A908B4: NeStr
  loc_A908B6: AndI4
  loc_A908B7: BranchF loc_A90931
  loc_A908BA: LitStr "SELECT FormMenu, acceso.CodiUsua, IF(AltaAcce=1,'Sí','No') Alta, IF(BajaAcce=1,'Sí','No') Baja, IF(ModiAcce=1,'Sí','No') Modi"
  loc_A908BD: LitStr ", (SELECT COUNT(CodiUsua) FROM infogov.acceso a2 INNER JOIN infogov.menu ON menu.CodiSist = 1 AND WforMenu = 0 AND menu.CodiMenu = a2.CodiMenu WHERE a2.CodiMenu = acceso.CodiMenu) RowSpan"
  loc_A908C0: ConcatStr
  loc_A908C1: FStStrNoPop var_B4
  loc_A908C4: LitStr " FROM infogov.acceso"
  loc_A908C7: ConcatStr
  loc_A908C8: FStStrNoPop var_B8
  loc_A908CB: LitStr " INNER JOIN infogov.menu ON menu.CodiSist = "
  loc_A908CE: ConcatStr
  loc_A908CF: FStStrNoPop var_EC
  loc_A908D2: LitI2_Byte 1
  loc_A908D4: CStrI2
  loc_A908D6: FStStrNoPop var_108
  loc_A908D9: ConcatStr
  loc_A908DA: FStStrNoPop var_10C
  loc_A908DD: LitStr " AND WforMenu = 0 AND menu.CodiMenu = acceso.CodiMenu"
  loc_A908E0: ConcatStr
  loc_A908E1: FStStrNoPop var_110
  loc_A908E4: LitStr " LEFT JOIN infogov.usuario ON usuario.CodiUsua = acceso.CodiUsua"
  loc_A908E7: ConcatStr
  loc_A908E8: FStStrNoPop var_114
  loc_A908EB: LitStr " WHERE TRUE "
  loc_A908EE: ConcatStr
  loc_A908EF: FStStrNoPop var_118
  loc_A908F2: FLdPr Me
  loc_A908F5: MemLdStr global_80
  loc_A908F8: ConcatStr
  loc_A908F9: FStStrNoPop var_11C
  loc_A908FC: FLdPr Me
  loc_A908FF: MemLdStr global_84
  loc_A90902: ConcatStr
  loc_A90903: FStStrNoPop var_120
  loc_A90906: LitStr " ORDER BY FormMenu, acceso.CodiUsua;"
  loc_A90909: ConcatStr
  loc_A9090A: FStStrNoPop var_124
  loc_A9090D: FLdPr var_104
  loc_A90910: Call clsbase.RedefineRS(from_stack_1v)
  loc_A90915: FFreeStr var_B4 = "": var_B8 = "": var_EC = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_A9092E: Branch loc_A909BF
  loc_A90931: FLdPr Me
  loc_A90934: MemLdStr global_80
  loc_A90937: LitStr vbNullString
  loc_A9093A: EqStr
  loc_A9093C: FLdPr Me
  loc_A9093F: MemLdStr global_84
  loc_A90942: LitStr vbNullString
  loc_A90945: EqStr
  loc_A90947: AndI4
  loc_A90948: BranchF loc_A909BF
  loc_A9094B: LitStr "SELECT acceso.CodiUsua, FormMenu, IF(AltaAcce=1,'Sí','No') Alta, IF(BajaAcce=1,'Sí','No') Baja, IF(ModiAcce=1,'Sí','No') Modi"
  loc_A9094E: LitStr ", (SELECT COUNT(CodiUsua) FROM infogov.acceso a2 INNER JOIN infogov.menu ON menu.CodiSist = 1 AND WforMenu = 0 AND menu.CodiMenu = a2.CodiMenu WHERE a2.CodiUsua = acceso.CodiUsua) RowSpan"
  loc_A90951: ConcatStr
  loc_A90952: FStStrNoPop var_B4
  loc_A90955: LitStr " FROM infogov.acceso"
  loc_A90958: ConcatStr
  loc_A90959: FStStrNoPop var_B8
  loc_A9095C: LitStr " INNER JOIN infogov.menu ON menu.CodiSist = "
  loc_A9095F: ConcatStr
  loc_A90960: FStStrNoPop var_EC
  loc_A90963: LitI2_Byte 1
  loc_A90965: CStrI2
  loc_A90967: FStStrNoPop var_108
  loc_A9096A: ConcatStr
  loc_A9096B: FStStrNoPop var_10C
  loc_A9096E: LitStr " AND WforMenu = 0 AND menu.CodiMenu = acceso.CodiMenu"
  loc_A90971: ConcatStr
  loc_A90972: FStStrNoPop var_110
  loc_A90975: LitStr " LEFT JOIN infogov.usuario ON usuario.CodiUsua = acceso.CodiUsua"
  loc_A90978: ConcatStr
  loc_A90979: FStStrNoPop var_114
  loc_A9097C: LitStr " WHERE TRUE "
  loc_A9097F: ConcatStr
  loc_A90980: FStStrNoPop var_118
  loc_A90983: FLdPr Me
  loc_A90986: MemLdStr global_80
  loc_A90989: ConcatStr
  loc_A9098A: FStStrNoPop var_11C
  loc_A9098D: FLdPr Me
  loc_A90990: MemLdStr global_84
  loc_A90993: ConcatStr
  loc_A90994: FStStrNoPop var_120
  loc_A90997: LitStr " ORDER BY acceso.CodiUsua, FormMenu;"
  loc_A9099A: ConcatStr
  loc_A9099B: FStStrNoPop var_124
  loc_A9099E: FLdPr var_104
  loc_A909A1: Call clsbase.RedefineRS(from_stack_1v)
  loc_A909A6: FFreeStr var_B4 = "": var_B8 = "": var_EC = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_A909BF: FLdRfVar var_F0
  loc_A909C2: FLdRfVar var_A8
  loc_A909C5: FLdPr var_104
  loc_A909C8: from_stack_1v = clsbase.RsFrmGet()
  loc_A909CD: FLdPr var_A8
  loc_A909D0:  = Me.RecordCount
  loc_A909D5: ILdRf var_F0
  loc_A909D8: LitI4 0
  loc_A909DD: EqI4
  loc_A909DE: FFree1Ad var_A8
  loc_A909E1: BranchF loc_A909F4
  loc_A909E4: LitI4 0
  loc_A909E9: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A909EC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A909F1: Branch loc_A90A02
  loc_A909F4: LitNothing
  loc_A909F6: FStAd var_104 
  loc_A909FA: LitI2_Byte &HFF
  loc_A909FC: FLdPr Me
  loc_A909FF: MemStI2 bGenerado
  loc_A90A02: LitI4 0
  loc_A90A07: CI2I4
  loc_A90A08: FLdPr Me
  loc_A90A0B: Me.MousePointer = from_stack_1
  loc_A90A10: LitVarStr var_94, vbNullString
  loc_A90A15: PopAdLdVar
  loc_A90A16: FLdPr Me
  loc_A90A19: VCallAd Control_ID_statusBar
  loc_A90A1C: FStAdFunc var_A8
  loc_A90A1F: FLdPr var_A8
  loc_A90A22: LateIdSt
  loc_A90A27: FFree1Ad var_A8
  loc_A90A2A: ExitProcHresult
  loc_A90A2B: LitI4 0
  loc_A90A30: LitStr "Error "
  loc_A90A33: FLdRfVar var_F0
  loc_A90A36: ImpAdCallI2 Err 'rtcErrObj
  loc_A90A3B: FStAdFunc var_A8
  loc_A90A3E: FLdPr var_A8
  loc_A90A41:  = Err.Number
  loc_A90A46: ILdRf var_F0
  loc_A90A49: CStrI4
  loc_A90A4B: FStStrNoPop var_B4
  loc_A90A4E: ConcatStr
  loc_A90A4F: FStStrNoPop var_B8
  loc_A90A52: LitStr ": "
  loc_A90A55: ConcatStr
  loc_A90A56: FStStrNoPop var_108
  loc_A90A59: FLdRfVar var_EC
  loc_A90A5C: ImpAdCallI2 Err 'rtcErrObj
  loc_A90A61: FStAdFunc var_B0
  loc_A90A64: FLdPr var_B0
  loc_A90A67:  = Err.Description
  loc_A90A6C: ILdRf var_EC
  loc_A90A6F: ConcatStr
  loc_A90A70: FStStrNoPop var_10C
  loc_A90A73: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A90A78: FFreeStr var_B4 = "": var_B8 = "": var_108 = "": var_EC = ""
  loc_A90A85: FFreeAd var_A8 = ""
  loc_A90A8C: ExitProcHresult
  loc_A90A8D: ExitProcHresult
  loc_A90A8E: FLdPr var_FC8
End Sub

Public Sub GeneraHTML() 'B4F4DC
  'Data Table: 435968
  loc_B4EA38: FLdRfVar var_8C
  loc_B4EA3B: LitI2_Byte 0
  loc_B4EA3D: LitI2_Byte &HFF
  loc_B4EA3F: ImpAdLdI4 MemVar_C3D83C
  loc_B4EA42: FLdPr Me
  loc_B4EA45: MemLdRfVar from_stack_1.global_76
  loc_B4EA48: NewIfNullPr IFileSystem3
  loc_B4EA4B: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B4EA50: ILdRf var_8C
  loc_B4EA53: FLdPr Me
  loc_B4EA56: MemStVarAd
  loc_B4EA5A: FFree1Ad var_8C
  loc_B4EA5D: Call Proc_187_16_A6D238()
  loc_B4EA62: LitStr vbNullString
  loc_B4EA65: FStStrCopy var_88
  loc_B4EA68: FLdPr Me
  loc_B4EA6B: MemLdRfVar from_stack_1.global_72
  loc_B4EA6E: NewIfNullPr clsbase
  loc_B4EA71: Call clsbase.MoveFirst()
  loc_B4EA76: FLdRfVar var_8E
  loc_B4EA79: FLdPr Me
  loc_B4EA7C: MemLdRfVar from_stack_1.global_72
  loc_B4EA7F: NewIfNullPr clsbase
  loc_B4EA82: from_stack_1 = clsbase.EOF
  loc_B4EA87: FLdI2 var_8E
  loc_B4EA8A: NotI4
  loc_B4EA8B: BranchF loc_B4F4C2
  loc_B4EA8E: FLdPr Me
  loc_B4EA91: MemLdStr global_80
  loc_B4EA94: LitStr vbNullString
  loc_B4EA97: NeStr
  loc_B4EA99: FLdPr Me
  loc_B4EA9C: MemLdStr global_84
  loc_B4EA9F: LitStr vbNullString
  loc_B4EAA2: EqStr
  loc_B4EAA4: AndI4
  loc_B4EAA5: BranchF loc_B4EDF0
  loc_B4EAA8: FLdRfVar var_8C
  loc_B4EAAB: FLdPr Me
  loc_B4EAAE: MemLdRfVar from_stack_1.global_72
  loc_B4EAB1: NewIfNullPr clsbase
  loc_B4EAB4: from_stack_1v = clsbase.RsFrmGet()
  loc_B4EAB9: FLdZeroAd var_8C
  loc_B4EABC: FStAdFunc var_94
  loc_B4EABF: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B4EAC4: PopAdLdVar
  loc_B4EAC5: FLdPr Me
  loc_B4EAC8: MemLdRfVar from_stack_1.htmFile
  loc_B4EACB: LdPrVar
  loc_B4EACD: LateMemCall
  loc_B4EAD3: ILdRf var_88
  loc_B4EAD6: FLdRfVar var_CC
  loc_B4EAD9: FLdRfVar var_BC
  loc_B4EADC: LitVarStr var_A4, "CodiUsua"
  loc_B4EAE1: PopAdLdVar
  loc_B4EAE2: FLdRfVar var_B8
  loc_B4EAE5: FLdRfVar var_8C
  loc_B4EAE8: FLdPr Me
  loc_B4EAEB: MemLdRfVar from_stack_1.global_72
  loc_B4EAEE: NewIfNullPr clsbase
  loc_B4EAF1: from_stack_1v = clsbase.RsFrmGet()
  loc_B4EAF6: FLdPr var_8C
  loc_B4EAF9:  = Me.Fields
  loc_B4EAFE: FLdPr var_B8
  loc_B4EB01: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EB06: FLdPr var_BC
  loc_B4EB09:  = Me.Value
  loc_B4EB0E: FLdRfVar var_CC
  loc_B4EB11: FnCStrVar
  loc_B4EB13: FStStrNoPop var_D0
  loc_B4EB16: NeStr
  loc_B4EB18: FFree1Str var_D0
  loc_B4EB1B: FFreeAd var_8C = "": var_B8 = ""
  loc_B4EB24: FFree1Var var_CC = ""
  loc_B4EB27: BranchF loc_B4EBF4
  loc_B4EB2A: LitStr "<td rowspan="""
  loc_B4EB2D: FLdRfVar var_CC
  loc_B4EB30: FLdRfVar var_BC
  loc_B4EB33: LitVarStr var_A4, "RowSpan"
  loc_B4EB38: PopAdLdVar
  loc_B4EB39: FLdRfVar var_B8
  loc_B4EB3C: FLdRfVar var_8C
  loc_B4EB3F: FLdPr Me
  loc_B4EB42: MemLdRfVar from_stack_1.global_72
  loc_B4EB45: NewIfNullPr clsbase
  loc_B4EB48: from_stack_1v = clsbase.RsFrmGet()
  loc_B4EB4D: FLdPr var_8C
  loc_B4EB50:  = Me.Fields
  loc_B4EB55: FLdPr var_B8
  loc_B4EB58: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EB5D: FLdPr var_BC
  loc_B4EB60:  = Me.Value
  loc_B4EB65: FLdRfVar var_CC
  loc_B4EB68: FnCIntVar
  loc_B4EB6A: CStrUI1
  loc_B4EB6C: FStStrNoPop var_D0
  loc_B4EB6F: ConcatStr
  loc_B4EB70: FStStrNoPop var_D4
  loc_B4EB73: LitStr """>"
  loc_B4EB76: ConcatStr
  loc_B4EB77: CVarStr var_100
  loc_B4EB7A: FLdRfVar var_F0
  loc_B4EB7D: FLdRfVar var_E0
  loc_B4EB80: LitVarStr var_B4, "CodiUsua"
  loc_B4EB85: PopAdLdVar
  loc_B4EB86: FLdRfVar var_DC
  loc_B4EB89: FLdRfVar var_D8
  loc_B4EB8C: FLdPr Me
  loc_B4EB8F: MemLdRfVar from_stack_1.global_72
  loc_B4EB92: NewIfNullPr clsbase
  loc_B4EB95: from_stack_1v = clsbase.RsFrmGet()
  loc_B4EB9A: FLdPr var_D8
  loc_B4EB9D:  = Me.Fields
  loc_B4EBA2: FLdPr var_DC
  loc_B4EBA5: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EBAA: FLdPr var_E0
  loc_B4EBAD:  = Me.Value
  loc_B4EBB2: FLdRfVar var_F0
  loc_B4EBB5: ConcatVar var_110
  loc_B4EBB9: LitVarStr var_120, "</td>"
  loc_B4EBBE: ConcatVar var_130
  loc_B4EBC2: PopAdLdVar
  loc_B4EBC3: FLdPr Me
  loc_B4EBC6: MemLdRfVar from_stack_1.htmFile
  loc_B4EBC9: LdPrVar
  loc_B4EBCB: LateMemCall
  loc_B4EBD1: FFreeStr var_D0 = ""
  loc_B4EBD8: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_D8 = "": var_DC = ""
  loc_B4EBE7: FFreeVar var_CC = "": var_100 = "": var_F0 = "": var_110 = ""
  loc_B4EBF4: FLdRfVar var_CC
  loc_B4EBF7: FLdRfVar var_B8
  loc_B4EBFA: LitVarStr var_A4, "FormMenu"
  loc_B4EBFF: PopAdLdVar
  loc_B4EC00: FLdRfVar var_8C
  loc_B4EC03: FLdPr var_94
  loc_B4EC06:  = Me.Fields
  loc_B4EC0B: FLdPr var_8C
  loc_B4EC0E: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EC13: FLdPr var_B8
  loc_B4EC16:  = Me.Value
  loc_B4EC1B: LitI4 0
  loc_B4EC20: LitI4 0
  loc_B4EC25: LitI2_Byte 0
  loc_B4EC27: LitStr "left"
  loc_B4EC2A: FLdRfVar var_CC
  loc_B4EC2D: CStrVarTmp
  loc_B4EC2E: FStStrNoPop var_D0
  loc_B4EC31: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4EC36: CVarStr var_F0
  loc_B4EC39: PopAdLdVar
  loc_B4EC3A: FLdPr Me
  loc_B4EC3D: MemLdRfVar from_stack_1.htmFile
  loc_B4EC40: LdPrVar
  loc_B4EC42: LateMemCall
  loc_B4EC48: FFree1Str var_D0
  loc_B4EC4B: FFreeAd var_8C = ""
  loc_B4EC52: FFreeVar var_CC = ""
  loc_B4EC59: FLdRfVar var_CC
  loc_B4EC5C: FLdRfVar var_B8
  loc_B4EC5F: LitVarStr var_A4, "Alta"
  loc_B4EC64: PopAdLdVar
  loc_B4EC65: FLdRfVar var_8C
  loc_B4EC68: FLdPr var_94
  loc_B4EC6B:  = Me.Fields
  loc_B4EC70: FLdPr var_8C
  loc_B4EC73: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EC78: FLdPr var_B8
  loc_B4EC7B:  = Me.Value
  loc_B4EC80: LitI4 0
  loc_B4EC85: LitI4 0
  loc_B4EC8A: LitI2_Byte 0
  loc_B4EC8C: LitStr "center"
  loc_B4EC8F: FLdRfVar var_CC
  loc_B4EC92: CStrVarTmp
  loc_B4EC93: FStStrNoPop var_D0
  loc_B4EC96: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4EC9B: CVarStr var_F0
  loc_B4EC9E: PopAdLdVar
  loc_B4EC9F: FLdPr Me
  loc_B4ECA2: MemLdRfVar from_stack_1.htmFile
  loc_B4ECA5: LdPrVar
  loc_B4ECA7: LateMemCall
  loc_B4ECAD: FFree1Str var_D0
  loc_B4ECB0: FFreeAd var_8C = ""
  loc_B4ECB7: FFreeVar var_CC = ""
  loc_B4ECBE: FLdRfVar var_CC
  loc_B4ECC1: FLdRfVar var_B8
  loc_B4ECC4: LitVarStr var_A4, "Baja"
  loc_B4ECC9: PopAdLdVar
  loc_B4ECCA: FLdRfVar var_8C
  loc_B4ECCD: FLdPr var_94
  loc_B4ECD0:  = Me.Fields
  loc_B4ECD5: FLdPr var_8C
  loc_B4ECD8: from_stack_2 = Me.Item(from_stack_1)
  loc_B4ECDD: FLdPr var_B8
  loc_B4ECE0:  = Me.Value
  loc_B4ECE5: LitI4 0
  loc_B4ECEA: LitI4 0
  loc_B4ECEF: LitI2_Byte 0
  loc_B4ECF1: LitStr "center"
  loc_B4ECF4: FLdRfVar var_CC
  loc_B4ECF7: CStrVarTmp
  loc_B4ECF8: FStStrNoPop var_D0
  loc_B4ECFB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4ED00: CVarStr var_F0
  loc_B4ED03: PopAdLdVar
  loc_B4ED04: FLdPr Me
  loc_B4ED07: MemLdRfVar from_stack_1.htmFile
  loc_B4ED0A: LdPrVar
  loc_B4ED0C: LateMemCall
  loc_B4ED12: FFree1Str var_D0
  loc_B4ED15: FFreeAd var_8C = ""
  loc_B4ED1C: FFreeVar var_CC = ""
  loc_B4ED23: FLdRfVar var_CC
  loc_B4ED26: FLdRfVar var_B8
  loc_B4ED29: LitVarStr var_A4, "Modi"
  loc_B4ED2E: PopAdLdVar
  loc_B4ED2F: FLdRfVar var_8C
  loc_B4ED32: FLdPr var_94
  loc_B4ED35:  = Me.Fields
  loc_B4ED3A: FLdPr var_8C
  loc_B4ED3D: from_stack_2 = Me.Item(from_stack_1)
  loc_B4ED42: FLdPr var_B8
  loc_B4ED45:  = Me.Value
  loc_B4ED4A: LitI4 0
  loc_B4ED4F: LitI4 0
  loc_B4ED54: LitI2_Byte 0
  loc_B4ED56: LitStr "center"
  loc_B4ED59: FLdRfVar var_CC
  loc_B4ED5C: CStrVarTmp
  loc_B4ED5D: FStStrNoPop var_D0
  loc_B4ED60: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4ED65: CVarStr var_F0
  loc_B4ED68: PopAdLdVar
  loc_B4ED69: FLdPr Me
  loc_B4ED6C: MemLdRfVar from_stack_1.htmFile
  loc_B4ED6F: LdPrVar
  loc_B4ED71: LateMemCall
  loc_B4ED77: FFree1Str var_D0
  loc_B4ED7A: FFreeAd var_8C = ""
  loc_B4ED81: FFreeVar var_CC = ""
  loc_B4ED88: LitVarStr var_A4, "     </tr>"
  loc_B4ED8D: PopAdLdVar
  loc_B4ED8E: FLdPr Me
  loc_B4ED91: MemLdRfVar from_stack_1.htmFile
  loc_B4ED94: LdPrVar
  loc_B4ED96: LateMemCall
  loc_B4ED9C: LitNothing
  loc_B4ED9E: FStAd var_94 
  loc_B4EDA2: FLdRfVar var_CC
  loc_B4EDA5: FLdRfVar var_BC
  loc_B4EDA8: LitVarStr var_A4, "CodiUsua"
  loc_B4EDAD: PopAdLdVar
  loc_B4EDAE: FLdRfVar var_B8
  loc_B4EDB1: FLdRfVar var_8C
  loc_B4EDB4: FLdPr Me
  loc_B4EDB7: MemLdRfVar from_stack_1.global_72
  loc_B4EDBA: NewIfNullPr clsbase
  loc_B4EDBD: from_stack_1v = clsbase.RsFrmGet()
  loc_B4EDC2: FLdPr var_8C
  loc_B4EDC5:  = Me.Fields
  loc_B4EDCA: FLdPr var_B8
  loc_B4EDCD: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EDD2: FLdPr var_BC
  loc_B4EDD5:  = Me.Value
  loc_B4EDDA: FLdRfVar var_CC
  loc_B4EDDD: CStrVarTmp
  loc_B4EDDE: FStStr var_88
  loc_B4EDE1: FFreeAd var_8C = "": var_B8 = ""
  loc_B4EDEA: FFree1Var var_CC = ""
  loc_B4EDED: Branch loc_B4F4B1
  loc_B4EDF0: FLdPr Me
  loc_B4EDF3: MemLdStr global_80
  loc_B4EDF6: LitStr vbNullString
  loc_B4EDF9: EqStr
  loc_B4EDFB: FLdPr Me
  loc_B4EDFE: MemLdStr global_84
  loc_B4EE01: LitStr vbNullString
  loc_B4EE04: NeStr
  loc_B4EE06: AndI4
  loc_B4EE07: BranchF loc_B4F152
  loc_B4EE0A: FLdRfVar var_8C
  loc_B4EE0D: FLdPr Me
  loc_B4EE10: MemLdRfVar from_stack_1.global_72
  loc_B4EE13: NewIfNullPr clsbase
  loc_B4EE16: from_stack_1v = clsbase.RsFrmGet()
  loc_B4EE1B: FLdZeroAd var_8C
  loc_B4EE1E: FStAdFunc var_144
  loc_B4EE21: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B4EE26: PopAdLdVar
  loc_B4EE27: FLdPr Me
  loc_B4EE2A: MemLdRfVar from_stack_1.htmFile
  loc_B4EE2D: LdPrVar
  loc_B4EE2F: LateMemCall
  loc_B4EE35: ILdRf var_88
  loc_B4EE38: FLdRfVar var_CC
  loc_B4EE3B: FLdRfVar var_BC
  loc_B4EE3E: LitVarStr var_A4, "FormMenu"
  loc_B4EE43: PopAdLdVar
  loc_B4EE44: FLdRfVar var_B8
  loc_B4EE47: FLdRfVar var_8C
  loc_B4EE4A: FLdPr Me
  loc_B4EE4D: MemLdRfVar from_stack_1.global_72
  loc_B4EE50: NewIfNullPr clsbase
  loc_B4EE53: from_stack_1v = clsbase.RsFrmGet()
  loc_B4EE58: FLdPr var_8C
  loc_B4EE5B:  = Me.Fields
  loc_B4EE60: FLdPr var_B8
  loc_B4EE63: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EE68: FLdPr var_BC
  loc_B4EE6B:  = Me.Value
  loc_B4EE70: FLdRfVar var_CC
  loc_B4EE73: FnCStrVar
  loc_B4EE75: FStStrNoPop var_D0
  loc_B4EE78: NeStr
  loc_B4EE7A: FFree1Str var_D0
  loc_B4EE7D: FFreeAd var_8C = "": var_B8 = ""
  loc_B4EE86: FFree1Var var_CC = ""
  loc_B4EE89: BranchF loc_B4EF56
  loc_B4EE8C: LitStr "<td rowspan="""
  loc_B4EE8F: FLdRfVar var_CC
  loc_B4EE92: FLdRfVar var_BC
  loc_B4EE95: LitVarStr var_A4, "RowSpan"
  loc_B4EE9A: PopAdLdVar
  loc_B4EE9B: FLdRfVar var_B8
  loc_B4EE9E: FLdRfVar var_8C
  loc_B4EEA1: FLdPr Me
  loc_B4EEA4: MemLdRfVar from_stack_1.global_72
  loc_B4EEA7: NewIfNullPr clsbase
  loc_B4EEAA: from_stack_1v = clsbase.RsFrmGet()
  loc_B4EEAF: FLdPr var_8C
  loc_B4EEB2:  = Me.Fields
  loc_B4EEB7: FLdPr var_B8
  loc_B4EEBA: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EEBF: FLdPr var_BC
  loc_B4EEC2:  = Me.Value
  loc_B4EEC7: FLdRfVar var_CC
  loc_B4EECA: FnCIntVar
  loc_B4EECC: CStrUI1
  loc_B4EECE: FStStrNoPop var_D0
  loc_B4EED1: ConcatStr
  loc_B4EED2: FStStrNoPop var_D4
  loc_B4EED5: LitStr """>"
  loc_B4EED8: ConcatStr
  loc_B4EED9: CVarStr var_100
  loc_B4EEDC: FLdRfVar var_F0
  loc_B4EEDF: FLdRfVar var_E0
  loc_B4EEE2: LitVarStr var_B4, "FormMenu"
  loc_B4EEE7: PopAdLdVar
  loc_B4EEE8: FLdRfVar var_DC
  loc_B4EEEB: FLdRfVar var_D8
  loc_B4EEEE: FLdPr Me
  loc_B4EEF1: MemLdRfVar from_stack_1.global_72
  loc_B4EEF4: NewIfNullPr clsbase
  loc_B4EEF7: from_stack_1v = clsbase.RsFrmGet()
  loc_B4EEFC: FLdPr var_D8
  loc_B4EEFF:  = Me.Fields
  loc_B4EF04: FLdPr var_DC
  loc_B4EF07: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EF0C: FLdPr var_E0
  loc_B4EF0F:  = Me.Value
  loc_B4EF14: FLdRfVar var_F0
  loc_B4EF17: ConcatVar var_110
  loc_B4EF1B: LitVarStr var_120, "</td>"
  loc_B4EF20: ConcatVar var_130
  loc_B4EF24: PopAdLdVar
  loc_B4EF25: FLdPr Me
  loc_B4EF28: MemLdRfVar from_stack_1.htmFile
  loc_B4EF2B: LdPrVar
  loc_B4EF2D: LateMemCall
  loc_B4EF33: FFreeStr var_D0 = ""
  loc_B4EF3A: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_D8 = "": var_DC = ""
  loc_B4EF49: FFreeVar var_CC = "": var_100 = "": var_F0 = "": var_110 = ""
  loc_B4EF56: FLdRfVar var_CC
  loc_B4EF59: FLdRfVar var_B8
  loc_B4EF5C: LitVarStr var_A4, "CodiUsua"
  loc_B4EF61: PopAdLdVar
  loc_B4EF62: FLdRfVar var_8C
  loc_B4EF65: FLdPr var_144
  loc_B4EF68:  = Me.Fields
  loc_B4EF6D: FLdPr var_8C
  loc_B4EF70: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EF75: FLdPr var_B8
  loc_B4EF78:  = Me.Value
  loc_B4EF7D: LitI4 0
  loc_B4EF82: LitI4 0
  loc_B4EF87: LitI2_Byte 0
  loc_B4EF89: LitStr "left"
  loc_B4EF8C: FLdRfVar var_CC
  loc_B4EF8F: CStrVarTmp
  loc_B4EF90: FStStrNoPop var_D0
  loc_B4EF93: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4EF98: CVarStr var_F0
  loc_B4EF9B: PopAdLdVar
  loc_B4EF9C: FLdPr Me
  loc_B4EF9F: MemLdRfVar from_stack_1.htmFile
  loc_B4EFA2: LdPrVar
  loc_B4EFA4: LateMemCall
  loc_B4EFAA: FFree1Str var_D0
  loc_B4EFAD: FFreeAd var_8C = ""
  loc_B4EFB4: FFreeVar var_CC = ""
  loc_B4EFBB: FLdRfVar var_CC
  loc_B4EFBE: FLdRfVar var_B8
  loc_B4EFC1: LitVarStr var_A4, "Alta"
  loc_B4EFC6: PopAdLdVar
  loc_B4EFC7: FLdRfVar var_8C
  loc_B4EFCA: FLdPr var_144
  loc_B4EFCD:  = Me.Fields
  loc_B4EFD2: FLdPr var_8C
  loc_B4EFD5: from_stack_2 = Me.Item(from_stack_1)
  loc_B4EFDA: FLdPr var_B8
  loc_B4EFDD:  = Me.Value
  loc_B4EFE2: LitI4 0
  loc_B4EFE7: LitI4 0
  loc_B4EFEC: LitI2_Byte 0
  loc_B4EFEE: LitStr "center"
  loc_B4EFF1: FLdRfVar var_CC
  loc_B4EFF4: CStrVarTmp
  loc_B4EFF5: FStStrNoPop var_D0
  loc_B4EFF8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4EFFD: CVarStr var_F0
  loc_B4F000: PopAdLdVar
  loc_B4F001: FLdPr Me
  loc_B4F004: MemLdRfVar from_stack_1.htmFile
  loc_B4F007: LdPrVar
  loc_B4F009: LateMemCall
  loc_B4F00F: FFree1Str var_D0
  loc_B4F012: FFreeAd var_8C = ""
  loc_B4F019: FFreeVar var_CC = ""
  loc_B4F020: FLdRfVar var_CC
  loc_B4F023: FLdRfVar var_B8
  loc_B4F026: LitVarStr var_A4, "Baja"
  loc_B4F02B: PopAdLdVar
  loc_B4F02C: FLdRfVar var_8C
  loc_B4F02F: FLdPr var_144
  loc_B4F032:  = Me.Fields
  loc_B4F037: FLdPr var_8C
  loc_B4F03A: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F03F: FLdPr var_B8
  loc_B4F042:  = Me.Value
  loc_B4F047: LitI4 0
  loc_B4F04C: LitI4 0
  loc_B4F051: LitI2_Byte 0
  loc_B4F053: LitStr "center"
  loc_B4F056: FLdRfVar var_CC
  loc_B4F059: CStrVarTmp
  loc_B4F05A: FStStrNoPop var_D0
  loc_B4F05D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4F062: CVarStr var_F0
  loc_B4F065: PopAdLdVar
  loc_B4F066: FLdPr Me
  loc_B4F069: MemLdRfVar from_stack_1.htmFile
  loc_B4F06C: LdPrVar
  loc_B4F06E: LateMemCall
  loc_B4F074: FFree1Str var_D0
  loc_B4F077: FFreeAd var_8C = ""
  loc_B4F07E: FFreeVar var_CC = ""
  loc_B4F085: FLdRfVar var_CC
  loc_B4F088: FLdRfVar var_B8
  loc_B4F08B: LitVarStr var_A4, "Modi"
  loc_B4F090: PopAdLdVar
  loc_B4F091: FLdRfVar var_8C
  loc_B4F094: FLdPr var_144
  loc_B4F097:  = Me.Fields
  loc_B4F09C: FLdPr var_8C
  loc_B4F09F: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F0A4: FLdPr var_B8
  loc_B4F0A7:  = Me.Value
  loc_B4F0AC: LitI4 0
  loc_B4F0B1: LitI4 0
  loc_B4F0B6: LitI2_Byte 0
  loc_B4F0B8: LitStr "center"
  loc_B4F0BB: FLdRfVar var_CC
  loc_B4F0BE: CStrVarTmp
  loc_B4F0BF: FStStrNoPop var_D0
  loc_B4F0C2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4F0C7: CVarStr var_F0
  loc_B4F0CA: PopAdLdVar
  loc_B4F0CB: FLdPr Me
  loc_B4F0CE: MemLdRfVar from_stack_1.htmFile
  loc_B4F0D1: LdPrVar
  loc_B4F0D3: LateMemCall
  loc_B4F0D9: FFree1Str var_D0
  loc_B4F0DC: FFreeAd var_8C = ""
  loc_B4F0E3: FFreeVar var_CC = ""
  loc_B4F0EA: LitVarStr var_A4, "     </tr>"
  loc_B4F0EF: PopAdLdVar
  loc_B4F0F0: FLdPr Me
  loc_B4F0F3: MemLdRfVar from_stack_1.htmFile
  loc_B4F0F6: LdPrVar
  loc_B4F0F8: LateMemCall
  loc_B4F0FE: LitNothing
  loc_B4F100: FStAd var_144 
  loc_B4F104: FLdRfVar var_CC
  loc_B4F107: FLdRfVar var_BC
  loc_B4F10A: LitVarStr var_A4, "FormMenu"
  loc_B4F10F: PopAdLdVar
  loc_B4F110: FLdRfVar var_B8
  loc_B4F113: FLdRfVar var_8C
  loc_B4F116: FLdPr Me
  loc_B4F119: MemLdRfVar from_stack_1.global_72
  loc_B4F11C: NewIfNullPr clsbase
  loc_B4F11F: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F124: FLdPr var_8C
  loc_B4F127:  = Me.Fields
  loc_B4F12C: FLdPr var_B8
  loc_B4F12F: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F134: FLdPr var_BC
  loc_B4F137:  = Me.Value
  loc_B4F13C: FLdRfVar var_CC
  loc_B4F13F: CStrVarTmp
  loc_B4F140: FStStr var_88
  loc_B4F143: FFreeAd var_8C = "": var_B8 = ""
  loc_B4F14C: FFree1Var var_CC = ""
  loc_B4F14F: Branch loc_B4F4B1
  loc_B4F152: FLdPr Me
  loc_B4F155: MemLdStr global_80
  loc_B4F158: LitStr vbNullString
  loc_B4F15B: EqStr
  loc_B4F15D: FLdPr Me
  loc_B4F160: MemLdStr global_84
  loc_B4F163: LitStr vbNullString
  loc_B4F166: EqStr
  loc_B4F168: AndI4
  loc_B4F169: BranchF loc_B4F4B1
  loc_B4F16C: FLdRfVar var_8C
  loc_B4F16F: FLdPr Me
  loc_B4F172: MemLdRfVar from_stack_1.global_72
  loc_B4F175: NewIfNullPr clsbase
  loc_B4F178: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F17D: FLdZeroAd var_8C
  loc_B4F180: FStAdFunc var_148
  loc_B4F183: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B4F188: PopAdLdVar
  loc_B4F189: FLdPr Me
  loc_B4F18C: MemLdRfVar from_stack_1.htmFile
  loc_B4F18F: LdPrVar
  loc_B4F191: LateMemCall
  loc_B4F197: ILdRf var_88
  loc_B4F19A: FLdRfVar var_CC
  loc_B4F19D: FLdRfVar var_BC
  loc_B4F1A0: LitVarStr var_A4, "CodiUsua"
  loc_B4F1A5: PopAdLdVar
  loc_B4F1A6: FLdRfVar var_B8
  loc_B4F1A9: FLdRfVar var_8C
  loc_B4F1AC: FLdPr Me
  loc_B4F1AF: MemLdRfVar from_stack_1.global_72
  loc_B4F1B2: NewIfNullPr clsbase
  loc_B4F1B5: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F1BA: FLdPr var_8C
  loc_B4F1BD:  = Me.Fields
  loc_B4F1C2: FLdPr var_B8
  loc_B4F1C5: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F1CA: FLdPr var_BC
  loc_B4F1CD:  = Me.Value
  loc_B4F1D2: FLdRfVar var_CC
  loc_B4F1D5: FnCStrVar
  loc_B4F1D7: FStStrNoPop var_D0
  loc_B4F1DA: NeStr
  loc_B4F1DC: FFree1Str var_D0
  loc_B4F1DF: FFreeAd var_8C = "": var_B8 = ""
  loc_B4F1E8: FFree1Var var_CC = ""
  loc_B4F1EB: BranchF loc_B4F2B8
  loc_B4F1EE: LitStr "<td rowspan="""
  loc_B4F1F1: FLdRfVar var_CC
  loc_B4F1F4: FLdRfVar var_BC
  loc_B4F1F7: LitVarStr var_A4, "RowSpan"
  loc_B4F1FC: PopAdLdVar
  loc_B4F1FD: FLdRfVar var_B8
  loc_B4F200: FLdRfVar var_8C
  loc_B4F203: FLdPr Me
  loc_B4F206: MemLdRfVar from_stack_1.global_72
  loc_B4F209: NewIfNullPr clsbase
  loc_B4F20C: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F211: FLdPr var_8C
  loc_B4F214:  = Me.Fields
  loc_B4F219: FLdPr var_B8
  loc_B4F21C: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F221: FLdPr var_BC
  loc_B4F224:  = Me.Value
  loc_B4F229: FLdRfVar var_CC
  loc_B4F22C: FnCIntVar
  loc_B4F22E: CStrUI1
  loc_B4F230: FStStrNoPop var_D0
  loc_B4F233: ConcatStr
  loc_B4F234: FStStrNoPop var_D4
  loc_B4F237: LitStr """>"
  loc_B4F23A: ConcatStr
  loc_B4F23B: CVarStr var_100
  loc_B4F23E: FLdRfVar var_F0
  loc_B4F241: FLdRfVar var_E0
  loc_B4F244: LitVarStr var_B4, "CodiUsua"
  loc_B4F249: PopAdLdVar
  loc_B4F24A: FLdRfVar var_DC
  loc_B4F24D: FLdRfVar var_D8
  loc_B4F250: FLdPr Me
  loc_B4F253: MemLdRfVar from_stack_1.global_72
  loc_B4F256: NewIfNullPr clsbase
  loc_B4F259: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F25E: FLdPr var_D8
  loc_B4F261:  = Me.Fields
  loc_B4F266: FLdPr var_DC
  loc_B4F269: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F26E: FLdPr var_E0
  loc_B4F271:  = Me.Value
  loc_B4F276: FLdRfVar var_F0
  loc_B4F279: ConcatVar var_110
  loc_B4F27D: LitVarStr var_120, "</td>"
  loc_B4F282: ConcatVar var_130
  loc_B4F286: PopAdLdVar
  loc_B4F287: FLdPr Me
  loc_B4F28A: MemLdRfVar from_stack_1.htmFile
  loc_B4F28D: LdPrVar
  loc_B4F28F: LateMemCall
  loc_B4F295: FFreeStr var_D0 = ""
  loc_B4F29C: FFreeAd var_8C = "": var_B8 = "": var_BC = "": var_D8 = "": var_DC = ""
  loc_B4F2AB: FFreeVar var_CC = "": var_100 = "": var_F0 = "": var_110 = ""
  loc_B4F2B8: FLdRfVar var_CC
  loc_B4F2BB: FLdRfVar var_B8
  loc_B4F2BE: LitVarStr var_A4, "FormMenu"
  loc_B4F2C3: PopAdLdVar
  loc_B4F2C4: FLdRfVar var_8C
  loc_B4F2C7: FLdPr var_148
  loc_B4F2CA:  = Me.Fields
  loc_B4F2CF: FLdPr var_8C
  loc_B4F2D2: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F2D7: FLdPr var_B8
  loc_B4F2DA:  = Me.Value
  loc_B4F2DF: LitI4 0
  loc_B4F2E4: LitI4 0
  loc_B4F2E9: LitI2_Byte 0
  loc_B4F2EB: LitStr "left"
  loc_B4F2EE: FLdRfVar var_CC
  loc_B4F2F1: CStrVarTmp
  loc_B4F2F2: FStStrNoPop var_D0
  loc_B4F2F5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4F2FA: CVarStr var_F0
  loc_B4F2FD: PopAdLdVar
  loc_B4F2FE: FLdPr Me
  loc_B4F301: MemLdRfVar from_stack_1.htmFile
  loc_B4F304: LdPrVar
  loc_B4F306: LateMemCall
  loc_B4F30C: FFree1Str var_D0
  loc_B4F30F: FFreeAd var_8C = ""
  loc_B4F316: FFreeVar var_CC = ""
  loc_B4F31D: FLdRfVar var_CC
  loc_B4F320: FLdRfVar var_B8
  loc_B4F323: LitVarStr var_A4, "Alta"
  loc_B4F328: PopAdLdVar
  loc_B4F329: FLdRfVar var_8C
  loc_B4F32C: FLdPr var_148
  loc_B4F32F:  = Me.Fields
  loc_B4F334: FLdPr var_8C
  loc_B4F337: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F33C: FLdPr var_B8
  loc_B4F33F:  = Me.Value
  loc_B4F344: LitI4 0
  loc_B4F349: LitI4 0
  loc_B4F34E: LitI2_Byte 0
  loc_B4F350: LitStr "center"
  loc_B4F353: FLdRfVar var_CC
  loc_B4F356: CStrVarTmp
  loc_B4F357: FStStrNoPop var_D0
  loc_B4F35A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4F35F: CVarStr var_F0
  loc_B4F362: PopAdLdVar
  loc_B4F363: FLdPr Me
  loc_B4F366: MemLdRfVar from_stack_1.htmFile
  loc_B4F369: LdPrVar
  loc_B4F36B: LateMemCall
  loc_B4F371: FFree1Str var_D0
  loc_B4F374: FFreeAd var_8C = ""
  loc_B4F37B: FFreeVar var_CC = ""
  loc_B4F382: FLdRfVar var_CC
  loc_B4F385: FLdRfVar var_B8
  loc_B4F388: LitVarStr var_A4, "Baja"
  loc_B4F38D: PopAdLdVar
  loc_B4F38E: FLdRfVar var_8C
  loc_B4F391: FLdPr var_148
  loc_B4F394:  = Me.Fields
  loc_B4F399: FLdPr var_8C
  loc_B4F39C: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F3A1: FLdPr var_B8
  loc_B4F3A4:  = Me.Value
  loc_B4F3A9: LitI4 0
  loc_B4F3AE: LitI4 0
  loc_B4F3B3: LitI2_Byte 0
  loc_B4F3B5: LitStr "center"
  loc_B4F3B8: FLdRfVar var_CC
  loc_B4F3BB: CStrVarTmp
  loc_B4F3BC: FStStrNoPop var_D0
  loc_B4F3BF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4F3C4: CVarStr var_F0
  loc_B4F3C7: PopAdLdVar
  loc_B4F3C8: FLdPr Me
  loc_B4F3CB: MemLdRfVar from_stack_1.htmFile
  loc_B4F3CE: LdPrVar
  loc_B4F3D0: LateMemCall
  loc_B4F3D6: FFree1Str var_D0
  loc_B4F3D9: FFreeAd var_8C = ""
  loc_B4F3E0: FFreeVar var_CC = ""
  loc_B4F3E7: FLdRfVar var_CC
  loc_B4F3EA: FLdRfVar var_B8
  loc_B4F3ED: LitVarStr var_A4, "Modi"
  loc_B4F3F2: PopAdLdVar
  loc_B4F3F3: FLdRfVar var_8C
  loc_B4F3F6: FLdPr var_148
  loc_B4F3F9:  = Me.Fields
  loc_B4F3FE: FLdPr var_8C
  loc_B4F401: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F406: FLdPr var_B8
  loc_B4F409:  = Me.Value
  loc_B4F40E: LitI4 0
  loc_B4F413: LitI4 0
  loc_B4F418: LitI2_Byte 0
  loc_B4F41A: LitStr "center"
  loc_B4F41D: FLdRfVar var_CC
  loc_B4F420: CStrVarTmp
  loc_B4F421: FStStrNoPop var_D0
  loc_B4F424: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B4F429: CVarStr var_F0
  loc_B4F42C: PopAdLdVar
  loc_B4F42D: FLdPr Me
  loc_B4F430: MemLdRfVar from_stack_1.htmFile
  loc_B4F433: LdPrVar
  loc_B4F435: LateMemCall
  loc_B4F43B: FFree1Str var_D0
  loc_B4F43E: FFreeAd var_8C = ""
  loc_B4F445: FFreeVar var_CC = ""
  loc_B4F44C: LitVarStr var_A4, "     </tr>"
  loc_B4F451: PopAdLdVar
  loc_B4F452: FLdPr Me
  loc_B4F455: MemLdRfVar from_stack_1.htmFile
  loc_B4F458: LdPrVar
  loc_B4F45A: LateMemCall
  loc_B4F460: LitNothing
  loc_B4F462: FStAd var_148 
  loc_B4F466: FLdRfVar var_CC
  loc_B4F469: FLdRfVar var_BC
  loc_B4F46C: LitVarStr var_A4, "CodiUsua"
  loc_B4F471: PopAdLdVar
  loc_B4F472: FLdRfVar var_B8
  loc_B4F475: FLdRfVar var_8C
  loc_B4F478: FLdPr Me
  loc_B4F47B: MemLdRfVar from_stack_1.global_72
  loc_B4F47E: NewIfNullPr clsbase
  loc_B4F481: from_stack_1v = clsbase.RsFrmGet()
  loc_B4F486: FLdPr var_8C
  loc_B4F489:  = Me.Fields
  loc_B4F48E: FLdPr var_B8
  loc_B4F491: from_stack_2 = Me.Item(from_stack_1)
  loc_B4F496: FLdPr var_BC
  loc_B4F499:  = Me.Value
  loc_B4F49E: FLdRfVar var_CC
  loc_B4F4A1: CStrVarTmp
  loc_B4F4A2: FStStr var_88
  loc_B4F4A5: FFreeAd var_8C = "": var_B8 = ""
  loc_B4F4AE: FFree1Var var_CC = ""
  loc_B4F4B1: FLdPr Me
  loc_B4F4B4: MemLdRfVar from_stack_1.global_72
  loc_B4F4B7: NewIfNullPr clsbase
  loc_B4F4BA: Call clsbase.MoveSiguiente()
  loc_B4F4BF: Branch loc_B4EA76
  loc_B4F4C2: Call Proc_187_17_9835E0()
  loc_B4F4C7: FLdPr Me
  loc_B4F4CA: MemLdRfVar from_stack_1.htmFile
  loc_B4F4CD: LdPrVar
  loc_B4F4CF: LateMemCall
  loc_B4F4D5: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B4F4DA: ExitProcHresult
End Sub

Private Function Proc_187_16_A6D238() 'A6D238
  'Data Table: 435968
  loc_A6CEA8: LitVarStr var_94, "<html>"
  loc_A6CEAD: PopAdLdVar
  loc_A6CEAE: FLdPr Me
  loc_A6CEB1: MemLdRfVar from_stack_1.htmFile
  loc_A6CEB4: LdPrVar
  loc_A6CEB6: LateMemCall
  loc_A6CEBC: LitVarStr var_94, "<head>"
  loc_A6CEC1: PopAdLdVar
  loc_A6CEC2: FLdPr Me
  loc_A6CEC5: MemLdRfVar from_stack_1.htmFile
  loc_A6CEC8: LdPrVar
  loc_A6CECA: LateMemCall
  loc_A6CED0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A6CED5: PopAdLdVar
  loc_A6CED6: FLdPr Me
  loc_A6CED9: MemLdRfVar from_stack_1.htmFile
  loc_A6CEDC: LdPrVar
  loc_A6CEDE: LateMemCall
  loc_A6CEE4: LitStr "<title>"
  loc_A6CEE7: FLdRfVar var_A8
  loc_A6CEEA: FLdPr Me
  loc_A6CEED:  = Me.Caption
  loc_A6CEF2: ILdRf var_A8
  loc_A6CEF5: ConcatStr
  loc_A6CEF6: FStStrNoPop var_AC
  loc_A6CEF9: LitStr "</title>"
  loc_A6CEFC: ConcatStr
  loc_A6CEFD: CVarStr var_BC
  loc_A6CF00: PopAdLdVar
  loc_A6CF01: FLdPr Me
  loc_A6CF04: MemLdRfVar from_stack_1.htmFile
  loc_A6CF07: LdPrVar
  loc_A6CF09: LateMemCall
  loc_A6CF0F: FFreeStr var_A8 = ""
  loc_A6CF16: FFree1Var var_BC = ""
  loc_A6CF19: LitStr vbNullString
  loc_A6CF1C: ILdRf Me
  loc_A6CF1F: CastAd
  loc_A6CF22: FStAdFunc var_C0
  loc_A6CF25: FLdRfVar var_C0
  loc_A6CF28: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A6CF2D: FFree1Ad var_C0
  loc_A6CF30: LitI4 0
  loc_A6CF35: FStStrCopy var_AC
  loc_A6CF38: FLdRfVar var_AC
  loc_A6CF3B: LitI4 0
  loc_A6CF40: FStStrCopy var_A8
  loc_A6CF43: FLdRfVar var_A8
  loc_A6CF46: LitI2_Byte 0
  loc_A6CF48: PopTmpLdAd2 var_C2
  loc_A6CF4B: FLdPr Me
  loc_A6CF4E: MemLdRfVar from_stack_1.htmFile
  loc_A6CF51: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A6CF56: FFreeStr var_A8 = ""
  loc_A6CF5D: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A6CF62: PopAdLdVar
  loc_A6CF63: FLdPr Me
  loc_A6CF66: MemLdRfVar from_stack_1.htmFile
  loc_A6CF69: LdPrVar
  loc_A6CF6B: LateMemCall
  loc_A6CF71: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A6CF76: PopAdLdVar
  loc_A6CF77: FLdPr Me
  loc_A6CF7A: MemLdRfVar from_stack_1.htmFile
  loc_A6CF7D: LdPrVar
  loc_A6CF7F: LateMemCall
  loc_A6CF85: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_A6CF8A: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A6CF8F: FStVarCopyObj var_BC
  loc_A6CF92: FLdRfVar var_BC
  loc_A6CF95: FLdRfVar var_D4
  loc_A6CF98: ImpAdCallFPR4  = Ucase()
  loc_A6CF9D: FLdRfVar var_D4
  loc_A6CFA0: ConcatVar var_E4
  loc_A6CFA4: LitVarStr var_F4, "</p>"
  loc_A6CFA9: ConcatVar var_104
  loc_A6CFAD: PopAdLdVar
  loc_A6CFAE: FLdPr Me
  loc_A6CFB1: MemLdRfVar from_stack_1.htmFile
  loc_A6CFB4: LdPrVar
  loc_A6CFB6: LateMemCall
  loc_A6CFBC: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A6CFC7: LitStr "    <p>"
  loc_A6CFCA: FLdRfVar var_A8
  loc_A6CFCD: FLdPr Me
  loc_A6CFD0:  = Me.Caption
  loc_A6CFD5: ILdRf var_A8
  loc_A6CFD8: ConcatStr
  loc_A6CFD9: FStStrNoPop var_AC
  loc_A6CFDC: LitStr "</p></th>"
  loc_A6CFDF: ConcatStr
  loc_A6CFE0: CVarStr var_BC
  loc_A6CFE3: PopAdLdVar
  loc_A6CFE4: FLdPr Me
  loc_A6CFE7: MemLdRfVar from_stack_1.htmFile
  loc_A6CFEA: LdPrVar
  loc_A6CFEC: LateMemCall
  loc_A6CFF2: FFreeStr var_A8 = ""
  loc_A6CFF9: FFree1Var var_BC = ""
  loc_A6CFFC: LitVarStr var_94, "  </tr>"
  loc_A6D001: PopAdLdVar
  loc_A6D002: FLdPr Me
  loc_A6D005: MemLdRfVar from_stack_1.htmFile
  loc_A6D008: LdPrVar
  loc_A6D00A: LateMemCall
  loc_A6D010: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_A6D015: PopAdLdVar
  loc_A6D016: FLdPr Me
  loc_A6D019: MemLdRfVar from_stack_1.htmFile
  loc_A6D01C: LdPrVar
  loc_A6D01E: LateMemCall
  loc_A6D024: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A6D029: PopAdLdVar
  loc_A6D02A: FLdPr Me
  loc_A6D02D: MemLdRfVar from_stack_1.htmFile
  loc_A6D030: LdPrVar
  loc_A6D032: LateMemCall
  loc_A6D038: LitVarStr var_94, "    <td align=""left"">"
  loc_A6D03D: PopAdLdVar
  loc_A6D03E: FLdPr Me
  loc_A6D041: MemLdRfVar from_stack_1.htmFile
  loc_A6D044: LdPrVar
  loc_A6D046: LateMemCall
  loc_A6D04C: LitStr "     Usuario: <span class=""Normal"">"
  loc_A6D04F: FLdRfVar var_A8
  loc_A6D052: FLdPr Me
  loc_A6D055: VCallAd Control_ID_cboCodiUsua
  loc_A6D058: FStAdFunc var_C0
  loc_A6D05B: FLdPr var_C0
  loc_A6D05E:  = Me.Text
  loc_A6D063: ILdRf var_A8
  loc_A6D066: ConcatStr
  loc_A6D067: FStStrNoPop var_AC
  loc_A6D06A: LitStr "</span>"
  loc_A6D06D: ConcatStr
  loc_A6D06E: CVarStr var_BC
  loc_A6D071: PopAdLdVar
  loc_A6D072: FLdPr Me
  loc_A6D075: MemLdRfVar from_stack_1.htmFile
  loc_A6D078: LdPrVar
  loc_A6D07A: LateMemCall
  loc_A6D080: FFreeStr var_A8 = ""
  loc_A6D087: FFree1Ad var_C0
  loc_A6D08A: FFree1Var var_BC = ""
  loc_A6D08D: LitVarStr var_94, "    </td>"
  loc_A6D092: PopAdLdVar
  loc_A6D093: FLdPr Me
  loc_A6D096: MemLdRfVar from_stack_1.htmFile
  loc_A6D099: LdPrVar
  loc_A6D09B: LateMemCall
  loc_A6D0A1: LitVarStr var_94, "  </tr>"
  loc_A6D0A6: PopAdLdVar
  loc_A6D0A7: FLdPr Me
  loc_A6D0AA: MemLdRfVar from_stack_1.htmFile
  loc_A6D0AD: LdPrVar
  loc_A6D0AF: LateMemCall
  loc_A6D0B5: LitVarStr var_94, "</table>"
  loc_A6D0BA: PopAdLdVar
  loc_A6D0BB: FLdPr Me
  loc_A6D0BE: MemLdRfVar from_stack_1.htmFile
  loc_A6D0C1: LdPrVar
  loc_A6D0C3: LateMemCall
  loc_A6D0C9: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A6D0CE: PopAdLdVar
  loc_A6D0CF: FLdPr Me
  loc_A6D0D2: MemLdRfVar from_stack_1.htmFile
  loc_A6D0D5: LdPrVar
  loc_A6D0D7: LateMemCall
  loc_A6D0DD: LitVarStr var_94, "  <THEAD>"
  loc_A6D0E2: PopAdLdVar
  loc_A6D0E3: FLdPr Me
  loc_A6D0E6: MemLdRfVar from_stack_1.htmFile
  loc_A6D0E9: LdPrVar
  loc_A6D0EB: LateMemCall
  loc_A6D0F1: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A6D0F6: PopAdLdVar
  loc_A6D0F7: FLdPr Me
  loc_A6D0FA: MemLdRfVar from_stack_1.htmFile
  loc_A6D0FD: LdPrVar
  loc_A6D0FF: LateMemCall
  loc_A6D105: FLdPr Me
  loc_A6D108: MemLdStr global_80
  loc_A6D10B: LitStr vbNullString
  loc_A6D10E: NeStr
  loc_A6D110: FLdPr Me
  loc_A6D113: MemLdStr global_84
  loc_A6D116: LitStr vbNullString
  loc_A6D119: EqStr
  loc_A6D11B: AndI4
  loc_A6D11C: BranchF loc_A6D14A
  loc_A6D11F: LitVarStr var_94, "    <th>Usuario</th>"
  loc_A6D124: PopAdLdVar
  loc_A6D125: FLdPr Me
  loc_A6D128: MemLdRfVar from_stack_1.htmFile
  loc_A6D12B: LdPrVar
  loc_A6D12D: LateMemCall
  loc_A6D133: LitVarStr var_94, "    <th>Procedimiento</th>"
  loc_A6D138: PopAdLdVar
  loc_A6D139: FLdPr Me
  loc_A6D13C: MemLdRfVar from_stack_1.htmFile
  loc_A6D13F: LdPrVar
  loc_A6D141: LateMemCall
  loc_A6D147: Branch loc_A6D1D1
  loc_A6D14A: FLdPr Me
  loc_A6D14D: MemLdStr global_80
  loc_A6D150: LitStr vbNullString
  loc_A6D153: EqStr
  loc_A6D155: FLdPr Me
  loc_A6D158: MemLdStr global_84
  loc_A6D15B: LitStr vbNullString
  loc_A6D15E: NeStr
  loc_A6D160: AndI4
  loc_A6D161: BranchF loc_A6D18F
  loc_A6D164: LitVarStr var_94, "    <th>Procedimiento</th>"
  loc_A6D169: PopAdLdVar
  loc_A6D16A: FLdPr Me
  loc_A6D16D: MemLdRfVar from_stack_1.htmFile
  loc_A6D170: LdPrVar
  loc_A6D172: LateMemCall
  loc_A6D178: LitVarStr var_94, "    <th>Usuario</th>"
  loc_A6D17D: PopAdLdVar
  loc_A6D17E: FLdPr Me
  loc_A6D181: MemLdRfVar from_stack_1.htmFile
  loc_A6D184: LdPrVar
  loc_A6D186: LateMemCall
  loc_A6D18C: Branch loc_A6D1D1
  loc_A6D18F: FLdPr Me
  loc_A6D192: MemLdStr global_80
  loc_A6D195: LitStr vbNullString
  loc_A6D198: EqStr
  loc_A6D19A: FLdPr Me
  loc_A6D19D: MemLdStr global_84
  loc_A6D1A0: LitStr vbNullString
  loc_A6D1A3: EqStr
  loc_A6D1A5: AndI4
  loc_A6D1A6: BranchF loc_A6D1D1
  loc_A6D1A9: LitVarStr var_94, "    <th>Usuario</th>"
  loc_A6D1AE: PopAdLdVar
  loc_A6D1AF: FLdPr Me
  loc_A6D1B2: MemLdRfVar from_stack_1.htmFile
  loc_A6D1B5: LdPrVar
  loc_A6D1B7: LateMemCall
  loc_A6D1BD: LitVarStr var_94, "    <th>Procedimiento</th>"
  loc_A6D1C2: PopAdLdVar
  loc_A6D1C3: FLdPr Me
  loc_A6D1C6: MemLdRfVar from_stack_1.htmFile
  loc_A6D1C9: LdPrVar
  loc_A6D1CB: LateMemCall
  loc_A6D1D1: LitVarStr var_94, "    <th>Alta</th>"
  loc_A6D1D6: PopAdLdVar
  loc_A6D1D7: FLdPr Me
  loc_A6D1DA: MemLdRfVar from_stack_1.htmFile
  loc_A6D1DD: LdPrVar
  loc_A6D1DF: LateMemCall
  loc_A6D1E5: LitVarStr var_94, "    <th>Baja</th>"
  loc_A6D1EA: PopAdLdVar
  loc_A6D1EB: FLdPr Me
  loc_A6D1EE: MemLdRfVar from_stack_1.htmFile
  loc_A6D1F1: LdPrVar
  loc_A6D1F3: LateMemCall
  loc_A6D1F9: LitVarStr var_94, "    <th>Modif.</th>"
  loc_A6D1FE: PopAdLdVar
  loc_A6D1FF: FLdPr Me
  loc_A6D202: MemLdRfVar from_stack_1.htmFile
  loc_A6D205: LdPrVar
  loc_A6D207: LateMemCall
  loc_A6D20D: LitVarStr var_94, "  </tr>"
  loc_A6D212: PopAdLdVar
  loc_A6D213: FLdPr Me
  loc_A6D216: MemLdRfVar from_stack_1.htmFile
  loc_A6D219: LdPrVar
  loc_A6D21B: LateMemCall
  loc_A6D221: LitVarStr var_94, "  </THEAD>"
  loc_A6D226: PopAdLdVar
  loc_A6D227: FLdPr Me
  loc_A6D22A: MemLdRfVar from_stack_1.htmFile
  loc_A6D22D: LdPrVar
  loc_A6D22F: LateMemCall
  loc_A6D235: ExitProcHresult
End Function

Private Function Proc_187_17_9835E0() '9835E0
  'Data Table: 435968
  loc_9835A0: LitVarStr var_94, "</table>"
  loc_9835A5: PopAdLdVar
  loc_9835A6: FLdPr Me
  loc_9835A9: MemLdRfVar from_stack_1.htmFile
  loc_9835AC: LdPrVar
  loc_9835AE: LateMemCall
  loc_9835B4: LitVarStr var_94, "</body>"
  loc_9835B9: PopAdLdVar
  loc_9835BA: FLdPr Me
  loc_9835BD: MemLdRfVar from_stack_1.htmFile
  loc_9835C0: LdPrVar
  loc_9835C2: LateMemCall
  loc_9835C8: LitVarStr var_94, "</html>"
  loc_9835CD: PopAdLdVar
  loc_9835CE: FLdPr Me
  loc_9835D1: MemLdRfVar from_stack_1.htmFile
  loc_9835D4: LdPrVar
  loc_9835D6: LateMemCall
  loc_9835DC: ExitProcHresult
End Function
