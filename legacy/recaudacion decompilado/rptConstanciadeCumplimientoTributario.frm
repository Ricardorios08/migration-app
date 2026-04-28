VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptConstanciadeCumplimientoTributario
  Caption = "Constancia de Cumplimiento Tributario"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptConstanciadeCumplimientoTributario.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10908
  ClientHeight = 2664
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
    Top = 2415
    Width = 10905
    Height = 255
    TabIndex = 8
    OleObjectBlob = "rptConstanciadeCumplimientoTributario.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9720
    Top = 1440
    Width = 855
    Height = 735
    TabIndex = 5
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
    Picture = "rptConstanciadeCumplimientoTributario.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptConstanciadeCumplimientoTributario.frx":0B9C
    Left = 6480
    Top = 1440
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1080
    Width = 1815
    Height = 1215
    TabIndex = 3
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
    Top = 1080
    Width = 4095
    Height = 1215
    TabIndex = 0
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 2
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 1
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10695
    Height = 975
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox CucuPersTxt
      ForeColor = &HFF0000&
      Left = 1080
      Top = 360
      Width = 1815
      Height = 345
      TabIndex = 11
      MaxLength = 11
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9000
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 10
    End
    Begin VB.Label Label1
      Caption = "C.U.I.T.:"
      Left = 120
      Top = 360
      Width = 855
      Height = 300
      TabIndex = 9
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9480
    Top = 1560
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptConstanciadeCumplimientoTributario.frx":0C00
  End
End

Attribute VB_Name = "rptConstanciadeCumplimientoTributario"

Public bGenerado As Boolean

Private Type UDT_1_00562DC4
  bStruc(40) As Byte ' String fields: 10
End Type


Private Sub cmdNueva_Click() 'A3526C
  'Data Table: 458100
  loc_A3521C: LitI2_Byte 0
  loc_A3521E: FLdPr Me
  loc_A35221: MemStI2 bGenerado
  loc_A35224: LitI2_Byte 0
  loc_A35226: ILdRf Me
  loc_A35229: CastAd
  loc_A3522C: FStAdFunc var_88
  loc_A3522F: FLdRfVar var_88
  loc_A35232: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A35237: FFree1Ad var_88
  loc_A3523A: LitStr vbNullString
  loc_A3523D: FLdPr Me
  loc_A35240: VCallAd Control_ID_CucuPersTxt
  loc_A35243: FStAdFunc var_88
  loc_A35246: FLdPr var_88
  loc_A35249: Me.Text = from_stack_1
  loc_A3524E: FFree1Ad var_88
  loc_A35251: Call HabilitarCriterio()
  loc_A35256: ILdRf Me
  loc_A35259: CastAd
  loc_A3525C: FStAdFunc var_88
  loc_A3525F: FLdRfVar var_88
  loc_A35262: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A35267: FFree1Ad var_88
  loc_A3526A: ExitProcHresult
End Sub

Private Sub Form_Load() '9E474C
  'Data Table: 458100
  loc_9E4730: ILdRf Me
  loc_9E4733: CastAd
  loc_9E4736: FStAdFunc var_88
  loc_9E4739: FLdRfVar var_88
  loc_9E473C: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E4741: FFree1Ad var_88
  loc_9E4744: Call cmdNueva_Click()
  loc_9E4749: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9DC898
  'Data Table: 458100
  loc_9DC880: FLdPr Me
  loc_9DC883: VCallAd Control_ID_wbbReporte
  loc_9DC886: FStAdFunc var_88
  loc_9DC889: FLdRfVar var_88
  loc_9DC88C: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9DC891: FFree1Ad var_88
  loc_9DC894: ExitProcHresult
  loc_9DC895: FStFPR8 var_B0
End Sub

Private Sub cmdPredeterminada_Click() 'A41E88
  'Data Table: 458100
  loc_A41E34: LitI2_Byte 0
  loc_A41E36: ILdRf Me
  loc_A41E39: CastAd
  loc_A41E3C: FStAdFunc var_88
  loc_A41E3F: FLdRfVar var_88
  loc_A41E42: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A41E47: FFree1Ad var_88
  loc_A41E4A: FLdRfVar var_8A
  loc_A41E4D: FLdPr Me
  loc_A41E50: VCallAd Control_ID_cmdPredeterminada
  loc_A41E53: FStAdFunc var_88
  loc_A41E56: FLdPr var_88
  loc_A41E59:  = Me.Enabled
  loc_A41E5E: FLdI2 var_8A
  loc_A41E61: NotI4
  loc_A41E62: FFree1Ad var_88
  loc_A41E65: BranchF loc_A41E70
  loc_A41E68: ImpAdCallFPR4 DoEvents()
  loc_A41E6D: Branch loc_A41E4A
  loc_A41E70: ILdRf Me
  loc_A41E73: FStAdNoPop
  loc_A41E77: ImpAdLdRf MemVar_D9C5D8
  loc_A41E7A: NewIfNullPr Global
  loc_A41E7D: Global.Unload from_stack_1
  loc_A41E82: FFree1Ad var_88
  loc_A41E85: ExitProcHresult
  loc_A41E86: FStVarCopyObj var_77FD
End Sub

Private Sub cmdSalir_Click() 'A02888
  'Data Table: 458100
  loc_A02858: LitVarStr var_94, "Cerrando..."
  loc_A0285D: PopAdLdVar
  loc_A0285E: FLdPr Me
  loc_A02861: VCallAd Control_ID_statusBar
  loc_A02864: FStAdFunc var_A8
  loc_A02867: FLdPr var_A8
  loc_A0286A: LateIdSt
  loc_A0286F: FFree1Ad var_A8
  loc_A02872: ILdRf Me
  loc_A02875: FStAdNoPop
  loc_A02879: ImpAdLdRf MemVar_D9C5D8
  loc_A0287C: NewIfNullPr Global
  loc_A0287F: Global.Unload from_stack_1
  loc_A02884: FFree1Ad var_A8
  loc_A02887: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9DCAAC
  'Data Table: 458100
  loc_9DCA94: ILdRf Me
  loc_9DCA97: CastAd
  loc_9DCA9A: FStAdFunc var_88
  loc_9DCA9D: FLdRfVar var_88
  loc_9DCAA0: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9DCAA5: FFree1Ad var_88
  loc_9DCAA8: ExitProcHresult
  loc_9DCAA9: OnErrorGoto loc_9DCE0D
End Sub

Private Sub cmdPdf_Click() '9E447C
  'Data Table: 458100
  loc_9E4460: LitI2_Byte 0
  loc_9E4462: PopTmpLdAd2 var_8A
  loc_9E4465: ILdRf Me
  loc_9E4468: CastAd
  loc_9E446B: FStAdFunc var_88
  loc_9E446E: FLdRfVar var_88
  loc_9E4471: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E4476: FFree1Ad var_88
  loc_9E4479: ExitProcHresult
  loc_9E447A: FFree1Ad var_77FD
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1AF80
  'Data Table: 458100
  loc_A1AF48: FLdPr Me
  loc_A1AF4B: VCallAd Control_ID_statusBar
  loc_A1AF4E: FStAdFunc var_88
  loc_A1AF51: FLdPr var_88
  loc_A1AF54: LateIdLdVar var_98 DispID_1 0
  loc_A1AF5B: CStrVarTmp
  loc_A1AF5C: CVarStr var_A8
  loc_A1AF5F: PopAdLdVar
  loc_A1AF60: FLdPr Me
  loc_A1AF63: VCallAd Control_ID_statusBar
  loc_A1AF66: FStAdFunc var_BC
  loc_A1AF69: FLdPr var_BC
  loc_A1AF6C: LateIdSt
  loc_A1AF71: FFreeAd var_88 = ""
  loc_A1AF78: FFreeVar var_98 = ""
  loc_A1AF7F: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '9C0290
  'Data Table: 458100
  loc_9C027C: FLdPr Me
  loc_9C027F: VCallAd Control_ID_CucuPersTxt
  loc_9C0282: CVarAd
  loc_9C0286: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C028B: FFree1Var var_94 = ""
  loc_9C028E: ExitProcHresult
End Sub

Public Function bGeneradoGet() '458B4C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '458B5B
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A11740
  'Data Table: 458100
  loc_A1170C: LitI4 0
  loc_A11711: LitI4 0
  loc_A11716: FLdRfVar var_88
  loc_A11719: Redim
  loc_A11723: FLdPr Me
  loc_A11726: VCallAd Control_ID_CucuPersTxt
  loc_A11729: CVarAd
  loc_A1172D: ParmAry1St
  loc_A11733: FLdRfVar var_88
  loc_A11736: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A1173B: FLdRfVar var_88
  loc_A1173E: Erase
  loc_A1173F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B798A4
  'Data Table: 458100
  loc_B793C8: LitStr vbNullString
  loc_B793CB: FLdPr Me
  loc_B793CE: MemStStrCopy
  loc_B793D2: FLdPr Me
  loc_B793D5: MemLdI2 bGenerado
  loc_B793D8: BranchF loc_B793DC
  loc_B793DB: ExitProcHresult
  loc_B793DC: LitVarStr var_94, "Generando reporte..."
  loc_B793E1: PopAdLdVar
  loc_B793E2: FLdPr Me
  loc_B793E5: VCallAd Control_ID_statusBar
  loc_B793E8: FStAdFunc var_A8
  loc_B793EB: FLdPr var_A8
  loc_B793EE: LateIdSt
  loc_B793F3: FFree1Ad var_A8
  loc_B793F6: LitI4 &HB
  loc_B793FB: CI2I4
  loc_B793FC: FLdPr Me
  loc_B793FF: Me.MousePointer = from_stack_1
  loc_B79404: LitI4 0
  loc_B79409: LitI4 1
  loc_B7940E: FLdPr Me
  loc_B79411: MemLdRfVar from_stack_1.global_88
  loc_B79414: Redim
  loc_B7941E: LitStr "SELECT CucuPers, DetaPers, DecrPers,NurePers,CobrPers,DebrPers,MarePers,CarePers,UbrePers,ColrPers,DelrPers,CoprPers"
  loc_B79421: LitStr " FROM infogov.persona WHERE CucuPers = "
  loc_B79424: ConcatStr
  loc_B79425: FStStrNoPop var_B0
  loc_B79428: FLdRfVar var_AC
  loc_B7942B: FLdPr Me
  loc_B7942E: VCallAd Control_ID_CucuPersTxt
  loc_B79431: FStAdFunc var_A8
  loc_B79434: FLdPr var_A8
  loc_B79437:  = Me.Text
  loc_B7943C: ILdRf var_AC
  loc_B7943F: ConcatStr
  loc_B79440: FStStrNoPop var_B4
  loc_B79443: FLdPr Me
  loc_B79446: MemLdRfVar from_stack_1.global_84
  loc_B79449: NewIfNullPr clsbase
  loc_B7944C: Call clsbase.RedefineRS(from_stack_1v)
  loc_B79451: FFreeStr var_B0 = "": var_AC = ""
  loc_B7945A: FFree1Ad var_A8
  loc_B7945D: FLdRfVar var_B8
  loc_B79460: FLdPr Me
  loc_B79463: MemLdRfVar from_stack_1.global_84
  loc_B79466: NewIfNullPr clsbase
  loc_B79469: from_stack_1 = clsbase.RecordCount
  loc_B7946E: ILdRf var_B8
  loc_B79471: LitI4 0
  loc_B79476: GtI4
  loc_B79477: BranchF loc_B79865
  loc_B7947A: FLdRfVar var_C0
  loc_B7947D: LitVarStr var_94, "CucuPers"
  loc_B79482: PopAdLdVar
  loc_B79483: FLdRfVar var_BC
  loc_B79486: FLdRfVar var_A8
  loc_B79489: FLdPr Me
  loc_B7948C: MemLdRfVar from_stack_1.global_84
  loc_B7948F: NewIfNullPr clsbase
  loc_B79492: from_stack_1v = clsbase.RsFrmGet()
  loc_B79497: FLdPr var_A8
  loc_B7949A:  = Me.Fields
  loc_B7949F: FLdPr var_BC
  loc_B794A2: from_stack_2 = Me.Item(from_stack_1)
  loc_B794A7: LitI2_Byte 0
  loc_B794A9: LitVar_Missing var_E4
  loc_B794AC: LitI2_Byte 0
  loc_B794AE: FLdZeroAd var_C0
  loc_B794B1: CVarAd
  loc_B794B5: PopAdLdVar
  loc_B794B6: LitI4 1
  loc_B794BB: FLdPr Me
  loc_B794BE: MemLdStr global_88
  loc_B794C1: AryLock
  loc_B794C4: Ary1LdPr
  loc_B794C5: MemLdRfVar from_stack_1.global_0
  loc_B794C8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B794CD: AryUnlock
  loc_B794D0: FFreeAd var_A8 = ""
  loc_B794D7: FFreeVar var_D4 = ""
  loc_B794DE: FLdRfVar var_C0
  loc_B794E1: LitVarStr var_94, "DetaPers"
  loc_B794E6: PopAdLdVar
  loc_B794E7: FLdRfVar var_BC
  loc_B794EA: FLdRfVar var_A8
  loc_B794ED: FLdPr Me
  loc_B794F0: MemLdRfVar from_stack_1.global_84
  loc_B794F3: NewIfNullPr clsbase
  loc_B794F6: from_stack_1v = clsbase.RsFrmGet()
  loc_B794FB: FLdPr var_A8
  loc_B794FE:  = Me.Fields
  loc_B79503: FLdPr var_BC
  loc_B79506: from_stack_2 = Me.Item(from_stack_1)
  loc_B7950B: LitI2_Byte 0
  loc_B7950D: LitVar_Missing var_E4
  loc_B79510: LitI2_Byte 0
  loc_B79512: FLdZeroAd var_C0
  loc_B79515: CVarAd
  loc_B79519: PopAdLdVar
  loc_B7951A: LitI4 1
  loc_B7951F: FLdPr Me
  loc_B79522: MemLdStr global_88
  loc_B79525: AryLock
  loc_B79528: Ary1LdPr
  loc_B79529: MemLdRfVar from_stack_1.global_4
  loc_B7952C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B79531: AryUnlock
  loc_B79534: FFreeAd var_A8 = ""
  loc_B7953B: FFreeVar var_D4 = ""
  loc_B79542: FLdRfVar var_C0
  loc_B79545: LitVarStr var_94, "DecrPers"
  loc_B7954A: PopAdLdVar
  loc_B7954B: FLdRfVar var_BC
  loc_B7954E: FLdRfVar var_A8
  loc_B79551: FLdPr Me
  loc_B79554: MemLdRfVar from_stack_1.global_84
  loc_B79557: NewIfNullPr clsbase
  loc_B7955A: from_stack_1v = clsbase.RsFrmGet()
  loc_B7955F: FLdPr var_A8
  loc_B79562:  = Me.Fields
  loc_B79567: FLdPr var_BC
  loc_B7956A: from_stack_2 = Me.Item(from_stack_1)
  loc_B7956F: LitI2_Byte 0
  loc_B79571: LitVar_Missing var_E4
  loc_B79574: LitI2_Byte 0
  loc_B79576: FLdZeroAd var_C0
  loc_B79579: CVarAd
  loc_B7957D: PopAdLdVar
  loc_B7957E: LitI4 1
  loc_B79583: FLdPr Me
  loc_B79586: MemLdStr global_88
  loc_B79589: AryLock
  loc_B7958C: Ary1LdPr
  loc_B7958D: MemLdRfVar from_stack_1.global_8
  loc_B79590: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B79595: AryUnlock
  loc_B79598: FFreeAd var_A8 = ""
  loc_B7959F: FFreeVar var_D4 = ""
  loc_B795A6: FLdRfVar var_C0
  loc_B795A9: LitVarStr var_94, "NurePers"
  loc_B795AE: PopAdLdVar
  loc_B795AF: FLdRfVar var_BC
  loc_B795B2: FLdRfVar var_A8
  loc_B795B5: FLdPr Me
  loc_B795B8: MemLdRfVar from_stack_1.global_84
  loc_B795BB: NewIfNullPr clsbase
  loc_B795BE: from_stack_1v = clsbase.RsFrmGet()
  loc_B795C3: FLdPr var_A8
  loc_B795C6:  = Me.Fields
  loc_B795CB: FLdPr var_BC
  loc_B795CE: from_stack_2 = Me.Item(from_stack_1)
  loc_B795D3: LitI2_Byte 0
  loc_B795D5: LitVar_Missing var_E4
  loc_B795D8: LitI2_Byte 0
  loc_B795DA: FLdZeroAd var_C0
  loc_B795DD: CVarAd
  loc_B795E1: PopAdLdVar
  loc_B795E2: LitI4 1
  loc_B795E7: FLdPr Me
  loc_B795EA: MemLdStr global_88
  loc_B795ED: AryLock
  loc_B795F0: Ary1LdPr
  loc_B795F1: MemLdRfVar from_stack_1.global_12
  loc_B795F4: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B795F9: AryUnlock
  loc_B795FC: FFreeAd var_A8 = ""
  loc_B79603: FFreeVar var_D4 = ""
  loc_B7960A: FLdRfVar var_C0
  loc_B7960D: LitVarStr var_94, "DebrPers"
  loc_B79612: PopAdLdVar
  loc_B79613: FLdRfVar var_BC
  loc_B79616: FLdRfVar var_A8
  loc_B79619: FLdPr Me
  loc_B7961C: MemLdRfVar from_stack_1.global_84
  loc_B7961F: NewIfNullPr clsbase
  loc_B79622: from_stack_1v = clsbase.RsFrmGet()
  loc_B79627: FLdPr var_A8
  loc_B7962A:  = Me.Fields
  loc_B7962F: FLdPr var_BC
  loc_B79632: from_stack_2 = Me.Item(from_stack_1)
  loc_B79637: LitI2_Byte 0
  loc_B79639: LitVar_Missing var_E4
  loc_B7963C: LitI2_Byte 0
  loc_B7963E: FLdZeroAd var_C0
  loc_B79641: CVarAd
  loc_B79645: PopAdLdVar
  loc_B79646: LitI4 1
  loc_B7964B: FLdPr Me
  loc_B7964E: MemLdStr global_88
  loc_B79651: AryLock
  loc_B79654: Ary1LdPr
  loc_B79655: MemLdRfVar from_stack_1.global_16
  loc_B79658: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B7965D: AryUnlock
  loc_B79660: FFreeAd var_A8 = ""
  loc_B79667: FFreeVar var_D4 = ""
  loc_B7966E: FLdRfVar var_C0
  loc_B79671: LitVarStr var_94, "MarePers"
  loc_B79676: PopAdLdVar
  loc_B79677: FLdRfVar var_BC
  loc_B7967A: FLdRfVar var_A8
  loc_B7967D: FLdPr Me
  loc_B79680: MemLdRfVar from_stack_1.global_84
  loc_B79683: NewIfNullPr clsbase
  loc_B79686: from_stack_1v = clsbase.RsFrmGet()
  loc_B7968B: FLdPr var_A8
  loc_B7968E:  = Me.Fields
  loc_B79693: FLdPr var_BC
  loc_B79696: from_stack_2 = Me.Item(from_stack_1)
  loc_B7969B: LitI2_Byte 0
  loc_B7969D: LitVar_Missing var_E4
  loc_B796A0: LitI2_Byte 0
  loc_B796A2: FLdZeroAd var_C0
  loc_B796A5: CVarAd
  loc_B796A9: PopAdLdVar
  loc_B796AA: LitI4 1
  loc_B796AF: FLdPr Me
  loc_B796B2: MemLdStr global_88
  loc_B796B5: AryLock
  loc_B796B8: Ary1LdPr
  loc_B796B9: MemLdRfVar from_stack_1.global_20
  loc_B796BC: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B796C1: AryUnlock
  loc_B796C4: FFreeAd var_A8 = ""
  loc_B796CB: FFreeVar var_D4 = ""
  loc_B796D2: FLdRfVar var_C0
  loc_B796D5: LitVarStr var_94, "CarePers"
  loc_B796DA: PopAdLdVar
  loc_B796DB: FLdRfVar var_BC
  loc_B796DE: FLdRfVar var_A8
  loc_B796E1: FLdPr Me
  loc_B796E4: MemLdRfVar from_stack_1.global_84
  loc_B796E7: NewIfNullPr clsbase
  loc_B796EA: from_stack_1v = clsbase.RsFrmGet()
  loc_B796EF: FLdPr var_A8
  loc_B796F2:  = Me.Fields
  loc_B796F7: FLdPr var_BC
  loc_B796FA: from_stack_2 = Me.Item(from_stack_1)
  loc_B796FF: LitI2_Byte 0
  loc_B79701: LitVar_Missing var_E4
  loc_B79704: LitI2_Byte 0
  loc_B79706: FLdZeroAd var_C0
  loc_B79709: CVarAd
  loc_B7970D: PopAdLdVar
  loc_B7970E: LitI4 1
  loc_B79713: FLdPr Me
  loc_B79716: MemLdStr global_88
  loc_B79719: AryLock
  loc_B7971C: Ary1LdPr
  loc_B7971D: MemLdRfVar from_stack_1.global_24
  loc_B79720: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B79725: AryUnlock
  loc_B79728: FFreeAd var_A8 = ""
  loc_B7972F: FFreeVar var_D4 = ""
  loc_B79736: FLdRfVar var_C0
  loc_B79739: LitVarStr var_94, "UbrePers"
  loc_B7973E: PopAdLdVar
  loc_B7973F: FLdRfVar var_BC
  loc_B79742: FLdRfVar var_A8
  loc_B79745: FLdPr Me
  loc_B79748: MemLdRfVar from_stack_1.global_84
  loc_B7974B: NewIfNullPr clsbase
  loc_B7974E: from_stack_1v = clsbase.RsFrmGet()
  loc_B79753: FLdPr var_A8
  loc_B79756:  = Me.Fields
  loc_B7975B: FLdPr var_BC
  loc_B7975E: from_stack_2 = Me.Item(from_stack_1)
  loc_B79763: LitI2_Byte 0
  loc_B79765: LitVar_Missing var_E4
  loc_B79768: LitI2_Byte 0
  loc_B7976A: FLdZeroAd var_C0
  loc_B7976D: CVarAd
  loc_B79771: PopAdLdVar
  loc_B79772: LitI4 1
  loc_B79777: FLdPr Me
  loc_B7977A: MemLdStr global_88
  loc_B7977D: AryLock
  loc_B79780: Ary1LdPr
  loc_B79781: MemLdRfVar from_stack_1.global_28
  loc_B79784: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B79789: AryUnlock
  loc_B7978C: FFreeAd var_A8 = ""
  loc_B79793: FFreeVar var_D4 = ""
  loc_B7979A: FLdRfVar var_C0
  loc_B7979D: LitVarStr var_94, "DelrPers"
  loc_B797A2: PopAdLdVar
  loc_B797A3: FLdRfVar var_BC
  loc_B797A6: FLdRfVar var_A8
  loc_B797A9: FLdPr Me
  loc_B797AC: MemLdRfVar from_stack_1.global_84
  loc_B797AF: NewIfNullPr clsbase
  loc_B797B2: from_stack_1v = clsbase.RsFrmGet()
  loc_B797B7: FLdPr var_A8
  loc_B797BA:  = Me.Fields
  loc_B797BF: FLdPr var_BC
  loc_B797C2: from_stack_2 = Me.Item(from_stack_1)
  loc_B797C7: LitI2_Byte 0
  loc_B797C9: LitVar_Missing var_E4
  loc_B797CC: LitI2_Byte 0
  loc_B797CE: FLdZeroAd var_C0
  loc_B797D1: CVarAd
  loc_B797D5: PopAdLdVar
  loc_B797D6: LitI4 1
  loc_B797DB: FLdPr Me
  loc_B797DE: MemLdStr global_88
  loc_B797E1: AryLock
  loc_B797E4: Ary1LdPr
  loc_B797E5: MemLdRfVar from_stack_1.global_32
  loc_B797E8: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B797ED: AryUnlock
  loc_B797F0: FFreeAd var_A8 = ""
  loc_B797F7: FFreeVar var_D4 = ""
  loc_B797FE: FLdRfVar var_C0
  loc_B79801: LitVarStr var_94, "CoprPers"
  loc_B79806: PopAdLdVar
  loc_B79807: FLdRfVar var_BC
  loc_B7980A: FLdRfVar var_A8
  loc_B7980D: FLdPr Me
  loc_B79810: MemLdRfVar from_stack_1.global_84
  loc_B79813: NewIfNullPr clsbase
  loc_B79816: from_stack_1v = clsbase.RsFrmGet()
  loc_B7981B: FLdPr var_A8
  loc_B7981E:  = Me.Fields
  loc_B79823: FLdPr var_BC
  loc_B79826: from_stack_2 = Me.Item(from_stack_1)
  loc_B7982B: LitI2_Byte 0
  loc_B7982D: LitVar_Missing var_E4
  loc_B79830: LitI2_Byte 0
  loc_B79832: FLdZeroAd var_C0
  loc_B79835: CVarAd
  loc_B79839: PopAdLdVar
  loc_B7983A: LitI4 1
  loc_B7983F: FLdPr Me
  loc_B79842: MemLdStr global_88
  loc_B79845: AryLock
  loc_B79848: Ary1LdPr
  loc_B79849: MemLdRfVar from_stack_1.global_36
  loc_B7984C: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_B79851: AryUnlock
  loc_B79854: FFreeAd var_A8 = ""
  loc_B7985B: FFreeVar var_D4 = ""
  loc_B79862: Branch loc_B79870
  loc_B79865: LitStr "No existe la persona"
  loc_B79868: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B7986D: Branch loc_B79878
  loc_B79870: LitI2_Byte &HFF
  loc_B79872: FLdPr Me
  loc_B79875: MemStI2 bGenerado
  loc_B79878: LitI4 0
  loc_B7987D: CI2I4
  loc_B7987E: FLdPr Me
  loc_B79881: Me.MousePointer = from_stack_1
  loc_B79886: LitVarStr var_94, vbNullString
  loc_B7988B: PopAdLdVar
  loc_B7988C: FLdPr Me
  loc_B7988F: VCallAd Control_ID_statusBar
  loc_B79892: FStAdFunc var_A8
  loc_B79895: FLdPr var_A8
  loc_B79898: LateIdSt
  loc_B7989D: FFree1Ad var_A8
  loc_B798A0: ExitProcHresult
  loc_B798A1: CCyI2
  loc_B798A2: BranchF loc_B81CC6
End Sub

Public Sub GeneraHTML() 'A3589C
  'Data Table: 458100
  loc_A3584C: FLdRfVar var_88
  loc_A3584F: LitI2_Byte 0
  loc_A35851: LitI2_Byte &HFF
  loc_A35853: ImpAdLdI4 MemVar_D93C84
  loc_A35856: FLdPr Me
  loc_A35859: MemLdRfVar from_stack_1.global_56
  loc_A3585C: NewIfNullPr IFileSystem3
  loc_A3585F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A35864: ILdRf var_88
  loc_A35867: FLdPr Me
  loc_A3586A: MemStVarAd
  loc_A3586E: FFree1Ad var_88
  loc_A35871: LitI2_Byte 0
  loc_A35873: ImpAdStI2 MemVar_D93C8A
  loc_A35876: Call Proc_262_14_B727FC()
  loc_A3587B: Call Proc_262_15_C04D38()
  loc_A35880: Call Proc_262_16_AF6C70()
  loc_A35885: FLdPr Me
  loc_A35888: MemLdRfVar from_stack_1.global_60
  loc_A3588B: LdPrVar
  loc_A3588D: LateMemCall
  loc_A35893: LitStr vbNullString
  loc_A35896: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A3589B: ExitProcHresult
End Sub

Private Function Proc_262_14_B727FC() 'B727FC
  'Data Table: 458100
  loc_B72350: LitVarStr var_94, "<html>"
  loc_B72355: PopAdLdVar
  loc_B72356: FLdPr Me
  loc_B72359: MemLdRfVar from_stack_1.global_60
  loc_B7235C: LdPrVar
  loc_B7235E: LateMemCall
  loc_B72364: LitVarStr var_94, "<head>"
  loc_B72369: PopAdLdVar
  loc_B7236A: FLdPr Me
  loc_B7236D: MemLdRfVar from_stack_1.global_60
  loc_B72370: LdPrVar
  loc_B72372: LateMemCall
  loc_B72378: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B7237D: PopAdLdVar
  loc_B7237E: FLdPr Me
  loc_B72381: MemLdRfVar from_stack_1.global_60
  loc_B72384: LdPrVar
  loc_B72386: LateMemCall
  loc_B7238C: LitStr "<title>"
  loc_B7238F: FLdRfVar var_A8
  loc_B72392: FLdPr Me
  loc_B72395:  = Me.Caption
  loc_B7239A: ILdRf var_A8
  loc_B7239D: ConcatStr
  loc_B7239E: FStStrNoPop var_AC
  loc_B723A1: LitStr "</title>"
  loc_B723A4: ConcatStr
  loc_B723A5: CVarStr var_BC
  loc_B723A8: PopAdLdVar
  loc_B723A9: FLdPr Me
  loc_B723AC: MemLdRfVar from_stack_1.global_60
  loc_B723AF: LdPrVar
  loc_B723B1: LateMemCall
  loc_B723B7: FFreeStr var_A8 = ""
  loc_B723BE: FFree1Var var_BC = ""
  loc_B723C1: LitVarStr var_94, "<style type=""text/css"">"
  loc_B723C6: PopAdLdVar
  loc_B723C7: FLdPr Me
  loc_B723CA: MemLdRfVar from_stack_1.global_60
  loc_B723CD: LdPrVar
  loc_B723CF: LateMemCall
  loc_B723D5: LitVarStr var_94, ".Titulo1 {"
  loc_B723DA: PopAdLdVar
  loc_B723DB: FLdPr Me
  loc_B723DE: MemLdRfVar from_stack_1.global_60
  loc_B723E1: LdPrVar
  loc_B723E3: LateMemCall
  loc_B723E9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B723EE: PopAdLdVar
  loc_B723EF: FLdPr Me
  loc_B723F2: MemLdRfVar from_stack_1.global_60
  loc_B723F5: LdPrVar
  loc_B723F7: LateMemCall
  loc_B723FD: LitVarStr var_94, " font-size: 22px;"
  loc_B72402: PopAdLdVar
  loc_B72403: FLdPr Me
  loc_B72406: MemLdRfVar from_stack_1.global_60
  loc_B72409: LdPrVar
  loc_B7240B: LateMemCall
  loc_B72411: LitVarStr var_94, " font-weight: bold;"
  loc_B72416: PopAdLdVar
  loc_B72417: FLdPr Me
  loc_B7241A: MemLdRfVar from_stack_1.global_60
  loc_B7241D: LdPrVar
  loc_B7241F: LateMemCall
  loc_B72425: LitVarStr var_94, "}"
  loc_B7242A: PopAdLdVar
  loc_B7242B: FLdPr Me
  loc_B7242E: MemLdRfVar from_stack_1.global_60
  loc_B72431: LdPrVar
  loc_B72433: LateMemCall
  loc_B72439: LitVarStr var_94, ".Titulo2 {"
  loc_B7243E: PopAdLdVar
  loc_B7243F: FLdPr Me
  loc_B72442: MemLdRfVar from_stack_1.global_60
  loc_B72445: LdPrVar
  loc_B72447: LateMemCall
  loc_B7244D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B72452: PopAdLdVar
  loc_B72453: FLdPr Me
  loc_B72456: MemLdRfVar from_stack_1.global_60
  loc_B72459: LdPrVar
  loc_B7245B: LateMemCall
  loc_B72461: LitVarStr var_94, " font-size: 18px;"
  loc_B72466: PopAdLdVar
  loc_B72467: FLdPr Me
  loc_B7246A: MemLdRfVar from_stack_1.global_60
  loc_B7246D: LdPrVar
  loc_B7246F: LateMemCall
  loc_B72475: LitVarStr var_94, " font-weight: bold;"
  loc_B7247A: PopAdLdVar
  loc_B7247B: FLdPr Me
  loc_B7247E: MemLdRfVar from_stack_1.global_60
  loc_B72481: LdPrVar
  loc_B72483: LateMemCall
  loc_B72489: LitVarStr var_94, "}"
  loc_B7248E: PopAdLdVar
  loc_B7248F: FLdPr Me
  loc_B72492: MemLdRfVar from_stack_1.global_60
  loc_B72495: LdPrVar
  loc_B72497: LateMemCall
  loc_B7249D: LitVarStr var_94, ".Normal {"
  loc_B724A2: PopAdLdVar
  loc_B724A3: FLdPr Me
  loc_B724A6: MemLdRfVar from_stack_1.global_60
  loc_B724A9: LdPrVar
  loc_B724AB: LateMemCall
  loc_B724B1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B724B6: PopAdLdVar
  loc_B724B7: FLdPr Me
  loc_B724BA: MemLdRfVar from_stack_1.global_60
  loc_B724BD: LdPrVar
  loc_B724BF: LateMemCall
  loc_B724C5: LitVarStr var_94, " font-size: 18px;"
  loc_B724CA: PopAdLdVar
  loc_B724CB: FLdPr Me
  loc_B724CE: MemLdRfVar from_stack_1.global_60
  loc_B724D1: LdPrVar
  loc_B724D3: LateMemCall
  loc_B724D9: LitVarStr var_94, " font-style: normal;"
  loc_B724DE: PopAdLdVar
  loc_B724DF: FLdPr Me
  loc_B724E2: MemLdRfVar from_stack_1.global_60
  loc_B724E5: LdPrVar
  loc_B724E7: LateMemCall
  loc_B724ED: LitVarStr var_94, " font-weight: bold;"
  loc_B724F2: PopAdLdVar
  loc_B724F3: FLdPr Me
  loc_B724F6: MemLdRfVar from_stack_1.global_60
  loc_B724F9: LdPrVar
  loc_B724FB: LateMemCall
  loc_B72501: LitVarStr var_94, " font-variant: normal;"
  loc_B72506: PopAdLdVar
  loc_B72507: FLdPr Me
  loc_B7250A: MemLdRfVar from_stack_1.global_60
  loc_B7250D: LdPrVar
  loc_B7250F: LateMemCall
  loc_B72515: LitVarStr var_94, "}"
  loc_B7251A: PopAdLdVar
  loc_B7251B: FLdPr Me
  loc_B7251E: MemLdRfVar from_stack_1.global_60
  loc_B72521: LdPrVar
  loc_B72523: LateMemCall
  loc_B72529: LitVarStr var_94, ".Encabezado {"
  loc_B7252E: PopAdLdVar
  loc_B7252F: FLdPr Me
  loc_B72532: MemLdRfVar from_stack_1.global_60
  loc_B72535: LdPrVar
  loc_B72537: LateMemCall
  loc_B7253D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B72542: PopAdLdVar
  loc_B72543: FLdPr Me
  loc_B72546: MemLdRfVar from_stack_1.global_60
  loc_B72549: LdPrVar
  loc_B7254B: LateMemCall
  loc_B72551: LitVarStr var_94, " font-size: 18px;"
  loc_B72556: PopAdLdVar
  loc_B72557: FLdPr Me
  loc_B7255A: MemLdRfVar from_stack_1.global_60
  loc_B7255D: LdPrVar
  loc_B7255F: LateMemCall
  loc_B72565: LitVarStr var_94, " font-style: normal;"
  loc_B7256A: PopAdLdVar
  loc_B7256B: FLdPr Me
  loc_B7256E: MemLdRfVar from_stack_1.global_60
  loc_B72571: LdPrVar
  loc_B72573: LateMemCall
  loc_B72579: LitVarStr var_94, " font-weight: normal;"
  loc_B7257E: PopAdLdVar
  loc_B7257F: FLdPr Me
  loc_B72582: MemLdRfVar from_stack_1.global_60
  loc_B72585: LdPrVar
  loc_B72587: LateMemCall
  loc_B7258D: LitVarStr var_94, " font-variant: normal;"
  loc_B72592: PopAdLdVar
  loc_B72593: FLdPr Me
  loc_B72596: MemLdRfVar from_stack_1.global_60
  loc_B72599: LdPrVar
  loc_B7259B: LateMemCall
  loc_B725A1: LitVarStr var_94, "}"
  loc_B725A6: PopAdLdVar
  loc_B725A7: FLdPr Me
  loc_B725AA: MemLdRfVar from_stack_1.global_60
  loc_B725AD: LdPrVar
  loc_B725AF: LateMemCall
  loc_B725B5: LitVarStr var_94, ".Recuadro {"
  loc_B725BA: PopAdLdVar
  loc_B725BB: FLdPr Me
  loc_B725BE: MemLdRfVar from_stack_1.global_60
  loc_B725C1: LdPrVar
  loc_B725C3: LateMemCall
  loc_B725C9: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B725CE: PopAdLdVar
  loc_B725CF: FLdPr Me
  loc_B725D2: MemLdRfVar from_stack_1.global_60
  loc_B725D5: LdPrVar
  loc_B725D7: LateMemCall
  loc_B725DD: LitVarStr var_94, " font-weight: bold;"
  loc_B725E2: PopAdLdVar
  loc_B725E3: FLdPr Me
  loc_B725E6: MemLdRfVar from_stack_1.global_60
  loc_B725E9: LdPrVar
  loc_B725EB: LateMemCall
  loc_B725F1: LitVarStr var_94, " float: right;"
  loc_B725F6: PopAdLdVar
  loc_B725F7: FLdPr Me
  loc_B725FA: MemLdRfVar from_stack_1.global_60
  loc_B725FD: LdPrVar
  loc_B725FF: LateMemCall
  loc_B72605: LitVarStr var_94, " font-size: 13px;"
  loc_B7260A: PopAdLdVar
  loc_B7260B: FLdPr Me
  loc_B7260E: MemLdRfVar from_stack_1.global_60
  loc_B72611: LdPrVar
  loc_B72613: LateMemCall
  loc_B72619: LitVarStr var_94, " border: medium doble #000000;"
  loc_B7261E: PopAdLdVar
  loc_B7261F: FLdPr Me
  loc_B72622: MemLdRfVar from_stack_1.global_60
  loc_B72625: LdPrVar
  loc_B72627: LateMemCall
  loc_B7262D: LitVarStr var_94, "}"
  loc_B72632: PopAdLdVar
  loc_B72633: FLdPr Me
  loc_B72636: MemLdRfVar from_stack_1.global_60
  loc_B72639: LdPrVar
  loc_B7263B: LateMemCall
  loc_B72641: LitVarStr var_94, ".Revision {"
  loc_B72646: PopAdLdVar
  loc_B72647: FLdPr Me
  loc_B7264A: MemLdRfVar from_stack_1.global_60
  loc_B7264D: LdPrVar
  loc_B7264F: LateMemCall
  loc_B72655: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B7265A: PopAdLdVar
  loc_B7265B: FLdPr Me
  loc_B7265E: MemLdRfVar from_stack_1.global_60
  loc_B72661: LdPrVar
  loc_B72663: LateMemCall
  loc_B72669: LitVarStr var_94, " font-size: 12px;"
  loc_B7266E: PopAdLdVar
  loc_B7266F: FLdPr Me
  loc_B72672: MemLdRfVar from_stack_1.global_60
  loc_B72675: LdPrVar
  loc_B72677: LateMemCall
  loc_B7267D: LitVarStr var_94, " font-style: normal;"
  loc_B72682: PopAdLdVar
  loc_B72683: FLdPr Me
  loc_B72686: MemLdRfVar from_stack_1.global_60
  loc_B72689: LdPrVar
  loc_B7268B: LateMemCall
  loc_B72691: LitVarStr var_94, " font-variant: normal;"
  loc_B72696: PopAdLdVar
  loc_B72697: FLdPr Me
  loc_B7269A: MemLdRfVar from_stack_1.global_60
  loc_B7269D: LdPrVar
  loc_B7269F: LateMemCall
  loc_B726A5: LitVarStr var_94, "}"
  loc_B726AA: PopAdLdVar
  loc_B726AB: FLdPr Me
  loc_B726AE: MemLdRfVar from_stack_1.global_60
  loc_B726B1: LdPrVar
  loc_B726B3: LateMemCall
  loc_B726B9: LitVarStr var_94, "</style>"
  loc_B726BE: PopAdLdVar
  loc_B726BF: FLdPr Me
  loc_B726C2: MemLdRfVar from_stack_1.global_60
  loc_B726C5: LdPrVar
  loc_B726C7: LateMemCall
  loc_B726CD: LitI4 0
  loc_B726D2: FStStrCopy var_AC
  loc_B726D5: FLdRfVar var_AC
  loc_B726D8: LitI4 0
  loc_B726DD: FStStrCopy var_A8
  loc_B726E0: FLdRfVar var_A8
  loc_B726E3: LitI2_Byte 0
  loc_B726E5: PopTmpLdAd2 var_BE
  loc_B726E8: FLdPr Me
  loc_B726EB: MemLdRfVar from_stack_1.global_60
  loc_B726EE: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B726F3: FFreeStr var_A8 = ""
  loc_B726FA: LitStr "Municipalidad de Guaymallén"
  loc_B726FD: LitStr "Municipalidad de Lavalle"
  loc_B72700: EqStr
  loc_B72702: BranchF loc_B7271C
  loc_B72705: LitVarStr var_94, "<table background=""l5.jpg"" width=""725"" height=""1100"" border=""0"" align=""center"" cellpadding=""5"" cellspacing=""0""><tr><td>"
  loc_B7270A: PopAdLdVar
  loc_B7270B: FLdPr Me
  loc_B7270E: MemLdRfVar from_stack_1.global_60
  loc_B72711: LdPrVar
  loc_B72713: LateMemCall
  loc_B72719: Branch loc_B72730
  loc_B7271C: LitVarStr var_94, "<table background=""l4.jpg"" width=""725"" height=""1100"" border=""0"" align=""center"" cellpadding=""5"" cellspacing=""0""><tr><td>"
  loc_B72721: PopAdLdVar
  loc_B72722: FLdPr Me
  loc_B72725: MemLdRfVar from_stack_1.global_60
  loc_B72728: LdPrVar
  loc_B7272A: LateMemCall
  loc_B72730: LitVarStr var_94, "<table width=""91" & Chr(37) & """ height=""1027"" border=""0"" align=""center"" cellpadding=""5"" cellspacing=""0"" class=""Titulo2"">"
  loc_B72735: PopAdLdVar
  loc_B72736: FLdPr Me
  loc_B72739: MemLdRfVar from_stack_1.global_60
  loc_B7273C: LdPrVar
  loc_B7273E: LateMemCall
  loc_B72744: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Titulo1"">"
  loc_B72749: PopAdLdVar
  loc_B7274A: FLdPr Me
  loc_B7274D: MemLdRfVar from_stack_1.global_60
  loc_B72750: LdPrVar
  loc_B72752: LateMemCall
  loc_B72758: LitStr "  <td colspan=""2"" height=""106""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B7275B: LitI2_Byte &H5F
  loc_B7275D: CStrUI1
  loc_B7275F: FStStrNoPop var_A8
  loc_B72762: ConcatStr
  loc_B72763: FStStrNoPop var_AC
  loc_B72766: LitStr """ height="""
  loc_B72769: ConcatStr
  loc_B7276A: FStStrNoPop var_C4
  loc_B7276D: LitI2_Byte &H3C
  loc_B7276F: CStrUI1
  loc_B72771: FStStrNoPop var_C8
  loc_B72774: ConcatStr
  loc_B72775: FStStrNoPop var_CC
  loc_B72778: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_B7277B: ConcatStr
  loc_B7277C: FStStrNoPop var_D0
  loc_B7277F: LitI2_Byte &H3C
  loc_B72781: CStrUI1
  loc_B72783: FStStrNoPop var_D4
  loc_B72786: ConcatStr
  loc_B72787: FStStrNoPop var_D8
  loc_B7278A: LitStr """ height=""51"" align=""right"" valign=""middle"">"
  loc_B7278D: ConcatStr
  loc_B7278E: FStStrNoPop var_DC
  loc_B72791: LitStr "</span><br><br><br><br><br/>"
  loc_B72794: ConcatStr
  loc_B72795: CVarStr var_BC
  loc_B72798: PopAdLdVar
  loc_B72799: FLdPr Me
  loc_B7279C: MemLdRfVar from_stack_1.global_60
  loc_B7279F: LdPrVar
  loc_B727A1: LateMemCall
  loc_B727A7: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B727BC: FFree1Var var_BC = ""
  loc_B727BF: LitVarStr var_94, "   <br> CONSTANCIA DE CUMPLIMIENTO TRIBUTARIO <br>"
  loc_B727C4: PopAdLdVar
  loc_B727C5: FLdPr Me
  loc_B727C8: MemLdRfVar from_stack_1.global_60
  loc_B727CB: LdPrVar
  loc_B727CD: LateMemCall
  loc_B727D3: LitVarStr var_94, "  Decreto 286/16 </em></div></td>"
  loc_B727D8: PopAdLdVar
  loc_B727D9: FLdPr Me
  loc_B727DC: MemLdRfVar from_stack_1.global_60
  loc_B727DF: LdPrVar
  loc_B727E1: LateMemCall
  loc_B727E7: LitVarStr var_94, "  </tr>"
  loc_B727EC: PopAdLdVar
  loc_B727ED: FLdPr Me
  loc_B727F0: MemLdRfVar from_stack_1.global_60
  loc_B727F3: LdPrVar
  loc_B727F5: LateMemCall
  loc_B727FB: ExitProcHresult
End Function

Private Function Proc_262_15_C04D38() 'C04D38
  'Data Table: 458100
  loc_C04440: LitI4 1
  loc_C04445: FLdPr Me
  loc_C04448: MemLdStr global_88
  loc_C0444B: AryLock
  loc_C0444E: Ary1LdRf
  loc_C0444F: FStR4 var_A4
  loc_C04452: LitVarStr var_B4, "  <tr>"
  loc_C04457: PopAdLdVar
  loc_C04458: FLdPr Me
  loc_C0445B: MemLdRfVar from_stack_1.global_60
  loc_C0445E: LdPrVar
  loc_C04460: LateMemCall
  loc_C04466: LitVarStr var_B4, "     <td height=""100"" colspan=""2"" align=""center"" valign=""top""><table border=""0"" cellpadding=""5"" cellspacing=""5"" class=""Encabezado"">"
  loc_C0446B: PopAdLdVar
  loc_C0446C: FLdPr Me
  loc_C0446F: MemLdRfVar from_stack_1.global_60
  loc_C04472: LdPrVar
  loc_C04474: LateMemCall
  loc_C0447A: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C0447F: PopAdLdVar
  loc_C04480: FLdPr Me
  loc_C04483: MemLdRfVar from_stack_1.global_60
  loc_C04486: LdPrVar
  loc_C04488: LateMemCall
  loc_C0448E: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">C.U.I.T.:</td>"
  loc_C04493: PopAdLdVar
  loc_C04494: FLdPr Me
  loc_C04497: MemLdRfVar from_stack_1.global_60
  loc_C0449A: LdPrVar
  loc_C0449C: LateMemCall
  loc_C044A2: LitStr "        <td class=""Normal"">"
  loc_C044A5: FMemLdR4 var_A4(0)
  loc_C044AA: ConcatStr
  loc_C044AB: FStStrNoPop var_C8
  loc_C044AE: LitStr "</td>"
  loc_C044B1: ConcatStr
  loc_C044B2: CVarStr var_D8
  loc_C044B5: PopAdLdVar
  loc_C044B6: FLdPr Me
  loc_C044B9: MemLdRfVar from_stack_1.global_60
  loc_C044BC: LdPrVar
  loc_C044BE: LateMemCall
  loc_C044C4: FFree1Str var_C8
  loc_C044C7: FFree1Var var_D8 = ""
  loc_C044CA: LitVarStr var_B4, "      </tr>"
  loc_C044CF: PopAdLdVar
  loc_C044D0: FLdPr Me
  loc_C044D3: MemLdRfVar from_stack_1.global_60
  loc_C044D6: LdPrVar
  loc_C044D8: LateMemCall
  loc_C044DE: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C044E3: PopAdLdVar
  loc_C044E4: FLdPr Me
  loc_C044E7: MemLdRfVar from_stack_1.global_60
  loc_C044EA: LdPrVar
  loc_C044EC: LateMemCall
  loc_C044F2: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Contribuyente:</td>"
  loc_C044F7: PopAdLdVar
  loc_C044F8: FLdPr Me
  loc_C044FB: MemLdRfVar from_stack_1.global_60
  loc_C044FE: LdPrVar
  loc_C04500: LateMemCall
  loc_C04506: LitStr "        <td class=""Normal"">"
  loc_C04509: FMemLdR4 var_A4(4)
  loc_C0450E: ConcatStr
  loc_C0450F: FStStrNoPop var_C8
  loc_C04512: LitStr "</td>"
  loc_C04515: ConcatStr
  loc_C04516: CVarStr var_D8
  loc_C04519: PopAdLdVar
  loc_C0451A: FLdPr Me
  loc_C0451D: MemLdRfVar from_stack_1.global_60
  loc_C04520: LdPrVar
  loc_C04522: LateMemCall
  loc_C04528: FFree1Str var_C8
  loc_C0452B: FFree1Var var_D8 = ""
  loc_C0452E: LitVarStr var_B4, "      </tr>"
  loc_C04533: PopAdLdVar
  loc_C04534: FLdPr Me
  loc_C04537: MemLdRfVar from_stack_1.global_60
  loc_C0453A: LdPrVar
  loc_C0453C: LateMemCall
  loc_C04542: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C04547: PopAdLdVar
  loc_C04548: FLdPr Me
  loc_C0454B: MemLdRfVar from_stack_1.global_60
  loc_C0454E: LdPrVar
  loc_C04550: LateMemCall
  loc_C04556: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Domicilio:</td>"
  loc_C0455B: PopAdLdVar
  loc_C0455C: FLdPr Me
  loc_C0455F: MemLdRfVar from_stack_1.global_60
  loc_C04562: LdPrVar
  loc_C04564: LateMemCall
  loc_C0456A: LitVarStr var_F8, "        <td class=""Normal"">"
  loc_C0456F: FMemLdRf unk_45805D
  loc_C04574: CVarRef
  loc_C04579: FMemLdRf unk_45805D
  loc_C0457E: CVarRef
  loc_C04583: FMemLdR4 var_A4(8)
  loc_C04588: LitStr " "
  loc_C0458B: NeStr
  loc_C0458D: FMemLdR4 var_A4(8)
  loc_C04592: LitStr vbNullString
  loc_C04595: NeStr
  loc_C04597: AndI4
  loc_C04598: CVarBoolI2 var_B4
  loc_C0459C: FLdRfVar var_D8
  loc_C0459F: ImpAdCallFPR4  = IIf(, , )
  loc_C045A4: FLdRfVar var_D8
  loc_C045A7: ConcatVar var_108
  loc_C045AB: LitVarStr var_118, "&nbsp;"
  loc_C045B0: ConcatVar var_128
  loc_C045B4: LitVarStr var_158, vbNullString
  loc_C045B9: FStVarCopyObj var_168
  loc_C045BC: FLdRfVar var_168
  loc_C045BF: FMemLdRf unk_45805D
  loc_C045C4: CVarRef
  loc_C045C9: FMemLdR4 var_A4(12)
  loc_C045CE: LitStr vbNullString
  loc_C045D1: NeStr
  loc_C045D3: CVarBoolI2 var_138
  loc_C045D7: FLdRfVar var_178
  loc_C045DA: ImpAdCallFPR4  = IIf(, , )
  loc_C045DF: FLdRfVar var_178
  loc_C045E2: ConcatVar var_188
  loc_C045E6: LitVarStr var_198, "</td>"
  loc_C045EB: ConcatVar var_1A8
  loc_C045EF: PopAdLdVar
  loc_C045F0: FLdPr Me
  loc_C045F3: MemLdRfVar from_stack_1.global_60
  loc_C045F6: LdPrVar
  loc_C045F8: LateMemCall
  loc_C045FE: FFreeVar var_B4 = "": var_D8 = "": var_108 = "": var_138 = "": var_168 = "": var_128 = "": var_178 = "": var_188 = ""
  loc_C04613: LitVarStr var_B4, "      </tr>"
  loc_C04618: PopAdLdVar
  loc_C04619: FLdPr Me
  loc_C0461C: MemLdRfVar from_stack_1.global_60
  loc_C0461F: LdPrVar
  loc_C04621: LateMemCall
  loc_C04627: FMemLdR4 var_A4(16)
  loc_C0462C: LitStr vbNullString
  loc_C0462F: NeStr
  loc_C04631: BranchF loc_C0478A
  loc_C04634: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C04639: PopAdLdVar
  loc_C0463A: FLdPr Me
  loc_C0463D: MemLdRfVar from_stack_1.global_60
  loc_C04640: LdPrVar
  loc_C04642: LateMemCall
  loc_C04648: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Ubicación:</td>"
  loc_C0464D: PopAdLdVar
  loc_C0464E: FLdPr Me
  loc_C04651: MemLdRfVar from_stack_1.global_60
  loc_C04654: LdPrVar
  loc_C04656: LateMemCall
  loc_C0465C: LitStr "        <td class=""Normal"">"
  loc_C0465F: FMemLdR4 var_A4(16)
  loc_C04664: ConcatStr
  loc_C04665: FStStrNoPop var_C8
  loc_C04668: LitStr "</td>"
  loc_C0466B: ConcatStr
  loc_C0466C: CVarStr var_D8
  loc_C0466F: PopAdLdVar
  loc_C04670: FLdPr Me
  loc_C04673: MemLdRfVar from_stack_1.global_60
  loc_C04676: LdPrVar
  loc_C04678: LateMemCall
  loc_C0467E: FFree1Str var_C8
  loc_C04681: FFree1Var var_D8 = ""
  loc_C04684: LitVarStr var_B4, "      </tr>"
  loc_C04689: PopAdLdVar
  loc_C0468A: FLdPr Me
  loc_C0468D: MemLdRfVar from_stack_1.global_60
  loc_C04690: LdPrVar
  loc_C04692: LateMemCall
  loc_C04698: FMemLdR4 var_A4(20)
  loc_C0469D: LitStr vbNullString
  loc_C046A0: NeStr
  loc_C046A2: FMemLdR4 var_A4(24)
  loc_C046A7: LitStr vbNullString
  loc_C046AA: NeStr
  loc_C046AC: OrI4
  loc_C046AD: BranchF loc_C0478A
  loc_C046B0: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C046B5: PopAdLdVar
  loc_C046B6: FLdPr Me
  loc_C046B9: MemLdRfVar from_stack_1.global_60
  loc_C046BC: LdPrVar
  loc_C046BE: LateMemCall
  loc_C046C4: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">&nbsp;</td>"
  loc_C046C9: PopAdLdVar
  loc_C046CA: FLdPr Me
  loc_C046CD: MemLdRfVar from_stack_1.global_60
  loc_C046D0: LdPrVar
  loc_C046D2: LateMemCall
  loc_C046D8: LitVarStr var_E8, "        <td class=""Normal"">"
  loc_C046DD: LitVarStr var_C4, vbNullString
  loc_C046E2: FStVarCopyObj var_108
  loc_C046E5: FLdRfVar var_108
  loc_C046E8: LitStr "Manzana:&nbsp;"
  loc_C046EB: FMemLdR4 var_A4(20)
  loc_C046F0: ConcatStr
  loc_C046F1: CVarStr var_D8
  loc_C046F4: FMemLdR4 var_A4(20)
  loc_C046F9: LitStr vbNullString
  loc_C046FC: NeStr
  loc_C046FE: CVarBoolI2 var_B4
  loc_C04702: FLdRfVar var_128
  loc_C04705: ImpAdCallFPR4  = IIf(, , )
  loc_C0470A: FLdRfVar var_128
  loc_C0470D: ConcatVar var_168
  loc_C04711: LitVarStr var_118, vbNullString
  loc_C04716: FStVarCopyObj var_188
  loc_C04719: FLdRfVar var_188
  loc_C0471C: LitStr " Casa:&nbsp;"
  loc_C0471F: FMemLdR4 var_A4(24)
  loc_C04724: ConcatStr
  loc_C04725: CVarStr var_178
  loc_C04728: FMemLdR4 var_A4(24)
  loc_C0472D: LitStr vbNullString
  loc_C04730: NeStr
  loc_C04732: CVarBoolI2 var_F8
  loc_C04736: FLdRfVar var_1A8
  loc_C04739: ImpAdCallFPR4  = IIf(, , )
  loc_C0473E: FLdRfVar var_1A8
  loc_C04741: ConcatVar var_1C8
  loc_C04745: LitVarStr var_138, "</td>"
  loc_C0474A: ConcatVar var_1D8
  loc_C0474E: PopAdLdVar
  loc_C0474F: FLdPr Me
  loc_C04752: MemLdRfVar from_stack_1.global_60
  loc_C04755: LdPrVar
  loc_C04757: LateMemCall
  loc_C0475D: FFreeVar var_B4 = "": var_D8 = "": var_108 = "": var_128 = "": var_F8 = "": var_178 = "": var_188 = "": var_168 = "": var_1A8 = "": var_1C8 = ""
  loc_C04776: LitVarStr var_B4, "      </tr>"
  loc_C0477B: PopAdLdVar
  loc_C0477C: FLdPr Me
  loc_C0477F: MemLdRfVar from_stack_1.global_60
  loc_C04782: LdPrVar
  loc_C04784: LateMemCall
  loc_C0478A: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C0478F: PopAdLdVar
  loc_C04790: FLdPr Me
  loc_C04793: MemLdRfVar from_stack_1.global_60
  loc_C04796: LdPrVar
  loc_C04798: LateMemCall
  loc_C0479E: LitVarStr var_B4, "        <td align=""right"" nowrap=""nowrap"">Localidad:</td>"
  loc_C047A3: PopAdLdVar
  loc_C047A4: FLdPr Me
  loc_C047A7: MemLdRfVar from_stack_1.global_60
  loc_C047AA: LdPrVar
  loc_C047AC: LateMemCall
  loc_C047B2: LitStr "        <td class=""Normal"">"
  loc_C047B5: FMemLdR4 var_A4(32)
  loc_C047BA: ConcatStr
  loc_C047BB: FStStrNoPop var_C8
  loc_C047BE: LitStr "&nbsp;("
  loc_C047C1: ConcatStr
  loc_C047C2: FStStrNoPop var_1DC
  loc_C047C5: FMemLdR4 var_A4(36)
  loc_C047CA: ConcatStr
  loc_C047CB: FStStrNoPop var_1E0
  loc_C047CE: LitStr ")</td>"
  loc_C047D1: ConcatStr
  loc_C047D2: CVarStr var_D8
  loc_C047D5: PopAdLdVar
  loc_C047D6: FLdPr Me
  loc_C047D9: MemLdRfVar from_stack_1.global_60
  loc_C047DC: LdPrVar
  loc_C047DE: LateMemCall
  loc_C047E4: FFreeStr var_C8 = "": var_1DC = ""
  loc_C047ED: FFree1Var var_D8 = ""
  loc_C047F0: LitVarStr var_B4, "      </tr>"
  loc_C047F5: PopAdLdVar
  loc_C047F6: FLdPr Me
  loc_C047F9: MemLdRfVar from_stack_1.global_60
  loc_C047FC: LdPrVar
  loc_C047FE: LateMemCall
  loc_C04804: LitVarStr var_B4, "    </table></td>"
  loc_C04809: PopAdLdVar
  loc_C0480A: FLdPr Me
  loc_C0480D: MemLdRfVar from_stack_1.global_60
  loc_C04810: LdPrVar
  loc_C04812: LateMemCall
  loc_C04818: LitVarStr var_B4, "  </tr>"
  loc_C0481D: PopAdLdVar
  loc_C0481E: FLdPr Me
  loc_C04821: MemLdRfVar from_stack_1.global_60
  loc_C04824: LdPrVar
  loc_C04826: LateMemCall
  loc_C0482C: LitVarStr var_B4, "  <tr>"
  loc_C04831: PopAdLdVar
  loc_C04832: FLdPr Me
  loc_C04835: MemLdRfVar from_stack_1.global_60
  loc_C04838: LdPrVar
  loc_C0483A: LateMemCall
  loc_C04840: LitVarStr var_B4, "    <td colspan=""2"" valign=""top""><table width=""98" & Chr(37) & """ align=""center""><tr class=""Titulo1""><td>"
  loc_C04845: PopAdLdVar
  loc_C04846: FLdPr Me
  loc_C04849: MemLdRfVar from_stack_1.global_60
  loc_C0484C: LdPrVar
  loc_C0484E: LateMemCall
  loc_C04854: ImpAdLdRf MemVar_D9375C
  loc_C04857: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_C0485A: VCallAd Control_ID_ctacteUnicaFlex
  loc_C0485D: FStAdFunc var_1E4
  loc_C04860: FLdPr var_1E4
  loc_C04863: LateIdLdVar var_D8 DispID_4 0
  loc_C0486A: CI4Var
  loc_C0486C: LitI4 1
  loc_C04871: LeI4
  loc_C04872: FFree1Ad var_1E4
  loc_C04875: FFree1Var var_D8 = ""
  loc_C04878: BranchF loc_C048BF
  loc_C0487B: LitStr " <p style=""text-indent:150"" align=""justify""> Según nuestros registros el C.U.I.T.: "
  loc_C0487E: FLdRfVar var_C8
  loc_C04881: FLdPr Me
  loc_C04884: VCallAd Control_ID_txtTotaApre
  loc_C04887: FStAdFunc var_1E4
  loc_C0488A: FLdPr var_1E4
  loc_C0488D:  = frmCuentaCorrienteCuitCuil.TextBox.Text
  loc_C04892: ILdRf var_C8
  loc_C04895: ConcatStr
  loc_C04896: FStStrNoPop var_1DC
  loc_C04899: LitStr " NO posee cuentas relacionadas. </p> <br>"
  loc_C0489C: ConcatStr
  loc_C0489D: CVarStr var_D8
  loc_C048A0: PopAdLdVar
  loc_C048A1: FLdPr Me
  loc_C048A4: MemLdRfVar from_stack_1.global_60
  loc_C048A7: LdPrVar
  loc_C048A9: LateMemCall
  loc_C048AF: FFreeStr var_C8 = ""
  loc_C048B6: FFree1Ad var_1E4
  loc_C048B9: FFree1Var var_D8 = ""
  loc_C048BC: Branch loc_C04900
  loc_C048BF: LitStr " <p style=""text-indent:150"" align=""justify""> Según nuestros registros el C.U.I.T.: "
  loc_C048C2: FLdRfVar var_C8
  loc_C048C5: FLdPr Me
  loc_C048C8: VCallAd Control_ID_CucuPersTxt
  loc_C048CB: FStAdFunc var_1E4
  loc_C048CE: FLdPr var_1E4
  loc_C048D1:  = Me.Text
  loc_C048D6: ILdRf var_C8
  loc_C048D9: ConcatStr
  loc_C048DA: FStStrNoPop var_1DC
  loc_C048DD: LitStr " posee las siguientes cuentas SIN deuda: </p> <br>"
  loc_C048E0: ConcatStr
  loc_C048E1: CVarStr var_D8
  loc_C048E4: PopAdLdVar
  loc_C048E5: FLdPr Me
  loc_C048E8: MemLdRfVar from_stack_1.global_60
  loc_C048EB: LdPrVar
  loc_C048ED: LateMemCall
  loc_C048F3: FFreeStr var_C8 = ""
  loc_C048FA: FFree1Ad var_1E4
  loc_C048FD: FFree1Var var_D8 = ""
  loc_C04900: LitI2_Byte 1
  loc_C04902: FLdRfVar var_8A
  loc_C04905: ImpAdLdRf MemVar_D9375C
  loc_C04908: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_C0490B: VCallAd Control_ID_ctacteUnicaFlex
  loc_C0490E: FStAdFunc var_1E4
  loc_C04911: FLdPr var_1E4
  loc_C04914: LateIdLdVar var_D8 DispID_4 0
  loc_C0491B: CI4Var
  loc_C0491D: LitI4 1
  loc_C04922: SubI4
  loc_C04923: CI2I4
  loc_C04924: FFree1Ad var_1E4
  loc_C04927: FFree1Var var_D8 = ""
  loc_C0492A: ForI2 var_1E8
  loc_C04930: FLdI2 var_8A
  loc_C04933: CI4UI1
  loc_C04934: CVarI4
  loc_C04938: PopAdLdVar
  loc_C04939: LitVarI4
  loc_C04941: PopAdLdVar
  loc_C04942: ImpAdLdRf MemVar_D9375C
  loc_C04945: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_C04948: VCallAd Control_ID_ctacteUnicaFlex
  loc_C0494B: FStAdFunc var_1E4
  loc_C0494E: FLdPr var_1E4
  loc_C04951: LateIdCallLdVar
  loc_C0495B: CStrVarTmp
  loc_C0495C: FStStr var_1EC
  loc_C0495F: FFree1Ad var_1E4
  loc_C04962: FFree1Var var_D8 = ""
  loc_C04965: ILdRf var_1EC
  loc_C04968: LitStr "Inmueble"
  loc_C0496B: EqStr
  loc_C0496D: BranchF loc_C0497B
  loc_C04970: LitI2_Byte 1
  loc_C04972: CUI1I2
  loc_C04974: ImpAdStUI1 MemVar_D93038
  loc_C04978: Branch loc_C049BA
  loc_C0497B: ILdRf var_1EC
  loc_C0497E: LitStr "Comercio"
  loc_C04981: EqStr
  loc_C04983: BranchF loc_C04991
  loc_C04986: LitI2_Byte 2
  loc_C04988: CUI1I2
  loc_C0498A: ImpAdStUI1 MemVar_D93038
  loc_C0498E: Branch loc_C049BA
  loc_C04991: ILdRf var_1EC
  loc_C04994: LitStr "Deudores Varios"
  loc_C04997: EqStr
  loc_C04999: BranchF loc_C049A7
  loc_C0499C: LitI2_Byte 3
  loc_C0499E: CUI1I2
  loc_C049A0: ImpAdStUI1 MemVar_D93038
  loc_C049A4: Branch loc_C049BA
  loc_C049A7: ILdRf var_1EC
  loc_C049AA: LitStr "Cementerio"
  loc_C049AD: EqStr
  loc_C049AF: BranchF loc_C049BA
  loc_C049B2: LitI2_Byte 4
  loc_C049B4: CUI1I2
  loc_C049B6: ImpAdStUI1 MemVar_D93038
  loc_C049BA: FLdI2 var_8A
  loc_C049BD: CI4UI1
  loc_C049BE: CVarI4
  loc_C049C2: PopAdLdVar
  loc_C049C3: LitVarI4
  loc_C049CB: PopAdLdVar
  loc_C049CC: ImpAdLdRf MemVar_D9375C
  loc_C049CF: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_C049D2: VCallAd Control_ID_ctacteUnicaFlex
  loc_C049D5: FStAdFunc var_1E4
  loc_C049D8: FLdPr var_1E4
  loc_C049DB: LateIdCallLdVar
  loc_C049E5: PopAd
  loc_C049E7: FLdRfVar var_1F4
  loc_C049EA: LitI4 0
  loc_C049EF: LitI4 0
  loc_C049F4: FLdRfVar var_D8
  loc_C049F7: CStrVarTmp
  loc_C049F8: FStStrNoPop var_C8
  loc_C049FB: ImpAdLdUI1
  loc_C049FF: CI2UI1
  loc_C04A01: FLdRfVar var_88
  loc_C04A04: NewIfNullPr clsctacte
  loc_C04A07: from_stack_5v = clsctacte.BuscaDeudaParaLibreDeuda(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C04A0C: FLdFPR8 var_1F4
  loc_C04A0F: FLdPr Me
  loc_C04A12: MemStFPR8 global_76
  loc_C04A15: FFree1Str var_C8
  loc_C04A18: FFree1Ad var_1E4
  loc_C04A1B: FFree1Var var_D8 = ""
  loc_C04A1E: ILdRf var_94
  loc_C04A21: FLdI2 var_8A
  loc_C04A24: CI4UI1
  loc_C04A25: CVarI4
  loc_C04A29: PopAdLdVar
  loc_C04A2A: LitVarI4
  loc_C04A32: PopAdLdVar
  loc_C04A33: ImpAdLdRf MemVar_D9375C
  loc_C04A36: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_C04A39: VCallAd Control_ID_ctacteUnicaFlex
  loc_C04A3C: FStAdFunc var_1E4
  loc_C04A3F: FLdPr var_1E4
  loc_C04A42: LateIdCallLdVar
  loc_C04A4C: CStrVarTmp
  loc_C04A4D: FStStrNoPop var_C8
  loc_C04A50: NeStr
  loc_C04A52: FFree1Str var_C8
  loc_C04A55: FFree1Ad var_1E4
  loc_C04A58: FFree1Var var_D8 = ""
  loc_C04A5B: BranchF loc_C04A9B
  loc_C04A5E: FLdI2 var_8A
  loc_C04A61: CI4UI1
  loc_C04A62: CVarI4
  loc_C04A66: PopAdLdVar
  loc_C04A67: LitVarI4
  loc_C04A6F: PopAdLdVar
  loc_C04A70: ImpAdLdRf MemVar_D9375C
  loc_C04A73: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_C04A76: VCallAd Control_ID_ctacteUnicaFlex
  loc_C04A79: FStAdFunc var_1E4
  loc_C04A7C: FLdPr var_1E4
  loc_C04A7F: LateIdCallLdVar
  loc_C04A89: CStrVarTmp
  loc_C04A8A: FStStr var_94
  loc_C04A8D: FFree1Ad var_1E4
  loc_C04A90: FFree1Var var_D8 = ""
  loc_C04A93: LitI2_Byte 0
  loc_C04A95: FStI2 var_96
  loc_C04A98: Branch loc_C04AA0
  loc_C04A9B: LitI2_Byte &HFF
  loc_C04A9D: FStI2 var_96
  loc_C04AA0: ILdRf var_90
  loc_C04AA3: CVarStr var_F8
  loc_C04AA6: LitVarStr var_E8, vbNullString
  loc_C04AAB: FStVarCopyObj var_108
  loc_C04AAE: FLdRfVar var_108
  loc_C04AB1: LitVarStr var_C4, " "
  loc_C04AB6: FStVarCopyObj var_D8
  loc_C04AB9: FLdRfVar var_D8
  loc_C04ABC: ILdRf var_90
  loc_C04ABF: LitStr vbNullString
  loc_C04AC2: NeStr
  loc_C04AC4: FLdI2 var_96
  loc_C04AC7: LitI2_Byte 0
  loc_C04AC9: EqI2
  loc_C04ACA: AndI4
  loc_C04ACB: CVarBoolI2 var_B4
  loc_C04ACF: FLdRfVar var_128
  loc_C04AD2: ImpAdCallFPR4  = IIf(, , )
  loc_C04AD7: FLdRfVar var_128
  loc_C04ADA: ConcatVar var_168
  loc_C04ADE: LitVarStr var_148, vbNullString
  loc_C04AE3: FStVarCopyObj var_178
  loc_C04AE6: FLdRfVar var_178
  loc_C04AE9: FLdRfVar var_94
  loc_C04AEC: CVarRef
  loc_C04AF1: FLdI2 var_96
  loc_C04AF4: LitI2_Byte 0
  loc_C04AF6: EqI2
  loc_C04AF7: CVarBoolI2 var_118
  loc_C04AFB: FLdRfVar var_188
  loc_C04AFE: ImpAdCallFPR4  = IIf(, , )
  loc_C04B03: FLdRfVar var_188
  loc_C04B06: ConcatVar var_1A8
  loc_C04B0A: LitVarStr var_1B8, ", "
  loc_C04B0F: FStVarCopyObj var_1D8
  loc_C04B12: FLdRfVar var_1D8
  loc_C04B15: LitVarStr var_198, ": "
  loc_C04B1A: FStVarCopyObj var_1C8
  loc_C04B1D: FLdRfVar var_1C8
  loc_C04B20: FLdI2 var_96
  loc_C04B23: LitI2_Byte 0
  loc_C04B25: EqI2
  loc_C04B26: CVarBoolI2 var_158
  loc_C04B2A: FLdRfVar var_204
  loc_C04B2D: ImpAdCallFPR4  = IIf(, , )
  loc_C04B32: FLdRfVar var_204
  loc_C04B35: ConcatVar var_214
  loc_C04B39: LitVarStr var_224, " "
  loc_C04B3E: ConcatVar var_234
  loc_C04B42: FLdI2 var_8A
  loc_C04B45: CI4UI1
  loc_C04B46: CVarI4
  loc_C04B4A: PopAdLdVar
  loc_C04B4B: LitVarI4
  loc_C04B53: PopAdLdVar
  loc_C04B54: ImpAdLdRf MemVar_D9375C
  loc_C04B57: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_C04B5A: VCallAd Control_ID_ctacteUnicaFlex
  loc_C04B5D: FStAdFunc var_1E4
  loc_C04B60: FLdPr var_1E4
  loc_C04B63: LateIdCallLdVar
  loc_C04B6D: CStrVarTmp
  loc_C04B6E: CVarStr var_294
  loc_C04B71: ConcatVar var_2A4
  loc_C04B75: CStrVarTmp
  loc_C04B76: FStStr var_90
  loc_C04B79: FFree1Ad var_1E4
  loc_C04B7C: FFreeVar var_B4 = "": var_D8 = "": var_108 = "": var_128 = "": var_118 = "": var_178 = "": var_168 = "": var_188 = "": var_158 = "": var_1C8 = "": var_1D8 = "": var_1A8 = "": var_204 = "": var_214 = "": var_284 = "": var_234 = "": var_294 = ""
  loc_C04BA3: FLdRfVar var_8A
  loc_C04BA6: NextI2 var_1E8, loc_C04930
  loc_C04BAB: LitVarStr var_B4, "      <tr valign=""top"">"
  loc_C04BB0: PopAdLdVar
  loc_C04BB1: FLdPr Me
  loc_C04BB4: MemLdRfVar from_stack_1.global_60
  loc_C04BB7: LdPrVar
  loc_C04BB9: LateMemCall
  loc_C04BBF: LitStr "        <td align=""left"" class=""Normal"">"
  loc_C04BC2: ILdRf var_90
  loc_C04BC5: ConcatStr
  loc_C04BC6: FStStrNoPop var_C8
  loc_C04BC9: LitStr "</td>"
  loc_C04BCC: ConcatStr
  loc_C04BCD: CVarStr var_D8
  loc_C04BD0: PopAdLdVar
  loc_C04BD1: FLdPr Me
  loc_C04BD4: MemLdRfVar from_stack_1.global_60
  loc_C04BD7: LdPrVar
  loc_C04BD9: LateMemCall
  loc_C04BDF: FFree1Str var_C8
  loc_C04BE2: FFree1Var var_D8 = ""
  loc_C04BE5: LitVarStr var_B4, "      </tr>"
  loc_C04BEA: PopAdLdVar
  loc_C04BEB: FLdPr Me
  loc_C04BEE: MemLdRfVar from_stack_1.global_60
  loc_C04BF1: LdPrVar
  loc_C04BF3: LateMemCall
  loc_C04BF9: LitVarStr var_B4, "  </tr>"
  loc_C04BFE: PopAdLdVar
  loc_C04BFF: FLdPr Me
  loc_C04C02: MemLdRfVar from_stack_1.global_60
  loc_C04C05: LdPrVar
  loc_C04C07: LateMemCall
  loc_C04C0D: LitStr "      <p style=""text-indent:150"" align=""justify"">"
  loc_C04C10: ILdRf var_9C
  loc_C04C13: ConcatStr
  loc_C04C14: FStStrNoPop var_C8
  loc_C04C17: LitStr ".</p><p>&nbsp;</p><br>"
  loc_C04C1A: ConcatStr
  loc_C04C1B: CVarStr var_D8
  loc_C04C1E: PopAdLdVar
  loc_C04C1F: FLdPr Me
  loc_C04C22: MemLdRfVar from_stack_1.global_60
  loc_C04C25: LdPrVar
  loc_C04C27: LateMemCall
  loc_C04C2D: FFree1Str var_C8
  loc_C04C30: FFree1Var var_D8 = ""
  loc_C04C33: LitVarStr var_B4, "   </td></tr></table></td>"
  loc_C04C38: PopAdLdVar
  loc_C04C39: FLdPr Me
  loc_C04C3C: MemLdRfVar from_stack_1.global_60
  loc_C04C3F: LdPrVar
  loc_C04C41: LateMemCall
  loc_C04C47: LitVarStr var_B4, "  </tr>"
  loc_C04C4C: PopAdLdVar
  loc_C04C4D: FLdPr Me
  loc_C04C50: MemLdRfVar from_stack_1.global_60
  loc_C04C53: LdPrVar
  loc_C04C55: LateMemCall
  loc_C04C5B: LitVarStr var_B4, "  <tr> <td align=""center"" width=""100" & Chr(37) & """ colspan=""2"">"
  loc_C04C60: PopAdLdVar
  loc_C04C61: FLdPr Me
  loc_C04C64: MemLdRfVar from_stack_1.global_60
  loc_C04C67: LdPrVar
  loc_C04C69: LateMemCall
  loc_C04C6F: LitVarStr var_B4, "  <tr>"
  loc_C04C74: PopAdLdVar
  loc_C04C75: FLdPr Me
  loc_C04C78: MemLdRfVar from_stack_1.global_60
  loc_C04C7B: LdPrVar
  loc_C04C7D: LateMemCall
  loc_C04C83: LitVarStr var_B4, "    <td colspan=""2"" align=""right"" valign=""top"" height=""31""><table width=""98" & Chr(37) & """ align=""center"">"
  loc_C04C88: PopAdLdVar
  loc_C04C89: FLdPr Me
  loc_C04C8C: MemLdRfVar from_stack_1.global_60
  loc_C04C8F: LdPrVar
  loc_C04C91: LateMemCall
  loc_C04C97: LitI2_Byte 0
  loc_C04C99: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C04C9E: FStFPR8 var_1F4
  loc_C04CA1: LitStr "      <tr align=""right"" class=""Normal""><td>"
  loc_C04CA4: LitStr "Guaymallén"
  loc_C04CA7: ConcatStr
  loc_C04CA8: FStStrNoPop var_C8
  loc_C04CAB: LitStr ", "
  loc_C04CAE: ConcatStr
  loc_C04CAF: FStStrNoPop var_1DC
  loc_C04CB2: LitStr "Mendoza"
  loc_C04CB5: ConcatStr
  loc_C04CB6: FStStrNoPop var_1E0
  loc_C04CB9: LitStr ", "
  loc_C04CBC: ConcatStr
  loc_C04CBD: FStStrNoPop var_2A8
  loc_C04CC0: LitI4 1
  loc_C04CC5: LitI4 1
  loc_C04CCA: LitVarStr var_C4, "dddd d \de mmmm \de yyyy"
  loc_C04CCF: FStVarCopyObj var_108
  loc_C04CD2: FLdRfVar var_108
  loc_C04CD5: FLdFPR8 var_1F4
  loc_C04CD8: CVarDate var_D8
  loc_C04CDC: ImpAdCallI2 Format$(, )
  loc_C04CE1: FStStrNoPop var_2AC
  loc_C04CE4: ConcatStr
  loc_C04CE5: FStStrNoPop var_2B0
  loc_C04CE8: LitStr ".-</td></tr></table></td>"
  loc_C04CEB: ConcatStr
  loc_C04CEC: CVarStr var_128
  loc_C04CEF: PopAdLdVar
  loc_C04CF0: FLdPr Me
  loc_C04CF3: MemLdRfVar from_stack_1.global_60
  loc_C04CF6: LdPrVar
  loc_C04CF8: LateMemCall
  loc_C04CFE: FFreeStr var_C8 = "": var_1DC = "": var_1E0 = "": var_2A8 = "": var_2AC = ""
  loc_C04D0D: FFreeVar var_D8 = "": var_108 = ""
  loc_C04D16: LitVarStr var_B4, "  </tr>"
  loc_C04D1B: PopAdLdVar
  loc_C04D1C: FLdPr Me
  loc_C04D1F: MemLdRfVar from_stack_1.global_60
  loc_C04D22: LdPrVar
  loc_C04D24: LateMemCall
  loc_C04D2A: LitI4 0
  loc_C04D2F: FStR4 var_A4
  loc_C04D32: AryUnlock
  loc_C04D35: ExitProcHresult
End Function

Private Function Proc_262_16_AF6C70() 'AF6C70
  'Data Table: 458100
  loc_AF6AC4: LitVarStr var_94, "  <tr><td colspan=""2"" height=""81""><table align=""center"" border=""1"" width=""98" & Chr(37) & """>"
  loc_AF6AC9: PopAdLdVar
  loc_AF6ACA: FLdPr Me
  loc_AF6ACD: MemLdRfVar from_stack_1.global_60
  loc_AF6AD0: LdPrVar
  loc_AF6AD2: LateMemCall
  loc_AF6AD8: LitVarStr var_94, "  <tr align=""center"" valign=""middle"">"
  loc_AF6ADD: PopAdLdVar
  loc_AF6ADE: FLdPr Me
  loc_AF6AE1: MemLdRfVar from_stack_1.global_60
  loc_AF6AE4: LdPrVar
  loc_AF6AE6: LateMemCall
  loc_AF6AEC: LitVarStr var_A4, "     <td height=""50"" class=""Recuadro"">"
  loc_AF6AF1: LitVarStr var_94, "Dirección de Rentas"
  loc_AF6AF6: FStVarCopyObj var_B4
  loc_AF6AF9: FLdRfVar var_B4
  loc_AF6AFC: FLdRfVar var_C4
  loc_AF6AFF: ImpAdCallFPR4  = Ucase()
  loc_AF6B04: FLdRfVar var_C4
  loc_AF6B07: ConcatVar var_D4
  loc_AF6B0B: LitVarStr var_E4, " - "
  loc_AF6B10: ConcatVar var_F4
  loc_AF6B14: LitVarStr var_104, "Municipalidad de Guaymallén"
  loc_AF6B19: FStVarCopyObj var_114
  loc_AF6B1C: FLdRfVar var_114
  loc_AF6B1F: FLdRfVar var_124
  loc_AF6B22: ImpAdCallFPR4  = Ucase()
  loc_AF6B27: FLdRfVar var_124
  loc_AF6B2A: ConcatVar var_134
  loc_AF6B2E: LitVarStr var_144, "<br>"
  loc_AF6B33: ConcatVar var_154
  loc_AF6B37: PopAdLdVar
  loc_AF6B38: FLdPr Me
  loc_AF6B3B: MemLdRfVar from_stack_1.global_60
  loc_AF6B3E: LdPrVar
  loc_AF6B40: LateMemCall
  loc_AF6B46: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_114 = "": var_F4 = "": var_124 = "": var_134 = ""
  loc_AF6B59: LitStr "       "
  loc_AF6B5C: LitStr "Libertad 720 - Villa Nueva"
  loc_AF6B5F: ConcatStr
  loc_AF6B60: FStStrNoPop var_168
  loc_AF6B63: LitStr " - TEL.: "
  loc_AF6B66: ConcatStr
  loc_AF6B67: FStStrNoPop var_16C
  loc_AF6B6A: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_AF6B6D: ConcatStr
  loc_AF6B6E: FStStrNoPop var_170
  loc_AF6B71: LitStr "</td>"
  loc_AF6B74: ConcatStr
  loc_AF6B75: CVarStr var_B4
  loc_AF6B78: PopAdLdVar
  loc_AF6B79: FLdPr Me
  loc_AF6B7C: MemLdRfVar from_stack_1.global_60
  loc_AF6B7F: LdPrVar
  loc_AF6B81: LateMemCall
  loc_AF6B87: FFreeStr var_168 = "": var_16C = ""
  loc_AF6B90: FFree1Var var_B4 = ""
  loc_AF6B93: LitVarStr var_94, "  </tr>"
  loc_AF6B98: PopAdLdVar
  loc_AF6B99: FLdPr Me
  loc_AF6B9C: MemLdRfVar from_stack_1.global_60
  loc_AF6B9F: LdPrVar
  loc_AF6BA1: LateMemCall
  loc_AF6BA7: LitVarStr var_94, "  </table></td></tr>"
  loc_AF6BAC: PopAdLdVar
  loc_AF6BAD: FLdPr Me
  loc_AF6BB0: MemLdRfVar from_stack_1.global_60
  loc_AF6BB3: LdPrVar
  loc_AF6BB5: LateMemCall
  loc_AF6BBB: LitVarStr var_94, "  <tr class=""Revision"">"
  loc_AF6BC0: PopAdLdVar
  loc_AF6BC1: FLdPr Me
  loc_AF6BC4: MemLdRfVar from_stack_1.global_60
  loc_AF6BC7: LdPrVar
  loc_AF6BC9: LateMemCall
  loc_AF6BCF: LitVarStr var_94, "    <td nowrap=""nowrap"" height=""40"" align=""left"" valign=""bottom"">www.infogov.com.ar</td>"
  loc_AF6BD4: PopAdLdVar
  loc_AF6BD5: FLdPr Me
  loc_AF6BD8: MemLdRfVar from_stack_1.global_60
  loc_AF6BDB: LdPrVar
  loc_AF6BDD: LateMemCall
  loc_AF6BE3: LitStr "    <td nowrap=""nowrap"" height=""40"" align=""right"" valign=""bottom"">Usuario: "
  loc_AF6BE6: ImpAdLdI4 MemVar_D9302C
  loc_AF6BE9: ConcatStr
  loc_AF6BEA: FStStrNoPop var_168
  loc_AF6BED: LitStr "</td>"
  loc_AF6BF0: ConcatStr
  loc_AF6BF1: CVarStr var_B4
  loc_AF6BF4: PopAdLdVar
  loc_AF6BF5: FLdPr Me
  loc_AF6BF8: MemLdRfVar from_stack_1.global_60
  loc_AF6BFB: LdPrVar
  loc_AF6BFD: LateMemCall
  loc_AF6C03: FFree1Str var_168
  loc_AF6C06: FFree1Var var_B4 = ""
  loc_AF6C09: LitVarStr var_94, "  </tr>"
  loc_AF6C0E: PopAdLdVar
  loc_AF6C0F: FLdPr Me
  loc_AF6C12: MemLdRfVar from_stack_1.global_60
  loc_AF6C15: LdPrVar
  loc_AF6C17: LateMemCall
  loc_AF6C1D: LitVarStr var_94, "</table></td></tr>"
  loc_AF6C22: PopAdLdVar
  loc_AF6C23: FLdPr Me
  loc_AF6C26: MemLdRfVar from_stack_1.global_60
  loc_AF6C29: LdPrVar
  loc_AF6C2B: LateMemCall
  loc_AF6C31: LitVarStr var_94, "</table>"
  loc_AF6C36: PopAdLdVar
  loc_AF6C37: FLdPr Me
  loc_AF6C3A: MemLdRfVar from_stack_1.global_60
  loc_AF6C3D: LdPrVar
  loc_AF6C3F: LateMemCall
  loc_AF6C45: LitVarStr var_94, "</body>"
  loc_AF6C4A: PopAdLdVar
  loc_AF6C4B: FLdPr Me
  loc_AF6C4E: MemLdRfVar from_stack_1.global_60
  loc_AF6C51: LdPrVar
  loc_AF6C53: LateMemCall
  loc_AF6C59: LitVarStr var_94, "</html>"
  loc_AF6C5E: PopAdLdVar
  loc_AF6C5F: FLdPr Me
  loc_AF6C62: MemLdRfVar from_stack_1.global_60
  loc_AF6C65: LdPrVar
  loc_AF6C67: LateMemCall
  loc_AF6C6D: ExitProcHresult
  loc_AF6C6E: FnCDblVar
End Function
