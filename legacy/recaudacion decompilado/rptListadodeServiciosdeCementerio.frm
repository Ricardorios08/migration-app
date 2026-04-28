VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeServiciosdeCementerio
  Caption = "Listado de Servicios de Cementerio"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeServiciosdeCementerio.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 8748
  ClientHeight = 3480
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
    Top = 3225
    Width = 8745
    Height = 255
    TabIndex = 12
    OleObjectBlob = "rptListadodeServiciosdeCementerio.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7080
    Top = 2160
    Width = 855
    Height = 735
    TabIndex = 6
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
    Picture = "rptListadodeServiciosdeCementerio.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeServiciosdeCementerio.frx":0B9C
    Left = 7800
    Top = 1920
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1920
    Width = 1815
    Height = 1215
    TabIndex = 10
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1920
    Width = 4095
    Height = 1215
    TabIndex = 9
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 3
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 2
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 8535
    Height = 1815
    TabIndex = 8
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame NumeApreFra
      Caption = "Código"
      Left = 360
      Top = 240
      Width = 5655
      Height = 1215
      TabIndex = 13
      Begin MSMask.MaskEdBox CodiSeceDesdeMsk
        Left = 1920
        Top = 480
        Width = 615
        Height = 360
        TabIndex = 0
        OleObjectBlob = "rptListadodeServiciosdeCementerio.frx":0C00
      End
      Begin MSMask.MaskEdBox CodiSeceHastaMsk
        Left = 4080
        Top = 480
        Width = 615
        Height = 360
        TabIndex = 1
        OleObjectBlob = "rptListadodeServiciosdeCementerio.frx":0C8E
      End
      Begin VB.Label Label4
        Caption = "Hasta:"
        Left = 3240
        Top = 480
        Width = 705
        Height = 300
        TabIndex = 14
        AutoSize = -1  'True
      End
      Begin VB.Label Label3
        Caption = "Desde:"
        Left = 1080
        Top = 480
        Width = 765
        Height = 300
        TabIndex = 7
        AutoSize = -1  'True
      End
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 6600
      Top = 360
      Width = 1575
      Height = 615
      TabIndex = 5
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 7320
    Top = 2400
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 11
    OleObjectBlob = "rptListadodeServiciosdeCementerio.frx":0D1C
  End
End

Attribute VB_Name = "rptListadodeServiciosdeCementerio"

Public bGenerado As Boolean

Private Type UDT_1_00560540
  bStruc(32) As Byte ' String fields: 8
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A18CD0
  'Data Table: 45D7F8
  loc_A18C98: FLdPr Me
  loc_A18C9B: VCallAd Control_ID_statusBar
  loc_A18C9E: FStAdFunc var_88
  loc_A18CA1: FLdPr var_88
  loc_A18CA4: LateIdLdVar var_98 DispID_1 0
  loc_A18CAB: CStrVarTmp
  loc_A18CAC: CVarStr var_A8
  loc_A18CAF: PopAdLdVar
  loc_A18CB0: FLdPr Me
  loc_A18CB3: VCallAd Control_ID_statusBar
  loc_A18CB6: FStAdFunc var_BC
  loc_A18CB9: FLdPr var_BC
  loc_A18CBC: LateIdSt
  loc_A18CC1: FFreeAd var_88 = ""
  loc_A18CC8: FFreeVar var_98 = ""
  loc_A18CCF: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() 'A619B0
  'Data Table: 45D7F8
  loc_A61944: LitI2_Byte 0
  loc_A61946: FLdPr Me
  loc_A61949: MemStI2 bGenerado
  loc_A6194C: LitI2_Byte 0
  loc_A6194E: ILdRf Me
  loc_A61951: CastAd
  loc_A61954: FStAdFunc var_88
  loc_A61957: FLdRfVar var_88
  loc_A6195A: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A6195F: FFree1Ad var_88
  loc_A61962: LitVarStr var_98, vbNullString
  loc_A61967: PopAdLdVar
  loc_A61968: FLdPr Me
  loc_A6196B: VCallAd Control_ID_CodiSeceDesdeMsk
  loc_A6196E: FStAdFunc var_88
  loc_A61971: FLdPr var_88
  loc_A61974: LateIdSt
  loc_A61979: FFree1Ad var_88
  loc_A6197C: LitVarStr var_98, vbNullString
  loc_A61981: PopAdLdVar
  loc_A61982: FLdPr Me
  loc_A61985: VCallAd Control_ID_CodiSeceHastaMsk
  loc_A61988: FStAdFunc var_88
  loc_A6198B: FLdPr var_88
  loc_A6198E: LateIdSt
  loc_A61993: FFree1Ad var_88
  loc_A61996: Call HabilitarCriterio()
  loc_A6199B: ILdRf Me
  loc_A6199E: CastAd
  loc_A619A1: FStAdFunc var_88
  loc_A619A4: FLdRfVar var_88
  loc_A619A7: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A619AC: FFree1Ad var_88
  loc_A619AF: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9CB39C
  'Data Table: 45D7F8
  loc_9CB384: ILdRf Me
  loc_9CB387: CastAd
  loc_9CB38A: FStAdFunc var_88
  loc_9CB38D: FLdRfVar var_88
  loc_9CB390: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9CB395: FFree1Ad var_88
  loc_9CB398: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A02F2C
  'Data Table: 45D7F8
  loc_A02EFC: LitVarStr var_94, "Cerrando..."
  loc_A02F01: PopAdLdVar
  loc_A02F02: FLdPr Me
  loc_A02F05: VCallAd Control_ID_statusBar
  loc_A02F08: FStAdFunc var_A8
  loc_A02F0B: FLdPr var_A8
  loc_A02F0E: LateIdSt
  loc_A02F13: FFree1Ad var_A8
  loc_A02F16: ILdRf Me
  loc_A02F19: FStAdNoPop
  loc_A02F1D: ImpAdLdRf MemVar_D9C5D8
  loc_A02F20: NewIfNullPr Global
  loc_A02F23: Global.Unload from_stack_1
  loc_A02F28: FFree1Ad var_A8
  loc_A02F2B: ExitProcHresult
End Sub

Private Sub Form_Load() '9DFDDC
  'Data Table: 45D7F8
  loc_9DFDC0: ILdRf Me
  loc_9DFDC3: CastAd
  loc_9DFDC6: FStAdFunc var_88
  loc_9DFDC9: FLdRfVar var_88
  loc_9DFDCC: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9DFDD1: FFree1Ad var_88
  loc_9DFDD4: Call cmdNueva_Click()
  loc_9DFDD9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9CAE90
  'Data Table: 45D7F8
  loc_9CAE78: FLdPr Me
  loc_9CAE7B: VCallAd Control_ID_wbbReporte
  loc_9CAE7E: FStAdFunc var_88
  loc_9CAE81: FLdRfVar var_88
  loc_9CAE84: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9CAE89: FFree1Ad var_88
  loc_9CAE8C: ExitProcHresult
End Sub

Private Sub CodiSeceDesdeMsk_UnknownEvent_0 '9BC810
  'Data Table: 45D7F8
  loc_9BC7FC: FLdPr Me
  loc_9BC7FF: VCallAd Control_ID_CodiSeceDesdeMsk
  loc_9BC802: CVarAd
  loc_9BC806: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC80B: FFree1Var var_94 = ""
  loc_9BC80E: ExitProcHresult
End Sub

Private Sub CodiSeceDesdeMsk_UnknownEvent_8 'A88C14
  'Data Table: 45D7F8
  loc_A88B84: FLdPr Me
  loc_A88B87: VCallAd Control_ID_CodiSeceDesdeMsk
  loc_A88B8A: FStAdFunc var_88
  loc_A88B8D: FLdPr var_88
  loc_A88B90: LateIdLdVar var_98 DispID_22 0
  loc_A88B97: CStrVarTmp
  loc_A88B98: FStStrNoPop var_9C
  loc_A88B9B: LitStr vbNullString
  loc_A88B9E: NeStr
  loc_A88BA0: FFree1Str var_9C
  loc_A88BA3: FFree1Ad var_88
  loc_A88BA6: FFree1Var var_98 = ""
  loc_A88BA9: BranchF loc_A88C12
  loc_A88BAC: FLdPr Me
  loc_A88BAF: VCallAd Control_ID_CodiSeceDesdeMsk
  loc_A88BB2: FStAdFunc var_88
  loc_A88BB5: FLdPr var_88
  loc_A88BB8: LateIdLdVar var_98 DispID_22 0
  loc_A88BBF: PopAd
  loc_A88BC1: LitI2_Byte 0
  loc_A88BC3: LitI2_Byte 0
  loc_A88BC5: FLdRfVar var_98
  loc_A88BC8: CStrVarTmp
  loc_A88BC9: FStStrNoPop var_9C
  loc_A88BCC: LitStr "Código de servicio"
  loc_A88BCF: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A88BD4: FStStrNoPop var_A0
  loc_A88BD7: FLdPr Me
  loc_A88BDA: MemStStrCopy
  loc_A88BDE: FFreeStr var_9C = ""
  loc_A88BE5: FFree1Ad var_88
  loc_A88BE8: FFree1Var var_98 = ""
  loc_A88BEB: FLdPr Me
  loc_A88BEE: VCallAd Control_ID_CodiSeceDesdeMsk
  loc_A88BF1: FStAdFuncNoPop
  loc_A88BF4: CastAd
  loc_A88BF7: FStAdFunc var_A4
  loc_A88BFA: FLdRfVar var_A4
  loc_A88BFD: FLdPr Me
  loc_A88C00: MemLdStr global_88
  loc_A88C03: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A88C08: IStI2 Cancel
  loc_A88C0B: FFreeAd var_88 = ""
  loc_A88C12: ExitProcHresult
End Sub

Private Sub CodiSeceHastaMsk_UnknownEvent_0 '9BC7C8
  'Data Table: 45D7F8
  loc_9BC7B4: FLdPr Me
  loc_9BC7B7: VCallAd Control_ID_CodiSeceHastaMsk
  loc_9BC7BA: CVarAd
  loc_9BC7BE: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BC7C3: FFree1Var var_94 = ""
  loc_9BC7C6: ExitProcHresult
End Sub

Private Sub CodiSeceHastaMsk_UnknownEvent_8 'A88648
  'Data Table: 45D7F8
  loc_A885B8: FLdPr Me
  loc_A885BB: VCallAd Control_ID_CodiSeceHastaMsk
  loc_A885BE: FStAdFunc var_88
  loc_A885C1: FLdPr var_88
  loc_A885C4: LateIdLdVar var_98 DispID_22 0
  loc_A885CB: CStrVarTmp
  loc_A885CC: FStStrNoPop var_9C
  loc_A885CF: LitStr vbNullString
  loc_A885D2: NeStr
  loc_A885D4: FFree1Str var_9C
  loc_A885D7: FFree1Ad var_88
  loc_A885DA: FFree1Var var_98 = ""
  loc_A885DD: BranchF loc_A88646
  loc_A885E0: FLdPr Me
  loc_A885E3: VCallAd Control_ID_CodiSeceHastaMsk
  loc_A885E6: FStAdFunc var_88
  loc_A885E9: FLdPr var_88
  loc_A885EC: LateIdLdVar var_98 DispID_22 0
  loc_A885F3: PopAd
  loc_A885F5: LitI2_Byte 0
  loc_A885F7: LitI2_Byte 0
  loc_A885F9: FLdRfVar var_98
  loc_A885FC: CStrVarTmp
  loc_A885FD: FStStrNoPop var_9C
  loc_A88600: LitStr "Código de servicio"
  loc_A88603: ImpAdCallI2 Proc_18_15_A7C394(, , , )
  loc_A88608: FStStrNoPop var_A0
  loc_A8860B: FLdPr Me
  loc_A8860E: MemStStrCopy
  loc_A88612: FFreeStr var_9C = ""
  loc_A88619: FFree1Ad var_88
  loc_A8861C: FFree1Var var_98 = ""
  loc_A8861F: FLdPr Me
  loc_A88622: VCallAd Control_ID_CodiSeceHastaMsk
  loc_A88625: FStAdFuncNoPop
  loc_A88628: CastAd
  loc_A8862B: FStAdFunc var_A4
  loc_A8862E: FLdRfVar var_A4
  loc_A88631: FLdPr Me
  loc_A88634: MemLdStr global_88
  loc_A88637: ImpAdCallI2 Proc_18_2_A30F28(, )
  loc_A8863C: IStI2 Cancel
  loc_A8863F: FFreeAd var_88 = ""
  loc_A88646: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9DFE2C
  'Data Table: 45D7F8
  loc_9DFE10: LitI2_Byte 0
  loc_9DFE12: PopTmpLdAd2 var_8A
  loc_9DFE15: ILdRf Me
  loc_9DFE18: CastAd
  loc_9DFE1B: FStAdFunc var_88
  loc_9DFE1E: FLdRfVar var_88
  loc_9DFE21: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9DFE26: FFree1Ad var_88
  loc_9DFE29: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9CB00C
  'Data Table: 45D7F8
  loc_9CAFF4: LitI2_Byte 0
  loc_9CAFF6: ILdRf Me
  loc_9CAFF9: CastAd
  loc_9CAFFC: FStAdFunc var_88
  loc_9CAFFF: FLdRfVar var_88
  loc_9CB002: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_9CB007: FFree1Ad var_88
  loc_9CB00A: ExitProcHresult
End Sub

Public Function bGeneradoGet() '45E324
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '45E333
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A43AA0
  'Data Table: 45D7F8
  loc_A43A5C: LitI4 0
  loc_A43A61: LitI4 1
  loc_A43A66: FLdRfVar var_88
  loc_A43A69: Redim
  loc_A43A73: FLdPr Me
  loc_A43A76: VCallAd Control_ID_CodiSeceDesdeMsk
  loc_A43A79: CVarAd
  loc_A43A7D: ParmAry1St
  loc_A43A83: FLdPr Me
  loc_A43A86: VCallAd Control_ID_CodiSeceHastaMsk
  loc_A43A89: CVarAd
  loc_A43A8D: ParmAry1St
  loc_A43A93: FLdRfVar var_88
  loc_A43A96: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A43A9B: FLdRfVar var_88
  loc_A43A9E: Erase
  loc_A43A9F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B6582C
  'Data Table: 45D7F8
  loc_B6540C: FLdPr Me
  loc_B6540F: MemLdI2 bGenerado
  loc_B65412: BranchF loc_B65416
  loc_B65415: ExitProcHresult
  loc_B65416: LitVarStr var_9C, "Generando reporte..."
  loc_B6541B: PopAdLdVar
  loc_B6541C: FLdPr Me
  loc_B6541F: VCallAd Control_ID_statusBar
  loc_B65422: FStAdFunc var_B0
  loc_B65425: FLdPr var_B0
  loc_B65428: LateIdSt
  loc_B6542D: FFree1Ad var_B0
  loc_B65430: LitI4 &HB
  loc_B65435: CI2I4
  loc_B65436: FLdPr Me
  loc_B65439: Me.MousePointer = from_stack_1
  loc_B6543E: FLdPr Me
  loc_B65441: VCallAd Control_ID_CodiSeceDesdeMsk
  loc_B65444: FStAdFunc var_B0
  loc_B65447: FLdPr var_B0
  loc_B6544A: LateIdLdVar var_C0 DispID_22 0
  loc_B65451: PopAd
  loc_B65453: FLdPr Me
  loc_B65456: VCallAd Control_ID_CodiSeceDesdeMsk
  loc_B65459: FStAdFunc var_C8
  loc_B6545C: FLdPr var_C8
  loc_B6545F: LateIdLdVar var_D8 DispID_22 0
  loc_B65466: PopAd
  loc_B65468: LitVarStr var_AC, vbNullString
  loc_B6546D: FStVarCopyObj var_FC
  loc_B65470: FLdRfVar var_FC
  loc_B65473: LitStr " AND CodiSece >= "
  loc_B65476: FLdRfVar var_D8
  loc_B65479: CStrVarTmp
  loc_B6547A: FStStrNoPop var_DC
  loc_B6547D: ConcatStr
  loc_B6547E: CVarStr var_EC
  loc_B65481: FLdRfVar var_C0
  loc_B65484: CStrVarTmp
  loc_B65485: FStStrNoPop var_C4
  loc_B65488: LitStr vbNullString
  loc_B6548B: NeStr
  loc_B6548D: CVarBoolI2 var_9C
  loc_B65491: FLdRfVar var_10C
  loc_B65494: ImpAdCallFPR4  = IIf(, , )
  loc_B65499: FLdRfVar var_10C
  loc_B6549C: CStrVarTmp
  loc_B6549D: FStStr var_88
  loc_B654A0: FFreeStr var_C4 = ""
  loc_B654A7: FFreeAd var_B0 = ""
  loc_B654AE: FFreeVar var_C0 = "": var_D8 = "": var_9C = "": var_EC = "": var_FC = ""
  loc_B654BD: FLdPr Me
  loc_B654C0: VCallAd Control_ID_CodiSeceHastaMsk
  loc_B654C3: FStAdFunc var_B0
  loc_B654C6: FLdPr var_B0
  loc_B654C9: LateIdLdVar var_C0 DispID_22 0
  loc_B654D0: PopAd
  loc_B654D2: FLdPr Me
  loc_B654D5: VCallAd Control_ID_CodiSeceHastaMsk
  loc_B654D8: FStAdFunc var_C8
  loc_B654DB: FLdPr var_C8
  loc_B654DE: LateIdLdVar var_D8 DispID_22 0
  loc_B654E5: PopAd
  loc_B654E7: LitVarStr var_AC, vbNullString
  loc_B654EC: FStVarCopyObj var_FC
  loc_B654EF: FLdRfVar var_FC
  loc_B654F2: LitStr " AND CodiSece <= "
  loc_B654F5: FLdRfVar var_D8
  loc_B654F8: CStrVarTmp
  loc_B654F9: FStStrNoPop var_DC
  loc_B654FC: ConcatStr
  loc_B654FD: CVarStr var_EC
  loc_B65500: FLdRfVar var_C0
  loc_B65503: CStrVarTmp
  loc_B65504: FStStrNoPop var_C4
  loc_B65507: LitStr vbNullString
  loc_B6550A: NeStr
  loc_B6550C: CVarBoolI2 var_9C
  loc_B65510: FLdRfVar var_10C
  loc_B65513: ImpAdCallFPR4  = IIf(, , )
  loc_B65518: FLdRfVar var_10C
  loc_B6551B: CStrVarTmp
  loc_B6551C: FStStr var_8C
  loc_B6551F: FFreeStr var_C4 = ""
  loc_B65526: FFreeAd var_B0 = ""
  loc_B6552D: FFreeVar var_C0 = "": var_D8 = "": var_9C = "": var_EC = "": var_FC = ""
  loc_B6553C: FLdPr Me
  loc_B6553F: MemLdRfVar from_stack_1.global_76
  loc_B65542: NewIfNullAd
  loc_B65545: FStAd var_110 
  loc_B65549: LitStr "SELECT CodiSece, DetaSece, servceme.CodiTise, "
  loc_B6554C: LitStr " DetaTise,DetaConc,EmisSece,FrecSece,ImpoSece FROM servceme"
  loc_B6554F: ConcatStr
  loc_B65550: FStStrNoPop var_C4
  loc_B65553: LitStr " LEFT JOIN tiposepu on tiposepu.CodiTise = servceme.CodiTise"
  loc_B65556: ConcatStr
  loc_B65557: FStStrNoPop var_DC
  loc_B6555A: LitStr " LEFT JOIN concepto on concepto.PeriInfo = servceme.PeriInfo"
  loc_B6555D: ConcatStr
  loc_B6555E: FStStrNoPop var_114
  loc_B65561: LitStr " and concepto.CodiConc = servceme.CodiConc"
  loc_B65564: ConcatStr
  loc_B65565: FStStrNoPop var_118
  loc_B65568: LitStr " WHERE PeriOrde = "
  loc_B6556B: ConcatStr
  loc_B6556C: FStStrNoPop var_11C
  loc_B6556F: ImpAdLdI2 MemVar_D93036
  loc_B65572: CStrUI1
  loc_B65574: FStStrNoPop var_120
  loc_B65577: ConcatStr
  loc_B65578: FStStrNoPop var_124
  loc_B6557B: ILdRf var_88
  loc_B6557E: ConcatStr
  loc_B6557F: FStStrNoPop var_128
  loc_B65582: ILdRf var_8C
  loc_B65585: ConcatStr
  loc_B65586: FStStrNoPop var_12C
  loc_B65589: FLdPr var_110
  loc_B6558C: Call clsservceme.RedefineRS(from_stack_1v)
  loc_B65591: FFreeStr var_C4 = "": var_DC = "": var_114 = "": var_118 = "": var_11C = "": var_120 = "": var_124 = "": var_128 = ""
  loc_B655A6: FLdRfVar var_130
  loc_B655A9: FLdPr var_110
  loc_B655AC: from_stack_1 = clsservceme.RecordCount
  loc_B655B1: ILdRf var_130
  loc_B655B4: LitI4 0
  loc_B655B9: EqI4
  loc_B655BA: BranchF loc_B655C8
  loc_B655BD: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B655C0: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B655C5: Branch loc_B65801
  loc_B655C8: LitI4 0
  loc_B655CD: FLdRfVar var_130
  loc_B655D0: FLdPr var_110
  loc_B655D3: from_stack_1 = clsservceme.RecordCount
  loc_B655D8: ILdRf var_130
  loc_B655DB: FLdPr Me
  loc_B655DE: MemLdRfVar from_stack_1.global_80
  loc_B655E1: Redim
  loc_B655EB: FLdPr var_110
  loc_B655EE: Call clsservceme.MoveFirst()
  loc_B655F3: LitI2_Byte 1
  loc_B655F5: FLdPr Me
  loc_B655F8: MemLdRfVar from_stack_1.global_84
  loc_B655FB: FLdPr Me
  loc_B655FE: MemLdStr global_80
  loc_B65601: LitI2_Byte 1
  loc_B65603: FnUBound
  loc_B65605: CI2I4
  loc_B65606: ForI2 var_134
  loc_B6560C: FLdRfVar var_136
  loc_B6560F: FLdPr var_110
  loc_B65612: from_stack_1 = clsservceme.CodiSece
  loc_B65617: LitI2_Byte 0
  loc_B65619: LitVar_Missing var_C0
  loc_B6561C: LitI2_Byte 0
  loc_B6561E: FLdI2 var_136
  loc_B65621: CVarI2 var_9C
  loc_B65624: PopAdLdVar
  loc_B65625: FLdPr Me
  loc_B65628: MemLdI2 global_84
  loc_B6562B: CI4UI1
  loc_B6562C: FLdPr Me
  loc_B6562F: MemLdStr global_80
  loc_B65632: AryLock
  loc_B65635: Ary1LdPr
  loc_B65636: MemLdRfVar from_stack_1.global_0
  loc_B65639: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6563E: AryUnlock
  loc_B65641: FFree1Var var_C0 = ""
  loc_B65644: FLdRfVar var_C4
  loc_B65647: FLdPr var_110
  loc_B6564A: from_stack_1 = clsservceme.DetaSece
  loc_B6564F: LitI2_Byte 0
  loc_B65651: LitVar_Missing var_D8
  loc_B65654: LitI2_Byte 0
  loc_B65656: FLdZeroAd var_C4
  loc_B65659: CVarStr var_C0
  loc_B6565C: PopAdLdVar
  loc_B6565D: FLdPr Me
  loc_B65660: MemLdI2 global_84
  loc_B65663: CI4UI1
  loc_B65664: FLdPr Me
  loc_B65667: MemLdStr global_80
  loc_B6566A: AryLock
  loc_B6566D: Ary1LdPr
  loc_B6566E: MemLdRfVar from_stack_1.global_4
  loc_B65671: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B65676: AryUnlock
  loc_B65679: FFreeVar var_C0 = ""
  loc_B65680: FLdRfVar var_136
  loc_B65683: FLdPr var_110
  loc_B65686: from_stack_1 = clsservceme.CodiTise
  loc_B6568B: LitI2_Byte 0
  loc_B6568D: LitVar_Missing var_C0
  loc_B65690: LitI2_Byte 0
  loc_B65692: FLdI2 var_136
  loc_B65695: CVarI2 var_9C
  loc_B65698: PopAdLdVar
  loc_B65699: FLdPr Me
  loc_B6569C: MemLdI2 global_84
  loc_B6569F: CI4UI1
  loc_B656A0: FLdPr Me
  loc_B656A3: MemLdStr global_80
  loc_B656A6: AryLock
  loc_B656A9: Ary1LdPr
  loc_B656AA: MemLdRfVar from_stack_1.global_8
  loc_B656AD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B656B2: AryUnlock
  loc_B656B5: FFree1Var var_C0 = ""
  loc_B656B8: FLdRfVar var_C0
  loc_B656BB: FLdPr var_110
  loc_B656BE: from_stack_1 = clsservceme.DetaTise
  loc_B656C3: LitI2_Byte 0
  loc_B656C5: LitVar_Missing var_D8
  loc_B656C8: LitI2_Byte 0
  loc_B656CA: FLdVar var_C0
  loc_B656CE: FLdPr Me
  loc_B656D1: MemLdI2 global_84
  loc_B656D4: CI4UI1
  loc_B656D5: FLdPr Me
  loc_B656D8: MemLdStr global_80
  loc_B656DB: AryLock
  loc_B656DE: Ary1LdPr
  loc_B656DF: MemLdRfVar from_stack_1.global_12
  loc_B656E2: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B656E7: AryUnlock
  loc_B656EA: FFreeVar var_C0 = ""
  loc_B656F1: FLdRfVar var_C0
  loc_B656F4: FLdPr var_110
  loc_B656F7: from_stack_1 = clsservceme.DetaConc
  loc_B656FC: LitI2_Byte 0
  loc_B656FE: LitVar_Missing var_D8
  loc_B65701: LitI2_Byte 0
  loc_B65703: FLdVar var_C0
  loc_B65707: FLdPr Me
  loc_B6570A: MemLdI2 global_84
  loc_B6570D: CI4UI1
  loc_B6570E: FLdPr Me
  loc_B65711: MemLdStr global_80
  loc_B65714: AryLock
  loc_B65717: Ary1LdPr
  loc_B65718: MemLdRfVar from_stack_1.global_16
  loc_B6571B: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B65720: AryUnlock
  loc_B65723: FFreeVar var_C0 = ""
  loc_B6572A: FLdRfVar var_C4
  loc_B6572D: FLdPr var_110
  loc_B65730: from_stack_1 = clsservceme.EmisSece
  loc_B65735: LitI2_Byte 0
  loc_B65737: LitVar_Missing var_D8
  loc_B6573A: LitI2_Byte 0
  loc_B6573C: FLdZeroAd var_C4
  loc_B6573F: CVarStr var_C0
  loc_B65742: PopAdLdVar
  loc_B65743: FLdPr Me
  loc_B65746: MemLdI2 global_84
  loc_B65749: CI4UI1
  loc_B6574A: FLdPr Me
  loc_B6574D: MemLdStr global_80
  loc_B65750: AryLock
  loc_B65753: Ary1LdPr
  loc_B65754: MemLdRfVar from_stack_1.global_20
  loc_B65757: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B6575C: AryUnlock
  loc_B6575F: FFreeVar var_C0 = ""
  loc_B65766: FLdRfVar var_C4
  loc_B65769: FLdPr var_110
  loc_B6576C: from_stack_1 = clsservceme.FrecSece
  loc_B65771: LitI2_Byte 0
  loc_B65773: LitVar_Missing var_D8
  loc_B65776: LitI2_Byte 0
  loc_B65778: FLdZeroAd var_C4
  loc_B6577B: CVarStr var_C0
  loc_B6577E: PopAdLdVar
  loc_B6577F: FLdPr Me
  loc_B65782: MemLdI2 global_84
  loc_B65785: CI4UI1
  loc_B65786: FLdPr Me
  loc_B65789: MemLdStr global_80
  loc_B6578C: AryLock
  loc_B6578F: Ary1LdPr
  loc_B65790: MemLdRfVar from_stack_1.global_24
  loc_B65793: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B65798: AryUnlock
  loc_B6579B: FFreeVar var_C0 = ""
  loc_B657A2: FLdRfVar var_144
  loc_B657A5: FLdPr var_110
  loc_B657A8: from_stack_1 = clsservceme.ImpoSece
  loc_B657AD: LitI2_Byte 0
  loc_B657AF: LitVar_Missing var_C0
  loc_B657B2: LitI2_Byte &HFF
  loc_B657B4: FLdFPR8 var_144
  loc_B657B7: CVarR8
  loc_B657BB: PopAdLdVar
  loc_B657BC: FLdPr Me
  loc_B657BF: MemLdI2 global_84
  loc_B657C2: CI4UI1
  loc_B657C3: FLdPr Me
  loc_B657C6: MemLdStr global_80
  loc_B657C9: AryLock
  loc_B657CC: Ary1LdPr
  loc_B657CD: MemLdRfVar from_stack_1.global_28
  loc_B657D0: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B657D5: AryUnlock
  loc_B657D8: FFree1Var var_C0 = ""
  loc_B657DB: LitI2_Byte 1
  loc_B657DD: PopTmpLdAd2 var_136
  loc_B657E0: FLdPr var_110
  loc_B657E3: Call clsservceme.Move(from_stack_1v)
  loc_B657E8: FLdPr Me
  loc_B657EB: MemLdRfVar from_stack_1.global_84
  loc_B657EE: NextI2 var_134, loc_B6560C
  loc_B657F3: LitNothing
  loc_B657F5: FStAd var_110 
  loc_B657F9: LitI2_Byte &HFF
  loc_B657FB: FLdPr Me
  loc_B657FE: MemStI2 bGenerado
  loc_B65801: LitI4 0
  loc_B65806: CI2I4
  loc_B65807: FLdPr Me
  loc_B6580A: Me.MousePointer = from_stack_1
  loc_B6580F: LitVarStr var_9C, vbNullString
  loc_B65814: PopAdLdVar
  loc_B65815: FLdPr Me
  loc_B65818: VCallAd Control_ID_statusBar
  loc_B6581B: FStAdFunc var_B0
  loc_B6581E: FLdPr var_B0
  loc_B65821: LateIdSt
  loc_B65826: FFree1Ad var_B0
  loc_B65829: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'B03AAC
  'Data Table: 45D7F8
  loc_B038B0: FLdRfVar var_88
  loc_B038B3: LitI2_Byte 0
  loc_B038B5: LitI2_Byte &HFF
  loc_B038B7: ImpAdLdI4 MemVar_D93C84
  loc_B038BA: FLdPr Me
  loc_B038BD: MemLdRfVar from_stack_1.global_56
  loc_B038C0: NewIfNullPr IFileSystem3
  loc_B038C3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B038C8: ILdRf var_88
  loc_B038CB: FLdPr Me
  loc_B038CE: MemStVarAd
  loc_B038D2: FFree1Ad var_88
  loc_B038D5: LitI2_Byte &HFF
  loc_B038D7: ImpAdStI2 MemVar_D93C8A
  loc_B038DA: Call Proc_205_17_BCF940()
  loc_B038DF: LitI2_Byte 1
  loc_B038E1: FLdPr Me
  loc_B038E4: MemLdRfVar from_stack_1.global_84
  loc_B038E7: FLdPr Me
  loc_B038EA: MemLdStr global_80
  loc_B038ED: LitI2_Byte 1
  loc_B038EF: FnUBound
  loc_B038F1: CI2I4
  loc_B038F2: ForI2 var_8C
  loc_B038F8: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B038FD: PopAdLdVar
  loc_B038FE: FLdPr Me
  loc_B03901: MemLdRfVar from_stack_1.global_60
  loc_B03904: LdPrVar
  loc_B03906: LateMemCall
  loc_B0390C: FLdPr Me
  loc_B0390F: MemLdI2 global_84
  loc_B03912: CI4UI1
  loc_B03913: FLdPr Me
  loc_B03916: MemLdStr global_80
  loc_B03919: AryLock
  loc_B0391C: Ary1LdRf
  loc_B0391D: FStR4 var_B4
  loc_B03920: LitStr vbNullString
  loc_B03923: LitI2_Byte 0
  loc_B03925: LitI2_Byte 0
  loc_B03927: LitI2_Byte 0
  loc_B03929: LitStr "right"
  loc_B0392C: FMemLdR4 var_B4(0)
  loc_B03931: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03936: CVarStr var_C4
  loc_B03939: PopAdLdVar
  loc_B0393A: FLdPr Me
  loc_B0393D: MemLdRfVar from_stack_1.global_60
  loc_B03940: LdPrVar
  loc_B03942: LateMemCall
  loc_B03948: FFree1Var var_C4 = ""
  loc_B0394B: LitStr vbNullString
  loc_B0394E: LitI2_Byte 0
  loc_B03950: LitI2_Byte 0
  loc_B03952: LitI2_Byte 0
  loc_B03954: LitStr "left"
  loc_B03957: FMemLdR4 var_B4(4)
  loc_B0395C: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03961: CVarStr var_C4
  loc_B03964: PopAdLdVar
  loc_B03965: FLdPr Me
  loc_B03968: MemLdRfVar from_stack_1.global_60
  loc_B0396B: LdPrVar
  loc_B0396D: LateMemCall
  loc_B03973: FFree1Var var_C4 = ""
  loc_B03976: LitStr vbNullString
  loc_B03979: LitI2_Byte 0
  loc_B0397B: LitI2_Byte 0
  loc_B0397D: LitI2_Byte 0
  loc_B0397F: LitStr "left"
  loc_B03982: FMemLdR4 var_B4(8)
  loc_B03987: LitStr " - "
  loc_B0398A: ConcatStr
  loc_B0398B: FStStrNoPop var_C8
  loc_B0398E: FMemLdR4 var_B4(12)
  loc_B03993: ConcatStr
  loc_B03994: FStStrNoPop var_CC
  loc_B03997: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B0399C: CVarStr var_C4
  loc_B0399F: PopAdLdVar
  loc_B039A0: FLdPr Me
  loc_B039A3: MemLdRfVar from_stack_1.global_60
  loc_B039A6: LdPrVar
  loc_B039A8: LateMemCall
  loc_B039AE: FFreeStr var_C8 = ""
  loc_B039B5: FFree1Var var_C4 = ""
  loc_B039B8: LitStr vbNullString
  loc_B039BB: LitI2_Byte 0
  loc_B039BD: LitI2_Byte 0
  loc_B039BF: LitI2_Byte 0
  loc_B039C1: LitStr "left"
  loc_B039C4: FMemLdR4 var_B4(16)
  loc_B039C9: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B039CE: CVarStr var_C4
  loc_B039D1: PopAdLdVar
  loc_B039D2: FLdPr Me
  loc_B039D5: MemLdRfVar from_stack_1.global_60
  loc_B039D8: LdPrVar
  loc_B039DA: LateMemCall
  loc_B039E0: FFree1Var var_C4 = ""
  loc_B039E3: LitStr vbNullString
  loc_B039E6: LitI2_Byte 0
  loc_B039E8: LitI2_Byte 0
  loc_B039EA: LitI2_Byte 0
  loc_B039EC: LitStr "left"
  loc_B039EF: FMemLdR4 var_B4(20)
  loc_B039F4: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B039F9: CVarStr var_C4
  loc_B039FC: PopAdLdVar
  loc_B039FD: FLdPr Me
  loc_B03A00: MemLdRfVar from_stack_1.global_60
  loc_B03A03: LdPrVar
  loc_B03A05: LateMemCall
  loc_B03A0B: FFree1Var var_C4 = ""
  loc_B03A0E: LitStr vbNullString
  loc_B03A11: LitI2_Byte 0
  loc_B03A13: LitI2_Byte 0
  loc_B03A15: LitI2_Byte 0
  loc_B03A17: LitStr "left"
  loc_B03A1A: FMemLdR4 var_B4(24)
  loc_B03A1F: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03A24: CVarStr var_C4
  loc_B03A27: PopAdLdVar
  loc_B03A28: FLdPr Me
  loc_B03A2B: MemLdRfVar from_stack_1.global_60
  loc_B03A2E: LdPrVar
  loc_B03A30: LateMemCall
  loc_B03A36: FFree1Var var_C4 = ""
  loc_B03A39: LitStr vbNullString
  loc_B03A3C: LitI2_Byte 0
  loc_B03A3E: LitI2_Byte 0
  loc_B03A40: LitI2_Byte 0
  loc_B03A42: LitStr "right"
  loc_B03A45: FMemLdR4 var_B4(28)
  loc_B03A4A: ImpAdCallI2 Proc_272_23_B17298(, , , , , )
  loc_B03A4F: CVarStr var_C4
  loc_B03A52: PopAdLdVar
  loc_B03A53: FLdPr Me
  loc_B03A56: MemLdRfVar from_stack_1.global_60
  loc_B03A59: LdPrVar
  loc_B03A5B: LateMemCall
  loc_B03A61: FFree1Var var_C4 = ""
  loc_B03A64: LitI4 0
  loc_B03A69: FStR4 var_B4
  loc_B03A6C: AryUnlock
  loc_B03A6F: LitVarStr var_9C, "     </tr>"
  loc_B03A74: PopAdLdVar
  loc_B03A75: FLdPr Me
  loc_B03A78: MemLdRfVar from_stack_1.global_60
  loc_B03A7B: LdPrVar
  loc_B03A7D: LateMemCall
  loc_B03A83: FLdPr Me
  loc_B03A86: MemLdRfVar from_stack_1.global_84
  loc_B03A89: NextI2 var_8C, loc_B038F8
  loc_B03A8E: Call Proc_205_18_A0B878()
  loc_B03A93: FLdPr Me
  loc_B03A96: MemLdRfVar from_stack_1.global_60
  loc_B03A99: LdPrVar
  loc_B03A9B: LateMemCall
  loc_B03AA1: LitStr vbNullString
  loc_B03AA4: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_B03AA9: ExitProcHresult
  loc_B03AAA: FFree1Str var_7FFD
End Sub

Private Function Proc_205_17_BCF940() 'BCF940
  'Data Table: 45D7F8
  loc_BCF220: LitVarStr var_94, "<html>"
  loc_BCF225: PopAdLdVar
  loc_BCF226: FLdPr Me
  loc_BCF229: MemLdRfVar from_stack_1.global_60
  loc_BCF22C: LdPrVar
  loc_BCF22E: LateMemCall
  loc_BCF234: LitVarStr var_94, "<head>"
  loc_BCF239: PopAdLdVar
  loc_BCF23A: FLdPr Me
  loc_BCF23D: MemLdRfVar from_stack_1.global_60
  loc_BCF240: LdPrVar
  loc_BCF242: LateMemCall
  loc_BCF248: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_BCF24D: PopAdLdVar
  loc_BCF24E: FLdPr Me
  loc_BCF251: MemLdRfVar from_stack_1.global_60
  loc_BCF254: LdPrVar
  loc_BCF256: LateMemCall
  loc_BCF25C: LitStr "<title>"
  loc_BCF25F: FLdRfVar var_A8
  loc_BCF262: FLdPr Me
  loc_BCF265:  = Me.Caption
  loc_BCF26A: ILdRf var_A8
  loc_BCF26D: ConcatStr
  loc_BCF26E: FStStrNoPop var_AC
  loc_BCF271: LitStr "</title>"
  loc_BCF274: ConcatStr
  loc_BCF275: CVarStr var_BC
  loc_BCF278: PopAdLdVar
  loc_BCF279: FLdPr Me
  loc_BCF27C: MemLdRfVar from_stack_1.global_60
  loc_BCF27F: LdPrVar
  loc_BCF281: LateMemCall
  loc_BCF287: FFreeStr var_A8 = ""
  loc_BCF28E: FFree1Var var_BC = ""
  loc_BCF291: LitVarStr var_94, "<style type=""text/css"">"
  loc_BCF296: PopAdLdVar
  loc_BCF297: FLdPr Me
  loc_BCF29A: MemLdRfVar from_stack_1.global_60
  loc_BCF29D: LdPrVar
  loc_BCF29F: LateMemCall
  loc_BCF2A5: LitVarStr var_94, ".Titulo1 {"
  loc_BCF2AA: PopAdLdVar
  loc_BCF2AB: FLdPr Me
  loc_BCF2AE: MemLdRfVar from_stack_1.global_60
  loc_BCF2B1: LdPrVar
  loc_BCF2B3: LateMemCall
  loc_BCF2B9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCF2BE: PopAdLdVar
  loc_BCF2BF: FLdPr Me
  loc_BCF2C2: MemLdRfVar from_stack_1.global_60
  loc_BCF2C5: LdPrVar
  loc_BCF2C7: LateMemCall
  loc_BCF2CD: LitVarStr var_94, " font-size: 18px;"
  loc_BCF2D2: PopAdLdVar
  loc_BCF2D3: FLdPr Me
  loc_BCF2D6: MemLdRfVar from_stack_1.global_60
  loc_BCF2D9: LdPrVar
  loc_BCF2DB: LateMemCall
  loc_BCF2E1: LitVarStr var_94, " font-weight: bold;"
  loc_BCF2E6: PopAdLdVar
  loc_BCF2E7: FLdPr Me
  loc_BCF2EA: MemLdRfVar from_stack_1.global_60
  loc_BCF2ED: LdPrVar
  loc_BCF2EF: LateMemCall
  loc_BCF2F5: LitVarStr var_94, "}"
  loc_BCF2FA: PopAdLdVar
  loc_BCF2FB: FLdPr Me
  loc_BCF2FE: MemLdRfVar from_stack_1.global_60
  loc_BCF301: LdPrVar
  loc_BCF303: LateMemCall
  loc_BCF309: LitVarStr var_94, ".Titulo2 {"
  loc_BCF30E: PopAdLdVar
  loc_BCF30F: FLdPr Me
  loc_BCF312: MemLdRfVar from_stack_1.global_60
  loc_BCF315: LdPrVar
  loc_BCF317: LateMemCall
  loc_BCF31D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCF322: PopAdLdVar
  loc_BCF323: FLdPr Me
  loc_BCF326: MemLdRfVar from_stack_1.global_60
  loc_BCF329: LdPrVar
  loc_BCF32B: LateMemCall
  loc_BCF331: LitVarStr var_94, " font-size: 14px;"
  loc_BCF336: PopAdLdVar
  loc_BCF337: FLdPr Me
  loc_BCF33A: MemLdRfVar from_stack_1.global_60
  loc_BCF33D: LdPrVar
  loc_BCF33F: LateMemCall
  loc_BCF345: LitVarStr var_94, " font-weight: bold;"
  loc_BCF34A: PopAdLdVar
  loc_BCF34B: FLdPr Me
  loc_BCF34E: MemLdRfVar from_stack_1.global_60
  loc_BCF351: LdPrVar
  loc_BCF353: LateMemCall
  loc_BCF359: LitVarStr var_94, "}"
  loc_BCF35E: PopAdLdVar
  loc_BCF35F: FLdPr Me
  loc_BCF362: MemLdRfVar from_stack_1.global_60
  loc_BCF365: LdPrVar
  loc_BCF367: LateMemCall
  loc_BCF36D: LitVarStr var_94, ".Normal {"
  loc_BCF372: PopAdLdVar
  loc_BCF373: FLdPr Me
  loc_BCF376: MemLdRfVar from_stack_1.global_60
  loc_BCF379: LdPrVar
  loc_BCF37B: LateMemCall
  loc_BCF381: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_BCF386: PopAdLdVar
  loc_BCF387: FLdPr Me
  loc_BCF38A: MemLdRfVar from_stack_1.global_60
  loc_BCF38D: LdPrVar
  loc_BCF38F: LateMemCall
  loc_BCF395: LitVarStr var_94, " font-size: 12px;"
  loc_BCF39A: PopAdLdVar
  loc_BCF39B: FLdPr Me
  loc_BCF39E: MemLdRfVar from_stack_1.global_60
  loc_BCF3A1: LdPrVar
  loc_BCF3A3: LateMemCall
  loc_BCF3A9: LitVarStr var_94, " font-style: normal;"
  loc_BCF3AE: PopAdLdVar
  loc_BCF3AF: FLdPr Me
  loc_BCF3B2: MemLdRfVar from_stack_1.global_60
  loc_BCF3B5: LdPrVar
  loc_BCF3B7: LateMemCall
  loc_BCF3BD: LitVarStr var_94, " font-weight: normal;"
  loc_BCF3C2: PopAdLdVar
  loc_BCF3C3: FLdPr Me
  loc_BCF3C6: MemLdRfVar from_stack_1.global_60
  loc_BCF3C9: LdPrVar
  loc_BCF3CB: LateMemCall
  loc_BCF3D1: LitVarStr var_94, " font-variant: normal;"
  loc_BCF3D6: PopAdLdVar
  loc_BCF3D7: FLdPr Me
  loc_BCF3DA: MemLdRfVar from_stack_1.global_60
  loc_BCF3DD: LdPrVar
  loc_BCF3DF: LateMemCall
  loc_BCF3E5: LitVarStr var_94, "}"
  loc_BCF3EA: PopAdLdVar
  loc_BCF3EB: FLdPr Me
  loc_BCF3EE: MemLdRfVar from_stack_1.global_60
  loc_BCF3F1: LdPrVar
  loc_BCF3F3: LateMemCall
  loc_BCF3F9: LitVarStr var_94, ".Encabezado {"
  loc_BCF3FE: PopAdLdVar
  loc_BCF3FF: FLdPr Me
  loc_BCF402: MemLdRfVar from_stack_1.global_60
  loc_BCF405: LdPrVar
  loc_BCF407: LateMemCall
  loc_BCF40D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_BCF412: PopAdLdVar
  loc_BCF413: FLdPr Me
  loc_BCF416: MemLdRfVar from_stack_1.global_60
  loc_BCF419: LdPrVar
  loc_BCF41B: LateMemCall
  loc_BCF421: LitVarStr var_94, " font-size: 11px;"
  loc_BCF426: PopAdLdVar
  loc_BCF427: FLdPr Me
  loc_BCF42A: MemLdRfVar from_stack_1.global_60
  loc_BCF42D: LdPrVar
  loc_BCF42F: LateMemCall
  loc_BCF435: LitVarStr var_94, " font-weight: bold;"
  loc_BCF43A: PopAdLdVar
  loc_BCF43B: FLdPr Me
  loc_BCF43E: MemLdRfVar from_stack_1.global_60
  loc_BCF441: LdPrVar
  loc_BCF443: LateMemCall
  loc_BCF449: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_BCF44E: PopAdLdVar
  loc_BCF44F: FLdPr Me
  loc_BCF452: MemLdRfVar from_stack_1.global_60
  loc_BCF455: LdPrVar
  loc_BCF457: LateMemCall
  loc_BCF45D: LitVarStr var_94, "}"
  loc_BCF462: PopAdLdVar
  loc_BCF463: FLdPr Me
  loc_BCF466: MemLdRfVar from_stack_1.global_60
  loc_BCF469: LdPrVar
  loc_BCF46B: LateMemCall
  loc_BCF471: LitVarStr var_94, ".LineaDato {"
  loc_BCF476: PopAdLdVar
  loc_BCF477: FLdPr Me
  loc_BCF47A: MemLdRfVar from_stack_1.global_60
  loc_BCF47D: LdPrVar
  loc_BCF47F: LateMemCall
  loc_BCF485: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCF48A: PopAdLdVar
  loc_BCF48B: FLdPr Me
  loc_BCF48E: MemLdRfVar from_stack_1.global_60
  loc_BCF491: LdPrVar
  loc_BCF493: LateMemCall
  loc_BCF499: LitVarStr var_94, " font-size: 10px;"
  loc_BCF49E: PopAdLdVar
  loc_BCF49F: FLdPr Me
  loc_BCF4A2: MemLdRfVar from_stack_1.global_60
  loc_BCF4A5: LdPrVar
  loc_BCF4A7: LateMemCall
  loc_BCF4AD: LitVarStr var_94, "}"
  loc_BCF4B2: PopAdLdVar
  loc_BCF4B3: FLdPr Me
  loc_BCF4B6: MemLdRfVar from_stack_1.global_60
  loc_BCF4B9: LdPrVar
  loc_BCF4BB: LateMemCall
  loc_BCF4C1: LitVarStr var_94, ".Totales {"
  loc_BCF4C6: PopAdLdVar
  loc_BCF4C7: FLdPr Me
  loc_BCF4CA: MemLdRfVar from_stack_1.global_60
  loc_BCF4CD: LdPrVar
  loc_BCF4CF: LateMemCall
  loc_BCF4D5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCF4DA: PopAdLdVar
  loc_BCF4DB: FLdPr Me
  loc_BCF4DE: MemLdRfVar from_stack_1.global_60
  loc_BCF4E1: LdPrVar
  loc_BCF4E3: LateMemCall
  loc_BCF4E9: LitVarStr var_94, " font-size: 12px;"
  loc_BCF4EE: PopAdLdVar
  loc_BCF4EF: FLdPr Me
  loc_BCF4F2: MemLdRfVar from_stack_1.global_60
  loc_BCF4F5: LdPrVar
  loc_BCF4F7: LateMemCall
  loc_BCF4FD: LitVarStr var_94, " font-weight: bold;"
  loc_BCF502: PopAdLdVar
  loc_BCF503: FLdPr Me
  loc_BCF506: MemLdRfVar from_stack_1.global_60
  loc_BCF509: LdPrVar
  loc_BCF50B: LateMemCall
  loc_BCF511: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BCF516: PopAdLdVar
  loc_BCF517: FLdPr Me
  loc_BCF51A: MemLdRfVar from_stack_1.global_60
  loc_BCF51D: LdPrVar
  loc_BCF51F: LateMemCall
  loc_BCF525: LitVarStr var_94, "}"
  loc_BCF52A: PopAdLdVar
  loc_BCF52B: FLdPr Me
  loc_BCF52E: MemLdRfVar from_stack_1.global_60
  loc_BCF531: LdPrVar
  loc_BCF533: LateMemCall
  loc_BCF539: LitVarStr var_94, ".SubTotales {"
  loc_BCF53E: PopAdLdVar
  loc_BCF53F: FLdPr Me
  loc_BCF542: MemLdRfVar from_stack_1.global_60
  loc_BCF545: LdPrVar
  loc_BCF547: LateMemCall
  loc_BCF54D: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_BCF552: PopAdLdVar
  loc_BCF553: FLdPr Me
  loc_BCF556: MemLdRfVar from_stack_1.global_60
  loc_BCF559: LdPrVar
  loc_BCF55B: LateMemCall
  loc_BCF561: LitVarStr var_94, " font-size: 10px;"
  loc_BCF566: PopAdLdVar
  loc_BCF567: FLdPr Me
  loc_BCF56A: MemLdRfVar from_stack_1.global_60
  loc_BCF56D: LdPrVar
  loc_BCF56F: LateMemCall
  loc_BCF575: LitVarStr var_94, " font-weight: bold;"
  loc_BCF57A: PopAdLdVar
  loc_BCF57B: FLdPr Me
  loc_BCF57E: MemLdRfVar from_stack_1.global_60
  loc_BCF581: LdPrVar
  loc_BCF583: LateMemCall
  loc_BCF589: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_BCF58E: PopAdLdVar
  loc_BCF58F: FLdPr Me
  loc_BCF592: MemLdRfVar from_stack_1.global_60
  loc_BCF595: LdPrVar
  loc_BCF597: LateMemCall
  loc_BCF59D: LitVarStr var_94, "}"
  loc_BCF5A2: PopAdLdVar
  loc_BCF5A3: FLdPr Me
  loc_BCF5A6: MemLdRfVar from_stack_1.global_60
  loc_BCF5A9: LdPrVar
  loc_BCF5AB: LateMemCall
  loc_BCF5B1: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_BCF5B6: PopAdLdVar
  loc_BCF5B7: FLdPr Me
  loc_BCF5BA: MemLdRfVar from_stack_1.global_60
  loc_BCF5BD: LdPrVar
  loc_BCF5BF: LateMemCall
  loc_BCF5C5: LitVarStr var_94, "</style>"
  loc_BCF5CA: PopAdLdVar
  loc_BCF5CB: FLdPr Me
  loc_BCF5CE: MemLdRfVar from_stack_1.global_60
  loc_BCF5D1: LdPrVar
  loc_BCF5D3: LateMemCall
  loc_BCF5D9: LitI4 0
  loc_BCF5DE: FStStrCopy var_AC
  loc_BCF5E1: FLdRfVar var_AC
  loc_BCF5E4: LitI4 0
  loc_BCF5E9: FStStrCopy var_A8
  loc_BCF5EC: FLdRfVar var_A8
  loc_BCF5EF: LitI2_Byte &HFF
  loc_BCF5F1: PopTmpLdAd2 var_BE
  loc_BCF5F4: FLdPr Me
  loc_BCF5F7: MemLdRfVar from_stack_1.global_60
  loc_BCF5FA: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_BCF5FF: FFreeStr var_A8 = ""
  loc_BCF606: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_BCF60B: PopAdLdVar
  loc_BCF60C: FLdPr Me
  loc_BCF60F: MemLdRfVar from_stack_1.global_60
  loc_BCF612: LdPrVar
  loc_BCF614: LateMemCall
  loc_BCF61A: LitVarStr var_94, "  <tr valign=""middle"">"
  loc_BCF61F: PopAdLdVar
  loc_BCF620: FLdPr Me
  loc_BCF623: MemLdRfVar from_stack_1.global_60
  loc_BCF626: LdPrVar
  loc_BCF628: LateMemCall
  loc_BCF62E: LitStr "    <th width=""100" & Chr(37) & """ colspan=""2"" align=""center"" valign=""middle""><p><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_BCF631: LitI2_Byte &H5F
  loc_BCF633: CStrUI1
  loc_BCF635: FStStrNoPop var_A8
  loc_BCF638: ConcatStr
  loc_BCF639: FStStrNoPop var_AC
  loc_BCF63C: LitStr """ height="""
  loc_BCF63F: ConcatStr
  loc_BCF640: FStStrNoPop var_C4
  loc_BCF643: LitI2_Byte &H3C
  loc_BCF645: CStrUI1
  loc_BCF647: FStStrNoPop var_C8
  loc_BCF64A: ConcatStr
  loc_BCF64B: FStStrNoPop var_CC
  loc_BCF64E: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>"
  loc_BCF651: ConcatStr
  loc_BCF652: FStStrNoPop var_D0
  loc_BCF655: LitStr "Municipalidad de Guaymallén"
  loc_BCF658: ConcatStr
  loc_BCF659: FStStrNoPop var_D4
  loc_BCF65C: LitStr "</p>"
  loc_BCF65F: ConcatStr
  loc_BCF660: CVarStr var_BC
  loc_BCF663: PopAdLdVar
  loc_BCF664: FLdPr Me
  loc_BCF667: MemLdRfVar from_stack_1.global_60
  loc_BCF66A: LdPrVar
  loc_BCF66C: LateMemCall
  loc_BCF672: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = ""
  loc_BCF683: FFree1Var var_BC = ""
  loc_BCF686: LitStr "    <p>"
  loc_BCF689: FLdRfVar var_A8
  loc_BCF68C: FLdPr Me
  loc_BCF68F:  = Me.Caption
  loc_BCF694: ILdRf var_A8
  loc_BCF697: ConcatStr
  loc_BCF698: FStStrNoPop var_AC
  loc_BCF69B: LitStr "</p></th>"
  loc_BCF69E: ConcatStr
  loc_BCF69F: CVarStr var_BC
  loc_BCF6A2: PopAdLdVar
  loc_BCF6A3: FLdPr Me
  loc_BCF6A6: MemLdRfVar from_stack_1.global_60
  loc_BCF6A9: LdPrVar
  loc_BCF6AB: LateMemCall
  loc_BCF6B1: FFreeStr var_A8 = ""
  loc_BCF6B8: FFree1Var var_BC = ""
  loc_BCF6BB: LitVarStr var_94, "  </tr>"
  loc_BCF6C0: PopAdLdVar
  loc_BCF6C1: FLdPr Me
  loc_BCF6C4: MemLdRfVar from_stack_1.global_60
  loc_BCF6C7: LdPrVar
  loc_BCF6C9: LateMemCall
  loc_BCF6CF: LitVarStr var_94, "  <tr>"
  loc_BCF6D4: PopAdLdVar
  loc_BCF6D5: FLdPr Me
  loc_BCF6D8: MemLdRfVar from_stack_1.global_60
  loc_BCF6DB: LdPrVar
  loc_BCF6DD: LateMemCall
  loc_BCF6E3: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""middle""><hr></th>"
  loc_BCF6E8: PopAdLdVar
  loc_BCF6E9: FLdPr Me
  loc_BCF6EC: MemLdRfVar from_stack_1.global_60
  loc_BCF6EF: LdPrVar
  loc_BCF6F1: LateMemCall
  loc_BCF6F7: LitVarStr var_94, "  </tr>"
  loc_BCF6FC: PopAdLdVar
  loc_BCF6FD: FLdPr Me
  loc_BCF700: MemLdRfVar from_stack_1.global_60
  loc_BCF703: LdPrVar
  loc_BCF705: LateMemCall
  loc_BCF70B: LitVarStr var_94, "  <tr valign=""top"" class=""Normal"">"
  loc_BCF710: PopAdLdVar
  loc_BCF711: FLdPr Me
  loc_BCF714: MemLdRfVar from_stack_1.global_60
  loc_BCF717: LdPrVar
  loc_BCF719: LateMemCall
  loc_BCF71F: FLdPr Me
  loc_BCF722: VCallAd Control_ID_CodiSeceDesdeMsk
  loc_BCF725: FStAdFunc var_D8
  loc_BCF728: FLdPr var_D8
  loc_BCF72B: LateIdLdVar var_BC DispID_22 0
  loc_BCF732: CStrVarTmp
  loc_BCF733: FStStrNoPop var_A8
  loc_BCF736: LitStr vbNullString
  loc_BCF739: NeStr
  loc_BCF73B: FFree1Str var_A8
  loc_BCF73E: FFree1Ad var_D8
  loc_BCF741: FFree1Var var_BC = ""
  loc_BCF744: BranchF loc_BCF78F
  loc_BCF747: LitStr "    <td align=""left""><strong>Desde Código: </strong>"
  loc_BCF74A: FLdPr Me
  loc_BCF74D: VCallAd Control_ID_CodiSeceDesdeMsk
  loc_BCF750: FStAdFunc var_D8
  loc_BCF753: FLdPr var_D8
  loc_BCF756: LateIdLdVar var_BC DispID_22 0
  loc_BCF75D: CStrVarTmp
  loc_BCF75E: FStStrNoPop var_A8
  loc_BCF761: ConcatStr
  loc_BCF762: FStStrNoPop var_AC
  loc_BCF765: LitStr "</td>"
  loc_BCF768: ConcatStr
  loc_BCF769: CVarStr var_E8
  loc_BCF76C: PopAdLdVar
  loc_BCF76D: FLdPr Me
  loc_BCF770: MemLdRfVar from_stack_1.global_60
  loc_BCF773: LdPrVar
  loc_BCF775: LateMemCall
  loc_BCF77B: FFreeStr var_A8 = ""
  loc_BCF782: FFree1Ad var_D8
  loc_BCF785: FFreeVar var_BC = ""
  loc_BCF78C: Branch loc_BCF7A3
  loc_BCF78F: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_BCF794: PopAdLdVar
  loc_BCF795: FLdPr Me
  loc_BCF798: MemLdRfVar from_stack_1.global_60
  loc_BCF79B: LdPrVar
  loc_BCF79D: LateMemCall
  loc_BCF7A3: FLdPr Me
  loc_BCF7A6: VCallAd Control_ID_CodiSeceHastaMsk
  loc_BCF7A9: FStAdFunc var_D8
  loc_BCF7AC: FLdPr var_D8
  loc_BCF7AF: LateIdLdVar var_BC DispID_22 0
  loc_BCF7B6: CStrVarTmp
  loc_BCF7B7: FStStrNoPop var_A8
  loc_BCF7BA: LitStr vbNullString
  loc_BCF7BD: NeStr
  loc_BCF7BF: FFree1Str var_A8
  loc_BCF7C2: FFree1Ad var_D8
  loc_BCF7C5: FFree1Var var_BC = ""
  loc_BCF7C8: BranchF loc_BCF813
  loc_BCF7CB: LitStr "    <td align=""right""><strong>Hasta Código: </strong>"
  loc_BCF7CE: FLdPr Me
  loc_BCF7D1: VCallAd Control_ID_CodiSeceHastaMsk
  loc_BCF7D4: FStAdFunc var_D8
  loc_BCF7D7: FLdPr var_D8
  loc_BCF7DA: LateIdLdVar var_BC DispID_22 0
  loc_BCF7E1: CStrVarTmp
  loc_BCF7E2: FStStrNoPop var_A8
  loc_BCF7E5: ConcatStr
  loc_BCF7E6: FStStrNoPop var_AC
  loc_BCF7E9: LitStr "</td>"
  loc_BCF7EC: ConcatStr
  loc_BCF7ED: CVarStr var_E8
  loc_BCF7F0: PopAdLdVar
  loc_BCF7F1: FLdPr Me
  loc_BCF7F4: MemLdRfVar from_stack_1.global_60
  loc_BCF7F7: LdPrVar
  loc_BCF7F9: LateMemCall
  loc_BCF7FF: FFreeStr var_A8 = ""
  loc_BCF806: FFree1Ad var_D8
  loc_BCF809: FFreeVar var_BC = ""
  loc_BCF810: Branch loc_BCF827
  loc_BCF813: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_BCF818: PopAdLdVar
  loc_BCF819: FLdPr Me
  loc_BCF81C: MemLdRfVar from_stack_1.global_60
  loc_BCF81F: LdPrVar
  loc_BCF821: LateMemCall
  loc_BCF827: LitVarStr var_94, "  </tr>"
  loc_BCF82C: PopAdLdVar
  loc_BCF82D: FLdPr Me
  loc_BCF830: MemLdRfVar from_stack_1.global_60
  loc_BCF833: LdPrVar
  loc_BCF835: LateMemCall
  loc_BCF83B: LitVarStr var_94, "</table>"
  loc_BCF840: PopAdLdVar
  loc_BCF841: FLdPr Me
  loc_BCF844: MemLdRfVar from_stack_1.global_60
  loc_BCF847: LdPrVar
  loc_BCF849: LateMemCall
  loc_BCF84F: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_BCF854: PopAdLdVar
  loc_BCF855: FLdPr Me
  loc_BCF858: MemLdRfVar from_stack_1.global_60
  loc_BCF85B: LdPrVar
  loc_BCF85D: LateMemCall
  loc_BCF863: LitVarStr var_94, "  <thead>"
  loc_BCF868: PopAdLdVar
  loc_BCF869: FLdPr Me
  loc_BCF86C: MemLdRfVar from_stack_1.global_60
  loc_BCF86F: LdPrVar
  loc_BCF871: LateMemCall
  loc_BCF877: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_BCF87C: PopAdLdVar
  loc_BCF87D: FLdPr Me
  loc_BCF880: MemLdRfVar from_stack_1.global_60
  loc_BCF883: LdPrVar
  loc_BCF885: LateMemCall
  loc_BCF88B: LitVarStr var_94, "    <th>Código</th>"
  loc_BCF890: PopAdLdVar
  loc_BCF891: FLdPr Me
  loc_BCF894: MemLdRfVar from_stack_1.global_60
  loc_BCF897: LdPrVar
  loc_BCF899: LateMemCall
  loc_BCF89F: LitVarStr var_94, "    <th>Detalle</th>"
  loc_BCF8A4: PopAdLdVar
  loc_BCF8A5: FLdPr Me
  loc_BCF8A8: MemLdRfVar from_stack_1.global_60
  loc_BCF8AB: LdPrVar
  loc_BCF8AD: LateMemCall
  loc_BCF8B3: LitVarStr var_94, "    <th>Tipo de<br>Sepultura</th>"
  loc_BCF8B8: PopAdLdVar
  loc_BCF8B9: FLdPr Me
  loc_BCF8BC: MemLdRfVar from_stack_1.global_60
  loc_BCF8BF: LdPrVar
  loc_BCF8C1: LateMemCall
  loc_BCF8C7: LitVarStr var_94, "    <th>Concepto</th>"
  loc_BCF8CC: PopAdLdVar
  loc_BCF8CD: FLdPr Me
  loc_BCF8D0: MemLdRfVar from_stack_1.global_60
  loc_BCF8D3: LdPrVar
  loc_BCF8D5: LateMemCall
  loc_BCF8DB: LitVarStr var_94, "    <th>Emisión</th>"
  loc_BCF8E0: PopAdLdVar
  loc_BCF8E1: FLdPr Me
  loc_BCF8E4: MemLdRfVar from_stack_1.global_60
  loc_BCF8E7: LdPrVar
  loc_BCF8E9: LateMemCall
  loc_BCF8EF: LitVarStr var_94, "    <th>Frecuencia</th>"
  loc_BCF8F4: PopAdLdVar
  loc_BCF8F5: FLdPr Me
  loc_BCF8F8: MemLdRfVar from_stack_1.global_60
  loc_BCF8FB: LdPrVar
  loc_BCF8FD: LateMemCall
  loc_BCF903: LitVarStr var_94, "    <th>Importe</th>"
  loc_BCF908: PopAdLdVar
  loc_BCF909: FLdPr Me
  loc_BCF90C: MemLdRfVar from_stack_1.global_60
  loc_BCF90F: LdPrVar
  loc_BCF911: LateMemCall
  loc_BCF917: LitVarStr var_94, "  </tr>"
  loc_BCF91C: PopAdLdVar
  loc_BCF91D: FLdPr Me
  loc_BCF920: MemLdRfVar from_stack_1.global_60
  loc_BCF923: LdPrVar
  loc_BCF925: LateMemCall
  loc_BCF92B: LitVarStr var_94, "  </thead>"
  loc_BCF930: PopAdLdVar
  loc_BCF931: FLdPr Me
  loc_BCF934: MemLdRfVar from_stack_1.global_60
  loc_BCF937: LdPrVar
  loc_BCF939: LateMemCall
  loc_BCF93F: ExitProcHresult
End Function

Private Function Proc_205_18_A0B878() 'A0B878
  'Data Table: 45D7F8
  loc_A0B838: LitVarStr var_94, "</table>"
  loc_A0B83D: PopAdLdVar
  loc_A0B83E: FLdPr Me
  loc_A0B841: MemLdRfVar from_stack_1.global_60
  loc_A0B844: LdPrVar
  loc_A0B846: LateMemCall
  loc_A0B84C: LitVarStr var_94, "</body>"
  loc_A0B851: PopAdLdVar
  loc_A0B852: FLdPr Me
  loc_A0B855: MemLdRfVar from_stack_1.global_60
  loc_A0B858: LdPrVar
  loc_A0B85A: LateMemCall
  loc_A0B860: LitVarStr var_94, "</html>"
  loc_A0B865: PopAdLdVar
  loc_A0B866: FLdPr Me
  loc_A0B869: MemLdRfVar from_stack_1.global_60
  loc_A0B86C: LdPrVar
  loc_A0B86E: LateMemCall
  loc_A0B874: ExitProcHresult
End Function
