VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptResumendeBancos
  Caption = "Resumen de Saldos Bancarios"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptResumendeBancos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7800
  ClientHeight = 3330
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3075
    Width = 7800
    Height = 255
    TabIndex = 14
    OleObjectBlob = "rptResumendeBancos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6720
    Top = 2040
    Width = 735
    Height = 615
    TabIndex = 12
    Cancel = -1  'True
    Picture = "rptResumendeBancos.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptResumendeBancos.frx":0B9C
    Left = 3960
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1800
    Width = 3255
    Height = 1095
    TabIndex = 8
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 10
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 9
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1800
    Width = 3015
    Height = 1095
    TabIndex = 5
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7575
    Height = 1695
    TabIndex = 0
    Begin VB.CheckBox chkMostrarTransferencias
      Caption = "Mostrar TRANSFERENCIAS pendientes de pago"
      ForeColor = &HFF&
      Left = 240
      Top = 1080
      Width = 3855
      Height = 255
      TabIndex = 4
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2040
      Top = 360
      Width = 375
      Height = 375
      TabIndex = 3
      Picture = "rptResumendeBancos.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4920
      Top = 600
      Width = 1335
      Height = 495
      TabIndex = 11
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 885
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 2
      OleObjectBlob = "rptResumendeBancos.frx":1142
    End
    Begin VB.Label Label1
      Caption = "Hasta:"
      Left = 240
      Top = 360
      Width = 465
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 2160
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 13
    OleObjectBlob = "rptResumendeBancos.frx":11CA
  End
End

Attribute VB_Name = "rptResumendeBancos"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00588C34
  bStruc(44) As Byte ' String fields: 11
End Type


Private Sub cmdPrevia_Click() '9633D4
  'Data Table: 443868
  loc_9633BC: ILdRf Me
  loc_9633BF: CastAd
  loc_9633C2: FStAdFunc var_88
  loc_9633C5: FLdRfVar var_88
  loc_9633C8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9633CD: FFree1Ad var_88
  loc_9633D0: ExitProcHresult
  loc_9633D1: GeI2
  loc_9633D2: ImpAdLdPr unk_442869
End Sub

Private Sub cmdXLS_Click() '967CAC
  'Data Table: 443868
  loc_967C90: LitI2_Byte &HFF
  loc_967C92: LitI2_Byte 0
  loc_967C94: ILdRf Me
  loc_967C97: CastAd
  loc_967C9A: FStAdFunc var_88
  loc_967C9D: FLdRfVar var_88
  loc_967CA0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_967CA5: FFree1Ad var_88
  loc_967CA8: ExitProcHresult
End Sub

Private Sub Form_Load() '967E3C
  'Data Table: 443868
  loc_967E20: ILdRf Me
  loc_967E23: CastAd
  loc_967E26: FStAdFunc var_88
  loc_967E29: FLdRfVar var_88
  loc_967E2C: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_967E31: FFree1Ad var_88
  loc_967E34: Call cmdNueva_Click()
  loc_967E39: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '963128
  'Data Table: 443868
  loc_963110: FLdPr Me
  loc_963113: VCallAd Control_ID_wbbReporte
  loc_963116: FStAdFunc var_88
  loc_963119: FLdRfVar var_88
  loc_96311C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_963121: FFree1Ad var_88
  loc_963124: ExitProcHresult
  loc_963125: CStr2Ansi
  loc_963126: GeI2
End Sub

Private Sub mskHasta_UnknownEvent_0 '952CE0
  'Data Table: 443868
  loc_952CCC: FLdPr Me
  loc_952CCF: VCallAd Control_ID_mskHasta
  loc_952CD2: CVarAd
  loc_952CD6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952CDB: FFree1Var var_94 = ""
  loc_952CDE: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_8 '9B1564
  'Data Table: 443868
  loc_9B14C8: FLdPr Me
  loc_9B14CB: VCallAd Control_ID_mskHasta
  loc_9B14CE: FStAdFunc var_88
  loc_9B14D1: FLdPr var_88
  loc_9B14D4: LateIdLdVar var_98 DispID_15 0
  loc_9B14DB: PopAd
  loc_9B14DD: FLdPr Me
  loc_9B14E0: VCallAd Control_ID_mskHasta
  loc_9B14E3: FStAdFunc var_AC
  loc_9B14E6: LitI2_Byte 0
  loc_9B14E8: PopTmpLdAd2 var_A2
  loc_9B14EB: FLdZeroAd var_AC
  loc_9B14EE: FStAdFunc var_A0
  loc_9B14F1: FLdRfVar var_A0
  loc_9B14F4: LitStr "01/01/1900"
  loc_9B14F7: LitI2_Byte 0
  loc_9B14F9: LitI2_Byte 0
  loc_9B14FB: FLdRfVar var_98
  loc_9B14FE: CStrVarTmp
  loc_9B14FF: FStStrNoPop var_9C
  loc_9B1502: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B1507: FStStrNoPop var_A8
  loc_9B150A: FLdPr Me
  loc_9B150D: MemStStrCopy
  loc_9B1511: FFreeStr var_9C = ""
  loc_9B1518: FFreeAd var_88 = "": var_A0 = ""
  loc_9B1521: FFree1Var var_98 = ""
  loc_9B1524: FLdPr Me
  loc_9B1527: VCallAd Control_ID_mskHasta
  loc_9B152A: FStAdFunc var_B0
  loc_9B152D: LitNothing
  loc_9B152F: CastAd
  loc_9B1532: FStAdFunc var_AC
  loc_9B1535: FLdRfVar var_AC
  loc_9B1538: FLdZeroAd var_B0
  loc_9B153B: FStAdFuncNoPop
  loc_9B153E: CastAd
  loc_9B1541: FStAdFunc var_A0
  loc_9B1544: FLdRfVar var_A0
  loc_9B1547: FLdPr Me
  loc_9B154A: MemLdRfVar from_stack_1.global_116
  loc_9B154D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B1552: IStI2 Cancel
  loc_9B1555: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B1560: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B594
  'Data Table: 443868
  loc_98B55C: FLdPr Me
  loc_98B55F: VCallAd Control_ID_statusBar
  loc_98B562: FStAdFunc var_88
  loc_98B565: FLdPr var_88
  loc_98B568: LateIdLdVar var_98 DispID_1 0
  loc_98B56F: CStrVarTmp
  loc_98B570: CVarStr var_A8
  loc_98B573: PopAdLdVar
  loc_98B574: FLdPr Me
  loc_98B577: VCallAd Control_ID_statusBar
  loc_98B57A: FStAdFunc var_BC
  loc_98B57D: FLdPr var_BC
  loc_98B580: LateIdSt
  loc_98B585: FFreeAd var_88 = ""
  loc_98B58C: FFreeVar var_98 = ""
  loc_98B593: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A67C
  'Data Table: 443868
  loc_97A64C: LitVarStr var_94, "Cerrando..."
  loc_97A651: PopAdLdVar
  loc_97A652: FLdPr Me
  loc_97A655: VCallAd Control_ID_statusBar
  loc_97A658: FStAdFunc var_A8
  loc_97A65B: FLdPr var_A8
  loc_97A65E: LateIdSt
  loc_97A663: FFree1Ad var_A8
  loc_97A666: ILdRf Me
  loc_97A669: FStAdNoPop
  loc_97A66D: ImpAdLdRf MemVar_C44F9C
  loc_97A670: NewIfNullPr Me
  loc_97A673: Me.Global.Unload from_stack_1
  loc_97A678: FFree1Ad var_A8
  loc_97A67B: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '963388
  'Data Table: 443868
  loc_963370: ILdRf Me
  loc_963373: CastAd
  loc_963376: FStAdFunc var_88
  loc_963379: FLdRfVar var_88
  loc_96337C: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_963381: FFree1Ad var_88
  loc_963384: ExitProcHresult
  loc_963385: BranchF loc_963394
End Sub

Private Sub cmdNueva_Click() '99B19C
  'Data Table: 443868
  loc_99B130: LitI2_Byte 0
  loc_99B132: FLdPr Me
  loc_99B135: MemStI2 bGenerado
  loc_99B138: LitI2_Byte &HFF
  loc_99B13A: FLdPr Me
  loc_99B13D: MemStI2 bLogos
  loc_99B140: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_99B145: ImpAdLdFPR8 MemVar_C3D04C
  loc_99B148: CStrDate
  loc_99B14A: CVarStr var_94
  loc_99B14D: PopAdLdVar
  loc_99B14E: FLdPr Me
  loc_99B151: VCallAd Control_ID_mskHasta
  loc_99B154: FStAdFunc var_A8
  loc_99B157: FLdPr var_A8
  loc_99B15A: LateIdSt
  loc_99B15F: FFree1Ad var_A8
  loc_99B162: FFree1Var var_94 = ""
  loc_99B165: LitI4 0
  loc_99B16A: CI2I4
  loc_99B16B: FLdPr Me
  loc_99B16E: VCallAd Control_ID_chkMostrarTransferencias
  loc_99B171: FStAdFunc var_A8
  loc_99B174: FLdPr var_A8
  loc_99B177: Me.Value = from_stack_1
  loc_99B17C: FFree1Ad var_A8
  loc_99B17F: Call HabilitarCriterio()
  loc_99B184: ILdRf Me
  loc_99B187: CastAd
  loc_99B18A: FStAdFunc var_A8
  loc_99B18D: FLdRfVar var_A8
  loc_99B190: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_99B195: FFree1Ad var_A8
  loc_99B198: ExitProcHresult
  loc_99B199: MulI2
  loc_99B19A: NewIfNullAd
End Sub

Private Sub cmdCalHasta_Click() '980938
  'Data Table: 443868
  loc_980904: LitVar_Missing var_A4
  loc_980907: PopAdLdVar
  loc_980908: LitVarI4
  loc_980910: PopAdLdVar
  loc_980911: ImpAdLdRf MemVar_C3D9A8
  loc_980914: NewIfNullPr frmCalendario
  loc_980917: frmCalendario.Show from_stack_1, from_stack_2
  loc_98091C: ImpAdLdRf MemVar_C3D038
  loc_98091F: CDargRef
  loc_980923: FLdPr Me
  loc_980926: VCallAd Control_ID_mskHasta
  loc_980929: FStAdFunc var_A8
  loc_98092C: FLdPr var_A8
  loc_98092F: LateIdSt
  loc_980934: FFree1Ad var_A8
  loc_980937: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '96333C
  'Data Table: 443868
  loc_963324: LitI2_Byte 0
  loc_963326: ILdRf Me
  loc_963329: CastAd
  loc_96332C: FStAdFunc var_88
  loc_96332F: FLdRfVar var_88
  loc_963332: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_963337: FFree1Ad var_88
  loc_96333A: ExitProcHresult
End Sub

Public Function htmFileGet() '44441C
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '44442B
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '44443A
  htmFile = Value
End Sub

Public Function bLogosGet() '444449
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '444458
  bLogos = Value
End Sub

Public Function bGeneradoGet() '444467
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '444476
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '995FC8
  'Data Table: 443868
  loc_995F74: LitI4 0
  loc_995F79: LitI4 2
  loc_995F7E: FLdRfVar var_88
  loc_995F81: Redim
  loc_995F8B: FLdPr Me
  loc_995F8E: VCallAd Control_ID_mskHasta
  loc_995F91: CVarAd
  loc_995F95: ParmAry1St
  loc_995F9B: FLdPr Me
  loc_995F9E: VCallAd Control_ID_cmdCalHasta
  loc_995FA1: CVarAd
  loc_995FA5: ParmAry1St
  loc_995FAB: FLdPr Me
  loc_995FAE: VCallAd Control_ID_chkMostrarTransferencias
  loc_995FB1: CVarAd
  loc_995FB5: ParmAry1St
  loc_995FBB: FLdRfVar var_88
  loc_995FBE: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_995FC3: FLdRfVar var_88
  loc_995FC6: Erase
  loc_995FC7: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B47B2C
  'Data Table: 443868
  loc_B47128: OnErrorGoto loc_B47AC8
  loc_B4712B: FLdPr Me
  loc_B4712E: MemLdI2 bGenerado
  loc_B47131: BranchF loc_B47135
  loc_B47134: ExitProcHresult
  loc_B47135: LitVarStr var_9C, "Generando reporte..."
  loc_B4713A: PopAdLdVar
  loc_B4713B: FLdPr Me
  loc_B4713E: VCallAd Control_ID_statusBar
  loc_B47141: FStAdFunc var_B0
  loc_B47144: FLdPr var_B0
  loc_B47147: LateIdSt
  loc_B4714C: FFree1Ad var_B0
  loc_B4714F: LitI4 &HB
  loc_B47154: CI2I4
  loc_B47155: FLdPr Me
  loc_B47158: Me.MousePointer = from_stack_1
  loc_B4715D: FLdPr Me
  loc_B47160: VCallAd Control_ID_mskHasta
  loc_B47163: FStAdFunc var_B0
  loc_B47166: FLdPr var_B0
  loc_B47169: LateIdLdVar var_C0 DispID_15 0
  loc_B47170: CStrVarTmp
  loc_B47171: CVarStr var_D0
  loc_B47174: FLdRfVar var_E0
  loc_B47177: ImpAdCallFPR4  = Year()
  loc_B4717C: FLdRfVar var_E0
  loc_B4717F: CStrVarTmp
  loc_B47180: FStStr var_88
  loc_B47183: FFree1Ad var_B0
  loc_B47186: FFreeVar var_C0 = "": var_D0 = ""
  loc_B4718F: LitStr "Municipalidad de Guaymallén"
  loc_B47192: FStStrCopy var_E4
  loc_B47195: ILdRf var_E4
  loc_B47198: LitStr "Municipalidad de Maipú"
  loc_B4719B: EqStr
  loc_B4719D: BranchF loc_B471A9
  loc_B471A0: LitStr " AND b.CodiBanc NOT IN (45)"
  loc_B471A3: FStStrCopy var_8C
  loc_B471A6: Branch loc_B471AF
  loc_B471A9: LitStr vbNullString
  loc_B471AC: FStStrCopy var_8C
  loc_B471AF: FLdPr Me
  loc_B471B2: MemLdRfVar from_stack_1.global_72
  loc_B471B5: NewIfNullAd
  loc_B471B8: FStAd var_E8 
  loc_B471BC: FLdPr Me
  loc_B471BF: VCallAd Control_ID_chkMostrarTransferencias
  loc_B471C2: CVarAd
  loc_B471C6: CBoolVarNull
  loc_B471C8: FFree1Var var_C0 = ""
  loc_B471CB: BranchF loc_B47382
  loc_B471CE: FLdPr Me
  loc_B471D1: VCallAd Control_ID_mskHasta
  loc_B471D4: FStAdFunc var_B0
  loc_B471D7: FLdPr var_B0
  loc_B471DA: LateIdLdVar var_C0 DispID_15 0
  loc_B471E1: PopAd
  loc_B471E3: LitStr "SELECT b.CodiBanc, DetaBanc, NumeBanc, b.CodiCuco, IFNULL(DetaCuco,'') DetaCuco"
  loc_B471E6: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM v_movibanco mb WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba < '"
  loc_B471E9: ConcatStr
  loc_B471EA: FStStrNoPop var_EC
  loc_B471ED: ILdRf var_88
  loc_B471F0: ConcatStr
  loc_B471F1: FStStrNoPop var_F0
  loc_B471F4: LitStr "-01-01') SaldoIni"
  loc_B471F7: ConcatStr
  loc_B471F8: FStStrNoPop var_F4
  loc_B471FB: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM v_movibanco mb WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba >= '"
  loc_B471FE: ConcatStr
  loc_B471FF: FStStrNoPop var_F8
  loc_B47202: ILdRf var_88
  loc_B47205: ConcatStr
  loc_B47206: FStStrNoPop var_FC
  loc_B47209: LitStr "-01-01' AND mb.FechMoba <= '"
  loc_B4720C: ConcatStr
  loc_B4720D: FStStrNoPop var_100
  loc_B47210: ILdRf var_88
  loc_B47213: ConcatStr
  loc_B47214: FStStrNoPop var_104
  loc_B47217: LitStr "-03-31') SaldoPTri"
  loc_B4721A: ConcatStr
  loc_B4721B: FStStrNoPop var_108
  loc_B4721E: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM v_movibanco mb WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba >= '"
  loc_B47221: ConcatStr
  loc_B47222: FStStrNoPop var_10C
  loc_B47225: ILdRf var_88
  loc_B47228: ConcatStr
  loc_B47229: FStStrNoPop var_110
  loc_B4722C: LitStr "-04-01' AND mb.FechMoba <= '"
  loc_B4722F: ConcatStr
  loc_B47230: FStStrNoPop var_114
  loc_B47233: ILdRf var_88
  loc_B47236: ConcatStr
  loc_B47237: FStStrNoPop var_118
  loc_B4723A: LitStr "-06-30') SaldoSTri"
  loc_B4723D: ConcatStr
  loc_B4723E: FStStrNoPop var_11C
  loc_B47241: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM v_movibanco mb WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba >= '"
  loc_B47244: ConcatStr
  loc_B47245: FStStrNoPop var_120
  loc_B47248: ILdRf var_88
  loc_B4724B: ConcatStr
  loc_B4724C: FStStrNoPop var_124
  loc_B4724F: LitStr "-07-01' AND mb.FechMoba <= '"
  loc_B47252: ConcatStr
  loc_B47253: FStStrNoPop var_128
  loc_B47256: ILdRf var_88
  loc_B47259: ConcatStr
  loc_B4725A: FStStrNoPop var_12C
  loc_B4725D: LitStr "-09-30') SaldoTTri"
  loc_B47260: ConcatStr
  loc_B47261: FStStrNoPop var_130
  loc_B47264: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM v_movibanco mb WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba >= '"
  loc_B47267: ConcatStr
  loc_B47268: FStStrNoPop var_134
  loc_B4726B: ILdRf var_88
  loc_B4726E: ConcatStr
  loc_B4726F: FStStrNoPop var_138
  loc_B47272: LitStr "-10-01' AND mb.FechMoba <= '"
  loc_B47275: ConcatStr
  loc_B47276: FStStrNoPop var_13C
  loc_B47279: ILdRf var_88
  loc_B4727C: ConcatStr
  loc_B4727D: FStStrNoPop var_140
  loc_B47280: LitStr "-12-31') SaldoCTri"
  loc_B47283: ConcatStr
  loc_B47284: FStStrNoPop var_144
  loc_B47287: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM v_movibanco mb WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba <= "
  loc_B4728A: ConcatStr
  loc_B4728B: FStStrNoPop var_148
  loc_B4728E: LitI4 1
  loc_B47293: LitI4 1
  loc_B47298: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_B4729D: FStVarCopyObj var_E0
  loc_B472A0: FLdRfVar var_E0
  loc_B472A3: FLdRfVar var_C0
  loc_B472A6: CStrVarTmp
  loc_B472A7: CVarStr var_D0
  loc_B472AA: ImpAdCallI2 Format$(, )
  loc_B472AF: FStStrNoPop var_14C
  loc_B472B2: ConcatStr
  loc_B472B3: FStStrNoPop var_150
  loc_B472B6: LitStr ") SaldoFin"
  loc_B472B9: ConcatStr
  loc_B472BA: FStStrNoPop var_154
  loc_B472BD: LitStr " FROM banco b"
  loc_B472C0: ConcatStr
  loc_B472C1: FStStrNoPop var_158
  loc_B472C4: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = b.PeriInfo AND cc.CodiCuco = b.CodiCuco"
  loc_B472C7: ConcatStr
  loc_B472C8: FStStrNoPop var_15C
  loc_B472CB: LitStr " WHERE b.PeriInfo = "
  loc_B472CE: ConcatStr
  loc_B472CF: CVarStr var_1A0
  loc_B472D2: FLdPr Me
  loc_B472D5: VCallAd Control_ID_mskHasta
  loc_B472D8: FStAdFunc var_160
  loc_B472DB: FLdPr var_160
  loc_B472DE: LateIdLdVar var_170 DispID_15 0
  loc_B472E5: CStrVarTmp
  loc_B472E6: CVarStr var_180
  loc_B472E9: FLdRfVar var_190
  loc_B472EC: ImpAdCallFPR4  = Year()
  loc_B472F1: FLdRfVar var_190
  loc_B472F4: ConcatVar var_1B0
  loc_B472F8: LitVarStr var_AC, " AND FeanBanc IS NULL"
  loc_B472FD: ConcatVar var_1C0
  loc_B47301: ILdRf var_8C
  loc_B47304: CVarStr var_1D0
  loc_B47307: ConcatVar var_1E0
  loc_B4730B: LitVarStr var_1F0, " ORDER BY b.CodiCuco;"
  loc_B47310: ConcatVar var_200
  loc_B47314: CStrVarVal var_204
  loc_B47318: FLdPr var_E8
  loc_B4731B: Call clsbanco.RedefineRS(from_stack_1v)
  loc_B47320: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_B4735F: FFreeAd var_B0 = ""
  loc_B47366: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_170 = "": var_180 = "": var_1A0 = "": var_190 = "": var_1B0 = "": var_1C0 = "": var_1E0 = ""
  loc_B4737F: Branch loc_B47533
  loc_B47382: FLdPr Me
  loc_B47385: VCallAd Control_ID_mskHasta
  loc_B47388: FStAdFunc var_B0
  loc_B4738B: FLdPr var_B0
  loc_B4738E: LateIdLdVar var_C0 DispID_15 0
  loc_B47395: PopAd
  loc_B47397: LitStr "SELECT b.CodiBanc, DetaBanc, NumeBanc, b.CodiCuco, IFNULL(DetaCuco,'') DetaCuco"
  loc_B4739A: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM movibanco mb USE INDEX (idxmoba01) WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba < '"
  loc_B4739D: ConcatStr
  loc_B4739E: FStStrNoPop var_EC
  loc_B473A1: ILdRf var_88
  loc_B473A4: ConcatStr
  loc_B473A5: FStStrNoPop var_F0
  loc_B473A8: LitStr "-01-01') SaldoIni"
  loc_B473AB: ConcatStr
  loc_B473AC: FStStrNoPop var_F4
  loc_B473AF: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM movibanco mb USE INDEX (idxmoba01) WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba >= '"
  loc_B473B2: ConcatStr
  loc_B473B3: FStStrNoPop var_F8
  loc_B473B6: ILdRf var_88
  loc_B473B9: ConcatStr
  loc_B473BA: FStStrNoPop var_FC
  loc_B473BD: LitStr "-01-01' AND mb.FechMoba <= '"
  loc_B473C0: ConcatStr
  loc_B473C1: FStStrNoPop var_100
  loc_B473C4: ILdRf var_88
  loc_B473C7: ConcatStr
  loc_B473C8: FStStrNoPop var_104
  loc_B473CB: LitStr "-03-31') SaldoPTri"
  loc_B473CE: ConcatStr
  loc_B473CF: FStStrNoPop var_108
  loc_B473D2: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM movibanco mb USE INDEX (idxmoba01) WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba >= '"
  loc_B473D5: ConcatStr
  loc_B473D6: FStStrNoPop var_10C
  loc_B473D9: ILdRf var_88
  loc_B473DC: ConcatStr
  loc_B473DD: FStStrNoPop var_110
  loc_B473E0: LitStr "-04-01' AND mb.FechMoba <= '"
  loc_B473E3: ConcatStr
  loc_B473E4: FStStrNoPop var_114
  loc_B473E7: ILdRf var_88
  loc_B473EA: ConcatStr
  loc_B473EB: FStStrNoPop var_118
  loc_B473EE: LitStr "-06-30') SaldoSTri"
  loc_B473F1: ConcatStr
  loc_B473F2: FStStrNoPop var_11C
  loc_B473F5: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM movibanco mb USE INDEX (idxmoba01) WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba >= '"
  loc_B473F8: ConcatStr
  loc_B473F9: FStStrNoPop var_120
  loc_B473FC: ILdRf var_88
  loc_B473FF: ConcatStr
  loc_B47400: FStStrNoPop var_124
  loc_B47403: LitStr "-07-01' AND mb.FechMoba <= '"
  loc_B47406: ConcatStr
  loc_B47407: FStStrNoPop var_128
  loc_B4740A: ILdRf var_88
  loc_B4740D: ConcatStr
  loc_B4740E: FStStrNoPop var_12C
  loc_B47411: LitStr "-09-30') SaldoTTri"
  loc_B47414: ConcatStr
  loc_B47415: FStStrNoPop var_130
  loc_B47418: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM movibanco mb USE INDEX (idxmoba01) WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba >= '"
  loc_B4741B: ConcatStr
  loc_B4741C: FStStrNoPop var_134
  loc_B4741F: ILdRf var_88
  loc_B47422: ConcatStr
  loc_B47423: FStStrNoPop var_138
  loc_B47426: LitStr "-10-01' AND mb.FechMoba <= '"
  loc_B47429: ConcatStr
  loc_B4742A: FStStrNoPop var_13C
  loc_B4742D: ILdRf var_88
  loc_B47430: ConcatStr
  loc_B47431: FStStrNoPop var_140
  loc_B47434: LitStr "-12-31') SaldoCTri"
  loc_B47437: ConcatStr
  loc_B47438: FStStrNoPop var_144
  loc_B4743B: LitStr ", (SELECT IFNULL(SUM(DebeMoba)- SUM(HabeMoba),0) FROM movibanco mb USE INDEX (idxmoba01) WHERE mb.CodiBanc = b.CodiBanc AND mb.FechMoba <= "
  loc_B4743E: ConcatStr
  loc_B4743F: FStStrNoPop var_148
  loc_B47442: LitI4 1
  loc_B47447: LitI4 1
  loc_B4744C: LitVarStr var_9C, "'yyyy-mm-dd'"
  loc_B47451: FStVarCopyObj var_E0
  loc_B47454: FLdRfVar var_E0
  loc_B47457: FLdRfVar var_C0
  loc_B4745A: CStrVarTmp
  loc_B4745B: CVarStr var_D0
  loc_B4745E: ImpAdCallI2 Format$(, )
  loc_B47463: FStStrNoPop var_14C
  loc_B47466: ConcatStr
  loc_B47467: FStStrNoPop var_150
  loc_B4746A: LitStr ") SaldoFin"
  loc_B4746D: ConcatStr
  loc_B4746E: FStStrNoPop var_154
  loc_B47471: LitStr " FROM banco b"
  loc_B47474: ConcatStr
  loc_B47475: FStStrNoPop var_158
  loc_B47478: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = b.PeriInfo AND cc.CodiCuco = b.CodiCuco"
  loc_B4747B: ConcatStr
  loc_B4747C: FStStrNoPop var_15C
  loc_B4747F: LitStr " WHERE b.PeriInfo = "
  loc_B47482: ConcatStr
  loc_B47483: CVarStr var_1A0
  loc_B47486: FLdPr Me
  loc_B47489: VCallAd Control_ID_mskHasta
  loc_B4748C: FStAdFunc var_160
  loc_B4748F: FLdPr var_160
  loc_B47492: LateIdLdVar var_170 DispID_15 0
  loc_B47499: CStrVarTmp
  loc_B4749A: CVarStr var_180
  loc_B4749D: FLdRfVar var_190
  loc_B474A0: ImpAdCallFPR4  = Year()
  loc_B474A5: FLdRfVar var_190
  loc_B474A8: ConcatVar var_1B0
  loc_B474AC: LitVarStr var_AC, " AND FeanBanc IS NULL"
  loc_B474B1: ConcatVar var_1C0
  loc_B474B5: ILdRf var_8C
  loc_B474B8: CVarStr var_1D0
  loc_B474BB: ConcatVar var_1E0
  loc_B474BF: LitVarStr var_1F0, " ORDER BY b.CodiCuco;"
  loc_B474C4: ConcatVar var_200
  loc_B474C8: CStrVarVal var_204
  loc_B474CC: FLdPr var_E8
  loc_B474CF: Call clsbanco.RedefineRS(from_stack_1v)
  loc_B474D4: FFreeStr var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = "": var_12C = "": var_130 = "": var_134 = "": var_138 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = "": var_150 = "": var_154 = "": var_158 = "": var_15C = ""
  loc_B47513: FFreeAd var_B0 = ""
  loc_B4751A: FFreeVar var_C0 = "": var_D0 = "": var_E0 = "": var_170 = "": var_180 = "": var_1A0 = "": var_190 = "": var_1B0 = "": var_1C0 = "": var_1E0 = ""
  loc_B47533: FLdRfVar var_208
  loc_B47536: FLdPr var_E8
  loc_B47539: from_stack_1 = clsbanco.RecordCount
  loc_B4753E: ILdRf var_208
  loc_B47541: LitI4 0
  loc_B47546: EqI4
  loc_B47547: BranchF loc_B4755A
  loc_B4754A: LitI4 0
  loc_B4754F: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B47552: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B47557: Branch loc_B47A9F
  loc_B4755A: FLdPr var_E8
  loc_B4755D: Call clsbanco.MoveFirst()
  loc_B47562: LitI4 0
  loc_B47567: FLdRfVar var_208
  loc_B4756A: FLdPr var_E8
  loc_B4756D: from_stack_1 = clsbanco.RecordCount
  loc_B47572: ILdRf var_208
  loc_B47575: FLdPr Me
  loc_B47578: MemLdRfVar from_stack_1.global_80
  loc_B4757B: Redim
  loc_B47585: LitI2_Byte 0
  loc_B47587: CStrUI1
  loc_B47589: FStStrNoPop var_EC
  loc_B4758C: LitI4 0
  loc_B47591: FLdPr Me
  loc_B47594: MemLdRfVar from_stack_1.global_88
  loc_B47597: Ary1StStrCopy
  loc_B47598: FFree1Str var_EC
  loc_B4759B: LitI2_Byte 0
  loc_B4759D: CStrUI1
  loc_B4759F: FStStrNoPop var_EC
  loc_B475A2: LitI4 1
  loc_B475A7: FLdPr Me
  loc_B475AA: MemLdRfVar from_stack_1.global_88
  loc_B475AD: Ary1StStrCopy
  loc_B475AE: FFree1Str var_EC
  loc_B475B1: LitI2_Byte 0
  loc_B475B3: CStrUI1
  loc_B475B5: FStStrNoPop var_EC
  loc_B475B8: LitI4 2
  loc_B475BD: FLdPr Me
  loc_B475C0: MemLdRfVar from_stack_1.global_88
  loc_B475C3: Ary1StStrCopy
  loc_B475C4: FFree1Str var_EC
  loc_B475C7: LitI2_Byte 0
  loc_B475C9: CStrUI1
  loc_B475CB: FStStrNoPop var_EC
  loc_B475CE: LitI4 3
  loc_B475D3: FLdPr Me
  loc_B475D6: MemLdRfVar from_stack_1.global_88
  loc_B475D9: Ary1StStrCopy
  loc_B475DA: FFree1Str var_EC
  loc_B475DD: LitI2_Byte 0
  loc_B475DF: CStrUI1
  loc_B475E1: FStStrNoPop var_EC
  loc_B475E4: LitI4 4
  loc_B475E9: FLdPr Me
  loc_B475EC: MemLdRfVar from_stack_1.global_88
  loc_B475EF: Ary1StStrCopy
  loc_B475F0: FFree1Str var_EC
  loc_B475F3: LitI2_Byte 0
  loc_B475F5: CStrUI1
  loc_B475F7: FStStrNoPop var_EC
  loc_B475FA: LitI4 5
  loc_B475FF: FLdPr Me
  loc_B47602: MemLdRfVar from_stack_1.global_88
  loc_B47605: Ary1StStrCopy
  loc_B47606: FFree1Str var_EC
  loc_B47609: LitI2_Byte 1
  loc_B4760B: FLdPr Me
  loc_B4760E: MemLdRfVar from_stack_1.global_112
  loc_B47611: FLdPr Me
  loc_B47614: MemLdStr global_80
  loc_B47617: LitI2_Byte 1
  loc_B47619: FnUBound
  loc_B4761B: CI2I4
  loc_B4761C: ForI2 var_20C
  loc_B47622: FLdRfVar var_210
  loc_B47625: LitVarStr var_9C, "CodiBanc"
  loc_B4762A: PopAdLdVar
  loc_B4762B: FLdRfVar var_160
  loc_B4762E: FLdRfVar var_B0
  loc_B47631: FLdPr var_E8
  loc_B47634: from_stack_1v = clsbanco.RsFrmGet()
  loc_B47639: FLdPr var_B0
  loc_B4763C:  = Me.Fields
  loc_B47641: FLdPr var_160
  loc_B47644: from_stack_2 = Me.Item(from_stack_1)
  loc_B47649: LitI2_Byte 0
  loc_B4764B: LitVar_Missing var_D0
  loc_B4764E: LitI2_Byte 0
  loc_B47650: FLdZeroAd var_210
  loc_B47653: CVarAd
  loc_B47657: PopAdLdVar
  loc_B47658: FLdPr Me
  loc_B4765B: MemLdI2 global_112
  loc_B4765E: CI4UI1
  loc_B4765F: FLdPr Me
  loc_B47662: MemLdStr global_80
  loc_B47665: AryLock
  loc_B47668: Ary1LdPr
  loc_B47669: MemLdRfVar from_stack_1.global_0
  loc_B4766C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B47671: AryUnlock
  loc_B47674: FFreeAd var_B0 = ""
  loc_B4767B: FFreeVar var_C0 = ""
  loc_B47682: FLdRfVar var_210
  loc_B47685: LitVarStr var_9C, "DetaBanc"
  loc_B4768A: PopAdLdVar
  loc_B4768B: FLdRfVar var_160
  loc_B4768E: FLdRfVar var_B0
  loc_B47691: FLdPr var_E8
  loc_B47694: from_stack_1v = clsbanco.RsFrmGet()
  loc_B47699: FLdPr var_B0
  loc_B4769C:  = Me.Fields
  loc_B476A1: FLdPr var_160
  loc_B476A4: from_stack_2 = Me.Item(from_stack_1)
  loc_B476A9: LitI2_Byte 0
  loc_B476AB: LitVar_Missing var_D0
  loc_B476AE: LitI2_Byte 0
  loc_B476B0: FLdZeroAd var_210
  loc_B476B3: CVarAd
  loc_B476B7: PopAdLdVar
  loc_B476B8: FLdPr Me
  loc_B476BB: MemLdI2 global_112
  loc_B476BE: CI4UI1
  loc_B476BF: FLdPr Me
  loc_B476C2: MemLdStr global_80
  loc_B476C5: AryLock
  loc_B476C8: Ary1LdPr
  loc_B476C9: MemLdRfVar from_stack_1.global_4
  loc_B476CC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B476D1: AryUnlock
  loc_B476D4: FFreeAd var_B0 = ""
  loc_B476DB: FFreeVar var_C0 = ""
  loc_B476E2: FLdRfVar var_210
  loc_B476E5: LitVarStr var_9C, "NumeBanc"
  loc_B476EA: PopAdLdVar
  loc_B476EB: FLdRfVar var_160
  loc_B476EE: FLdRfVar var_B0
  loc_B476F1: FLdPr var_E8
  loc_B476F4: from_stack_1v = clsbanco.RsFrmGet()
  loc_B476F9: FLdPr var_B0
  loc_B476FC:  = Me.Fields
  loc_B47701: FLdPr var_160
  loc_B47704: from_stack_2 = Me.Item(from_stack_1)
  loc_B47709: LitI2_Byte 0
  loc_B4770B: LitVar_Missing var_D0
  loc_B4770E: LitI2_Byte 0
  loc_B47710: FLdZeroAd var_210
  loc_B47713: CVarAd
  loc_B47717: PopAdLdVar
  loc_B47718: FLdPr Me
  loc_B4771B: MemLdI2 global_112
  loc_B4771E: CI4UI1
  loc_B4771F: FLdPr Me
  loc_B47722: MemLdStr global_80
  loc_B47725: AryLock
  loc_B47728: Ary1LdPr
  loc_B47729: MemLdRfVar from_stack_1.global_8
  loc_B4772C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B47731: AryUnlock
  loc_B47734: FFreeAd var_B0 = ""
  loc_B4773B: FFreeVar var_C0 = ""
  loc_B47742: FLdRfVar var_210
  loc_B47745: LitVarStr var_9C, "CodiCuco"
  loc_B4774A: PopAdLdVar
  loc_B4774B: FLdRfVar var_160
  loc_B4774E: FLdRfVar var_B0
  loc_B47751: FLdPr var_E8
  loc_B47754: from_stack_1v = clsbanco.RsFrmGet()
  loc_B47759: FLdPr var_B0
  loc_B4775C:  = Me.Fields
  loc_B47761: FLdPr var_160
  loc_B47764: from_stack_2 = Me.Item(from_stack_1)
  loc_B47769: LitI2_Byte 0
  loc_B4776B: LitVar_Missing var_D0
  loc_B4776E: LitI2_Byte 0
  loc_B47770: FLdZeroAd var_210
  loc_B47773: CVarAd
  loc_B47777: PopAdLdVar
  loc_B47778: FLdPr Me
  loc_B4777B: MemLdI2 global_112
  loc_B4777E: CI4UI1
  loc_B4777F: FLdPr Me
  loc_B47782: MemLdStr global_80
  loc_B47785: AryLock
  loc_B47788: Ary1LdPr
  loc_B47789: MemLdRfVar from_stack_1.global_12
  loc_B4778C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B47791: AryUnlock
  loc_B47794: FFreeAd var_B0 = ""
  loc_B4779B: FFreeVar var_C0 = ""
  loc_B477A2: FLdRfVar var_210
  loc_B477A5: LitVarStr var_9C, "DetaCuco"
  loc_B477AA: PopAdLdVar
  loc_B477AB: FLdRfVar var_160
  loc_B477AE: FLdRfVar var_B0
  loc_B477B1: FLdPr var_E8
  loc_B477B4: from_stack_1v = clsbanco.RsFrmGet()
  loc_B477B9: FLdPr var_B0
  loc_B477BC:  = Me.Fields
  loc_B477C1: FLdPr var_160
  loc_B477C4: from_stack_2 = Me.Item(from_stack_1)
  loc_B477C9: LitI2_Byte 0
  loc_B477CB: LitVar_Missing var_D0
  loc_B477CE: LitI2_Byte 0
  loc_B477D0: FLdZeroAd var_210
  loc_B477D3: CVarAd
  loc_B477D7: PopAdLdVar
  loc_B477D8: FLdPr Me
  loc_B477DB: MemLdI2 global_112
  loc_B477DE: CI4UI1
  loc_B477DF: FLdPr Me
  loc_B477E2: MemLdStr global_80
  loc_B477E5: AryLock
  loc_B477E8: Ary1LdPr
  loc_B477E9: MemLdRfVar from_stack_1.global_16
  loc_B477EC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B477F1: AryUnlock
  loc_B477F4: FFreeAd var_B0 = ""
  loc_B477FB: FFreeVar var_C0 = ""
  loc_B47802: FLdRfVar var_210
  loc_B47805: LitVarStr var_9C, "SaldoIni"
  loc_B4780A: PopAdLdVar
  loc_B4780B: FLdRfVar var_160
  loc_B4780E: FLdRfVar var_B0
  loc_B47811: FLdPr var_E8
  loc_B47814: from_stack_1v = clsbanco.RsFrmGet()
  loc_B47819: FLdPr var_B0
  loc_B4781C:  = Me.Fields
  loc_B47821: FLdPr var_160
  loc_B47824: from_stack_2 = Me.Item(from_stack_1)
  loc_B47829: LitI2_Byte 0
  loc_B4782B: LitI4 0
  loc_B47830: FLdPr Me
  loc_B47833: MemLdRfVar from_stack_1.global_88
  loc_B47836: Ary1LdRf
  loc_B47837: CVarRef
  loc_B4783C: LitI2_Byte &HFF
  loc_B4783E: FLdZeroAd var_210
  loc_B47841: CVarAd
  loc_B47845: PopAdLdVar
  loc_B47846: FLdPr Me
  loc_B47849: MemLdI2 global_112
  loc_B4784C: CI4UI1
  loc_B4784D: FLdPr Me
  loc_B47850: MemLdStr global_80
  loc_B47853: AryLock
  loc_B47856: Ary1LdPr
  loc_B47857: MemLdRfVar from_stack_1.global_20
  loc_B4785A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4785F: AryUnlock
  loc_B47862: FFreeAd var_B0 = ""
  loc_B47869: FFree1Var var_C0 = ""
  loc_B4786C: FLdRfVar var_210
  loc_B4786F: LitVarStr var_9C, "SaldoPTri"
  loc_B47874: PopAdLdVar
  loc_B47875: FLdRfVar var_160
  loc_B47878: FLdRfVar var_B0
  loc_B4787B: FLdPr var_E8
  loc_B4787E: from_stack_1v = clsbanco.RsFrmGet()
  loc_B47883: FLdPr var_B0
  loc_B47886:  = Me.Fields
  loc_B4788B: FLdPr var_160
  loc_B4788E: from_stack_2 = Me.Item(from_stack_1)
  loc_B47893: LitI2_Byte 0
  loc_B47895: LitI4 1
  loc_B4789A: FLdPr Me
  loc_B4789D: MemLdRfVar from_stack_1.global_88
  loc_B478A0: Ary1LdRf
  loc_B478A1: CVarRef
  loc_B478A6: LitI2_Byte &HFF
  loc_B478A8: FLdZeroAd var_210
  loc_B478AB: CVarAd
  loc_B478AF: PopAdLdVar
  loc_B478B0: FLdPr Me
  loc_B478B3: MemLdI2 global_112
  loc_B478B6: CI4UI1
  loc_B478B7: FLdPr Me
  loc_B478BA: MemLdStr global_80
  loc_B478BD: AryLock
  loc_B478C0: Ary1LdPr
  loc_B478C1: MemLdRfVar from_stack_1.global_24
  loc_B478C4: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B478C9: AryUnlock
  loc_B478CC: FFreeAd var_B0 = ""
  loc_B478D3: FFree1Var var_C0 = ""
  loc_B478D6: FLdRfVar var_210
  loc_B478D9: LitVarStr var_9C, "SaldoSTri"
  loc_B478DE: PopAdLdVar
  loc_B478DF: FLdRfVar var_160
  loc_B478E2: FLdRfVar var_B0
  loc_B478E5: FLdPr var_E8
  loc_B478E8: from_stack_1v = clsbanco.RsFrmGet()
  loc_B478ED: FLdPr var_B0
  loc_B478F0:  = Me.Fields
  loc_B478F5: FLdPr var_160
  loc_B478F8: from_stack_2 = Me.Item(from_stack_1)
  loc_B478FD: LitI2_Byte 0
  loc_B478FF: LitI4 2
  loc_B47904: FLdPr Me
  loc_B47907: MemLdRfVar from_stack_1.global_88
  loc_B4790A: Ary1LdRf
  loc_B4790B: CVarRef
  loc_B47910: LitI2_Byte &HFF
  loc_B47912: FLdZeroAd var_210
  loc_B47915: CVarAd
  loc_B47919: PopAdLdVar
  loc_B4791A: FLdPr Me
  loc_B4791D: MemLdI2 global_112
  loc_B47920: CI4UI1
  loc_B47921: FLdPr Me
  loc_B47924: MemLdStr global_80
  loc_B47927: AryLock
  loc_B4792A: Ary1LdPr
  loc_B4792B: MemLdRfVar from_stack_1.global_28
  loc_B4792E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B47933: AryUnlock
  loc_B47936: FFreeAd var_B0 = ""
  loc_B4793D: FFree1Var var_C0 = ""
  loc_B47940: FLdRfVar var_210
  loc_B47943: LitVarStr var_9C, "SaldoTTri"
  loc_B47948: PopAdLdVar
  loc_B47949: FLdRfVar var_160
  loc_B4794C: FLdRfVar var_B0
  loc_B4794F: FLdPr var_E8
  loc_B47952: from_stack_1v = clsbanco.RsFrmGet()
  loc_B47957: FLdPr var_B0
  loc_B4795A:  = Me.Fields
  loc_B4795F: FLdPr var_160
  loc_B47962: from_stack_2 = Me.Item(from_stack_1)
  loc_B47967: LitI2_Byte 0
  loc_B47969: LitI4 3
  loc_B4796E: FLdPr Me
  loc_B47971: MemLdRfVar from_stack_1.global_88
  loc_B47974: Ary1LdRf
  loc_B47975: CVarRef
  loc_B4797A: LitI2_Byte &HFF
  loc_B4797C: FLdZeroAd var_210
  loc_B4797F: CVarAd
  loc_B47983: PopAdLdVar
  loc_B47984: FLdPr Me
  loc_B47987: MemLdI2 global_112
  loc_B4798A: CI4UI1
  loc_B4798B: FLdPr Me
  loc_B4798E: MemLdStr global_80
  loc_B47991: AryLock
  loc_B47994: Ary1LdPr
  loc_B47995: MemLdRfVar from_stack_1.global_32
  loc_B47998: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B4799D: AryUnlock
  loc_B479A0: FFreeAd var_B0 = ""
  loc_B479A7: FFree1Var var_C0 = ""
  loc_B479AA: FLdRfVar var_210
  loc_B479AD: LitVarStr var_9C, "SaldoCTri"
  loc_B479B2: PopAdLdVar
  loc_B479B3: FLdRfVar var_160
  loc_B479B6: FLdRfVar var_B0
  loc_B479B9: FLdPr var_E8
  loc_B479BC: from_stack_1v = clsbanco.RsFrmGet()
  loc_B479C1: FLdPr var_B0
  loc_B479C4:  = Me.Fields
  loc_B479C9: FLdPr var_160
  loc_B479CC: from_stack_2 = Me.Item(from_stack_1)
  loc_B479D1: LitI2_Byte 0
  loc_B479D3: LitI4 4
  loc_B479D8: FLdPr Me
  loc_B479DB: MemLdRfVar from_stack_1.global_88
  loc_B479DE: Ary1LdRf
  loc_B479DF: CVarRef
  loc_B479E4: LitI2_Byte &HFF
  loc_B479E6: FLdZeroAd var_210
  loc_B479E9: CVarAd
  loc_B479ED: PopAdLdVar
  loc_B479EE: FLdPr Me
  loc_B479F1: MemLdI2 global_112
  loc_B479F4: CI4UI1
  loc_B479F5: FLdPr Me
  loc_B479F8: MemLdStr global_80
  loc_B479FB: AryLock
  loc_B479FE: Ary1LdPr
  loc_B479FF: MemLdRfVar from_stack_1.global_36
  loc_B47A02: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B47A07: AryUnlock
  loc_B47A0A: FFreeAd var_B0 = ""
  loc_B47A11: FFree1Var var_C0 = ""
  loc_B47A14: FLdRfVar var_210
  loc_B47A17: LitVarStr var_9C, "SaldoFin"
  loc_B47A1C: PopAdLdVar
  loc_B47A1D: FLdRfVar var_160
  loc_B47A20: FLdRfVar var_B0
  loc_B47A23: FLdPr var_E8
  loc_B47A26: from_stack_1v = clsbanco.RsFrmGet()
  loc_B47A2B: FLdPr var_B0
  loc_B47A2E:  = Me.Fields
  loc_B47A33: FLdPr var_160
  loc_B47A36: from_stack_2 = Me.Item(from_stack_1)
  loc_B47A3B: LitI2_Byte 0
  loc_B47A3D: LitI4 5
  loc_B47A42: FLdPr Me
  loc_B47A45: MemLdRfVar from_stack_1.global_88
  loc_B47A48: Ary1LdRf
  loc_B47A49: CVarRef
  loc_B47A4E: LitI2_Byte &HFF
  loc_B47A50: FLdZeroAd var_210
  loc_B47A53: CVarAd
  loc_B47A57: PopAdLdVar
  loc_B47A58: FLdPr Me
  loc_B47A5B: MemLdI2 global_112
  loc_B47A5E: CI4UI1
  loc_B47A5F: FLdPr Me
  loc_B47A62: MemLdStr global_80
  loc_B47A65: AryLock
  loc_B47A68: Ary1LdPr
  loc_B47A69: MemLdRfVar from_stack_1.global_40
  loc_B47A6C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B47A71: AryUnlock
  loc_B47A74: FFreeAd var_B0 = ""
  loc_B47A7B: FFree1Var var_C0 = ""
  loc_B47A7E: FLdPr var_E8
  loc_B47A81: Call clsbanco.MoveSiguiente()
  loc_B47A86: FLdPr Me
  loc_B47A89: MemLdRfVar from_stack_1.global_112
  loc_B47A8C: NextI2 var_20C, loc_B47622
  loc_B47A91: LitNothing
  loc_B47A93: FStAd var_E8 
  loc_B47A97: LitI2_Byte &HFF
  loc_B47A99: FLdPr Me
  loc_B47A9C: MemStI2 bGenerado
  loc_B47A9F: LitI4 0
  loc_B47AA4: CI2I4
  loc_B47AA5: FLdPr Me
  loc_B47AA8: Me.MousePointer = from_stack_1
  loc_B47AAD: LitVarStr var_9C, vbNullString
  loc_B47AB2: PopAdLdVar
  loc_B47AB3: FLdPr Me
  loc_B47AB6: VCallAd Control_ID_statusBar
  loc_B47AB9: FStAdFunc var_B0
  loc_B47ABC: FLdPr var_B0
  loc_B47ABF: LateIdSt
  loc_B47AC4: FFree1Ad var_B0
  loc_B47AC7: ExitProcHresult
  loc_B47AC8: LitI4 0
  loc_B47ACD: LitStr "Error "
  loc_B47AD0: FLdRfVar var_208
  loc_B47AD3: ImpAdCallI2 Err 'rtcErrObj
  loc_B47AD8: FStAdFunc var_B0
  loc_B47ADB: FLdPr var_B0
  loc_B47ADE:  = Err.Number
  loc_B47AE3: ILdRf var_208
  loc_B47AE6: CStrI4
  loc_B47AE8: FStStrNoPop var_EC
  loc_B47AEB: ConcatStr
  loc_B47AEC: FStStrNoPop var_F0
  loc_B47AEF: LitStr ": "
  loc_B47AF2: ConcatStr
  loc_B47AF3: FStStrNoPop var_F8
  loc_B47AF6: FLdRfVar var_F4
  loc_B47AF9: ImpAdCallI2 Err 'rtcErrObj
  loc_B47AFE: FStAdFunc var_160
  loc_B47B01: FLdPr var_160
  loc_B47B04:  = Err.Description
  loc_B47B09: ILdRf var_F4
  loc_B47B0C: ConcatStr
  loc_B47B0D: FStStrNoPop var_FC
  loc_B47B10: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B47B15: FFreeStr var_EC = "": var_F0 = "": var_F8 = "": var_F4 = ""
  loc_B47B22: FFreeAd var_B0 = ""
  loc_B47B29: ExitProcHresult
  loc_B47B2A: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B349C4
  'Data Table: 443868
  loc_B34060: FLdRfVar var_88
  loc_B34063: LitI2_Byte 0
  loc_B34065: LitI2_Byte &HFF
  loc_B34067: ImpAdLdI4 MemVar_C3D83C
  loc_B3406A: FLdPr Me
  loc_B3406D: MemLdRfVar from_stack_1.global_76
  loc_B34070: NewIfNullPr IFileSystem3
  loc_B34073: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B34078: ILdRf var_88
  loc_B3407B: FLdPr Me
  loc_B3407E: MemStVarAd
  loc_B34082: FFree1Ad var_88
  loc_B34085: Call Proc_226_23_A93B14()
  loc_B3408A: LitI2_Byte 1
  loc_B3408C: FLdPr Me
  loc_B3408F: MemLdRfVar from_stack_1.global_112
  loc_B34092: FLdPr Me
  loc_B34095: MemLdStr global_80
  loc_B34098: LitI2_Byte 1
  loc_B3409A: FnUBound
  loc_B3409C: CI2I4
  loc_B3409D: ForI2 var_8C
  loc_B340A3: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B340A8: PopAdLdVar
  loc_B340A9: FLdPr Me
  loc_B340AC: MemLdRfVar from_stack_1.htmFile
  loc_B340AF: LdPrVar
  loc_B340B1: LateMemCall
  loc_B340B7: FLdPr Me
  loc_B340BA: MemLdI2 global_112
  loc_B340BD: CI4UI1
  loc_B340BE: FLdPr Me
  loc_B340C1: MemLdStr global_80
  loc_B340C4: AryLock
  loc_B340C7: Ary1LdRf
  loc_B340C8: FStR4 var_B4
  loc_B340CB: LitI4 0
  loc_B340D0: LitI4 0
  loc_B340D5: LitI2_Byte 0
  loc_B340D7: LitStr "left"
  loc_B340DA: FMemLdR4 var_B4(12)
  loc_B340DF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B340E4: CVarStr var_C4
  loc_B340E7: PopAdLdVar
  loc_B340E8: FLdPr Me
  loc_B340EB: MemLdRfVar from_stack_1.htmFile
  loc_B340EE: LdPrVar
  loc_B340F0: LateMemCall
  loc_B340F6: FFree1Var var_C4 = ""
  loc_B340F9: LitI4 0
  loc_B340FE: LitI4 0
  loc_B34103: LitI2_Byte 0
  loc_B34105: LitStr "left"
  loc_B34108: FMemLdR4 var_B4(16)
  loc_B3410D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B34112: CVarStr var_C4
  loc_B34115: PopAdLdVar
  loc_B34116: FLdPr Me
  loc_B34119: MemLdRfVar from_stack_1.htmFile
  loc_B3411C: LdPrVar
  loc_B3411E: LateMemCall
  loc_B34124: FFree1Var var_C4 = ""
  loc_B34127: LitI4 0
  loc_B3412C: LitI4 0
  loc_B34131: LitI2_Byte 0
  loc_B34133: LitStr "right"
  loc_B34136: FMemLdR4 var_B4(0)
  loc_B3413B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B34140: CVarStr var_C4
  loc_B34143: PopAdLdVar
  loc_B34144: FLdPr Me
  loc_B34147: MemLdRfVar from_stack_1.htmFile
  loc_B3414A: LdPrVar
  loc_B3414C: LateMemCall
  loc_B34152: FFree1Var var_C4 = ""
  loc_B34155: LitI4 0
  loc_B3415A: LitI4 0
  loc_B3415F: LitI2_Byte 0
  loc_B34161: LitStr "right"
  loc_B34164: FMemLdR4 var_B4(20)
  loc_B34169: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B3416E: CVarStr var_C4
  loc_B34171: PopAdLdVar
  loc_B34172: FLdPr Me
  loc_B34175: MemLdRfVar from_stack_1.htmFile
  loc_B34178: LdPrVar
  loc_B3417A: LateMemCall
  loc_B34180: FFree1Var var_C4 = ""
  loc_B34183: FLdPr Me
  loc_B34186: VCallAd Control_ID_mskHasta
  loc_B34189: FStAdFunc var_88
  loc_B3418C: FLdPr var_88
  loc_B3418F: LateIdLdVar var_C4 DispID_15 0
  loc_B34196: CStrVarTmp
  loc_B34197: CVarStr var_D4
  loc_B3419A: FLdRfVar var_E4
  loc_B3419D: ImpAdCallFPR4  = Year()
  loc_B341A2: LitI2_Byte &H1F
  loc_B341A4: LitI2_Byte 3
  loc_B341A6: FLdRfVar var_E4
  loc_B341A9: CI2Var
  loc_B341AA: FLdRfVar var_F4
  loc_B341AD: ImpAdCallFPR4  = DateSerial(, , )
  loc_B341B2: FLdPr Me
  loc_B341B5: VCallAd Control_ID_mskHasta
  loc_B341B8: FStAdFunc var_F8
  loc_B341BB: FLdPr var_F8
  loc_B341BE: LateIdLdVar var_108 DispID_15 0
  loc_B341C5: PopAd
  loc_B341C7: LitVarStr var_13C, "&nbsp;"
  loc_B341CC: FStVarCopyObj var_14C
  loc_B341CF: FLdRfVar var_14C
  loc_B341D2: FMemLdRf 0
  loc_B341D7: CVarRef
  loc_B341DC: FLdRfVar var_F4
  loc_B341DF: FLdRfVar var_108
  loc_B341E2: CStrVarTmp
  loc_B341E3: FStStrNoPop var_10C
  loc_B341E6: CDateStr
  loc_B341E8: CVarDate var_9C
  loc_B341EC: HardType
  loc_B341ED: LeVar var_11C
  loc_B341F1: FStVar var_12C
  loc_B341F5: FLdRfVar var_12C
  loc_B341F8: FLdRfVar var_15C
  loc_B341FB: ImpAdCallFPR4  = IIf(, , )
  loc_B34200: LitI4 0
  loc_B34205: LitI4 0
  loc_B3420A: LitI2_Byte 0
  loc_B3420C: LitStr "right"
  loc_B3420F: FLdRfVar var_15C
  loc_B34212: CStrVarVal var_160
  loc_B34216: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B3421B: CVarStr var_170
  loc_B3421E: PopAdLdVar
  loc_B3421F: FLdPr Me
  loc_B34222: MemLdRfVar from_stack_1.htmFile
  loc_B34225: LdPrVar
  loc_B34227: LateMemCall
  loc_B3422D: FFreeStr var_10C = ""
  loc_B34234: FFreeAd var_88 = ""
  loc_B3423B: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_108 = "": var_F4 = "": var_12C = "": var_14C = "": var_15C = ""
  loc_B34250: FLdPr Me
  loc_B34253: VCallAd Control_ID_mskHasta
  loc_B34256: FStAdFunc var_88
  loc_B34259: FLdPr var_88
  loc_B3425C: LateIdLdVar var_C4 DispID_15 0
  loc_B34263: CStrVarTmp
  loc_B34264: CVarStr var_D4
  loc_B34267: FLdRfVar var_E4
  loc_B3426A: ImpAdCallFPR4  = Year()
  loc_B3426F: LitI2_Byte &H1E
  loc_B34271: LitI2_Byte 6
  loc_B34273: FLdRfVar var_E4
  loc_B34276: CI2Var
  loc_B34277: FLdRfVar var_F4
  loc_B3427A: ImpAdCallFPR4  = DateSerial(, , )
  loc_B3427F: FLdPr Me
  loc_B34282: VCallAd Control_ID_mskHasta
  loc_B34285: FStAdFunc var_F8
  loc_B34288: FLdPr var_F8
  loc_B3428B: LateIdLdVar var_108 DispID_15 0
  loc_B34292: PopAd
  loc_B34294: LitVarStr var_13C, "&nbsp;"
  loc_B34299: FStVarCopyObj var_14C
  loc_B3429C: FLdRfVar var_14C
  loc_B3429F: FMemLdRf 0
  loc_B342A4: CVarRef
  loc_B342A9: FLdRfVar var_F4
  loc_B342AC: FLdRfVar var_108
  loc_B342AF: CStrVarTmp
  loc_B342B0: FStStrNoPop var_10C
  loc_B342B3: CDateStr
  loc_B342B5: CVarDate var_9C
  loc_B342B9: HardType
  loc_B342BA: LeVar var_11C
  loc_B342BE: FStVar var_12C
  loc_B342C2: FLdRfVar var_12C
  loc_B342C5: FLdRfVar var_15C
  loc_B342C8: ImpAdCallFPR4  = IIf(, , )
  loc_B342CD: LitI4 0
  loc_B342D2: LitI4 0
  loc_B342D7: LitI2_Byte 0
  loc_B342D9: LitStr "right"
  loc_B342DC: FLdRfVar var_15C
  loc_B342DF: CStrVarVal var_160
  loc_B342E3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B342E8: CVarStr var_170
  loc_B342EB: PopAdLdVar
  loc_B342EC: FLdPr Me
  loc_B342EF: MemLdRfVar from_stack_1.htmFile
  loc_B342F2: LdPrVar
  loc_B342F4: LateMemCall
  loc_B342FA: FFreeStr var_10C = ""
  loc_B34301: FFreeAd var_88 = ""
  loc_B34308: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_108 = "": var_F4 = "": var_12C = "": var_14C = "": var_15C = ""
  loc_B3431D: FLdPr Me
  loc_B34320: VCallAd Control_ID_mskHasta
  loc_B34323: FStAdFunc var_88
  loc_B34326: FLdPr var_88
  loc_B34329: LateIdLdVar var_C4 DispID_15 0
  loc_B34330: CStrVarTmp
  loc_B34331: CVarStr var_D4
  loc_B34334: FLdRfVar var_E4
  loc_B34337: ImpAdCallFPR4  = Year()
  loc_B3433C: LitI2_Byte &H1E
  loc_B3433E: LitI2_Byte 9
  loc_B34340: FLdRfVar var_E4
  loc_B34343: CI2Var
  loc_B34344: FLdRfVar var_F4
  loc_B34347: ImpAdCallFPR4  = DateSerial(, , )
  loc_B3434C: FLdPr Me
  loc_B3434F: VCallAd Control_ID_mskHasta
  loc_B34352: FStAdFunc var_F8
  loc_B34355: FLdPr var_F8
  loc_B34358: LateIdLdVar var_108 DispID_15 0
  loc_B3435F: PopAd
  loc_B34361: LitVarStr var_13C, "&nbsp;"
  loc_B34366: FStVarCopyObj var_14C
  loc_B34369: FLdRfVar var_14C
  loc_B3436C: FMemLdRf 0
  loc_B34371: CVarRef
  loc_B34376: FLdRfVar var_F4
  loc_B34379: FLdRfVar var_108
  loc_B3437C: CStrVarTmp
  loc_B3437D: FStStrNoPop var_10C
  loc_B34380: CDateStr
  loc_B34382: CVarDate var_9C
  loc_B34386: HardType
  loc_B34387: LeVar var_11C
  loc_B3438B: FStVar var_12C
  loc_B3438F: FLdRfVar var_12C
  loc_B34392: FLdRfVar var_15C
  loc_B34395: ImpAdCallFPR4  = IIf(, , )
  loc_B3439A: LitI4 0
  loc_B3439F: LitI4 0
  loc_B343A4: LitI2_Byte 0
  loc_B343A6: LitStr "right"
  loc_B343A9: FLdRfVar var_15C
  loc_B343AC: CStrVarVal var_160
  loc_B343B0: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B343B5: CVarStr var_170
  loc_B343B8: PopAdLdVar
  loc_B343B9: FLdPr Me
  loc_B343BC: MemLdRfVar from_stack_1.htmFile
  loc_B343BF: LdPrVar
  loc_B343C1: LateMemCall
  loc_B343C7: FFreeStr var_10C = ""
  loc_B343CE: FFreeAd var_88 = ""
  loc_B343D5: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_108 = "": var_F4 = "": var_12C = "": var_14C = "": var_15C = ""
  loc_B343EA: FLdPr Me
  loc_B343ED: VCallAd Control_ID_mskHasta
  loc_B343F0: FStAdFunc var_88
  loc_B343F3: FLdPr var_88
  loc_B343F6: LateIdLdVar var_C4 DispID_15 0
  loc_B343FD: CStrVarTmp
  loc_B343FE: CVarStr var_D4
  loc_B34401: FLdRfVar var_E4
  loc_B34404: ImpAdCallFPR4  = Year()
  loc_B34409: LitI2_Byte &H1E
  loc_B3440B: LitI2_Byte &HC
  loc_B3440D: FLdRfVar var_E4
  loc_B34410: CI2Var
  loc_B34411: FLdRfVar var_F4
  loc_B34414: ImpAdCallFPR4  = DateSerial(, , )
  loc_B34419: FLdPr Me
  loc_B3441C: VCallAd Control_ID_mskHasta
  loc_B3441F: FStAdFunc var_F8
  loc_B34422: FLdPr var_F8
  loc_B34425: LateIdLdVar var_108 DispID_15 0
  loc_B3442C: PopAd
  loc_B3442E: FLdPr Me
  loc_B34431: VCallAd Control_ID_mskHasta
  loc_B34434: FStAdFunc var_184
  loc_B34437: FLdPr var_184
  loc_B3443A: LateIdLdVar var_12C DispID_15 0
  loc_B34441: CStrVarTmp
  loc_B34442: CVarStr var_14C
  loc_B34445: FLdRfVar var_15C
  loc_B34448: ImpAdCallFPR4  = Year()
  loc_B3444D: LitI2_Byte &H1F
  loc_B3444F: LitI2_Byte &HC
  loc_B34451: FLdRfVar var_15C
  loc_B34454: CI2Var
  loc_B34455: FLdRfVar var_170
  loc_B34458: ImpAdCallFPR4  = DateSerial(, , )
  loc_B3445D: FLdPr Me
  loc_B34460: VCallAd Control_ID_mskHasta
  loc_B34463: FStAdFunc var_188
  loc_B34466: FLdPr var_188
  loc_B34469: LateIdLdVar var_198 DispID_15 0
  loc_B34470: PopAd
  loc_B34472: LitVarStr var_180, "&nbsp;"
  loc_B34477: FStVarCopyObj var_1D8
  loc_B3447A: FLdRfVar var_1D8
  loc_B3447D: FMemLdRf 0
  loc_B34482: CVarRef
  loc_B34487: FLdRfVar var_F4
  loc_B3448A: FLdRfVar var_108
  loc_B3448D: CStrVarTmp
  loc_B3448E: FStStrNoPop var_10C
  loc_B34491: CDateStr
  loc_B34493: CVarDate var_9C
  loc_B34497: HardType
  loc_B34498: LeVar var_11C
  loc_B3449C: FLdRfVar var_170
  loc_B3449F: FLdRfVar var_198
  loc_B344A2: CStrVarTmp
  loc_B344A3: FStStrNoPop var_160
  loc_B344A6: CDateStr
  loc_B344A8: CVarDate var_AC
  loc_B344AC: HardType
  loc_B344AD: LeVar var_1A8
  loc_B344B1: OrVar var_1B8
  loc_B344B5: FStVar var_1C8
  loc_B344B9: FLdRfVar var_1C8
  loc_B344BC: FLdRfVar var_1E8
  loc_B344BF: ImpAdCallFPR4  = IIf(, , )
  loc_B344C4: LitI4 0
  loc_B344C9: LitI4 0
  loc_B344CE: LitI2_Byte 0
  loc_B344D0: LitStr "right"
  loc_B344D3: FLdRfVar var_1E8
  loc_B344D6: CStrVarVal var_1EC
  loc_B344DA: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B344DF: CVarStr var_1FC
  loc_B344E2: PopAdLdVar
  loc_B344E3: FLdPr Me
  loc_B344E6: MemLdRfVar from_stack_1.htmFile
  loc_B344E9: LdPrVar
  loc_B344EB: LateMemCall
  loc_B344F1: FFreeStr var_10C = "": var_160 = ""
  loc_B344FA: FFreeAd var_88 = "": var_F8 = "": var_184 = ""
  loc_B34505: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_108 = "": var_F4 = "": var_12C = "": var_14C = "": var_15C = "": var_198 = "": var_170 = "": var_1C8 = "": var_1D8 = "": var_1E8 = ""
  loc_B34524: LitI4 0
  loc_B34529: LitI4 0
  loc_B3452E: LitI2_Byte 0
  loc_B34530: LitStr "right"
  loc_B34533: FMemLdR4 var_B4(40)
  loc_B34538: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B3453D: CVarStr var_C4
  loc_B34540: PopAdLdVar
  loc_B34541: FLdPr Me
  loc_B34544: MemLdRfVar from_stack_1.htmFile
  loc_B34547: LdPrVar
  loc_B34549: LateMemCall
  loc_B3454F: FFree1Var var_C4 = ""
  loc_B34552: LitI4 0
  loc_B34557: FStR4 var_B4
  loc_B3455A: AryUnlock
  loc_B3455D: LitVarStr var_9C, "     </tr>"
  loc_B34562: PopAdLdVar
  loc_B34563: FLdPr Me
  loc_B34566: MemLdRfVar from_stack_1.htmFile
  loc_B34569: LdPrVar
  loc_B3456B: LateMemCall
  loc_B34571: FLdPr Me
  loc_B34574: MemLdRfVar from_stack_1.global_112
  loc_B34577: NextI2 var_8C, loc_B340A3
  loc_B3457C: LitVarStr var_9C, "  <tr class=""Totales"" align=""right"">"
  loc_B34581: PopAdLdVar
  loc_B34582: FLdPr Me
  loc_B34585: MemLdRfVar from_stack_1.htmFile
  loc_B34588: LdPrVar
  loc_B3458A: LateMemCall
  loc_B34590: LitVarStr var_9C, "    <td colspan=""3"">TOTAL:</td>"
  loc_B34595: PopAdLdVar
  loc_B34596: FLdPr Me
  loc_B34599: MemLdRfVar from_stack_1.htmFile
  loc_B3459C: LdPrVar
  loc_B3459E: LateMemCall
  loc_B345A4: LitStr "    <td>"
  loc_B345A7: LitI4 0
  loc_B345AC: FLdPr Me
  loc_B345AF: MemLdRfVar from_stack_1.global_88
  loc_B345B2: Ary1LdI4
  loc_B345B3: ConcatStr
  loc_B345B4: FStStrNoPop var_10C
  loc_B345B7: LitStr "</td>"
  loc_B345BA: ConcatStr
  loc_B345BB: CVarStr var_C4
  loc_B345BE: PopAdLdVar
  loc_B345BF: FLdPr Me
  loc_B345C2: MemLdRfVar from_stack_1.htmFile
  loc_B345C5: LdPrVar
  loc_B345C7: LateMemCall
  loc_B345CD: FFree1Str var_10C
  loc_B345D0: FFree1Var var_C4 = ""
  loc_B345D3: FLdPr Me
  loc_B345D6: VCallAd Control_ID_mskHasta
  loc_B345D9: FStAdFunc var_88
  loc_B345DC: FLdPr var_88
  loc_B345DF: LateIdLdVar var_C4 DispID_15 0
  loc_B345E6: CStrVarTmp
  loc_B345E7: CVarStr var_D4
  loc_B345EA: FLdRfVar var_E4
  loc_B345ED: ImpAdCallFPR4  = Year()
  loc_B345F2: LitI2_Byte &H1F
  loc_B345F4: LitI2_Byte 3
  loc_B345F6: FLdRfVar var_E4
  loc_B345F9: CI2Var
  loc_B345FA: FLdRfVar var_F4
  loc_B345FD: ImpAdCallFPR4  = DateSerial(, , )
  loc_B34602: FLdPr Me
  loc_B34605: VCallAd Control_ID_mskHasta
  loc_B34608: FStAdFunc var_F8
  loc_B3460B: FLdPr var_F8
  loc_B3460E: LateIdLdVar var_108 DispID_15 0
  loc_B34615: PopAd
  loc_B34617: LitVarStr var_180, "    <td>"
  loc_B3461C: LitVarStr var_13C, "&nbsp;"
  loc_B34621: FStVarCopyObj var_14C
  loc_B34624: FLdRfVar var_14C
  loc_B34627: LitI4 1
  loc_B3462C: FLdPr Me
  loc_B3462F: MemLdRfVar from_stack_1.global_88
  loc_B34632: Ary1LdRf
  loc_B34633: CVarRef
  loc_B34638: FLdRfVar var_F4
  loc_B3463B: FLdRfVar var_108
  loc_B3463E: CStrVarTmp
  loc_B3463F: FStStrNoPop var_10C
  loc_B34642: CDateStr
  loc_B34644: CVarDate var_9C
  loc_B34648: HardType
  loc_B34649: LeVar var_11C
  loc_B3464D: FStVar var_12C
  loc_B34651: FLdRfVar var_12C
  loc_B34654: FLdRfVar var_15C
  loc_B34657: ImpAdCallFPR4  = IIf(, , )
  loc_B3465C: FLdRfVar var_15C
  loc_B3465F: ConcatVar var_170
  loc_B34663: LitVarStr var_20C, "</td>"
  loc_B34668: ConcatVar var_198
  loc_B3466C: PopAdLdVar
  loc_B3466D: FLdPr Me
  loc_B34670: MemLdRfVar from_stack_1.htmFile
  loc_B34673: LdPrVar
  loc_B34675: LateMemCall
  loc_B3467B: FFree1Str var_10C
  loc_B3467E: FFreeAd var_88 = ""
  loc_B34685: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_108 = "": var_F4 = "": var_12C = "": var_14C = "": var_15C = "": var_170 = ""
  loc_B3469C: FLdPr Me
  loc_B3469F: VCallAd Control_ID_mskHasta
  loc_B346A2: FStAdFunc var_88
  loc_B346A5: FLdPr var_88
  loc_B346A8: LateIdLdVar var_C4 DispID_15 0
  loc_B346AF: CStrVarTmp
  loc_B346B0: CVarStr var_D4
  loc_B346B3: FLdRfVar var_E4
  loc_B346B6: ImpAdCallFPR4  = Year()
  loc_B346BB: LitI2_Byte &H1E
  loc_B346BD: LitI2_Byte 6
  loc_B346BF: FLdRfVar var_E4
  loc_B346C2: CI2Var
  loc_B346C3: FLdRfVar var_F4
  loc_B346C6: ImpAdCallFPR4  = DateSerial(, , )
  loc_B346CB: FLdPr Me
  loc_B346CE: VCallAd Control_ID_mskHasta
  loc_B346D1: FStAdFunc var_F8
  loc_B346D4: FLdPr var_F8
  loc_B346D7: LateIdLdVar var_108 DispID_15 0
  loc_B346DE: PopAd
  loc_B346E0: LitVarStr var_180, "    <td>"
  loc_B346E5: LitVarStr var_13C, "&nbsp;"
  loc_B346EA: FStVarCopyObj var_14C
  loc_B346ED: FLdRfVar var_14C
  loc_B346F0: LitI4 2
  loc_B346F5: FLdPr Me
  loc_B346F8: MemLdRfVar from_stack_1.global_88
  loc_B346FB: Ary1LdRf
  loc_B346FC: CVarRef
  loc_B34701: FLdRfVar var_F4
  loc_B34704: FLdRfVar var_108
  loc_B34707: CStrVarTmp
  loc_B34708: FStStrNoPop var_10C
  loc_B3470B: CDateStr
  loc_B3470D: CVarDate var_9C
  loc_B34711: HardType
  loc_B34712: LeVar var_11C
  loc_B34716: FStVar var_12C
  loc_B3471A: FLdRfVar var_12C
  loc_B3471D: FLdRfVar var_15C
  loc_B34720: ImpAdCallFPR4  = IIf(, , )
  loc_B34725: FLdRfVar var_15C
  loc_B34728: ConcatVar var_170
  loc_B3472C: LitVarStr var_20C, "</td>"
  loc_B34731: ConcatVar var_198
  loc_B34735: PopAdLdVar
  loc_B34736: FLdPr Me
  loc_B34739: MemLdRfVar from_stack_1.htmFile
  loc_B3473C: LdPrVar
  loc_B3473E: LateMemCall
  loc_B34744: FFree1Str var_10C
  loc_B34747: FFreeAd var_88 = ""
  loc_B3474E: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_108 = "": var_F4 = "": var_12C = "": var_14C = "": var_15C = "": var_170 = ""
  loc_B34765: FLdPr Me
  loc_B34768: VCallAd Control_ID_mskHasta
  loc_B3476B: FStAdFunc var_88
  loc_B3476E: FLdPr var_88
  loc_B34771: LateIdLdVar var_C4 DispID_15 0
  loc_B34778: CStrVarTmp
  loc_B34779: CVarStr var_D4
  loc_B3477C: FLdRfVar var_E4
  loc_B3477F: ImpAdCallFPR4  = Year()
  loc_B34784: LitI2_Byte &H1E
  loc_B34786: LitI2_Byte 9
  loc_B34788: FLdRfVar var_E4
  loc_B3478B: CI2Var
  loc_B3478C: FLdRfVar var_F4
  loc_B3478F: ImpAdCallFPR4  = DateSerial(, , )
  loc_B34794: FLdPr Me
  loc_B34797: VCallAd Control_ID_mskHasta
  loc_B3479A: FStAdFunc var_F8
  loc_B3479D: FLdPr var_F8
  loc_B347A0: LateIdLdVar var_108 DispID_15 0
  loc_B347A7: PopAd
  loc_B347A9: LitVarStr var_180, "    <td>"
  loc_B347AE: LitVarStr var_13C, "&nbsp;"
  loc_B347B3: FStVarCopyObj var_14C
  loc_B347B6: FLdRfVar var_14C
  loc_B347B9: LitI4 3
  loc_B347BE: FLdPr Me
  loc_B347C1: MemLdRfVar from_stack_1.global_88
  loc_B347C4: Ary1LdRf
  loc_B347C5: CVarRef
  loc_B347CA: FLdRfVar var_F4
  loc_B347CD: FLdRfVar var_108
  loc_B347D0: CStrVarTmp
  loc_B347D1: FStStrNoPop var_10C
  loc_B347D4: CDateStr
  loc_B347D6: CVarDate var_9C
  loc_B347DA: HardType
  loc_B347DB: LeVar var_11C
  loc_B347DF: FStVar var_12C
  loc_B347E3: FLdRfVar var_12C
  loc_B347E6: FLdRfVar var_15C
  loc_B347E9: ImpAdCallFPR4  = IIf(, , )
  loc_B347EE: FLdRfVar var_15C
  loc_B347F1: ConcatVar var_170
  loc_B347F5: LitVarStr var_20C, "</td>"
  loc_B347FA: ConcatVar var_198
  loc_B347FE: PopAdLdVar
  loc_B347FF: FLdPr Me
  loc_B34802: MemLdRfVar from_stack_1.htmFile
  loc_B34805: LdPrVar
  loc_B34807: LateMemCall
  loc_B3480D: FFree1Str var_10C
  loc_B34810: FFreeAd var_88 = ""
  loc_B34817: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_108 = "": var_F4 = "": var_12C = "": var_14C = "": var_15C = "": var_170 = ""
  loc_B3482E: FLdPr Me
  loc_B34831: VCallAd Control_ID_mskHasta
  loc_B34834: FStAdFunc var_88
  loc_B34837: FLdPr var_88
  loc_B3483A: LateIdLdVar var_C4 DispID_15 0
  loc_B34841: CStrVarTmp
  loc_B34842: CVarStr var_D4
  loc_B34845: FLdRfVar var_E4
  loc_B34848: ImpAdCallFPR4  = Year()
  loc_B3484D: LitI2_Byte &H1E
  loc_B3484F: LitI2_Byte &HC
  loc_B34851: FLdRfVar var_E4
  loc_B34854: CI2Var
  loc_B34855: FLdRfVar var_F4
  loc_B34858: ImpAdCallFPR4  = DateSerial(, , )
  loc_B3485D: FLdPr Me
  loc_B34860: VCallAd Control_ID_mskHasta
  loc_B34863: FStAdFunc var_F8
  loc_B34866: FLdPr var_F8
  loc_B34869: LateIdLdVar var_108 DispID_15 0
  loc_B34870: PopAd
  loc_B34872: FLdPr Me
  loc_B34875: VCallAd Control_ID_mskHasta
  loc_B34878: FStAdFunc var_184
  loc_B3487B: FLdPr var_184
  loc_B3487E: LateIdLdVar var_12C DispID_15 0
  loc_B34885: CStrVarTmp
  loc_B34886: CVarStr var_14C
  loc_B34889: FLdRfVar var_15C
  loc_B3488C: ImpAdCallFPR4  = Year()
  loc_B34891: LitI2_Byte &H1F
  loc_B34893: LitI2_Byte &HC
  loc_B34895: FLdRfVar var_15C
  loc_B34898: CI2Var
  loc_B34899: FLdRfVar var_170
  loc_B3489C: ImpAdCallFPR4  = DateSerial(, , )
  loc_B348A1: FLdPr Me
  loc_B348A4: VCallAd Control_ID_mskHasta
  loc_B348A7: FStAdFunc var_188
  loc_B348AA: FLdPr var_188
  loc_B348AD: LateIdLdVar var_198 DispID_15 0
  loc_B348B4: PopAd
  loc_B348B6: LitVarStr var_20C, "    <td>"
  loc_B348BB: LitVarStr var_180, "&nbsp;"
  loc_B348C0: FStVarCopyObj var_1D8
  loc_B348C3: FLdRfVar var_1D8
  loc_B348C6: LitI4 4
  loc_B348CB: FLdPr Me
  loc_B348CE: MemLdRfVar from_stack_1.global_88
  loc_B348D1: Ary1LdRf
  loc_B348D2: CVarRef
  loc_B348D7: FLdRfVar var_F4
  loc_B348DA: FLdRfVar var_108
  loc_B348DD: CStrVarTmp
  loc_B348DE: FStStrNoPop var_10C
  loc_B348E1: CDateStr
  loc_B348E3: CVarDate var_9C
  loc_B348E7: HardType
  loc_B348E8: LeVar var_11C
  loc_B348EC: FLdRfVar var_170
  loc_B348EF: FLdRfVar var_198
  loc_B348F2: CStrVarTmp
  loc_B348F3: FStStrNoPop var_160
  loc_B348F6: CDateStr
  loc_B348F8: CVarDate var_AC
  loc_B348FC: HardType
  loc_B348FD: LeVar var_1A8
  loc_B34901: OrVar var_1B8
  loc_B34905: FStVar var_1C8
  loc_B34909: FLdRfVar var_1C8
  loc_B3490C: FLdRfVar var_1E8
  loc_B3490F: ImpAdCallFPR4  = IIf(, , )
  loc_B34914: FLdRfVar var_1E8
  loc_B34917: ConcatVar var_1FC
  loc_B3491B: LitVarStr var_21C, "</td>"
  loc_B34920: ConcatVar var_22C
  loc_B34924: PopAdLdVar
  loc_B34925: FLdPr Me
  loc_B34928: MemLdRfVar from_stack_1.htmFile
  loc_B3492B: LdPrVar
  loc_B3492D: LateMemCall
  loc_B34933: FFreeStr var_10C = ""
  loc_B3493A: FFreeAd var_88 = "": var_F8 = "": var_184 = ""
  loc_B34945: FFreeVar var_C4 = "": var_D4 = "": var_E4 = "": var_108 = "": var_F4 = "": var_12C = "": var_14C = "": var_15C = "": var_198 = "": var_170 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1FC = ""
  loc_B34966: LitStr "    <td>"
  loc_B34969: LitI4 5
  loc_B3496E: FLdPr Me
  loc_B34971: MemLdRfVar from_stack_1.global_88
  loc_B34974: Ary1LdI4
  loc_B34975: ConcatStr
  loc_B34976: FStStrNoPop var_10C
  loc_B34979: LitStr "</td>"
  loc_B3497C: ConcatStr
  loc_B3497D: CVarStr var_C4
  loc_B34980: PopAdLdVar
  loc_B34981: FLdPr Me
  loc_B34984: MemLdRfVar from_stack_1.htmFile
  loc_B34987: LdPrVar
  loc_B34989: LateMemCall
  loc_B3498F: FFree1Str var_10C
  loc_B34992: FFree1Var var_C4 = ""
  loc_B34995: LitVarStr var_9C, "     </tr>"
  loc_B3499A: PopAdLdVar
  loc_B3499B: FLdPr Me
  loc_B3499E: MemLdRfVar from_stack_1.htmFile
  loc_B349A1: LdPrVar
  loc_B349A3: LateMemCall
  loc_B349A9: Call Proc_226_24_983C00()
  loc_B349AE: FLdPr Me
  loc_B349B1: MemLdRfVar from_stack_1.htmFile
  loc_B349B4: LdPrVar
  loc_B349B6: LateMemCall
  loc_B349BC: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B349C1: ExitProcHresult
  loc_B349C2: AddR8
End Sub

Public Sub GeneraXLS() '94E01C
  'Data Table: 443868
  loc_94E004: LitI2_Byte 0
  loc_94E006: FLdPr Me
  loc_94E009: MemStI2 bLogos
  loc_94E00C: Call GeneraHTML()
  loc_94E011: LitI2_Byte &HFF
  loc_94E013: FLdPr Me
  loc_94E016: MemStI2 bLogos
  loc_94E019: ExitProcHresult
  loc_94E01A: Ary1StVar
End Sub

Private Function Proc_226_23_A93B14() 'A93B14
  'Data Table: 443868
  loc_A93690: LitVarStr var_94, "<html>"
  loc_A93695: PopAdLdVar
  loc_A93696: FLdPr Me
  loc_A93699: MemLdRfVar from_stack_1.htmFile
  loc_A9369C: LdPrVar
  loc_A9369E: LateMemCall
  loc_A936A4: LitVarStr var_94, "<head>"
  loc_A936A9: PopAdLdVar
  loc_A936AA: FLdPr Me
  loc_A936AD: MemLdRfVar from_stack_1.htmFile
  loc_A936B0: LdPrVar
  loc_A936B2: LateMemCall
  loc_A936B8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A936BD: PopAdLdVar
  loc_A936BE: FLdPr Me
  loc_A936C1: MemLdRfVar from_stack_1.htmFile
  loc_A936C4: LdPrVar
  loc_A936C6: LateMemCall
  loc_A936CC: LitStr "<title>"
  loc_A936CF: FLdRfVar var_A8
  loc_A936D2: FLdPr Me
  loc_A936D5:  = Me.Caption
  loc_A936DA: ILdRf var_A8
  loc_A936DD: ConcatStr
  loc_A936DE: FStStrNoPop var_AC
  loc_A936E1: LitStr "</title>"
  loc_A936E4: ConcatStr
  loc_A936E5: CVarStr var_BC
  loc_A936E8: PopAdLdVar
  loc_A936E9: FLdPr Me
  loc_A936EC: MemLdRfVar from_stack_1.htmFile
  loc_A936EF: LdPrVar
  loc_A936F1: LateMemCall
  loc_A936F7: FFreeStr var_A8 = ""
  loc_A936FE: FFree1Var var_BC = ""
  loc_A93701: LitStr vbNullString
  loc_A93704: ILdRf Me
  loc_A93707: CastAd
  loc_A9370A: FStAdFunc var_C0
  loc_A9370D: FLdRfVar var_C0
  loc_A93710: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A93715: FFree1Ad var_C0
  loc_A93718: LitI4 0
  loc_A9371D: FStStrCopy var_AC
  loc_A93720: FLdRfVar var_AC
  loc_A93723: LitI4 0
  loc_A93728: FStStrCopy var_A8
  loc_A9372B: FLdRfVar var_A8
  loc_A9372E: LitI2_Byte 0
  loc_A93730: PopTmpLdAd2 var_C2
  loc_A93733: FLdPr Me
  loc_A93736: MemLdRfVar from_stack_1.htmFile
  loc_A93739: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A9373E: FFreeStr var_A8 = ""
  loc_A93745: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A9374A: PopAdLdVar
  loc_A9374B: FLdPr Me
  loc_A9374E: MemLdRfVar from_stack_1.htmFile
  loc_A93751: LdPrVar
  loc_A93753: LateMemCall
  loc_A93759: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9375E: PopAdLdVar
  loc_A9375F: FLdPr Me
  loc_A93762: MemLdRfVar from_stack_1.htmFile
  loc_A93765: LdPrVar
  loc_A93767: LateMemCall
  loc_A9376D: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A93772: PopAdLdVar
  loc_A93773: FLdPr Me
  loc_A93776: MemLdRfVar from_stack_1.htmFile
  loc_A93779: LdPrVar
  loc_A9377B: LateMemCall
  loc_A93781: FLdPr Me
  loc_A93784: MemLdI2 bLogos
  loc_A93787: BranchF loc_A9379E
  loc_A9378A: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A9378F: PopAdLdVar
  loc_A93790: FLdPr Me
  loc_A93793: MemLdRfVar from_stack_1.htmFile
  loc_A93796: LdPrVar
  loc_A93798: LateMemCall
  loc_A9379E: LitVarStr var_A4, "    <br><br>"
  loc_A937A3: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A937A8: FStVarCopyObj var_BC
  loc_A937AB: FLdRfVar var_BC
  loc_A937AE: FLdRfVar var_D4
  loc_A937B1: ImpAdCallFPR4  = Ucase()
  loc_A937B6: FLdRfVar var_D4
  loc_A937B9: ConcatVar var_E4
  loc_A937BD: LitVarStr var_F4, "</p>"
  loc_A937C2: ConcatVar var_104
  loc_A937C6: PopAdLdVar
  loc_A937C7: FLdPr Me
  loc_A937CA: MemLdRfVar from_stack_1.htmFile
  loc_A937CD: LdPrVar
  loc_A937CF: LateMemCall
  loc_A937D5: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A937E0: LitStr "    <p>"
  loc_A937E3: FLdRfVar var_A8
  loc_A937E6: FLdPr Me
  loc_A937E9:  = Me.Caption
  loc_A937EE: ILdRf var_A8
  loc_A937F1: ConcatStr
  loc_A937F2: FStStrNoPop var_AC
  loc_A937F5: LitStr "</p></th>"
  loc_A937F8: ConcatStr
  loc_A937F9: CVarStr var_BC
  loc_A937FC: PopAdLdVar
  loc_A937FD: FLdPr Me
  loc_A93800: MemLdRfVar from_stack_1.htmFile
  loc_A93803: LdPrVar
  loc_A93805: LateMemCall
  loc_A9380B: FFreeStr var_A8 = ""
  loc_A93812: FFree1Var var_BC = ""
  loc_A93815: LitVarStr var_94, "  </tr>"
  loc_A9381A: PopAdLdVar
  loc_A9381B: FLdPr Me
  loc_A9381E: MemLdRfVar from_stack_1.htmFile
  loc_A93821: LdPrVar
  loc_A93823: LateMemCall
  loc_A93829: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9382E: PopAdLdVar
  loc_A9382F: FLdPr Me
  loc_A93832: MemLdRfVar from_stack_1.htmFile
  loc_A93835: LdPrVar
  loc_A93837: LateMemCall
  loc_A9383D: LitVarStr var_94, "    <th align=""left"" valign=""bottom""><hr></th>"
  loc_A93842: PopAdLdVar
  loc_A93843: FLdPr Me
  loc_A93846: MemLdRfVar from_stack_1.htmFile
  loc_A93849: LdPrVar
  loc_A9384B: LateMemCall
  loc_A93851: LitVarStr var_94, "  </tr>"
  loc_A93856: PopAdLdVar
  loc_A93857: FLdPr Me
  loc_A9385A: MemLdRfVar from_stack_1.htmFile
  loc_A9385D: LdPrVar
  loc_A9385F: LateMemCall
  loc_A93865: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A9386A: PopAdLdVar
  loc_A9386B: FLdPr Me
  loc_A9386E: MemLdRfVar from_stack_1.htmFile
  loc_A93871: LdPrVar
  loc_A93873: LateMemCall
  loc_A93879: LitStr "    <th align=""left"">Hasta: <span class=""Normal"">"
  loc_A9387C: FLdPr Me
  loc_A9387F: VCallAd Control_ID_mskHasta
  loc_A93882: FStAdFunc var_C0
  loc_A93885: FLdPr var_C0
  loc_A93888: LateIdLdVar var_BC DispID_15 0
  loc_A9388F: CStrVarTmp
  loc_A93890: FStStrNoPop var_A8
  loc_A93893: ConcatStr
  loc_A93894: FStStrNoPop var_AC
  loc_A93897: LitStr "</span></th>"
  loc_A9389A: ConcatStr
  loc_A9389B: CVarStr var_D4
  loc_A9389E: PopAdLdVar
  loc_A9389F: FLdPr Me
  loc_A938A2: MemLdRfVar from_stack_1.htmFile
  loc_A938A5: LdPrVar
  loc_A938A7: LateMemCall
  loc_A938AD: FFreeStr var_A8 = ""
  loc_A938B4: FFree1Ad var_C0
  loc_A938B7: FFreeVar var_BC = ""
  loc_A938BE: LitVarStr var_94, "  </tr>"
  loc_A938C3: PopAdLdVar
  loc_A938C4: FLdPr Me
  loc_A938C7: MemLdRfVar from_stack_1.htmFile
  loc_A938CA: LdPrVar
  loc_A938CC: LateMemCall
  loc_A938D2: FLdPr Me
  loc_A938D5: VCallAd Control_ID_chkMostrarTransferencias
  loc_A938D8: CVarAd
  loc_A938DC: CBoolVarNull
  loc_A938DE: FFree1Var var_BC = ""
  loc_A938E1: BranchF loc_A93920
  loc_A938E4: LitVarStr var_94, "  <tr valign=""top"">"
  loc_A938E9: PopAdLdVar
  loc_A938EA: FLdPr Me
  loc_A938ED: MemLdRfVar from_stack_1.htmFile
  loc_A938F0: LdPrVar
  loc_A938F2: LateMemCall
  loc_A938F8: LitVarStr var_94, "    <th align=""left"">Mostrar TRANSFERENCIAS pendientes de pago<span class=""Normal""></span></th>"
  loc_A938FD: PopAdLdVar
  loc_A938FE: FLdPr Me
  loc_A93901: MemLdRfVar from_stack_1.htmFile
  loc_A93904: LdPrVar
  loc_A93906: LateMemCall
  loc_A9390C: LitVarStr var_94, "  </tr>"
  loc_A93911: PopAdLdVar
  loc_A93912: FLdPr Me
  loc_A93915: MemLdRfVar from_stack_1.htmFile
  loc_A93918: LdPrVar
  loc_A9391A: LateMemCall
  loc_A93920: LitVarStr var_94, "</table>"
  loc_A93925: PopAdLdVar
  loc_A93926: FLdPr Me
  loc_A93929: MemLdRfVar from_stack_1.htmFile
  loc_A9392C: LdPrVar
  loc_A9392E: LateMemCall
  loc_A93934: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A93939: PopAdLdVar
  loc_A9393A: FLdPr Me
  loc_A9393D: MemLdRfVar from_stack_1.htmFile
  loc_A93940: LdPrVar
  loc_A93942: LateMemCall
  loc_A93948: LitVarStr var_94, "  <THEAD>"
  loc_A9394D: PopAdLdVar
  loc_A9394E: FLdPr Me
  loc_A93951: MemLdRfVar from_stack_1.htmFile
  loc_A93954: LdPrVar
  loc_A93956: LateMemCall
  loc_A9395C: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A93961: PopAdLdVar
  loc_A93962: FLdPr Me
  loc_A93965: MemLdRfVar from_stack_1.htmFile
  loc_A93968: LdPrVar
  loc_A9396A: LateMemCall
  loc_A93970: LitVarStr var_94, "    <th rowspan=""2"">Cuenta Contable</th>"
  loc_A93975: PopAdLdVar
  loc_A93976: FLdPr Me
  loc_A93979: MemLdRfVar from_stack_1.htmFile
  loc_A9397C: LdPrVar
  loc_A9397E: LateMemCall
  loc_A93984: LitVarStr var_94, "    <th rowspan=""2"">Detalle</th>"
  loc_A93989: PopAdLdVar
  loc_A9398A: FLdPr Me
  loc_A9398D: MemLdRfVar from_stack_1.htmFile
  loc_A93990: LdPrVar
  loc_A93992: LateMemCall
  loc_A93998: LitVarStr var_94, "    <th rowspan=""2"">Banco</th>"
  loc_A9399D: PopAdLdVar
  loc_A9399E: FLdPr Me
  loc_A939A1: MemLdRfVar from_stack_1.htmFile
  loc_A939A4: LdPrVar
  loc_A939A6: LateMemCall
  loc_A939AC: FLdPr Me
  loc_A939AF: VCallAd Control_ID_mskHasta
  loc_A939B2: FStAdFunc var_C0
  loc_A939B5: FLdPr var_C0
  loc_A939B8: LateIdLdVar var_BC DispID_15 0
  loc_A939BF: CStrVarTmp
  loc_A939C0: CVarStr var_D4
  loc_A939C3: FLdRfVar var_E4
  loc_A939C6: ImpAdCallFPR4  = Year()
  loc_A939CB: LitVarStr var_A4, "    <th rowspan=""2"">Saldo al<br>inicio: "
  loc_A939D0: LitI2_Byte 1
  loc_A939D2: LitI2_Byte 1
  loc_A939D4: FLdRfVar var_E4
  loc_A939D7: CI2Var
  loc_A939D8: FLdRfVar var_104
  loc_A939DB: ImpAdCallFPR4  = DateSerial(, , )
  loc_A939E0: FLdRfVar var_104
  loc_A939E3: LitVarI2 var_94, 1
  loc_A939E8: SubVar var_124
  loc_A939EC: ConcatVar var_134
  loc_A939F0: LitVarStr var_F4, "</th>"
  loc_A939F5: ConcatVar var_144
  loc_A939F9: PopAdLdVar
  loc_A939FA: FLdPr Me
  loc_A939FD: MemLdRfVar from_stack_1.htmFile
  loc_A93A00: LdPrVar
  loc_A93A02: LateMemCall
  loc_A93A08: FFree1Ad var_C0
  loc_A93A0B: FFreeVar var_BC = "": var_D4 = "": var_E4 = "": var_104 = "": var_134 = ""
  loc_A93A1A: LitVarStr var_94, "    <th colspan=""4"">Movimiento Trimestral</th>"
  loc_A93A1F: PopAdLdVar
  loc_A93A20: FLdPr Me
  loc_A93A23: MemLdRfVar from_stack_1.htmFile
  loc_A93A26: LdPrVar
  loc_A93A28: LateMemCall
  loc_A93A2E: LitStr "    <th rowspan=""2"">Saldo al<br>cierre:&nbsp;"
  loc_A93A31: FLdPr Me
  loc_A93A34: VCallAd Control_ID_mskHasta
  loc_A93A37: FStAdFunc var_C0
  loc_A93A3A: FLdPr var_C0
  loc_A93A3D: LateIdLdVar var_BC DispID_15 0
  loc_A93A44: CStrVarTmp
  loc_A93A45: FStStrNoPop var_A8
  loc_A93A48: ConcatStr
  loc_A93A49: FStStrNoPop var_AC
  loc_A93A4C: LitStr "</th>"
  loc_A93A4F: ConcatStr
  loc_A93A50: CVarStr var_D4
  loc_A93A53: PopAdLdVar
  loc_A93A54: FLdPr Me
  loc_A93A57: MemLdRfVar from_stack_1.htmFile
  loc_A93A5A: LdPrVar
  loc_A93A5C: LateMemCall
  loc_A93A62: FFreeStr var_A8 = ""
  loc_A93A69: FFree1Ad var_C0
  loc_A93A6C: FFreeVar var_BC = ""
  loc_A93A73: LitVarStr var_94, "  </tr>"
  loc_A93A78: PopAdLdVar
  loc_A93A79: FLdPr Me
  loc_A93A7C: MemLdRfVar from_stack_1.htmFile
  loc_A93A7F: LdPrVar
  loc_A93A81: LateMemCall
  loc_A93A87: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A93A8C: PopAdLdVar
  loc_A93A8D: FLdPr Me
  loc_A93A90: MemLdRfVar from_stack_1.htmFile
  loc_A93A93: LdPrVar
  loc_A93A95: LateMemCall
  loc_A93A9B: LitVarStr var_94, "    <th>1º Trimestre</th>"
  loc_A93AA0: PopAdLdVar
  loc_A93AA1: FLdPr Me
  loc_A93AA4: MemLdRfVar from_stack_1.htmFile
  loc_A93AA7: LdPrVar
  loc_A93AA9: LateMemCall
  loc_A93AAF: LitVarStr var_94, "    <th>2º Trimestre</th>"
  loc_A93AB4: PopAdLdVar
  loc_A93AB5: FLdPr Me
  loc_A93AB8: MemLdRfVar from_stack_1.htmFile
  loc_A93ABB: LdPrVar
  loc_A93ABD: LateMemCall
  loc_A93AC3: LitVarStr var_94, "    <th>3º Trimestre</th>"
  loc_A93AC8: PopAdLdVar
  loc_A93AC9: FLdPr Me
  loc_A93ACC: MemLdRfVar from_stack_1.htmFile
  loc_A93ACF: LdPrVar
  loc_A93AD1: LateMemCall
  loc_A93AD7: LitVarStr var_94, "    <th>4º Trimestre</th>"
  loc_A93ADC: PopAdLdVar
  loc_A93ADD: FLdPr Me
  loc_A93AE0: MemLdRfVar from_stack_1.htmFile
  loc_A93AE3: LdPrVar
  loc_A93AE5: LateMemCall
  loc_A93AEB: LitVarStr var_94, "  </tr>"
  loc_A93AF0: PopAdLdVar
  loc_A93AF1: FLdPr Me
  loc_A93AF4: MemLdRfVar from_stack_1.htmFile
  loc_A93AF7: LdPrVar
  loc_A93AF9: LateMemCall
  loc_A93AFF: LitVarStr var_94, "  </THEAD>"
  loc_A93B04: PopAdLdVar
  loc_A93B05: FLdPr Me
  loc_A93B08: MemLdRfVar from_stack_1.htmFile
  loc_A93B0B: LdPrVar
  loc_A93B0D: LateMemCall
  loc_A93B13: ExitProcHresult
End Function

Private Function Proc_226_24_983C00() '983C00
  'Data Table: 443868
  loc_983BC0: LitVarStr var_94, "</table>"
  loc_983BC5: PopAdLdVar
  loc_983BC6: FLdPr Me
  loc_983BC9: MemLdRfVar from_stack_1.htmFile
  loc_983BCC: LdPrVar
  loc_983BCE: LateMemCall
  loc_983BD4: LitVarStr var_94, "</body>"
  loc_983BD9: PopAdLdVar
  loc_983BDA: FLdPr Me
  loc_983BDD: MemLdRfVar from_stack_1.htmFile
  loc_983BE0: LdPrVar
  loc_983BE2: LateMemCall
  loc_983BE8: LitVarStr var_94, "</html>"
  loc_983BED: PopAdLdVar
  loc_983BEE: FLdPr Me
  loc_983BF1: MemLdRfVar from_stack_1.htmFile
  loc_983BF4: LdPrVar
  loc_983BF6: LateMemCall
  loc_983BFC: ExitProcHresult
End Function
