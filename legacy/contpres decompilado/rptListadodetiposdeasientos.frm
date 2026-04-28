VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodetiposdeasientos
  Caption = "Listado de tipos de asientos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodetiposdeasientos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6960
  ClientHeight = 2535
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2280
    Width = 6960
    Height = 255
    TabIndex = 11
    OleObjectBlob = "rptListadodetiposdeasientos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5640
    Top = 1320
    Width = 735
    Height = 615
    TabIndex = 9
    Cancel = -1  'True
    Picture = "rptListadodetiposdeasientos.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodetiposdeasientos.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1080
    Width = 1815
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1080
    Width = 3015
    Height = 1095
    TabIndex = 4
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6735
    Height = 975
    TabIndex = 0
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1800
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5160
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 1080
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5760
    Top = 1680
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptListadodetiposdeasientos.frx":0C00
  End
End

Attribute VB_Name = "rptListadodetiposdeasientos"

Public bGenerado As Boolean

Private Type UDT_1_005F1368
  bStruc(4) As Byte ' String fields: 1
End Type


Private Sub cmdSalir_Click() '97A168
  'Data Table: 42F3DC
  loc_97A138: LitVarStr var_94, "Cerrando..."
  loc_97A13D: PopAdLdVar
  loc_97A13E: FLdPr Me
  loc_97A141: VCallAd Control_ID_statusBar
  loc_97A144: FStAdFunc var_A8
  loc_97A147: FLdPr var_A8
  loc_97A14A: LateIdSt
  loc_97A14F: FFree1Ad var_A8
  loc_97A152: ILdRf Me
  loc_97A155: FStAdNoPop
  loc_97A159: ImpAdLdRf MemVar_C44F9C
  loc_97A15C: NewIfNullPr Me
  loc_97A15F: Me.Global.Unload from_stack_1
  loc_97A164: FFree1Ad var_A8
  loc_97A167: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '98D230
  'Data Table: 42F3DC
  loc_98D1E8: LitI2_Byte 0
  loc_98D1EA: FLdPr Me
  loc_98D1ED: MemStI2 bGenerado
  loc_98D1F0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_98D1F5: ImpAdLdI2 MemVar_C3D064
  loc_98D1F8: CStrUI1
  loc_98D1FA: FStStrNoPop var_88
  loc_98D1FD: FLdPr Me
  loc_98D200: VCallAd Control_ID_cboPeriodo
  loc_98D203: FStAdFunc var_8C
  loc_98D206: FLdPr var_8C
  loc_98D209: Me.Text = from_stack_1
  loc_98D20E: FFree1Str var_88
  loc_98D211: FFree1Ad var_8C
  loc_98D214: Call HabilitarCriterio()
  loc_98D219: ILdRf Me
  loc_98D21C: CastAd
  loc_98D21F: FStAdFunc var_8C
  loc_98D222: FLdRfVar var_8C
  loc_98D225: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_98D22A: FFree1Ad var_8C
  loc_98D22D: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '963CBC
  'Data Table: 42F3DC
  loc_963CA4: LitI2_Byte 0
  loc_963CA6: ILdRf Me
  loc_963CA9: CastAd
  loc_963CAC: FStAdFunc var_88
  loc_963CAF: FLdRfVar var_88
  loc_963CB2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_963CB7: FFree1Ad var_88
  loc_963CBA: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98962C
  'Data Table: 42F3DC
  loc_9895F4: FLdPr Me
  loc_9895F7: VCallAd Control_ID_statusBar
  loc_9895FA: FStAdFunc var_88
  loc_9895FD: FLdPr var_88
  loc_989600: LateIdLdVar var_98 DispID_1 0
  loc_989607: CStrVarTmp
  loc_989608: CVarStr var_A8
  loc_98960B: PopAdLdVar
  loc_98960C: FLdPr Me
  loc_98960F: VCallAd Control_ID_statusBar
  loc_989612: FStAdFunc var_BC
  loc_989615: FLdPr var_BC
  loc_989618: LateIdSt
  loc_98961D: FFreeAd var_88 = ""
  loc_989624: FFreeVar var_98 = ""
  loc_98962B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '963AF4
  'Data Table: 42F3DC
  loc_963ADC: ILdRf Me
  loc_963ADF: CastAd
  loc_963AE2: FStAdFunc var_88
  loc_963AE5: FLdRfVar var_88
  loc_963AE8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_963AED: FFree1Ad var_88
  loc_963AF0: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '963B40
  'Data Table: 42F3DC
  loc_963B28: ILdRf Me
  loc_963B2B: CastAd
  loc_963B2E: FStAdFunc var_88
  loc_963B31: FLdRfVar var_88
  loc_963B34: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_963B39: FFree1Ad var_88
  loc_963B3C: ExitProcHresult
End Sub

Private Sub Form_Load() '9D5A4C
  'Data Table: 42F3DC
  loc_9D5960: LitI2_Byte &HFF
  loc_9D5962: ImpAdStI2 MemVar_C3D840
  loc_9D5965: ILdRf Me
  loc_9D5968: CastAd
  loc_9D596B: FStAdFunc var_88
  loc_9D596E: FLdRfVar var_88
  loc_9D5971: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D5976: FFree1Ad var_88
  loc_9D5979: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D597C: FLdPr Me
  loc_9D597F: MemLdRfVar from_stack_1.global_56
  loc_9D5982: NewIfNullPr clsperiodo
  loc_9D5985: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D598A: FLdRfVar var_8C
  loc_9D598D: FLdPr Me
  loc_9D5990: MemLdRfVar from_stack_1.global_56
  loc_9D5993: NewIfNullPr clsperiodo
  loc_9D5996: from_stack_1 = clsperiodo.RecordCount
  loc_9D599B: ILdRf var_8C
  loc_9D599E: LitI4 0
  loc_9D59A3: GtI4
  loc_9D59A4: BranchF loc_9D5A43
  loc_9D59A7: FLdPr Me
  loc_9D59AA: MemLdRfVar from_stack_1.global_56
  loc_9D59AD: NewIfNullPr clsperiodo
  loc_9D59B0: Call clsperiodo.MoveFirst()
  loc_9D59B5: FLdRfVar var_8E
  loc_9D59B8: FLdPr Me
  loc_9D59BB: MemLdRfVar from_stack_1.global_56
  loc_9D59BE: NewIfNullPr clsperiodo
  loc_9D59C1: from_stack_1 = clsperiodo.EOF
  loc_9D59C6: FLdI2 var_8E
  loc_9D59C9: NotI4
  loc_9D59CA: BranchF loc_9D5A43
  loc_9D59CD: LitVar_Missing var_CC
  loc_9D59D0: PopAdLdVar
  loc_9D59D1: FLdRfVar var_B8
  loc_9D59D4: FLdRfVar var_A8
  loc_9D59D7: LitVarStr var_A4, "PeriInfo"
  loc_9D59DC: PopAdLdVar
  loc_9D59DD: FLdRfVar var_94
  loc_9D59E0: FLdRfVar var_88
  loc_9D59E3: FLdPr Me
  loc_9D59E6: MemLdRfVar from_stack_1.global_56
  loc_9D59E9: NewIfNullPr clsperiodo
  loc_9D59EC: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D59F1: FLdPr var_88
  loc_9D59F4:  = Me.Fields
  loc_9D59F9: FLdPr var_94
  loc_9D59FC: from_stack_2 = Me.Item(from_stack_1)
  loc_9D5A01: FLdPr var_A8
  loc_9D5A04:  = Me.Value
  loc_9D5A09: FLdRfVar var_B8
  loc_9D5A0C: CStrVarTmp
  loc_9D5A0D: FStStrNoPop var_BC
  loc_9D5A10: FLdPr Me
  loc_9D5A13: VCallAd Control_ID_cboPeriodo
  loc_9D5A16: FStAdFunc var_D0
  loc_9D5A19: FLdPr var_D0
  loc_9D5A1C: Me.AddItem from_stack_1, from_stack_2
  loc_9D5A21: FFree1Str var_BC
  loc_9D5A24: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D5A2F: FFree1Var var_B8 = ""
  loc_9D5A32: FLdPr Me
  loc_9D5A35: MemLdRfVar from_stack_1.global_56
  loc_9D5A38: NewIfNullPr clsperiodo
  loc_9D5A3B: Call clsperiodo.MoveSiguiente()
  loc_9D5A40: Branch loc_9D59B5
  loc_9D5A43: Call cmdNueva_Click()
  loc_9D5A48: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '963D54
  'Data Table: 42F3DC
  loc_963D3C: FLdPr Me
  loc_963D3F: VCallAd Control_ID_wbbReporte
  loc_963D42: FStAdFunc var_88
  loc_963D45: FLdRfVar var_88
  loc_963D48: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_963D4D: FFree1Ad var_88
  loc_963D50: ExitProcHresult
  loc_963D51: CStrVarTmp
  loc_963D52: CRec2Ansi arg_6400
End Sub

Public Function bGeneradoGet() '42FD14
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '42FD23
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '98514C
  'Data Table: 42F3DC
  loc_985118: LitI4 0
  loc_98511D: LitI4 0
  loc_985122: FLdRfVar var_88
  loc_985125: Redim
  loc_98512F: FLdPr Me
  loc_985132: VCallAd Control_ID_cboPeriodo
  loc_985135: CVarAd
  loc_985139: ParmAry1St
  loc_98513F: FLdRfVar var_88
  loc_985142: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_985147: FLdRfVar var_88
  loc_98514A: Erase
  loc_98514B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A2F9D4
  'Data Table: 42F3DC
  loc_A2F7FC: OnErrorGoto loc_A2F96E
  loc_A2F7FF: FLdPr Me
  loc_A2F802: MemLdI2 bGenerado
  loc_A2F805: BranchF loc_A2F809
  loc_A2F808: ExitProcHresult
  loc_A2F809: LitVarStr var_94, "Generando reporte..."
  loc_A2F80E: PopAdLdVar
  loc_A2F80F: FLdPr Me
  loc_A2F812: VCallAd Control_ID_statusBar
  loc_A2F815: FStAdFunc var_A8
  loc_A2F818: FLdPr var_A8
  loc_A2F81B: LateIdSt
  loc_A2F820: FFree1Ad var_A8
  loc_A2F823: LitI4 &HB
  loc_A2F828: CI2I4
  loc_A2F829: FLdPr Me
  loc_A2F82C: Me.MousePointer = from_stack_1
  loc_A2F831: LitStr "SELECT * FROM tipoasiento ORDER BY CodiTias"
  loc_A2F834: FLdPr Me
  loc_A2F837: MemLdRfVar from_stack_1.global_60
  loc_A2F83A: NewIfNullPr clstipoasiento
  loc_A2F83D: Call clstipoasiento.RedefineRS(from_stack_1v)
  loc_A2F842: FLdRfVar var_AC
  loc_A2F845: FLdPr Me
  loc_A2F848: MemLdRfVar from_stack_1.global_60
  loc_A2F84B: NewIfNullPr clstipoasiento
  loc_A2F84E: from_stack_1 = clstipoasiento.RecordCount
  loc_A2F853: ILdRf var_AC
  loc_A2F856: LitI4 0
  loc_A2F85B: EqI4
  loc_A2F85C: BranchF loc_A2F86F
  loc_A2F85F: LitI4 0
  loc_A2F864: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A2F867: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A2F86C: Branch loc_A2F945
  loc_A2F86F: FLdPr Me
  loc_A2F872: MemLdRfVar from_stack_1.global_60
  loc_A2F875: NewIfNullAd
  loc_A2F878: FStAd var_B0 
  loc_A2F87C: LitI4 1
  loc_A2F881: FLdRfVar var_AC
  loc_A2F884: FLdPr var_B0
  loc_A2F887: from_stack_1 = clstipoasiento.RecordCount
  loc_A2F88C: ILdRf var_AC
  loc_A2F88F: FLdPr Me
  loc_A2F892: MemLdRfVar from_stack_1.global_84
  loc_A2F895: Redim
  loc_A2F89F: FLdPr var_B0
  loc_A2F8A2: Call clstipoasiento.MoveFirst()
  loc_A2F8A7: LitI2_Byte 1
  loc_A2F8A9: FLdPr Me
  loc_A2F8AC: MemLdRfVar from_stack_1.global_88
  loc_A2F8AF: FLdRfVar var_AC
  loc_A2F8B2: FLdPr var_B0
  loc_A2F8B5: from_stack_1 = clstipoasiento.RecordCount
  loc_A2F8BA: ILdRf var_AC
  loc_A2F8BD: CI2I4
  loc_A2F8BE: ForI2 var_B4
  loc_A2F8C4: FLdRfVar var_BC
  loc_A2F8C7: LitVarStr var_94, "DetaTias"
  loc_A2F8CC: PopAdLdVar
  loc_A2F8CD: FLdRfVar var_B8
  loc_A2F8D0: FLdRfVar var_A8
  loc_A2F8D3: FLdPr var_B0
  loc_A2F8D6: from_stack_1v = clstipoasiento.RsFrmGet()
  loc_A2F8DB: FLdPr var_A8
  loc_A2F8DE:  = Me.Fields
  loc_A2F8E3: FLdPr var_B8
  loc_A2F8E6: from_stack_2 = Me.Item(from_stack_1)
  loc_A2F8EB: LitI2_Byte 0
  loc_A2F8ED: LitVar_Missing var_E0
  loc_A2F8F0: LitI2_Byte 0
  loc_A2F8F2: FLdZeroAd var_BC
  loc_A2F8F5: CVarAd
  loc_A2F8F9: PopAdLdVar
  loc_A2F8FA: FLdPr Me
  loc_A2F8FD: MemLdI2 global_88
  loc_A2F900: CI4UI1
  loc_A2F901: FLdPr Me
  loc_A2F904: MemLdStr global_84
  loc_A2F907: AryLock
  loc_A2F90A: Ary1LdPr
  loc_A2F90B: MemLdRfVar from_stack_1.global_0
  loc_A2F90E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A2F913: AryUnlock
  loc_A2F916: FFreeAd var_A8 = ""
  loc_A2F91D: FFreeVar var_D0 = ""
  loc_A2F924: FLdPr var_B0
  loc_A2F927: Call clstipoasiento.MoveSiguiente()
  loc_A2F92C: FLdPr Me
  loc_A2F92F: MemLdRfVar from_stack_1.global_88
  loc_A2F932: NextI2 var_B4, loc_A2F8C4
  loc_A2F937: LitNothing
  loc_A2F939: FStAd var_B0 
  loc_A2F93D: LitI2_Byte &HFF
  loc_A2F93F: FLdPr Me
  loc_A2F942: MemStI2 bGenerado
  loc_A2F945: LitI4 0
  loc_A2F94A: CI2I4
  loc_A2F94B: FLdPr Me
  loc_A2F94E: Me.MousePointer = from_stack_1
  loc_A2F953: LitVarStr var_94, vbNullString
  loc_A2F958: PopAdLdVar
  loc_A2F959: FLdPr Me
  loc_A2F95C: VCallAd Control_ID_statusBar
  loc_A2F95F: FStAdFunc var_A8
  loc_A2F962: FLdPr var_A8
  loc_A2F965: LateIdSt
  loc_A2F96A: FFree1Ad var_A8
  loc_A2F96D: ExitProcHresult
  loc_A2F96E: LitI4 0
  loc_A2F973: LitStr "Error "
  loc_A2F976: FLdRfVar var_AC
  loc_A2F979: ImpAdCallI2 Err 'rtcErrObj
  loc_A2F97E: FStAdFunc var_A8
  loc_A2F981: FLdPr var_A8
  loc_A2F984:  = Err.Number
  loc_A2F989: ILdRf var_AC
  loc_A2F98C: CStrI4
  loc_A2F98E: FStStrNoPop var_E4
  loc_A2F991: ConcatStr
  loc_A2F992: FStStrNoPop var_E8
  loc_A2F995: LitStr ": "
  loc_A2F998: ConcatStr
  loc_A2F999: FStStrNoPop var_F0
  loc_A2F99C: FLdRfVar var_EC
  loc_A2F99F: ImpAdCallI2 Err 'rtcErrObj
  loc_A2F9A4: FStAdFunc var_B8
  loc_A2F9A7: FLdPr var_B8
  loc_A2F9AA:  = Err.Description
  loc_A2F9AF: ILdRf var_EC
  loc_A2F9B2: ConcatStr
  loc_A2F9B3: FStStrNoPop var_F4
  loc_A2F9B6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A2F9BB: FFreeStr var_E4 = "": var_E8 = "": var_F0 = "": var_EC = ""
  loc_A2F9C8: FFreeAd var_A8 = ""
  loc_A2F9CF: ExitProcHresult
  loc_A2F9D0: ExitProcHresult
End Sub

Public Sub GeneraHTML() '9BF1A8
  'Data Table: 42F3DC
  loc_9BF0DC: FLdRfVar var_88
  loc_9BF0DF: LitI2_Byte 0
  loc_9BF0E1: LitI2_Byte &HFF
  loc_9BF0E3: ImpAdLdI4 MemVar_C3D83C
  loc_9BF0E6: FLdPr Me
  loc_9BF0E9: MemLdRfVar from_stack_1.global_64
  loc_9BF0EC: NewIfNullPr IFileSystem3
  loc_9BF0EF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9BF0F4: ILdRf var_88
  loc_9BF0F7: FLdPr Me
  loc_9BF0FA: MemStVarAd
  loc_9BF0FE: FFree1Ad var_88
  loc_9BF101: Call Proc_204_13_AA6DCC()
  loc_9BF106: LitI2_Byte 1
  loc_9BF108: FLdPr Me
  loc_9BF10B: MemLdRfVar from_stack_1.global_88
  loc_9BF10E: FLdPr Me
  loc_9BF111: MemLdStr global_84
  loc_9BF114: LitI2_Byte 1
  loc_9BF116: FnUBound
  loc_9BF118: CI2I4
  loc_9BF119: ForI2 var_8C
  loc_9BF11F: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_9BF124: PopAdLdVar
  loc_9BF125: FLdPr Me
  loc_9BF128: MemLdRfVar from_stack_1.global_68
  loc_9BF12B: LdPrVar
  loc_9BF12D: LateMemCall
  loc_9BF133: LitI4 0
  loc_9BF138: LitI4 0
  loc_9BF13D: LitI2_Byte 0
  loc_9BF13F: LitStr "left"
  loc_9BF142: FLdPr Me
  loc_9BF145: MemLdI2 global_88
  loc_9BF148: CI4UI1
  loc_9BF149: FLdPr Me
  loc_9BF14C: MemLdStr global_84
  loc_9BF14F: Ary1LdPr
  loc_9BF150: MemLdStr global_0
  loc_9BF153: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_9BF158: CVarStr var_BC
  loc_9BF15B: PopAdLdVar
  loc_9BF15C: FLdPr Me
  loc_9BF15F: MemLdRfVar from_stack_1.global_68
  loc_9BF162: LdPrVar
  loc_9BF164: LateMemCall
  loc_9BF16A: FFree1Var var_BC = ""
  loc_9BF16D: LitVarStr var_9C, "    </tr>"
  loc_9BF172: PopAdLdVar
  loc_9BF173: FLdPr Me
  loc_9BF176: MemLdRfVar from_stack_1.global_68
  loc_9BF179: LdPrVar
  loc_9BF17B: LateMemCall
  loc_9BF181: FLdPr Me
  loc_9BF184: MemLdRfVar from_stack_1.global_88
  loc_9BF187: NextI2 var_8C, loc_9BF11F
  loc_9BF18C: Call Proc_204_14_983AB0()
  loc_9BF191: FLdPr Me
  loc_9BF194: MemLdRfVar from_stack_1.global_68
  loc_9BF197: LdPrVar
  loc_9BF199: LateMemCall
  loc_9BF19F: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9BF1A4: ExitProcHresult
End Sub

Private Function Proc_204_13_AA6DCC() 'AA6DCC
  'Data Table: 42F3DC
  loc_AA68B4: LitVarStr var_94, "<html>"
  loc_AA68B9: PopAdLdVar
  loc_AA68BA: FLdPr Me
  loc_AA68BD: MemLdRfVar from_stack_1.global_68
  loc_AA68C0: LdPrVar
  loc_AA68C2: LateMemCall
  loc_AA68C8: LitVarStr var_94, "<head>"
  loc_AA68CD: PopAdLdVar
  loc_AA68CE: FLdPr Me
  loc_AA68D1: MemLdRfVar from_stack_1.global_68
  loc_AA68D4: LdPrVar
  loc_AA68D6: LateMemCall
  loc_AA68DC: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_AA68E1: PopAdLdVar
  loc_AA68E2: FLdPr Me
  loc_AA68E5: MemLdRfVar from_stack_1.global_68
  loc_AA68E8: LdPrVar
  loc_AA68EA: LateMemCall
  loc_AA68F0: LitStr "<title>"
  loc_AA68F3: FLdRfVar var_A8
  loc_AA68F6: FLdPr Me
  loc_AA68F9:  = Me.Caption
  loc_AA68FE: ILdRf var_A8
  loc_AA6901: ConcatStr
  loc_AA6902: FStStrNoPop var_AC
  loc_AA6905: LitStr "</title>"
  loc_AA6908: ConcatStr
  loc_AA6909: CVarStr var_BC
  loc_AA690C: PopAdLdVar
  loc_AA690D: FLdPr Me
  loc_AA6910: MemLdRfVar from_stack_1.global_68
  loc_AA6913: LdPrVar
  loc_AA6915: LateMemCall
  loc_AA691B: FFreeStr var_A8 = ""
  loc_AA6922: FFree1Var var_BC = ""
  loc_AA6925: LitVarStr var_94, "<style type=""text/css"">"
  loc_AA692A: PopAdLdVar
  loc_AA692B: FLdPr Me
  loc_AA692E: MemLdRfVar from_stack_1.global_68
  loc_AA6931: LdPrVar
  loc_AA6933: LateMemCall
  loc_AA6939: LitVarStr var_94, ".Titulo1 {"
  loc_AA693E: PopAdLdVar
  loc_AA693F: FLdPr Me
  loc_AA6942: MemLdRfVar from_stack_1.global_68
  loc_AA6945: LdPrVar
  loc_AA6947: LateMemCall
  loc_AA694D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AA6952: PopAdLdVar
  loc_AA6953: FLdPr Me
  loc_AA6956: MemLdRfVar from_stack_1.global_68
  loc_AA6959: LdPrVar
  loc_AA695B: LateMemCall
  loc_AA6961: LitVarStr var_94, " font-size: 18px;"
  loc_AA6966: PopAdLdVar
  loc_AA6967: FLdPr Me
  loc_AA696A: MemLdRfVar from_stack_1.global_68
  loc_AA696D: LdPrVar
  loc_AA696F: LateMemCall
  loc_AA6975: LitVarStr var_94, " font-weight: bold;"
  loc_AA697A: PopAdLdVar
  loc_AA697B: FLdPr Me
  loc_AA697E: MemLdRfVar from_stack_1.global_68
  loc_AA6981: LdPrVar
  loc_AA6983: LateMemCall
  loc_AA6989: LitVarStr var_94, "}"
  loc_AA698E: PopAdLdVar
  loc_AA698F: FLdPr Me
  loc_AA6992: MemLdRfVar from_stack_1.global_68
  loc_AA6995: LdPrVar
  loc_AA6997: LateMemCall
  loc_AA699D: LitVarStr var_94, ".Titulo2 {"
  loc_AA69A2: PopAdLdVar
  loc_AA69A3: FLdPr Me
  loc_AA69A6: MemLdRfVar from_stack_1.global_68
  loc_AA69A9: LdPrVar
  loc_AA69AB: LateMemCall
  loc_AA69B1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AA69B6: PopAdLdVar
  loc_AA69B7: FLdPr Me
  loc_AA69BA: MemLdRfVar from_stack_1.global_68
  loc_AA69BD: LdPrVar
  loc_AA69BF: LateMemCall
  loc_AA69C5: LitVarStr var_94, " font-size: 14px;"
  loc_AA69CA: PopAdLdVar
  loc_AA69CB: FLdPr Me
  loc_AA69CE: MemLdRfVar from_stack_1.global_68
  loc_AA69D1: LdPrVar
  loc_AA69D3: LateMemCall
  loc_AA69D9: LitVarStr var_94, " font-weight: bold;"
  loc_AA69DE: PopAdLdVar
  loc_AA69DF: FLdPr Me
  loc_AA69E2: MemLdRfVar from_stack_1.global_68
  loc_AA69E5: LdPrVar
  loc_AA69E7: LateMemCall
  loc_AA69ED: LitVarStr var_94, "}"
  loc_AA69F2: PopAdLdVar
  loc_AA69F3: FLdPr Me
  loc_AA69F6: MemLdRfVar from_stack_1.global_68
  loc_AA69F9: LdPrVar
  loc_AA69FB: LateMemCall
  loc_AA6A01: LitVarStr var_94, ".Normal {"
  loc_AA6A06: PopAdLdVar
  loc_AA6A07: FLdPr Me
  loc_AA6A0A: MemLdRfVar from_stack_1.global_68
  loc_AA6A0D: LdPrVar
  loc_AA6A0F: LateMemCall
  loc_AA6A15: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_AA6A1A: PopAdLdVar
  loc_AA6A1B: FLdPr Me
  loc_AA6A1E: MemLdRfVar from_stack_1.global_68
  loc_AA6A21: LdPrVar
  loc_AA6A23: LateMemCall
  loc_AA6A29: LitVarStr var_94, " font-size: 14px;"
  loc_AA6A2E: PopAdLdVar
  loc_AA6A2F: FLdPr Me
  loc_AA6A32: MemLdRfVar from_stack_1.global_68
  loc_AA6A35: LdPrVar
  loc_AA6A37: LateMemCall
  loc_AA6A3D: LitVarStr var_94, " font-style: normal;"
  loc_AA6A42: PopAdLdVar
  loc_AA6A43: FLdPr Me
  loc_AA6A46: MemLdRfVar from_stack_1.global_68
  loc_AA6A49: LdPrVar
  loc_AA6A4B: LateMemCall
  loc_AA6A51: LitVarStr var_94, " font-weight: normal;"
  loc_AA6A56: PopAdLdVar
  loc_AA6A57: FLdPr Me
  loc_AA6A5A: MemLdRfVar from_stack_1.global_68
  loc_AA6A5D: LdPrVar
  loc_AA6A5F: LateMemCall
  loc_AA6A65: LitVarStr var_94, " font-variant: normal;"
  loc_AA6A6A: PopAdLdVar
  loc_AA6A6B: FLdPr Me
  loc_AA6A6E: MemLdRfVar from_stack_1.global_68
  loc_AA6A71: LdPrVar
  loc_AA6A73: LateMemCall
  loc_AA6A79: LitVarStr var_94, "}"
  loc_AA6A7E: PopAdLdVar
  loc_AA6A7F: FLdPr Me
  loc_AA6A82: MemLdRfVar from_stack_1.global_68
  loc_AA6A85: LdPrVar
  loc_AA6A87: LateMemCall
  loc_AA6A8D: LitVarStr var_94, ".Encabezado {"
  loc_AA6A92: PopAdLdVar
  loc_AA6A93: FLdPr Me
  loc_AA6A96: MemLdRfVar from_stack_1.global_68
  loc_AA6A99: LdPrVar
  loc_AA6A9B: LateMemCall
  loc_AA6AA1: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_AA6AA6: PopAdLdVar
  loc_AA6AA7: FLdPr Me
  loc_AA6AAA: MemLdRfVar from_stack_1.global_68
  loc_AA6AAD: LdPrVar
  loc_AA6AAF: LateMemCall
  loc_AA6AB5: LitVarStr var_94, " font-size: 13px;"
  loc_AA6ABA: PopAdLdVar
  loc_AA6ABB: FLdPr Me
  loc_AA6ABE: MemLdRfVar from_stack_1.global_68
  loc_AA6AC1: LdPrVar
  loc_AA6AC3: LateMemCall
  loc_AA6AC9: LitVarStr var_94, " font-weight: bold;"
  loc_AA6ACE: PopAdLdVar
  loc_AA6ACF: FLdPr Me
  loc_AA6AD2: MemLdRfVar from_stack_1.global_68
  loc_AA6AD5: LdPrVar
  loc_AA6AD7: LateMemCall
  loc_AA6ADD: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_AA6AE2: PopAdLdVar
  loc_AA6AE3: FLdPr Me
  loc_AA6AE6: MemLdRfVar from_stack_1.global_68
  loc_AA6AE9: LdPrVar
  loc_AA6AEB: LateMemCall
  loc_AA6AF1: LitVarStr var_94, "}"
  loc_AA6AF6: PopAdLdVar
  loc_AA6AF7: FLdPr Me
  loc_AA6AFA: MemLdRfVar from_stack_1.global_68
  loc_AA6AFD: LdPrVar
  loc_AA6AFF: LateMemCall
  loc_AA6B05: LitVarStr var_94, ".LineaDato {"
  loc_AA6B0A: PopAdLdVar
  loc_AA6B0B: FLdPr Me
  loc_AA6B0E: MemLdRfVar from_stack_1.global_68
  loc_AA6B11: LdPrVar
  loc_AA6B13: LateMemCall
  loc_AA6B19: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AA6B1E: PopAdLdVar
  loc_AA6B1F: FLdPr Me
  loc_AA6B22: MemLdRfVar from_stack_1.global_68
  loc_AA6B25: LdPrVar
  loc_AA6B27: LateMemCall
  loc_AA6B2D: LitVarStr var_94, " font-size: 10px;"
  loc_AA6B32: PopAdLdVar
  loc_AA6B33: FLdPr Me
  loc_AA6B36: MemLdRfVar from_stack_1.global_68
  loc_AA6B39: LdPrVar
  loc_AA6B3B: LateMemCall
  loc_AA6B41: LitVarStr var_94, "}"
  loc_AA6B46: PopAdLdVar
  loc_AA6B47: FLdPr Me
  loc_AA6B4A: MemLdRfVar from_stack_1.global_68
  loc_AA6B4D: LdPrVar
  loc_AA6B4F: LateMemCall
  loc_AA6B55: LitVarStr var_94, ".Totales {"
  loc_AA6B5A: PopAdLdVar
  loc_AA6B5B: FLdPr Me
  loc_AA6B5E: MemLdRfVar from_stack_1.global_68
  loc_AA6B61: LdPrVar
  loc_AA6B63: LateMemCall
  loc_AA6B69: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_AA6B6E: PopAdLdVar
  loc_AA6B6F: FLdPr Me
  loc_AA6B72: MemLdRfVar from_stack_1.global_68
  loc_AA6B75: LdPrVar
  loc_AA6B77: LateMemCall
  loc_AA6B7D: LitVarStr var_94, " font-size: 12px;"
  loc_AA6B82: PopAdLdVar
  loc_AA6B83: FLdPr Me
  loc_AA6B86: MemLdRfVar from_stack_1.global_68
  loc_AA6B89: LdPrVar
  loc_AA6B8B: LateMemCall
  loc_AA6B91: LitVarStr var_94, " font-weight: bold;"
  loc_AA6B96: PopAdLdVar
  loc_AA6B97: FLdPr Me
  loc_AA6B9A: MemLdRfVar from_stack_1.global_68
  loc_AA6B9D: LdPrVar
  loc_AA6B9F: LateMemCall
  loc_AA6BA5: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_AA6BAA: PopAdLdVar
  loc_AA6BAB: FLdPr Me
  loc_AA6BAE: MemLdRfVar from_stack_1.global_68
  loc_AA6BB1: LdPrVar
  loc_AA6BB3: LateMemCall
  loc_AA6BB9: LitVarStr var_94, "}"
  loc_AA6BBE: PopAdLdVar
  loc_AA6BBF: FLdPr Me
  loc_AA6BC2: MemLdRfVar from_stack_1.global_68
  loc_AA6BC5: LdPrVar
  loc_AA6BC7: LateMemCall
  loc_AA6BCD: LitVarStr var_94, "</style>"
  loc_AA6BD2: PopAdLdVar
  loc_AA6BD3: FLdPr Me
  loc_AA6BD6: MemLdRfVar from_stack_1.global_68
  loc_AA6BD9: LdPrVar
  loc_AA6BDB: LateMemCall
  loc_AA6BE1: LitI4 0
  loc_AA6BE6: FStStrCopy var_AC
  loc_AA6BE9: FLdRfVar var_AC
  loc_AA6BEC: LitI4 0
  loc_AA6BF1: FStStrCopy var_A8
  loc_AA6BF4: FLdRfVar var_A8
  loc_AA6BF7: LitI2_Byte 0
  loc_AA6BF9: PopTmpLdAd2 var_BE
  loc_AA6BFC: FLdPr Me
  loc_AA6BFF: MemLdRfVar from_stack_1.global_68
  loc_AA6C02: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_AA6C07: FFreeStr var_A8 = ""
  loc_AA6C0E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_AA6C13: PopAdLdVar
  loc_AA6C14: FLdPr Me
  loc_AA6C17: MemLdRfVar from_stack_1.global_68
  loc_AA6C1A: LdPrVar
  loc_AA6C1C: LateMemCall
  loc_AA6C22: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA6C27: PopAdLdVar
  loc_AA6C28: FLdPr Me
  loc_AA6C2B: MemLdRfVar from_stack_1.global_68
  loc_AA6C2E: LdPrVar
  loc_AA6C30: LateMemCall
  loc_AA6C36: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_AA6C3B: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_AA6C40: FStVarCopyObj var_BC
  loc_AA6C43: FLdRfVar var_BC
  loc_AA6C46: FLdRfVar var_D0
  loc_AA6C49: ImpAdCallFPR4  = Ucase()
  loc_AA6C4E: FLdRfVar var_D0
  loc_AA6C51: ConcatVar var_E0
  loc_AA6C55: LitVarStr var_F0, "</p>"
  loc_AA6C5A: ConcatVar var_100
  loc_AA6C5E: PopAdLdVar
  loc_AA6C5F: FLdPr Me
  loc_AA6C62: MemLdRfVar from_stack_1.global_68
  loc_AA6C65: LdPrVar
  loc_AA6C67: LateMemCall
  loc_AA6C6D: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_AA6C78: LitStr "    <p>"
  loc_AA6C7B: FLdRfVar var_A8
  loc_AA6C7E: FLdPr Me
  loc_AA6C81:  = Me.Caption
  loc_AA6C86: ILdRf var_A8
  loc_AA6C89: ConcatStr
  loc_AA6C8A: FStStrNoPop var_AC
  loc_AA6C8D: LitStr "</p></th>"
  loc_AA6C90: ConcatStr
  loc_AA6C91: CVarStr var_BC
  loc_AA6C94: PopAdLdVar
  loc_AA6C95: FLdPr Me
  loc_AA6C98: MemLdRfVar from_stack_1.global_68
  loc_AA6C9B: LdPrVar
  loc_AA6C9D: LateMemCall
  loc_AA6CA3: FFreeStr var_A8 = ""
  loc_AA6CAA: FFree1Var var_BC = ""
  loc_AA6CAD: LitVarStr var_94, "  </tr>"
  loc_AA6CB2: PopAdLdVar
  loc_AA6CB3: FLdPr Me
  loc_AA6CB6: MemLdRfVar from_stack_1.global_68
  loc_AA6CB9: LdPrVar
  loc_AA6CBB: LateMemCall
  loc_AA6CC1: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA6CC6: PopAdLdVar
  loc_AA6CC7: FLdPr Me
  loc_AA6CCA: MemLdRfVar from_stack_1.global_68
  loc_AA6CCD: LdPrVar
  loc_AA6CCF: LateMemCall
  loc_AA6CD5: LitVarStr var_94, "    <th align=""left"" valign=""bottom""><hr></th>"
  loc_AA6CDA: PopAdLdVar
  loc_AA6CDB: FLdPr Me
  loc_AA6CDE: MemLdRfVar from_stack_1.global_68
  loc_AA6CE1: LdPrVar
  loc_AA6CE3: LateMemCall
  loc_AA6CE9: LitVarStr var_94, "  </tr>"
  loc_AA6CEE: PopAdLdVar
  loc_AA6CEF: FLdPr Me
  loc_AA6CF2: MemLdRfVar from_stack_1.global_68
  loc_AA6CF5: LdPrVar
  loc_AA6CF7: LateMemCall
  loc_AA6CFD: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_AA6D02: PopAdLdVar
  loc_AA6D03: FLdPr Me
  loc_AA6D06: MemLdRfVar from_stack_1.global_68
  loc_AA6D09: LdPrVar
  loc_AA6D0B: LateMemCall
  loc_AA6D11: LitStr "    <th align=""left"" valign=""bottom"">Periodo: <span class=""Normal"">"
  loc_AA6D14: FLdRfVar var_A8
  loc_AA6D17: FLdPr Me
  loc_AA6D1A: VCallAd Control_ID_cboPeriodo
  loc_AA6D1D: FStAdFunc var_114
  loc_AA6D20: FLdPr var_114
  loc_AA6D23:  = Me.Text
  loc_AA6D28: ILdRf var_A8
  loc_AA6D2B: ConcatStr
  loc_AA6D2C: FStStrNoPop var_AC
  loc_AA6D2F: LitStr "</span></th>"
  loc_AA6D32: ConcatStr
  loc_AA6D33: CVarStr var_BC
  loc_AA6D36: PopAdLdVar
  loc_AA6D37: FLdPr Me
  loc_AA6D3A: MemLdRfVar from_stack_1.global_68
  loc_AA6D3D: LdPrVar
  loc_AA6D3F: LateMemCall
  loc_AA6D45: FFreeStr var_A8 = ""
  loc_AA6D4C: FFree1Ad var_114
  loc_AA6D4F: FFree1Var var_BC = ""
  loc_AA6D52: LitVarStr var_94, "  </tr>"
  loc_AA6D57: PopAdLdVar
  loc_AA6D58: FLdPr Me
  loc_AA6D5B: MemLdRfVar from_stack_1.global_68
  loc_AA6D5E: LdPrVar
  loc_AA6D60: LateMemCall
  loc_AA6D66: LitVarStr var_94, "</table>"
  loc_AA6D6B: PopAdLdVar
  loc_AA6D6C: FLdPr Me
  loc_AA6D6F: MemLdRfVar from_stack_1.global_68
  loc_AA6D72: LdPrVar
  loc_AA6D74: LateMemCall
  loc_AA6D7A: LitVarStr var_94, "<table width=""55" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_AA6D7F: PopAdLdVar
  loc_AA6D80: FLdPr Me
  loc_AA6D83: MemLdRfVar from_stack_1.global_68
  loc_AA6D86: LdPrVar
  loc_AA6D88: LateMemCall
  loc_AA6D8E: LitVarStr var_94, "  <tr class=""Encabezado"">"
  loc_AA6D93: PopAdLdVar
  loc_AA6D94: FLdPr Me
  loc_AA6D97: MemLdRfVar from_stack_1.global_68
  loc_AA6D9A: LdPrVar
  loc_AA6D9C: LateMemCall
  loc_AA6DA2: LitVarStr var_94, "    <th align=""center"">Tipo de asiento</th>"
  loc_AA6DA7: PopAdLdVar
  loc_AA6DA8: FLdPr Me
  loc_AA6DAB: MemLdRfVar from_stack_1.global_68
  loc_AA6DAE: LdPrVar
  loc_AA6DB0: LateMemCall
  loc_AA6DB6: LitVarStr var_94, "  </tr>"
  loc_AA6DBB: PopAdLdVar
  loc_AA6DBC: FLdPr Me
  loc_AA6DBF: MemLdRfVar from_stack_1.global_68
  loc_AA6DC2: LdPrVar
  loc_AA6DC4: LateMemCall
  loc_AA6DCA: ExitProcHresult
End Function

Private Function Proc_204_14_983AB0() '983AB0
  'Data Table: 42F3DC
  loc_983A70: LitVarStr var_94, "</table>"
  loc_983A75: PopAdLdVar
  loc_983A76: FLdPr Me
  loc_983A79: MemLdRfVar from_stack_1.global_68
  loc_983A7C: LdPrVar
  loc_983A7E: LateMemCall
  loc_983A84: LitVarStr var_94, "</body>"
  loc_983A89: PopAdLdVar
  loc_983A8A: FLdPr Me
  loc_983A8D: MemLdRfVar from_stack_1.global_68
  loc_983A90: LdPrVar
  loc_983A92: LateMemCall
  loc_983A98: LitVarStr var_94, "</html>"
  loc_983A9D: PopAdLdVar
  loc_983A9E: FLdPr Me
  loc_983AA1: MemLdRfVar from_stack_1.global_68
  loc_983AA4: LdPrVar
  loc_983AA6: LateMemCall
  loc_983AAC: ExitProcHresult
  loc_983AAD: ImpAdStI2 MemVar_5F1368
End Function
