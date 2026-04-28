VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeBoletosNoProcesados
  Caption = "Listado de Boletos NO procesados"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeBoletosNoProcesados.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10740
  ClientHeight = 3840
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
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 3585
    Width = 10740
    Height = 255
    TabIndex = 15
    OleObjectBlob = "rptListadodeBoletosNoProcesados.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 2400
    Width = 855
    Height = 735
    TabIndex = 13
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptListadodeBoletosNoProcesados.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeBoletosNoProcesados.frx":0B9C
    Left = 9720
    Top = 2640
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4440
    Top = 2160
    Width = 3495
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 11
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 2160
    Width = 4095
    Height = 1215
    TabIndex = 7
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 9
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 1935
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame Frame4
      Left = 120
      Top = 240
      Width = 6615
      Height = 1455
      TabIndex = 1
      Begin MSMask.MaskEdBox FeenAcpaMsk
        Left = 3720
        Top = 360
        Width = 1335
        Height = 360
        TabIndex = 3
        OleObjectBlob = "rptListadodeBoletosNoProcesados.frx":0C00
      End
      Begin MSMask.MaskEdBox NumeAcpaMsk
        Left = 3720
        Top = 840
        Width = 615
        Height = 360
        TabIndex = 5
        OleObjectBlob = "rptListadodeBoletosNoProcesados.frx":0CB0
      End
      Begin VB.Label Label6
        Caption = "Fecha de Envio:"
        Left = 1920
        Top = 360
        Width = 1710
        Height = 300
        TabIndex = 2
        AutoSize = -1  'True
      End
      Begin VB.Label Label5
        Caption = "Nro de Grupo:"
        Left = 2160
        Top = 840
        Width = 1500
        Height = 300
        TabIndex = 4
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6840
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 6
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8280
    Top = 2760
    Width = 615
    Height = 255
    TabStop = 0   'False
    TabIndex = 14
    OleObjectBlob = "rptListadodeBoletosNoProcesados.frx":0D3E
  End
End

Attribute VB_Name = "rptListadodeBoletosNoProcesados"

Public bGenerado As Boolean
Public bLogos As Boolean

Private Type UDT_1_00562720
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub cmdPredeterminada_Click() '9C8170
  'Data Table: 470588
  loc_9C8158: LitI2_Byte 0
  loc_9C815A: ILdRf Me
  loc_9C815D: CastAd
  loc_9C8160: FStAdFunc var_88
  loc_9C8163: FLdRfVar var_88
  loc_9C8166: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9C816B: FFree1Ad var_88
  loc_9C816E: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '9DD49C
  'Data Table: 470588
  loc_9DD480: LitI2_Byte &HFF
  loc_9DD482: LitI2_Byte 0
  loc_9DD484: ILdRf Me
  loc_9DD487: CastAd
  loc_9DD48A: FStAdFunc var_88
  loc_9DD48D: FLdRfVar var_88
  loc_9DD490: ImpAdCallFPR4 Proc_57_4_AFAAC0(, , )
  loc_9DD495: FFree1Ad var_88
  loc_9DD498: ExitProcHresult
  loc_9DD499: AddI2
  loc_9DD49A: GtI4
End Sub

Private Sub FeenAcpaMsk_UnknownEvent_0 '9C7E08
  'Data Table: 470588
  loc_9C7DF4: FLdPr Me
  loc_9C7DF7: VCallAd Control_ID_FeenAcpaMsk
  loc_9C7DFA: CVarAd
  loc_9C7DFE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7E03: FFree1Var var_94 = ""
  loc_9C7E06: ExitProcHresult
End Sub

Private Function FeenAcpaMsk_UnknownEvent_8(arg_C) 'A63AC0
  'Data Table: 470588
  loc_A63A64: FLdPr Me
  loc_A63A67: VCallAd Control_ID_FeenAcpaMsk
  loc_A63A6A: FStAdFunc var_88
  loc_A63A6D: FLdPr var_88
  loc_A63A70: LateIdLdVar var_98 DispID_15 0
  loc_A63A77: CStrVarTmp
  loc_A63A78: FStStrNoPop var_9C
  loc_A63A7B: ImpAdCallI2 Proc_18_5_A95CFC()
  loc_A63A80: FStStrNoPop var_A0
  loc_A63A83: FLdPr Me
  loc_A63A86: MemStStrCopy
  loc_A63A8A: FFreeStr var_9C = ""
  loc_A63A91: FFree1Ad var_88
  loc_A63A94: FFree1Var var_98 = ""
  loc_A63A97: FLdPr Me
  loc_A63A9A: VCallAd Control_ID_FeenAcpaMsk
  loc_A63A9D: FStAdFuncNoPop
  loc_A63AA0: CastAd
  loc_A63AA3: FStAdFunc var_A4
  loc_A63AA6: FLdRfVar var_A4
  loc_A63AA9: FLdPr Me
  loc_A63AAC: MemLdStr global_108
  loc_A63AAF: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A63AB4: IStI2 arg_C
  loc_A63AB7: FFreeAd var_88 = ""
  loc_A63ABE: ExitProcHresult
End Function

Private Sub FeenAcpaMsk_KeyPress(KeyAscii As Integer) 'A2457C
  'Data Table: 470588
  loc_A24534: ILdI2 KeyAscii
  loc_A24537: CI4UI1
  loc_A24538: LitI4 &H20
  loc_A2453D: EqI4
  loc_A2453E: BranchF loc_A2457B
  loc_A24541: LitVar_Missing var_A4
  loc_A24544: PopAdLdVar
  loc_A24545: LitVarI4
  loc_A2454D: PopAdLdVar
  loc_A2454E: ImpAdLdRf MemVar_D930A4
  loc_A24551: NewIfNullPr frmCalendario
  loc_A24554: frmCalendario.Show from_stack_1, from_stack_2
  loc_A24559: ImpAdLdRf MemVar_D93028
  loc_A2455C: CDargRef
  loc_A24560: FLdPr Me
  loc_A24563: VCallAd Control_ID_FeenAcpaMsk
  loc_A24566: FStAdFunc var_A8
  loc_A24569: FLdPr var_A8
  loc_A2456C: LateIdSt
  loc_A24571: FFree1Ad var_A8
  loc_A24574: LitStr vbNullString
  loc_A24577: ImpAdStStrCopy MemVar_D93028
  loc_A2457B: ExitProcHresult
End Sub

Private Sub NumeAcpaMsk_UnknownEvent_0 '9C7D78
  'Data Table: 470588
  loc_9C7D64: FLdPr Me
  loc_9C7D67: VCallAd Control_ID_NumeAcpaMsk
  loc_9C7D6A: CVarAd
  loc_9C7D6E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C7D73: FFree1Var var_94 = ""
  loc_9C7D76: ExitProcHresult
End Sub

Private Sub NumeAcpaMsk_UnknownEvent_8 'A720DC
  'Data Table: 470588
  loc_A72074: FLdPr Me
  loc_A72077: VCallAd Control_ID_NumeAcpaMsk
  loc_A7207A: FStAdFunc var_88
  loc_A7207D: FLdPr var_88
  loc_A72080: LateIdLdVar var_98 DispID_22 0
  loc_A72087: PopAd
  loc_A72089: LitI2_Byte 0
  loc_A7208B: LitI2_Byte 0
  loc_A7208D: FLdRfVar var_98
  loc_A72090: CStrVarTmp
  loc_A72091: FStStrNoPop var_9C
  loc_A72094: LitStr "Código de Servicio"
  loc_A72097: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A7209C: FStStrNoPop var_A0
  loc_A7209F: FLdPr Me
  loc_A720A2: MemStStrCopy
  loc_A720A6: FFreeStr var_9C = ""
  loc_A720AD: FFree1Ad var_88
  loc_A720B0: FFree1Var var_98 = ""
  loc_A720B3: FLdPr Me
  loc_A720B6: VCallAd Control_ID_NumeAcpaMsk
  loc_A720B9: FStAdFuncNoPop
  loc_A720BC: CastAd
  loc_A720BF: FStAdFunc var_A4
  loc_A720C2: FLdRfVar var_A4
  loc_A720C5: FLdPr Me
  loc_A720C8: MemLdStr global_108
  loc_A720CB: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A720D0: IStI2 KeyAscii
  loc_A720D3: FFreeAd var_88 = ""
  loc_A720DA: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9C8254
  'Data Table: 470588
  loc_9C823C: ILdRf Me
  loc_9C823F: CastAd
  loc_9C8242: FStAdFunc var_88
  loc_9C8245: FLdRfVar var_88
  loc_9C8248: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9C824D: FFree1Ad var_88
  loc_9C8250: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A773D0
  'Data Table: 470588
  loc_A77354: LitI2_Byte 0
  loc_A77356: FLdPr Me
  loc_A77359: MemStI2 bGenerado
  loc_A7735C: LitI2_Byte 0
  loc_A7735E: ILdRf Me
  loc_A77361: CastAd
  loc_A77364: FStAdFunc var_88
  loc_A77367: FLdRfVar var_88
  loc_A7736A: ImpAdCallFPR4  = Proc_272_46_B065FC()
  loc_A7736F: FFree1Ad var_88
  loc_A77372: LitI2_Byte 0
  loc_A77374: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_A77379: CStrDate
  loc_A7737B: CVarStr var_98
  loc_A7737E: PopAdLdVar
  loc_A7737F: FLdPr Me
  loc_A77382: VCallAd Control_ID_FeenAcpaMsk
  loc_A77385: FStAdFunc var_88
  loc_A77388: FLdPr var_88
  loc_A7738B: LateIdSt
  loc_A77390: FFree1Ad var_88
  loc_A77393: FFree1Var var_98 = ""
  loc_A77396: LitI2_Byte 0
  loc_A77398: CStrUI1
  loc_A7739A: CVarStr var_98
  loc_A7739D: PopAdLdVar
  loc_A7739E: FLdPr Me
  loc_A773A1: VCallAd Control_ID_NumeAcpaMsk
  loc_A773A4: FStAdFunc var_88
  loc_A773A7: FLdPr var_88
  loc_A773AA: LateIdSt
  loc_A773AF: FFree1Ad var_88
  loc_A773B2: FFree1Var var_98 = ""
  loc_A773B5: Call HabilitarCriterio()
  loc_A773BA: ILdRf Me
  loc_A773BD: CastAd
  loc_A773C0: FStAdFunc var_88
  loc_A773C3: FLdRfVar var_88
  loc_A773C6: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A773CB: FFree1Ad var_88
  loc_A773CE: ExitProcHresult
End Sub

Private Sub Form_Load() '9DD26C
  'Data Table: 470588
  loc_9DD250: ILdRf Me
  loc_9DD253: CastAd
  loc_9DD256: FStAdFunc var_88
  loc_9DD259: FLdRfVar var_88
  loc_9DD25C: ImpAdCallFPR4  = Proc_272_43_A93498()
  loc_9DD261: FFree1Ad var_88
  loc_9DD264: Call cmdNueva_Click()
  loc_9DD269: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CA510
  'Data Table: 470588
  loc_9CA4F8: FLdPr Me
  loc_9CA4FB: VCallAd Control_ID_wbbReporte
  loc_9CA4FE: FStAdFunc var_88
  loc_9CA501: FLdRfVar var_88
  loc_9CA504: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CA509: FFree1Ad var_88
  loc_9CA50C: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DF51C
  'Data Table: 470588
  loc_9DF500: LitI2_Byte 0
  loc_9DF502: PopTmpLdAd2 var_8A
  loc_9DF505: ILdRf Me
  loc_9DF508: CastAd
  loc_9DF50B: FStAdFunc var_88
  loc_9DF50E: FLdRfVar var_88
  loc_9DF511: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DF516: FFree1Ad var_88
  loc_9DF519: ExitProcHresult
  loc_9DF51A: ExitProcI2
End Sub

Private Sub cmdSalir_Click() 'A027C0
  'Data Table: 470588
  loc_A02790: LitVarStr var_94, "Cerrando..."
  loc_A02795: PopAdLdVar
  loc_A02796: FLdPr Me
  loc_A02799: VCallAd Control_ID_statusBar
  loc_A0279C: FStAdFunc var_A8
  loc_A0279F: FLdPr var_A8
  loc_A027A2: LateIdSt
  loc_A027A7: FFree1Ad var_A8
  loc_A027AA: ILdRf Me
  loc_A027AD: FStAdNoPop
  loc_A027B1: ImpAdLdRf MemVar_D9C5D8
  loc_A027B4: NewIfNullPr Global
  loc_A027B7: Global.Unload from_stack_1
  loc_A027BC: FFree1Ad var_A8
  loc_A027BF: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A12F88
  'Data Table: 470588
  loc_A12F50: FLdPr Me
  loc_A12F53: VCallAd Control_ID_statusBar
  loc_A12F56: FStAdFunc var_88
  loc_A12F59: FLdPr var_88
  loc_A12F5C: LateIdLdVar var_98 DispID_1 0
  loc_A12F63: CStrVarTmp
  loc_A12F64: CVarStr var_A8
  loc_A12F67: PopAdLdVar
  loc_A12F68: FLdPr Me
  loc_A12F6B: VCallAd Control_ID_statusBar
  loc_A12F6E: FStAdFunc var_BC
  loc_A12F71: FLdPr var_BC
  loc_A12F74: LateIdSt
  loc_A12F79: FFreeAd var_88 = ""
  loc_A12F80: FFreeVar var_98 = ""
  loc_A12F87: ExitProcHresult
End Sub

Public Function bGeneradoGet() '4711B8
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '4711C7
  bGenerado = Value
End Sub

Public Function bLogosGet() '4711D6
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '4711E5
  bLogos = Value
End Sub

Public Sub HabilitarCriterio() 'A42450
  'Data Table: 470588
  loc_A4240C: LitI4 0
  loc_A42411: LitI4 1
  loc_A42416: FLdRfVar var_88
  loc_A42419: Redim
  loc_A42423: FLdPr Me
  loc_A42426: VCallAd Control_ID_FeenAcpaMsk
  loc_A42429: CVarAd
  loc_A4242D: ParmAry1St
  loc_A42433: FLdPr Me
  loc_A42436: VCallAd Control_ID_NumeAcpaMsk
  loc_A42439: CVarAd
  loc_A4243D: ParmAry1St
  loc_A42443: FLdRfVar var_88
  loc_A42446: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A4244B: FLdRfVar var_88
  loc_A4244E: Erase
  loc_A4244F: ExitProcHresult
End Sub

Public Sub GeneraXLS() '9C69CC
  'Data Table: 470588
  loc_9C69B4: LitI2_Byte 0
  loc_9C69B6: FLdPr Me
  loc_9C69B9: MemStI2 bLogos
  loc_9C69BC: Call GeneraHTML()
  loc_9C69C1: LitI2_Byte &HFF
  loc_9C69C3: FLdPr Me
  loc_9C69C6: MemStI2 bLogos
  loc_9C69C9: ExitProcHresult
  loc_9C69CA: FnAbsI2
End Sub

Public Sub GeneraReporte() 'B63C80
  'Data Table: 470588
  loc_B63874: FLdPr Me
  loc_B63877: MemLdI2 bGenerado
  loc_B6387A: BranchF loc_B6387E
  loc_B6387D: ExitProcHresult
  loc_B6387E: LitVarStr var_94, "Generando reporte..."
  loc_B63883: PopAdLdVar
  loc_B63884: FLdPr Me
  loc_B63887: VCallAd Control_ID_statusBar
  loc_B6388A: FStAdFunc var_A8
  loc_B6388D: FLdPr var_A8
  loc_B63890: LateIdSt
  loc_B63895: FFree1Ad var_A8
  loc_B63898: LitI4 &HB
  loc_B6389D: CI2I4
  loc_B6389E: FLdPr Me
  loc_B638A1: Me.MousePointer = from_stack_1
  loc_B638A6: LitI2_Byte 0
  loc_B638A8: PopTmpLdAd2 var_AA
  loc_B638AB: from_stack_2v = FeenAcpaMsk_UnknownEvent_8(from_stack_1v)
  loc_B638B0: FLdPr Me
  loc_B638B3: MemLdStr global_108
  loc_B638B6: LitStr vbNullString
  loc_B638B9: NeStr
  loc_B638BB: BranchF loc_B638C1
  loc_B638BE: Branch loc_B63C56
  loc_B638C1: LitI2_Byte 0
  loc_B638C3: PopTmpLdAd2 var_AA
  loc_B638C6: Call NumeAcpaMsk_UnknownEvent_8()
  loc_B638CB: FLdPr Me
  loc_B638CE: MemLdStr global_108
  loc_B638D1: LitStr vbNullString
  loc_B638D4: NeStr
  loc_B638D6: BranchF loc_B638DC
  loc_B638D9: Branch loc_B63C56
  loc_B638DC: FLdPr Me
  loc_B638DF: MemLdRfVar from_stack_1.global_92
  loc_B638E2: NewIfNullAd
  loc_B638E5: FStAd var_B0 
  loc_B638E9: FLdPr Me
  loc_B638EC: VCallAd Control_ID_FeenAcpaMsk
  loc_B638EF: FStAdFunc var_A8
  loc_B638F2: FLdPr var_A8
  loc_B638F5: LateIdLdVar var_D4 DispID_15 0
  loc_B638FC: PopAd
  loc_B638FE: LitStr "SELECT archdeta.*, acrepago.NoarAcpa FROM acrepago"
  loc_B63901: LitStr " INNER JOIN archdeta ON archdeta.NumeArch = acrepago.NumeArch"
  loc_B63904: ConcatStr
  loc_B63905: FStStrNoPop var_B4
  loc_B63908: LitStr " LEFT JOIN pago ON pago.FeenAcpa = acrepago.FeenAcpa"
  loc_B6390B: ConcatStr
  loc_B6390C: FStStrNoPop var_B8
  loc_B6390F: LitStr " AND pago.NumeAcpa = acrepago.NumeAcpa"
  loc_B63912: ConcatStr
  loc_B63913: FStStrNoPop var_BC
  loc_B63916: LitStr " AND pago.NumeArch = archdeta.NumeArch"
  loc_B63919: ConcatStr
  loc_B6391A: FStStrNoPop var_C0
  loc_B6391D: LitStr " AND pago.NumeArde = archdeta.NumeArde"
  loc_B63920: ConcatStr
  loc_B63921: FStStrNoPop var_C4
  loc_B63924: LitStr " WHERE acrepago.FeenAcpa = "
  loc_B63927: ConcatStr
  loc_B63928: FStStrNoPop var_F8
  loc_B6392B: LitI4 1
  loc_B63930: LitI4 1
  loc_B63935: LitVarStr var_94, "'yyyy-mm-dd'"
  loc_B6393A: FStVarCopyObj var_F4
  loc_B6393D: FLdRfVar var_F4
  loc_B63940: FLdRfVar var_D4
  loc_B63943: CStrVarTmp
  loc_B63944: CVarStr var_E4
  loc_B63947: ImpAdCallI2 Format$(, )
  loc_B6394C: FStStrNoPop var_FC
  loc_B6394F: ConcatStr
  loc_B63950: FStStrNoPop var_100
  loc_B63953: LitStr " AND acrepago.NumeAcpa = "
  loc_B63956: ConcatStr
  loc_B63957: FStStrNoPop var_118
  loc_B6395A: FLdPr Me
  loc_B6395D: VCallAd Control_ID_NumeAcpaMsk
  loc_B63960: FStAdFunc var_104
  loc_B63963: FLdPr var_104
  loc_B63966: LateIdLdVar var_114 DispID_22 0
  loc_B6396D: CStrVarTmp
  loc_B6396E: FStStrNoPop var_11C
  loc_B63971: ConcatStr
  loc_B63972: FStStrNoPop var_120
  loc_B63975: LitStr " AND pago.FeenAcpa IS NULL"
  loc_B63978: ConcatStr
  loc_B63979: FStStrNoPop var_124
  loc_B6397C: FLdPr var_B0
  loc_B6397F: Call clsctacte.RedefineRS(from_stack_1v)
  loc_B63984: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_F8 = "": var_FC = "": var_100 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_B6399F: FFreeAd var_A8 = ""
  loc_B639A6: FFreeVar var_D4 = "": var_E4 = "": var_F4 = ""
  loc_B639B1: FLdRfVar var_128
  loc_B639B4: FLdPr var_B0
  loc_B639B7: from_stack_1 = clsctacte.RecordCount
  loc_B639BC: ILdRf var_128
  loc_B639BF: LitI4 0
  loc_B639C4: EqI4
  loc_B639C5: BranchF loc_B639D3
  loc_B639C8: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B639CB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B639D0: Branch loc_B63C56
  loc_B639D3: LitI4 0
  loc_B639D8: LitI4 1
  loc_B639DD: FLdPr Me
  loc_B639E0: MemLdRfVar from_stack_1.global_96
  loc_B639E3: Redim
  loc_B639ED: LitI4 0
  loc_B639F2: FLdRfVar var_128
  loc_B639F5: FLdPr var_B0
  loc_B639F8: from_stack_1 = clsctacte.RecordCount
  loc_B639FD: ILdRf var_128
  loc_B63A00: FLdPr Me
  loc_B63A03: MemLdRfVar from_stack_1.global_100
  loc_B63A06: Redim
  loc_B63A10: FLdPr var_B0
  loc_B63A13: Call clsctacte.MoveFirst()
  loc_B63A18: LitI4 1
  loc_B63A1D: FLdPr Me
  loc_B63A20: MemLdRfVar from_stack_1.global_104
  loc_B63A23: FLdPr Me
  loc_B63A26: MemLdStr global_100
  loc_B63A29: LitI2_Byte 1
  loc_B63A2B: FnUBound
  loc_B63A2D: ForI4 var_130
  loc_B63A33: FLdRfVar var_134
  loc_B63A36: LitVarStr var_94, "NoarAcpa"
  loc_B63A3B: PopAdLdVar
  loc_B63A3C: FLdRfVar var_104
  loc_B63A3F: FLdRfVar var_A8
  loc_B63A42: FLdPr var_B0
  loc_B63A45: from_stack_1v = clsctacte.RsFrmGet()
  loc_B63A4A: FLdPr var_A8
  loc_B63A4D:  = Me.Fields
  loc_B63A52: FLdPr var_104
  loc_B63A55: from_stack_2 = Me.Item(from_stack_1)
  loc_B63A5A: LitI2_Byte 0
  loc_B63A5C: LitVar_Missing var_E4
  loc_B63A5F: LitI2_Byte 0
  loc_B63A61: FLdZeroAd var_134
  loc_B63A64: CVarAd
  loc_B63A68: PopAdLdVar
  loc_B63A69: FLdPr Me
  loc_B63A6C: MemLdStr global_104
  loc_B63A6F: FLdPr Me
  loc_B63A72: MemLdStr global_100
  loc_B63A75: AryLock
  loc_B63A78: Ary1LdPr
  loc_B63A79: MemLdRfVar from_stack_1.global_0
  loc_B63A7C: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B63A81: AryUnlock
  loc_B63A84: FFreeAd var_A8 = ""
  loc_B63A8B: FFreeVar var_D4 = ""
  loc_B63A92: FLdRfVar var_134
  loc_B63A95: LitVarStr var_94, "PeriBole"
  loc_B63A9A: PopAdLdVar
  loc_B63A9B: FLdRfVar var_104
  loc_B63A9E: FLdRfVar var_A8
  loc_B63AA1: FLdPr var_B0
  loc_B63AA4: from_stack_1v = clsctacte.RsFrmGet()
  loc_B63AA9: FLdPr var_A8
  loc_B63AAC:  = Me.Fields
  loc_B63AB1: FLdPr var_104
  loc_B63AB4: from_stack_2 = Me.Item(from_stack_1)
  loc_B63AB9: LitI2_Byte 0
  loc_B63ABB: LitVar_Missing var_E4
  loc_B63ABE: LitI2_Byte 0
  loc_B63AC0: FLdZeroAd var_134
  loc_B63AC3: CVarAd
  loc_B63AC7: PopAdLdVar
  loc_B63AC8: FLdPr Me
  loc_B63ACB: MemLdStr global_104
  loc_B63ACE: FLdPr Me
  loc_B63AD1: MemLdStr global_100
  loc_B63AD4: AryLock
  loc_B63AD7: Ary1LdPr
  loc_B63AD8: MemLdRfVar from_stack_1.global_4
  loc_B63ADB: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B63AE0: AryUnlock
  loc_B63AE3: FFreeAd var_A8 = ""
  loc_B63AEA: FFreeVar var_D4 = ""
  loc_B63AF1: FLdRfVar var_134
  loc_B63AF4: LitVarStr var_94, "NumeBole"
  loc_B63AF9: PopAdLdVar
  loc_B63AFA: FLdRfVar var_104
  loc_B63AFD: FLdRfVar var_A8
  loc_B63B00: FLdPr var_B0
  loc_B63B03: from_stack_1v = clsctacte.RsFrmGet()
  loc_B63B08: FLdPr var_A8
  loc_B63B0B:  = Me.Fields
  loc_B63B10: FLdPr var_104
  loc_B63B13: from_stack_2 = Me.Item(from_stack_1)
  loc_B63B18: LitI2_Byte 0
  loc_B63B1A: LitVar_Missing var_E4
  loc_B63B1D: LitI2_Byte 0
  loc_B63B1F: FLdZeroAd var_134
  loc_B63B22: CVarAd
  loc_B63B26: PopAdLdVar
  loc_B63B27: FLdPr Me
  loc_B63B2A: MemLdStr global_104
  loc_B63B2D: FLdPr Me
  loc_B63B30: MemLdStr global_100
  loc_B63B33: AryLock
  loc_B63B36: Ary1LdPr
  loc_B63B37: MemLdRfVar from_stack_1.global_8
  loc_B63B3A: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B63B3F: AryUnlock
  loc_B63B42: FFreeAd var_A8 = ""
  loc_B63B49: FFreeVar var_D4 = ""
  loc_B63B50: FLdRfVar var_134
  loc_B63B53: LitVarStr var_94, "DatoArde"
  loc_B63B58: PopAdLdVar
  loc_B63B59: FLdRfVar var_104
  loc_B63B5C: FLdRfVar var_A8
  loc_B63B5F: FLdPr var_B0
  loc_B63B62: from_stack_1v = clsctacte.RsFrmGet()
  loc_B63B67: FLdPr var_A8
  loc_B63B6A:  = Me.Fields
  loc_B63B6F: FLdPr var_104
  loc_B63B72: from_stack_2 = Me.Item(from_stack_1)
  loc_B63B77: LitI2_Byte 0
  loc_B63B79: LitVar_Missing var_E4
  loc_B63B7C: LitI2_Byte 0
  loc_B63B7E: FLdZeroAd var_134
  loc_B63B81: CVarAd
  loc_B63B85: PopAdLdVar
  loc_B63B86: FLdPr Me
  loc_B63B89: MemLdStr global_104
  loc_B63B8C: FLdPr Me
  loc_B63B8F: MemLdStr global_100
  loc_B63B92: AryLock
  loc_B63B95: Ary1LdPr
  loc_B63B96: MemLdRfVar from_stack_1.global_12
  loc_B63B99: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B63B9E: AryUnlock
  loc_B63BA1: FFreeAd var_A8 = ""
  loc_B63BA8: FFreeVar var_D4 = ""
  loc_B63BAF: FLdRfVar var_D4
  loc_B63BB2: FLdRfVar var_134
  loc_B63BB5: LitVarStr var_94, "ImpoArde"
  loc_B63BBA: PopAdLdVar
  loc_B63BBB: FLdRfVar var_104
  loc_B63BBE: FLdRfVar var_A8
  loc_B63BC1: FLdPr var_B0
  loc_B63BC4: from_stack_1v = clsctacte.RsFrmGet()
  loc_B63BC9: FLdPr var_A8
  loc_B63BCC:  = Me.Fields
  loc_B63BD1: FLdPr var_104
  loc_B63BD4: from_stack_2 = Me.Item(from_stack_1)
  loc_B63BD9: FLdPr var_134
  loc_B63BDC:  = Me.Value
  loc_B63BE1: LitI2_Byte 0
  loc_B63BE3: LitI4 1
  loc_B63BE8: FLdPr Me
  loc_B63BEB: MemLdStr global_96
  loc_B63BEE: AryLock
  loc_B63BF1: Ary1LdPr
  loc_B63BF2: MemLdRfVar from_stack_1.global_16
  loc_B63BF5: CVarRef
  loc_B63BFA: LitI2_Byte &HFF
  loc_B63BFC: FLdRfVar var_D4
  loc_B63BFF: FnCDblVar
  loc_B63C01: CVarR8
  loc_B63C05: PopAdLdVar
  loc_B63C06: FLdPr Me
  loc_B63C09: MemLdStr global_104
  loc_B63C0C: FLdPr Me
  loc_B63C0F: MemLdStr global_100
  loc_B63C12: AryLock
  loc_B63C15: Ary1LdPr
  loc_B63C16: MemLdRfVar from_stack_1.global_16
  loc_B63C19: ImpAdCallFPR4  = Proc_272_22_AE2660()
  loc_B63C1E: AryUnlock
  loc_B63C21: AryUnlock
  loc_B63C24: FFreeAd var_A8 = "": var_104 = ""
  loc_B63C2D: FFree1Var var_D4 = ""
  loc_B63C30: LitI2_Byte 1
  loc_B63C32: PopTmpLdAd2 var_AA
  loc_B63C35: FLdPr var_B0
  loc_B63C38: Call clsctacte.Move(from_stack_1v)
  loc_B63C3D: FLdPr Me
  loc_B63C40: MemLdRfVar from_stack_1.global_104
  loc_B63C43: NextI4 var_130, loc_B63A33
  loc_B63C48: LitNothing
  loc_B63C4A: FStAd var_B0 
  loc_B63C4E: LitI2_Byte &HFF
  loc_B63C50: FLdPr Me
  loc_B63C53: MemStI2 bGenerado
  loc_B63C56: LitI4 0
  loc_B63C5B: CI2I4
  loc_B63C5C: FLdPr Me
  loc_B63C5F: Me.MousePointer = from_stack_1
  loc_B63C64: LitVarStr var_94, vbNullString
  loc_B63C69: PopAdLdVar
  loc_B63C6A: FLdPr Me
  loc_B63C6D: VCallAd Control_ID_statusBar
  loc_B63C70: FStAdFunc var_A8
  loc_B63C73: FLdPr var_A8
  loc_B63C76: LateIdSt
  loc_B63C7B: FFree1Ad var_A8
  loc_B63C7E: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B2B72C
  'Data Table: 470588
  loc_B2B474: FLdRfVar var_88
  loc_B2B477: LitI2_Byte 0
  loc_B2B479: LitI2_Byte &HFF
  loc_B2B47B: ImpAdLdI4 MemVar_D93C84
  loc_B2B47E: FLdPr Me
  loc_B2B481: MemLdRfVar from_stack_1.global_56
  loc_B2B484: NewIfNullPr IFileSystem3
  loc_B2B487: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B2B48C: ILdRf var_88
  loc_B2B48F: FLdPr Me
  loc_B2B492: MemStVarAd
  loc_B2B496: FFree1Ad var_88
  loc_B2B499: LitI2_Byte &HFF
  loc_B2B49B: ImpAdStI2 MemVar_D93C8A
  loc_B2B49E: Call Proc_315_23_BBD910()
  loc_B2B4A3: LitI4 1
  loc_B2B4A8: FLdPr Me
  loc_B2B4AB: MemLdRfVar from_stack_1.global_104
  loc_B2B4AE: FLdPr Me
  loc_B2B4B1: MemLdStr global_100
  loc_B2B4B4: LitI2_Byte 1
  loc_B2B4B6: FnUBound
  loc_B2B4B8: ForI4 var_90
  loc_B2B4BE: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B2B4C3: PopAdLdVar
  loc_B2B4C4: FLdPr Me
  loc_B2B4C7: MemLdRfVar from_stack_1.global_60
  loc_B2B4CA: LdPrVar
  loc_B2B4CC: LateMemCall
  loc_B2B4D2: FLdPr Me
  loc_B2B4D5: MemLdStr global_104
  loc_B2B4D8: FLdPr Me
  loc_B2B4DB: MemLdStr global_100
  loc_B2B4DE: AryLock
  loc_B2B4E1: Ary1LdRf
  loc_B2B4E2: FStR4 var_B8
  loc_B2B4E5: LitStr vbNullString
  loc_B2B4E8: LitI2_Byte 0
  loc_B2B4EA: LitI2_Byte 0
  loc_B2B4EC: LitI2_Byte 0
  loc_B2B4EE: LitStr "left"
  loc_B2B4F1: FMemLdR4 var_B8(0)
  loc_B2B4F6: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B4FB: CVarStr var_C8
  loc_B2B4FE: PopAdLdVar
  loc_B2B4FF: FLdPr Me
  loc_B2B502: MemLdRfVar from_stack_1.global_60
  loc_B2B505: LdPrVar
  loc_B2B507: LateMemCall
  loc_B2B50D: FFree1Var var_C8 = ""
  loc_B2B510: LitStr vbNullString
  loc_B2B513: LitI2_Byte 0
  loc_B2B515: LitI2_Byte 0
  loc_B2B517: LitI2_Byte 0
  loc_B2B519: LitStr "center"
  loc_B2B51C: FMemLdR4 var_B8(4)
  loc_B2B521: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B526: CVarStr var_C8
  loc_B2B529: PopAdLdVar
  loc_B2B52A: FLdPr Me
  loc_B2B52D: MemLdRfVar from_stack_1.global_60
  loc_B2B530: LdPrVar
  loc_B2B532: LateMemCall
  loc_B2B538: FFree1Var var_C8 = ""
  loc_B2B53B: LitStr vbNullString
  loc_B2B53E: LitI2_Byte 0
  loc_B2B540: LitI2_Byte 0
  loc_B2B542: LitI2_Byte 0
  loc_B2B544: LitStr "right"
  loc_B2B547: FMemLdR4 var_B8(8)
  loc_B2B54C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B551: CVarStr var_C8
  loc_B2B554: PopAdLdVar
  loc_B2B555: FLdPr Me
  loc_B2B558: MemLdRfVar from_stack_1.global_60
  loc_B2B55B: LdPrVar
  loc_B2B55D: LateMemCall
  loc_B2B563: FFree1Var var_C8 = ""
  loc_B2B566: LitStr vbNullString
  loc_B2B569: LitI2_Byte 0
  loc_B2B56B: LitI2_Byte 0
  loc_B2B56D: LitI2_Byte 0
  loc_B2B56F: LitStr "left"
  loc_B2B572: FMemLdR4 var_B8(12)
  loc_B2B577: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B57C: CVarStr var_C8
  loc_B2B57F: PopAdLdVar
  loc_B2B580: FLdPr Me
  loc_B2B583: MemLdRfVar from_stack_1.global_60
  loc_B2B586: LdPrVar
  loc_B2B588: LateMemCall
  loc_B2B58E: FFree1Var var_C8 = ""
  loc_B2B591: LitStr vbNullString
  loc_B2B594: LitI2_Byte 0
  loc_B2B596: LitI2_Byte 0
  loc_B2B598: LitI2_Byte 0
  loc_B2B59A: LitStr "right"
  loc_B2B59D: FMemLdR4 var_B8(16)
  loc_B2B5A2: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B5A7: CVarStr var_C8
  loc_B2B5AA: PopAdLdVar
  loc_B2B5AB: FLdPr Me
  loc_B2B5AE: MemLdRfVar from_stack_1.global_60
  loc_B2B5B1: LdPrVar
  loc_B2B5B3: LateMemCall
  loc_B2B5B9: FFree1Var var_C8 = ""
  loc_B2B5BC: LitI4 0
  loc_B2B5C1: FStR4 var_B8
  loc_B2B5C4: AryUnlock
  loc_B2B5C7: LitVarStr var_A0, "     </tr>"
  loc_B2B5CC: PopAdLdVar
  loc_B2B5CD: FLdPr Me
  loc_B2B5D0: MemLdRfVar from_stack_1.global_60
  loc_B2B5D3: LdPrVar
  loc_B2B5D5: LateMemCall
  loc_B2B5DB: FLdPr Me
  loc_B2B5DE: MemLdRfVar from_stack_1.global_104
  loc_B2B5E1: NextI4 var_90, loc_B2B4BE
  loc_B2B5E6: LitVarStr var_A0, "  <tr align=""center"" class=""Totales"">"
  loc_B2B5EB: PopAdLdVar
  loc_B2B5EC: FLdPr Me
  loc_B2B5EF: MemLdRfVar from_stack_1.global_60
  loc_B2B5F2: LdPrVar
  loc_B2B5F4: LateMemCall
  loc_B2B5FA: LitStr "    <th colspan=""4"">"
  loc_B2B5FD: LitI4 -1
  loc_B2B602: LitI4 0
  loc_B2B607: LitI4 -1
  loc_B2B60C: LitI4 0
  loc_B2B611: FLdPr Me
  loc_B2B614: MemLdStr global_100
  loc_B2B617: LitI2_Byte 1
  loc_B2B619: FnUBound
  loc_B2B61B: CVarI4
  loc_B2B61F: ImpAdCallI2 FormatNumber(, , , , )
  loc_B2B624: FStStrNoPop var_CC
  loc_B2B627: ConcatStr
  loc_B2B628: FStStrNoPop var_D0
  loc_B2B62B: LitStr " registro"
  loc_B2B62E: ConcatStr
  loc_B2B62F: CVarStr var_130
  loc_B2B632: LitVarStr var_100, vbNullString
  loc_B2B637: FStVarCopyObj var_110
  loc_B2B63A: FLdRfVar var_110
  loc_B2B63D: LitVarStr var_E0, "s"
  loc_B2B642: FStVarCopyObj var_F0
  loc_B2B645: FLdRfVar var_F0
  loc_B2B648: FLdPr Me
  loc_B2B64B: MemLdStr global_100
  loc_B2B64E: LitI2_Byte 1
  loc_B2B650: FnUBound
  loc_B2B652: LitI4 1
  loc_B2B657: GtI4
  loc_B2B658: CVarBoolI2 var_B0
  loc_B2B65C: FLdRfVar var_120
  loc_B2B65F: ImpAdCallFPR4  = IIf(, , )
  loc_B2B664: FLdRfVar var_120
  loc_B2B667: ConcatVar var_140
  loc_B2B66B: LitVarStr var_150, ".</th>"
  loc_B2B670: ConcatVar var_160
  loc_B2B674: PopAdLdVar
  loc_B2B675: FLdPr Me
  loc_B2B678: MemLdRfVar from_stack_1.global_60
  loc_B2B67B: LdPrVar
  loc_B2B67D: LateMemCall
  loc_B2B683: FFreeStr var_CC = ""
  loc_B2B68A: FFreeVar var_C8 = "": var_B0 = "": var_F0 = "": var_110 = "": var_130 = "": var_120 = "": var_140 = ""
  loc_B2B69D: LitI4 1
  loc_B2B6A2: FLdPr Me
  loc_B2B6A5: MemLdStr global_96
  loc_B2B6A8: AryLock
  loc_B2B6AB: Ary1LdRf
  loc_B2B6AC: FStR4 var_178
  loc_B2B6AF: LitStr vbNullString
  loc_B2B6B2: LitI2_Byte 0
  loc_B2B6B4: LitI2_Byte 0
  loc_B2B6B6: LitI2_Byte 0
  loc_B2B6B8: LitStr "right"
  loc_B2B6BB: FMemLdR4 var_178(16)
  loc_B2B6C0: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B2B6C5: CVarStr var_C8
  loc_B2B6C8: PopAdLdVar
  loc_B2B6C9: FLdPr Me
  loc_B2B6CC: MemLdRfVar from_stack_1.global_60
  loc_B2B6CF: LdPrVar
  loc_B2B6D1: LateMemCall
  loc_B2B6D7: FFree1Var var_C8 = ""
  loc_B2B6DA: LitI4 0
  loc_B2B6DF: FStR4 var_178
  loc_B2B6E2: AryUnlock
  loc_B2B6E5: LitVarStr var_A0, "  </tr>"
  loc_B2B6EA: PopAdLdVar
  loc_B2B6EB: FLdPr Me
  loc_B2B6EE: MemLdRfVar from_stack_1.global_60
  loc_B2B6F1: LdPrVar
  loc_B2B6F3: LateMemCall
  loc_B2B6F9: LitVarStr var_A0, "     </tr>"
  loc_B2B6FE: PopAdLdVar
  loc_B2B6FF: FLdPr Me
  loc_B2B702: MemLdRfVar from_stack_1.global_60
  loc_B2B705: LdPrVar
  loc_B2B707: LateMemCall
  loc_B2B70D: Call Proc_315_24_A0F548()
  loc_B2B712: FLdPr Me
  loc_B2B715: MemLdRfVar from_stack_1.global_60
  loc_B2B718: LdPrVar
  loc_B2B71A: LateMemCall
  loc_B2B720: LitStr vbNullString
  loc_B2B723: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B2B728: ExitProcHresult
End Sub

Public Sub GeneraTXT() '9AED9C
  'Data Table: 470588
  loc_9AED98: ExitProcHresult
End Sub

Private Function Proc_315_23_BBD910() 'BBD910
  'Data Table: 470588
  loc_BBD264: LitVarStr var_94, "<html>"
  loc_BBD269: PopAdLdVar
  loc_BBD26A: FLdPr Me
  loc_BBD26D: MemLdRfVar from_stack_1.global_60
  loc_BBD270: LdPrVar
  loc_BBD272: LateMemCall
  loc_BBD278: LitVarStr var_94, "<head>"
  loc_BBD27D: PopAdLdVar
  loc_BBD27E: FLdPr Me
  loc_BBD281: MemLdRfVar from_stack_1.global_60
  loc_BBD284: LdPrVar
  loc_BBD286: LateMemCall
  loc_BBD28C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BBD291: PopAdLdVar
  loc_BBD292: FLdPr Me
  loc_BBD295: MemLdRfVar from_stack_1.global_60
  loc_BBD298: LdPrVar
  loc_BBD29A: LateMemCall
  loc_BBD2A0: LitStr "<title>"
  loc_BBD2A3: FLdRfVar var_A8
  loc_BBD2A6: FLdPr Me
  loc_BBD2A9:  = Me.Caption
  loc_BBD2AE: ILdRf var_A8
  loc_BBD2B1: ConcatStr
  loc_BBD2B2: FStStrNoPop var_AC
  loc_BBD2B5: LitStr "</title>"
  loc_BBD2B8: ConcatStr
  loc_BBD2B9: CVarStr var_BC
  loc_BBD2BC: PopAdLdVar
  loc_BBD2BD: FLdPr Me
  loc_BBD2C0: MemLdRfVar from_stack_1.global_60
  loc_BBD2C3: LdPrVar
  loc_BBD2C5: LateMemCall
  loc_BBD2CB: FFreeStr var_A8 = ""
  loc_BBD2D2: FFree1Var var_BC = ""
  loc_BBD2D5: LitVarStr var_94, "<style type=""text/css"">"
  loc_BBD2DA: PopAdLdVar
  loc_BBD2DB: FLdPr Me
  loc_BBD2DE: MemLdRfVar from_stack_1.global_60
  loc_BBD2E1: LdPrVar
  loc_BBD2E3: LateMemCall
  loc_BBD2E9: LitVarStr var_94, ".Titulo1 {"
  loc_BBD2EE: PopAdLdVar
  loc_BBD2EF: FLdPr Me
  loc_BBD2F2: MemLdRfVar from_stack_1.global_60
  loc_BBD2F5: LdPrVar
  loc_BBD2F7: LateMemCall
  loc_BBD2FD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBD302: PopAdLdVar
  loc_BBD303: FLdPr Me
  loc_BBD306: MemLdRfVar from_stack_1.global_60
  loc_BBD309: LdPrVar
  loc_BBD30B: LateMemCall
  loc_BBD311: LitVarStr var_94, " font-size: 18px;"
  loc_BBD316: PopAdLdVar
  loc_BBD317: FLdPr Me
  loc_BBD31A: MemLdRfVar from_stack_1.global_60
  loc_BBD31D: LdPrVar
  loc_BBD31F: LateMemCall
  loc_BBD325: LitVarStr var_94, " font-weight: bold;"
  loc_BBD32A: PopAdLdVar
  loc_BBD32B: FLdPr Me
  loc_BBD32E: MemLdRfVar from_stack_1.global_60
  loc_BBD331: LdPrVar
  loc_BBD333: LateMemCall
  loc_BBD339: LitVarStr var_94, "}"
  loc_BBD33E: PopAdLdVar
  loc_BBD33F: FLdPr Me
  loc_BBD342: MemLdRfVar from_stack_1.global_60
  loc_BBD345: LdPrVar
  loc_BBD347: LateMemCall
  loc_BBD34D: LitVarStr var_94, ".Titulo2 {"
  loc_BBD352: PopAdLdVar
  loc_BBD353: FLdPr Me
  loc_BBD356: MemLdRfVar from_stack_1.global_60
  loc_BBD359: LdPrVar
  loc_BBD35B: LateMemCall
  loc_BBD361: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBD366: PopAdLdVar
  loc_BBD367: FLdPr Me
  loc_BBD36A: MemLdRfVar from_stack_1.global_60
  loc_BBD36D: LdPrVar
  loc_BBD36F: LateMemCall
  loc_BBD375: LitVarStr var_94, " font-size: 14px;"
  loc_BBD37A: PopAdLdVar
  loc_BBD37B: FLdPr Me
  loc_BBD37E: MemLdRfVar from_stack_1.global_60
  loc_BBD381: LdPrVar
  loc_BBD383: LateMemCall
  loc_BBD389: LitVarStr var_94, " font-weight: bold;"
  loc_BBD38E: PopAdLdVar
  loc_BBD38F: FLdPr Me
  loc_BBD392: MemLdRfVar from_stack_1.global_60
  loc_BBD395: LdPrVar
  loc_BBD397: LateMemCall
  loc_BBD39D: LitVarStr var_94, "}"
  loc_BBD3A2: PopAdLdVar
  loc_BBD3A3: FLdPr Me
  loc_BBD3A6: MemLdRfVar from_stack_1.global_60
  loc_BBD3A9: LdPrVar
  loc_BBD3AB: LateMemCall
  loc_BBD3B1: LitVarStr var_94, ".Normal {"
  loc_BBD3B6: PopAdLdVar
  loc_BBD3B7: FLdPr Me
  loc_BBD3BA: MemLdRfVar from_stack_1.global_60
  loc_BBD3BD: LdPrVar
  loc_BBD3BF: LateMemCall
  loc_BBD3C5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BBD3CA: PopAdLdVar
  loc_BBD3CB: FLdPr Me
  loc_BBD3CE: MemLdRfVar from_stack_1.global_60
  loc_BBD3D1: LdPrVar
  loc_BBD3D3: LateMemCall
  loc_BBD3D9: LitVarStr var_94, " font-size: 12px;"
  loc_BBD3DE: PopAdLdVar
  loc_BBD3DF: FLdPr Me
  loc_BBD3E2: MemLdRfVar from_stack_1.global_60
  loc_BBD3E5: LdPrVar
  loc_BBD3E7: LateMemCall
  loc_BBD3ED: LitVarStr var_94, " font-style: normal;"
  loc_BBD3F2: PopAdLdVar
  loc_BBD3F3: FLdPr Me
  loc_BBD3F6: MemLdRfVar from_stack_1.global_60
  loc_BBD3F9: LdPrVar
  loc_BBD3FB: LateMemCall
  loc_BBD401: LitVarStr var_94, " font-weight: normal;"
  loc_BBD406: PopAdLdVar
  loc_BBD407: FLdPr Me
  loc_BBD40A: MemLdRfVar from_stack_1.global_60
  loc_BBD40D: LdPrVar
  loc_BBD40F: LateMemCall
  loc_BBD415: LitVarStr var_94, " font-variant: normal;"
  loc_BBD41A: PopAdLdVar
  loc_BBD41B: FLdPr Me
  loc_BBD41E: MemLdRfVar from_stack_1.global_60
  loc_BBD421: LdPrVar
  loc_BBD423: LateMemCall
  loc_BBD429: LitVarStr var_94, "}"
  loc_BBD42E: PopAdLdVar
  loc_BBD42F: FLdPr Me
  loc_BBD432: MemLdRfVar from_stack_1.global_60
  loc_BBD435: LdPrVar
  loc_BBD437: LateMemCall
  loc_BBD43D: LitVarStr var_94, ".Encabezado {"
  loc_BBD442: PopAdLdVar
  loc_BBD443: FLdPr Me
  loc_BBD446: MemLdRfVar from_stack_1.global_60
  loc_BBD449: LdPrVar
  loc_BBD44B: LateMemCall
  loc_BBD451: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BBD456: PopAdLdVar
  loc_BBD457: FLdPr Me
  loc_BBD45A: MemLdRfVar from_stack_1.global_60
  loc_BBD45D: LdPrVar
  loc_BBD45F: LateMemCall
  loc_BBD465: LitVarStr var_94, " font-size: 11px;"
  loc_BBD46A: PopAdLdVar
  loc_BBD46B: FLdPr Me
  loc_BBD46E: MemLdRfVar from_stack_1.global_60
  loc_BBD471: LdPrVar
  loc_BBD473: LateMemCall
  loc_BBD479: LitVarStr var_94, " font-weight: bold;"
  loc_BBD47E: PopAdLdVar
  loc_BBD47F: FLdPr Me
  loc_BBD482: MemLdRfVar from_stack_1.global_60
  loc_BBD485: LdPrVar
  loc_BBD487: LateMemCall
  loc_BBD48D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BBD492: PopAdLdVar
  loc_BBD493: FLdPr Me
  loc_BBD496: MemLdRfVar from_stack_1.global_60
  loc_BBD499: LdPrVar
  loc_BBD49B: LateMemCall
  loc_BBD4A1: LitVarStr var_94, "}"
  loc_BBD4A6: PopAdLdVar
  loc_BBD4A7: FLdPr Me
  loc_BBD4AA: MemLdRfVar from_stack_1.global_60
  loc_BBD4AD: LdPrVar
  loc_BBD4AF: LateMemCall
  loc_BBD4B5: LitVarStr var_94, ".LineaDato {"
  loc_BBD4BA: PopAdLdVar
  loc_BBD4BB: FLdPr Me
  loc_BBD4BE: MemLdRfVar from_stack_1.global_60
  loc_BBD4C1: LdPrVar
  loc_BBD4C3: LateMemCall
  loc_BBD4C9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBD4CE: PopAdLdVar
  loc_BBD4CF: FLdPr Me
  loc_BBD4D2: MemLdRfVar from_stack_1.global_60
  loc_BBD4D5: LdPrVar
  loc_BBD4D7: LateMemCall
  loc_BBD4DD: LitVarStr var_94, " font-size: 10px;"
  loc_BBD4E2: PopAdLdVar
  loc_BBD4E3: FLdPr Me
  loc_BBD4E6: MemLdRfVar from_stack_1.global_60
  loc_BBD4E9: LdPrVar
  loc_BBD4EB: LateMemCall
  loc_BBD4F1: LitVarStr var_94, "}"
  loc_BBD4F6: PopAdLdVar
  loc_BBD4F7: FLdPr Me
  loc_BBD4FA: MemLdRfVar from_stack_1.global_60
  loc_BBD4FD: LdPrVar
  loc_BBD4FF: LateMemCall
  loc_BBD505: LitVarStr var_94, ".Totales {"
  loc_BBD50A: PopAdLdVar
  loc_BBD50B: FLdPr Me
  loc_BBD50E: MemLdRfVar from_stack_1.global_60
  loc_BBD511: LdPrVar
  loc_BBD513: LateMemCall
  loc_BBD519: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBD51E: PopAdLdVar
  loc_BBD51F: FLdPr Me
  loc_BBD522: MemLdRfVar from_stack_1.global_60
  loc_BBD525: LdPrVar
  loc_BBD527: LateMemCall
  loc_BBD52D: LitVarStr var_94, " font-size: 12px;"
  loc_BBD532: PopAdLdVar
  loc_BBD533: FLdPr Me
  loc_BBD536: MemLdRfVar from_stack_1.global_60
  loc_BBD539: LdPrVar
  loc_BBD53B: LateMemCall
  loc_BBD541: LitVarStr var_94, " font-weight: bold;"
  loc_BBD546: PopAdLdVar
  loc_BBD547: FLdPr Me
  loc_BBD54A: MemLdRfVar from_stack_1.global_60
  loc_BBD54D: LdPrVar
  loc_BBD54F: LateMemCall
  loc_BBD555: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BBD55A: PopAdLdVar
  loc_BBD55B: FLdPr Me
  loc_BBD55E: MemLdRfVar from_stack_1.global_60
  loc_BBD561: LdPrVar
  loc_BBD563: LateMemCall
  loc_BBD569: LitVarStr var_94, "}"
  loc_BBD56E: PopAdLdVar
  loc_BBD56F: FLdPr Me
  loc_BBD572: MemLdRfVar from_stack_1.global_60
  loc_BBD575: LdPrVar
  loc_BBD577: LateMemCall
  loc_BBD57D: LitVarStr var_94, ".SubTotales {"
  loc_BBD582: PopAdLdVar
  loc_BBD583: FLdPr Me
  loc_BBD586: MemLdRfVar from_stack_1.global_60
  loc_BBD589: LdPrVar
  loc_BBD58B: LateMemCall
  loc_BBD591: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BBD596: PopAdLdVar
  loc_BBD597: FLdPr Me
  loc_BBD59A: MemLdRfVar from_stack_1.global_60
  loc_BBD59D: LdPrVar
  loc_BBD59F: LateMemCall
  loc_BBD5A5: LitVarStr var_94, " font-size: 10px;"
  loc_BBD5AA: PopAdLdVar
  loc_BBD5AB: FLdPr Me
  loc_BBD5AE: MemLdRfVar from_stack_1.global_60
  loc_BBD5B1: LdPrVar
  loc_BBD5B3: LateMemCall
  loc_BBD5B9: LitVarStr var_94, " font-weight: bold;"
  loc_BBD5BE: PopAdLdVar
  loc_BBD5BF: FLdPr Me
  loc_BBD5C2: MemLdRfVar from_stack_1.global_60
  loc_BBD5C5: LdPrVar
  loc_BBD5C7: LateMemCall
  loc_BBD5CD: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BBD5D2: PopAdLdVar
  loc_BBD5D3: FLdPr Me
  loc_BBD5D6: MemLdRfVar from_stack_1.global_60
  loc_BBD5D9: LdPrVar
  loc_BBD5DB: LateMemCall
  loc_BBD5E1: LitVarStr var_94, "}"
  loc_BBD5E6: PopAdLdVar
  loc_BBD5E7: FLdPr Me
  loc_BBD5EA: MemLdRfVar from_stack_1.global_60
  loc_BBD5ED: LdPrVar
  loc_BBD5EF: LateMemCall
  loc_BBD5F5: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BBD5FA: PopAdLdVar
  loc_BBD5FB: FLdPr Me
  loc_BBD5FE: MemLdRfVar from_stack_1.global_60
  loc_BBD601: LdPrVar
  loc_BBD603: LateMemCall
  loc_BBD609: LitVarStr var_94, "</style>"
  loc_BBD60E: PopAdLdVar
  loc_BBD60F: FLdPr Me
  loc_BBD612: MemLdRfVar from_stack_1.global_60
  loc_BBD615: LdPrVar
  loc_BBD617: LateMemCall
  loc_BBD61D: LitI4 0
  loc_BBD622: FStStrCopy var_AC
  loc_BBD625: FLdRfVar var_AC
  loc_BBD628: LitI4 0
  loc_BBD62D: FStStrCopy var_A8
  loc_BBD630: FLdRfVar var_A8
  loc_BBD633: LitI2_Byte 0
  loc_BBD635: PopTmpLdAd2 var_BE
  loc_BBD638: FLdPr Me
  loc_BBD63B: MemLdRfVar from_stack_1.global_60
  loc_BBD63E: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BBD643: FFreeStr var_A8 = ""
  loc_BBD64A: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BBD64F: PopAdLdVar
  loc_BBD650: FLdPr Me
  loc_BBD653: MemLdRfVar from_stack_1.global_60
  loc_BBD656: LdPrVar
  loc_BBD658: LateMemCall
  loc_BBD65E: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BBD663: PopAdLdVar
  loc_BBD664: FLdPr Me
  loc_BBD667: MemLdRfVar from_stack_1.global_60
  loc_BBD66A: LdPrVar
  loc_BBD66C: LateMemCall
  loc_BBD672: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p>"
  loc_BBD677: PopAdLdVar
  loc_BBD678: FLdPr Me
  loc_BBD67B: MemLdRfVar from_stack_1.global_60
  loc_BBD67E: LdPrVar
  loc_BBD680: LateMemCall
  loc_BBD686: FLdPr Me
  loc_BBD689: MemLdI2 bLogos
  loc_BBD68C: BranchF loc_BBD6D5
  loc_BBD68F: LitStr "      <img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BBD692: LitI2_Byte &H5F
  loc_BBD694: CStrUI1
  loc_BBD696: FStStrNoPop var_A8
  loc_BBD699: ConcatStr
  loc_BBD69A: FStStrNoPop var_AC
  loc_BBD69D: LitStr """ height="""
  loc_BBD6A0: ConcatStr
  loc_BBD6A1: FStStrNoPop var_C4
  loc_BBD6A4: LitI2_Byte &H3C
  loc_BBD6A6: CStrUI1
  loc_BBD6A8: FStStrNoPop var_C8
  loc_BBD6AB: ConcatStr
  loc_BBD6AC: FStStrNoPop var_CC
  loc_BBD6AF: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_BBD6B2: ConcatStr
  loc_BBD6B3: CVarStr var_BC
  loc_BBD6B6: PopAdLdVar
  loc_BBD6B7: FLdPr Me
  loc_BBD6BA: MemLdRfVar from_stack_1.global_60
  loc_BBD6BD: LdPrVar
  loc_BBD6BF: LateMemCall
  loc_BBD6C5: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = ""
  loc_BBD6D2: FFree1Var var_BC = ""
  loc_BBD6D5: LitStr "     <br>"
  loc_BBD6D8: LitStr "Municipalidad de Guaymallén"
  loc_BBD6DB: ConcatStr
  loc_BBD6DC: FStStrNoPop var_A8
  loc_BBD6DF: LitStr "</p>"
  loc_BBD6E2: ConcatStr
  loc_BBD6E3: CVarStr var_BC
  loc_BBD6E6: PopAdLdVar
  loc_BBD6E7: FLdPr Me
  loc_BBD6EA: MemLdRfVar from_stack_1.global_60
  loc_BBD6ED: LdPrVar
  loc_BBD6EF: LateMemCall
  loc_BBD6F5: FFree1Str var_A8
  loc_BBD6F8: FFree1Var var_BC = ""
  loc_BBD6FB: LitStr "    <p>"
  loc_BBD6FE: FLdRfVar var_A8
  loc_BBD701: FLdPr Me
  loc_BBD704:  = Me.Caption
  loc_BBD709: ILdRf var_A8
  loc_BBD70C: ConcatStr
  loc_BBD70D: FStStrNoPop var_AC
  loc_BBD710: LitStr "</p></th>"
  loc_BBD713: ConcatStr
  loc_BBD714: CVarStr var_BC
  loc_BBD717: PopAdLdVar
  loc_BBD718: FLdPr Me
  loc_BBD71B: MemLdRfVar from_stack_1.global_60
  loc_BBD71E: LdPrVar
  loc_BBD720: LateMemCall
  loc_BBD726: FFreeStr var_A8 = ""
  loc_BBD72D: FFree1Var var_BC = ""
  loc_BBD730: LitVarStr var_94, "  </tr>"
  loc_BBD735: PopAdLdVar
  loc_BBD736: FLdPr Me
  loc_BBD739: MemLdRfVar from_stack_1.global_60
  loc_BBD73C: LdPrVar
  loc_BBD73E: LateMemCall
  loc_BBD744: LitVarStr var_94, "  <tr>"
  loc_BBD749: PopAdLdVar
  loc_BBD74A: FLdPr Me
  loc_BBD74D: MemLdRfVar from_stack_1.global_60
  loc_BBD750: LdPrVar
  loc_BBD752: LateMemCall
  loc_BBD758: LitVarStr var_94, "    <th colspan=""2""><hr></th>"
  loc_BBD75D: PopAdLdVar
  loc_BBD75E: FLdPr Me
  loc_BBD761: MemLdRfVar from_stack_1.global_60
  loc_BBD764: LdPrVar
  loc_BBD766: LateMemCall
  loc_BBD76C: LitVarStr var_94, "  </tr>"
  loc_BBD771: PopAdLdVar
  loc_BBD772: FLdPr Me
  loc_BBD775: MemLdRfVar from_stack_1.global_60
  loc_BBD778: LdPrVar
  loc_BBD77A: LateMemCall
  loc_BBD780: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BBD785: PopAdLdVar
  loc_BBD786: FLdPr Me
  loc_BBD789: MemLdRfVar from_stack_1.global_60
  loc_BBD78C: LdPrVar
  loc_BBD78E: LateMemCall
  loc_BBD794: LitStr "    <td align=""left""><strong>Fecha de Envio: </strong>"
  loc_BBD797: FLdPr Me
  loc_BBD79A: VCallAd Control_ID_FeenAcpaMsk
  loc_BBD79D: FStAdFunc var_D0
  loc_BBD7A0: FLdPr var_D0
  loc_BBD7A3: LateIdLdVar var_BC DispID_15 0
  loc_BBD7AA: CStrVarTmp
  loc_BBD7AB: FStStrNoPop var_A8
  loc_BBD7AE: ConcatStr
  loc_BBD7AF: FStStrNoPop var_AC
  loc_BBD7B2: LitStr "</td>"
  loc_BBD7B5: ConcatStr
  loc_BBD7B6: CVarStr var_E0
  loc_BBD7B9: PopAdLdVar
  loc_BBD7BA: FLdPr Me
  loc_BBD7BD: MemLdRfVar from_stack_1.global_60
  loc_BBD7C0: LdPrVar
  loc_BBD7C2: LateMemCall
  loc_BBD7C8: FFreeStr var_A8 = ""
  loc_BBD7CF: FFree1Ad var_D0
  loc_BBD7D2: FFreeVar var_BC = ""
  loc_BBD7D9: LitStr "    <td align=""right""><strong>Nro de Grupo: </strong>"
  loc_BBD7DC: FLdPr Me
  loc_BBD7DF: VCallAd Control_ID_NumeAcpaMsk
  loc_BBD7E2: FStAdFunc var_D0
  loc_BBD7E5: FLdPr var_D0
  loc_BBD7E8: LateIdLdVar var_BC DispID_22 0
  loc_BBD7EF: CStrVarTmp
  loc_BBD7F0: FStStrNoPop var_A8
  loc_BBD7F3: ConcatStr
  loc_BBD7F4: FStStrNoPop var_AC
  loc_BBD7F7: LitStr "</td>"
  loc_BBD7FA: ConcatStr
  loc_BBD7FB: CVarStr var_E0
  loc_BBD7FE: PopAdLdVar
  loc_BBD7FF: FLdPr Me
  loc_BBD802: MemLdRfVar from_stack_1.global_60
  loc_BBD805: LdPrVar
  loc_BBD807: LateMemCall
  loc_BBD80D: FFreeStr var_A8 = ""
  loc_BBD814: FFree1Ad var_D0
  loc_BBD817: FFreeVar var_BC = ""
  loc_BBD81E: LitVarStr var_94, "  </tr>"
  loc_BBD823: PopAdLdVar
  loc_BBD824: FLdPr Me
  loc_BBD827: MemLdRfVar from_stack_1.global_60
  loc_BBD82A: LdPrVar
  loc_BBD82C: LateMemCall
  loc_BBD832: LitVarStr var_94, "</table>"
  loc_BBD837: PopAdLdVar
  loc_BBD838: FLdPr Me
  loc_BBD83B: MemLdRfVar from_stack_1.global_60
  loc_BBD83E: LdPrVar
  loc_BBD840: LateMemCall
  loc_BBD846: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BBD84B: PopAdLdVar
  loc_BBD84C: FLdPr Me
  loc_BBD84F: MemLdRfVar from_stack_1.global_60
  loc_BBD852: LdPrVar
  loc_BBD854: LateMemCall
  loc_BBD85A: LitVarStr var_94, "  <thead>"
  loc_BBD85F: PopAdLdVar
  loc_BBD860: FLdPr Me
  loc_BBD863: MemLdRfVar from_stack_1.global_60
  loc_BBD866: LdPrVar
  loc_BBD868: LateMemCall
  loc_BBD86E: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BBD873: PopAdLdVar
  loc_BBD874: FLdPr Me
  loc_BBD877: MemLdRfVar from_stack_1.global_60
  loc_BBD87A: LdPrVar
  loc_BBD87C: LateMemCall
  loc_BBD882: LitVarStr var_94, "    <th>Archivo</th>"
  loc_BBD887: PopAdLdVar
  loc_BBD888: FLdPr Me
  loc_BBD88B: MemLdRfVar from_stack_1.global_60
  loc_BBD88E: LdPrVar
  loc_BBD890: LateMemCall
  loc_BBD896: LitVarStr var_94, "    <th>Periodo</th>"
  loc_BBD89B: PopAdLdVar
  loc_BBD89C: FLdPr Me
  loc_BBD89F: MemLdRfVar from_stack_1.global_60
  loc_BBD8A2: LdPrVar
  loc_BBD8A4: LateMemCall
  loc_BBD8AA: LitVarStr var_94, "    <th>Boleto</th>"
  loc_BBD8AF: PopAdLdVar
  loc_BBD8B0: FLdPr Me
  loc_BBD8B3: MemLdRfVar from_stack_1.global_60
  loc_BBD8B6: LdPrVar
  loc_BBD8B8: LateMemCall
  loc_BBD8BE: LitVarStr var_94, "    <th>Línea No Procesada</th>"
  loc_BBD8C3: PopAdLdVar
  loc_BBD8C4: FLdPr Me
  loc_BBD8C7: MemLdRfVar from_stack_1.global_60
  loc_BBD8CA: LdPrVar
  loc_BBD8CC: LateMemCall
  loc_BBD8D2: LitVarStr var_94, "    <th>Importe</th>"
  loc_BBD8D7: PopAdLdVar
  loc_BBD8D8: FLdPr Me
  loc_BBD8DB: MemLdRfVar from_stack_1.global_60
  loc_BBD8DE: LdPrVar
  loc_BBD8E0: LateMemCall
  loc_BBD8E6: LitVarStr var_94, "  </tr>"
  loc_BBD8EB: PopAdLdVar
  loc_BBD8EC: FLdPr Me
  loc_BBD8EF: MemLdRfVar from_stack_1.global_60
  loc_BBD8F2: LdPrVar
  loc_BBD8F4: LateMemCall
  loc_BBD8FA: LitVarStr var_94, "  </thead>"
  loc_BBD8FF: PopAdLdVar
  loc_BBD900: FLdPr Me
  loc_BBD903: MemLdRfVar from_stack_1.global_60
  loc_BBD906: LdPrVar
  loc_BBD908: LateMemCall
  loc_BBD90E: ExitProcHresult
End Function

Private Function Proc_315_24_A0F548() 'A0F548
  'Data Table: 470588
  loc_A0F508: LitVarStr var_94, "</table>"
  loc_A0F50D: PopAdLdVar
  loc_A0F50E: FLdPr Me
  loc_A0F511: MemLdRfVar from_stack_1.global_60
  loc_A0F514: LdPrVar
  loc_A0F516: LateMemCall
  loc_A0F51C: LitVarStr var_94, "</body>"
  loc_A0F521: PopAdLdVar
  loc_A0F522: FLdPr Me
  loc_A0F525: MemLdRfVar from_stack_1.global_60
  loc_A0F528: LdPrVar
  loc_A0F52A: LateMemCall
  loc_A0F530: LitVarStr var_94, "</html>"
  loc_A0F535: PopAdLdVar
  loc_A0F536: FLdPr Me
  loc_A0F539: MemLdRfVar from_stack_1.global_60
  loc_A0F53C: LdPrVar
  loc_A0F53E: LateMemCall
  loc_A0F544: ExitProcHresult
End Function
