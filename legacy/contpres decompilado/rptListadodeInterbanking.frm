VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeInterbanking
  Caption = "Listado de Interbanking"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeInterbanking.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 7920
  ClientHeight = 1770
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 1515
    Width = 7920
    Height = 255
    TabIndex = 8
    OleObjectBlob = "rptListadodeInterbanking.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 6840
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 6
    Cancel = -1  'True
    Picture = "rptListadodeInterbanking.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeInterbanking.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 120
    Width = 3255
    Height = 1095
    TabIndex = 3
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1680
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 5
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 120
    Width = 3015
    Height = 1095
    TabIndex = 0
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 2
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 1
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 6840
    Top = 600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptListadodeInterbanking.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeInterbanking"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00575408
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdPredeterminada_Click() '96346C
  'Data Table: 42A1F0
  loc_963454: ILdRf Me
  loc_963457: CastAd
  loc_96345A: FStAdFunc var_88
  loc_96345D: FLdRfVar var_88
  loc_963460: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_963465: FFree1Ad var_88
  loc_963468: ExitProcHresult
  loc_963469: LtI4
  loc_96346A: CI2R8
End Sub

Private Sub cmdXLS_Click() '96806C
  'Data Table: 42A1F0
  loc_968050: LitI2_Byte &HFF
  loc_968052: LitI2_Byte 0
  loc_968054: ILdRf Me
  loc_968057: CastAd
  loc_96805A: FStAdFunc var_88
  loc_96805D: FLdRfVar var_88
  loc_968060: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_968065: FFree1Ad var_88
  loc_968068: ExitProcHresult
  loc_968069: UMiI4
  loc_96806A: BranchF loc_96F850
End Sub

Private Sub cmdPrevia_Click() '9632A4
  'Data Table: 42A1F0
  loc_96328C: ILdRf Me
  loc_96328F: CastAd
  loc_963292: FStAdFunc var_88
  loc_963295: FLdRfVar var_88
  loc_963298: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_96329D: FFree1Ad var_88
  loc_9632A0: ExitProcHresult
End Sub

Private Sub Form_Load() '941DC8
  'Data Table: 42A1F0
  loc_941DBC: LitI2_Byte &HFF
  loc_941DBE: ImpAdStI2 MemVar_C3D840
  loc_941DC1: Call Proc_195_18_976478()
  loc_941DC6: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9636CC
  'Data Table: 42A1F0
  loc_9636B4: FLdPr Me
  loc_9636B7: VCallAd Control_ID_wbbReporte
  loc_9636BA: FStAdFunc var_88
  loc_9636BD: FLdRfVar var_88
  loc_9636C0: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9636C5: FFree1Ad var_88
  loc_9636C8: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98C32C
  'Data Table: 42A1F0
  loc_98C2F4: FLdPr Me
  loc_98C2F7: VCallAd Control_ID_statusBar
  loc_98C2FA: FStAdFunc var_88
  loc_98C2FD: FLdPr var_88
  loc_98C300: LateIdLdVar var_98 DispID_1 0
  loc_98C307: CStrVarTmp
  loc_98C308: CVarStr var_A8
  loc_98C30B: PopAdLdVar
  loc_98C30C: FLdPr Me
  loc_98C30F: VCallAd Control_ID_statusBar
  loc_98C312: FStAdFunc var_BC
  loc_98C315: FLdPr var_BC
  loc_98C318: LateIdSt
  loc_98C31D: FFreeAd var_88 = ""
  loc_98C324: FFreeVar var_98 = ""
  loc_98C32B: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '96359C
  'Data Table: 42A1F0
  loc_963584: LitI2_Byte 0
  loc_963586: ILdRf Me
  loc_963589: CastAd
  loc_96358C: FStAdFunc var_88
  loc_96358F: FLdRfVar var_88
  loc_963592: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_963597: FFree1Ad var_88
  loc_96359A: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A0A0
  'Data Table: 42A1F0
  loc_97A070: LitVarStr var_94, "Cerrando..."
  loc_97A075: PopAdLdVar
  loc_97A076: FLdPr Me
  loc_97A079: VCallAd Control_ID_statusBar
  loc_97A07C: FStAdFunc var_A8
  loc_97A07F: FLdPr var_A8
  loc_97A082: LateIdSt
  loc_97A087: FFree1Ad var_A8
  loc_97A08A: ILdRf Me
  loc_97A08D: FStAdNoPop
  loc_97A091: ImpAdLdRf MemVar_C44F9C
  loc_97A094: NewIfNullPr Me
  loc_97A097: Me.Global.Unload from_stack_1
  loc_97A09C: FFree1Ad var_A8
  loc_97A09F: ExitProcHresult
End Sub

Public Function htmFileGet() '42A980
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '42A98F
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '42A99E
  htmFile = Value
End Sub

Public Function bLogosGet() '42A9AD
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '42A9BC
  bLogos = Value
End Sub

Public Function bGeneradoGet() '42A9CB
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '42A9DA
  bGenerado = Value
End Sub

Public Sub GeneraReporte() 'A653C0
  'Data Table: 42A1F0
  loc_A65088: OnErrorGoto loc_A6535D
  loc_A6508B: FLdPr Me
  loc_A6508E: MemLdI2 bGenerado
  loc_A65091: BranchF loc_A65095
  loc_A65094: ExitProcHresult
  loc_A65095: LitVarStr var_94, "Generando reporte..."
  loc_A6509A: PopAdLdVar
  loc_A6509B: FLdPr Me
  loc_A6509E: VCallAd Control_ID_statusBar
  loc_A650A1: FStAdFunc var_A8
  loc_A650A4: FLdPr var_A8
  loc_A650A7: LateIdSt
  loc_A650AC: FFree1Ad var_A8
  loc_A650AF: LitI4 &HB
  loc_A650B4: CI2I4
  loc_A650B5: FLdPr Me
  loc_A650B8: Me.MousePointer = from_stack_1
  loc_A650BD: FLdPr Me
  loc_A650C0: MemLdRfVar from_stack_1.global_72
  loc_A650C3: NewIfNullAd
  loc_A650C6: FStAd var_AC 
  loc_A650CA: LitStr "Municipalidad de Guaymallén"
  loc_A650CD: LitStr "Municipalidad de Maipú"
  loc_A650D0: EqStr
  loc_A650D2: BranchF loc_A65101
  loc_A650D5: LitStr "SELECT DetaProv, CucuPers, PainProv, CubaProv"
  loc_A650D8: LitStr " FROM proveedor"
  loc_A650DB: ConcatStr
  loc_A650DC: FStStrNoPop var_B0
  loc_A650DF: LitStr " WHERE PainProv > 0"
  loc_A650E2: ConcatStr
  loc_A650E3: FStStrNoPop var_B4
  loc_A650E6: LitStr " ORDER BY DetaProv;"
  loc_A650E9: ConcatStr
  loc_A650EA: FStStrNoPop var_B8
  loc_A650ED: FLdPr var_AC
  loc_A650F0: Call clsproveedor.RedefineRS(from_stack_1v)
  loc_A650F5: FFreeStr var_B0 = "": var_B4 = ""
  loc_A650FE: Branch loc_A6512A
  loc_A65101: LitStr "SELECT DetaProv, CucuPers, PainProv, CubaProv"
  loc_A65104: LitStr " FROM proveedor"
  loc_A65107: ConcatStr
  loc_A65108: FStStrNoPop var_B0
  loc_A6510B: LitStr " WHERE CubaProv <> ''"
  loc_A6510E: ConcatStr
  loc_A6510F: FStStrNoPop var_B4
  loc_A65112: LitStr " ORDER BY DetaProv;"
  loc_A65115: ConcatStr
  loc_A65116: FStStrNoPop var_B8
  loc_A65119: FLdPr var_AC
  loc_A6511C: Call clsproveedor.RedefineRS(from_stack_1v)
  loc_A65121: FFreeStr var_B0 = "": var_B4 = ""
  loc_A6512A: FLdRfVar var_BC
  loc_A6512D: FLdPr var_AC
  loc_A65130: from_stack_1 = clsproveedor.RecordCount
  loc_A65135: ILdRf var_BC
  loc_A65138: LitI4 0
  loc_A6513D: EqI4
  loc_A6513E: BranchF loc_A65151
  loc_A65141: LitI4 0
  loc_A65146: LitStr "No existen registros"
  loc_A65149: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A6514E: Branch loc_A65334
  loc_A65151: LitI4 0
  loc_A65156: FLdRfVar var_BC
  loc_A65159: FLdPr var_AC
  loc_A6515C: from_stack_1 = clsproveedor.RecordCount
  loc_A65161: ILdRf var_BC
  loc_A65164: FLdPr Me
  loc_A65167: MemLdRfVar from_stack_1.global_80
  loc_A6516A: Redim
  loc_A65174: FLdPr var_AC
  loc_A65177: Call clsproveedor.MoveFirst()
  loc_A6517C: LitI4 1
  loc_A65181: FLdPr Me
  loc_A65184: MemLdRfVar from_stack_1.global_84
  loc_A65187: FLdPr Me
  loc_A6518A: MemLdStr global_80
  loc_A6518D: LitI2_Byte 1
  loc_A6518F: FnUBound
  loc_A65191: ForI4 var_C4
  loc_A65197: FLdRfVar var_CC
  loc_A6519A: LitVarStr var_94, "DetaProv"
  loc_A6519F: PopAdLdVar
  loc_A651A0: FLdRfVar var_C8
  loc_A651A3: FLdRfVar var_A8
  loc_A651A6: FLdPr var_AC
  loc_A651A9: from_stack_1v = clsproveedor.RsFrmGet()
  loc_A651AE: FLdPr var_A8
  loc_A651B1:  = Me.Fields
  loc_A651B6: FLdPr var_C8
  loc_A651B9: from_stack_2 = Me.Item(from_stack_1)
  loc_A651BE: LitI2_Byte 0
  loc_A651C0: LitVar_Missing var_F0
  loc_A651C3: LitI2_Byte 0
  loc_A651C5: FLdZeroAd var_CC
  loc_A651C8: CVarAd
  loc_A651CC: PopAdLdVar
  loc_A651CD: FLdPr Me
  loc_A651D0: MemLdStr global_84
  loc_A651D3: FLdPr Me
  loc_A651D6: MemLdStr global_80
  loc_A651D9: AryLock
  loc_A651DC: Ary1LdPr
  loc_A651DD: MemLdRfVar from_stack_1.global_0
  loc_A651E0: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A651E5: AryUnlock
  loc_A651E8: FFreeAd var_A8 = ""
  loc_A651EF: FFreeVar var_E0 = ""
  loc_A651F6: FLdRfVar var_CC
  loc_A651F9: LitVarStr var_94, "CucuPers"
  loc_A651FE: PopAdLdVar
  loc_A651FF: FLdRfVar var_C8
  loc_A65202: FLdRfVar var_A8
  loc_A65205: FLdPr var_AC
  loc_A65208: from_stack_1v = clsproveedor.RsFrmGet()
  loc_A6520D: FLdPr var_A8
  loc_A65210:  = Me.Fields
  loc_A65215: FLdPr var_C8
  loc_A65218: from_stack_2 = Me.Item(from_stack_1)
  loc_A6521D: LitI2_Byte 0
  loc_A6521F: LitVar_Missing var_F0
  loc_A65222: LitI2_Byte 0
  loc_A65224: FLdZeroAd var_CC
  loc_A65227: CVarAd
  loc_A6522B: PopAdLdVar
  loc_A6522C: FLdPr Me
  loc_A6522F: MemLdStr global_84
  loc_A65232: FLdPr Me
  loc_A65235: MemLdStr global_80
  loc_A65238: AryLock
  loc_A6523B: Ary1LdPr
  loc_A6523C: MemLdRfVar from_stack_1.global_4
  loc_A6523F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A65244: AryUnlock
  loc_A65247: FFreeAd var_A8 = ""
  loc_A6524E: FFreeVar var_E0 = ""
  loc_A65255: FLdRfVar var_CC
  loc_A65258: LitVarStr var_94, "PainProv"
  loc_A6525D: PopAdLdVar
  loc_A6525E: FLdRfVar var_C8
  loc_A65261: FLdRfVar var_A8
  loc_A65264: FLdPr var_AC
  loc_A65267: from_stack_1v = clsproveedor.RsFrmGet()
  loc_A6526C: FLdPr var_A8
  loc_A6526F:  = Me.Fields
  loc_A65274: FLdPr var_C8
  loc_A65277: from_stack_2 = Me.Item(from_stack_1)
  loc_A6527C: LitI2_Byte 0
  loc_A6527E: LitVar_Missing var_F0
  loc_A65281: LitI2_Byte 0
  loc_A65283: FLdZeroAd var_CC
  loc_A65286: CVarAd
  loc_A6528A: PopAdLdVar
  loc_A6528B: FLdPr Me
  loc_A6528E: MemLdStr global_84
  loc_A65291: FLdPr Me
  loc_A65294: MemLdStr global_80
  loc_A65297: AryLock
  loc_A6529A: Ary1LdPr
  loc_A6529B: MemLdRfVar from_stack_1.global_8
  loc_A6529E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A652A3: AryUnlock
  loc_A652A6: FFreeAd var_A8 = ""
  loc_A652AD: FFreeVar var_E0 = ""
  loc_A652B4: FLdRfVar var_CC
  loc_A652B7: LitVarStr var_94, "CubaProv"
  loc_A652BC: PopAdLdVar
  loc_A652BD: FLdRfVar var_C8
  loc_A652C0: FLdRfVar var_A8
  loc_A652C3: FLdPr var_AC
  loc_A652C6: from_stack_1v = clsproveedor.RsFrmGet()
  loc_A652CB: FLdPr var_A8
  loc_A652CE:  = Me.Fields
  loc_A652D3: FLdPr var_C8
  loc_A652D6: from_stack_2 = Me.Item(from_stack_1)
  loc_A652DB: LitI2_Byte 0
  loc_A652DD: LitVar_Missing var_F0
  loc_A652E0: LitI2_Byte 0
  loc_A652E2: FLdZeroAd var_CC
  loc_A652E5: CVarAd
  loc_A652E9: PopAdLdVar
  loc_A652EA: FLdPr Me
  loc_A652ED: MemLdStr global_84
  loc_A652F0: FLdPr Me
  loc_A652F3: MemLdStr global_80
  loc_A652F6: AryLock
  loc_A652F9: Ary1LdPr
  loc_A652FA: MemLdRfVar from_stack_1.global_12
  loc_A652FD: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A65302: AryUnlock
  loc_A65305: FFreeAd var_A8 = ""
  loc_A6530C: FFreeVar var_E0 = ""
  loc_A65313: FLdPr var_AC
  loc_A65316: Call clsproveedor.MoveSiguiente()
  loc_A6531B: FLdPr Me
  loc_A6531E: MemLdRfVar from_stack_1.global_84
  loc_A65321: NextI4 var_C4, loc_A65197
  loc_A65326: LitNothing
  loc_A65328: FStAd var_AC 
  loc_A6532C: LitI2_Byte &HFF
  loc_A6532E: FLdPr Me
  loc_A65331: MemStI2 bGenerado
  loc_A65334: LitI4 0
  loc_A65339: CI2I4
  loc_A6533A: FLdPr Me
  loc_A6533D: Me.MousePointer = from_stack_1
  loc_A65342: LitVarStr var_94, vbNullString
  loc_A65347: PopAdLdVar
  loc_A65348: FLdPr Me
  loc_A6534B: VCallAd Control_ID_statusBar
  loc_A6534E: FStAdFunc var_A8
  loc_A65351: FLdPr var_A8
  loc_A65354: LateIdSt
  loc_A65359: FFree1Ad var_A8
  loc_A6535C: ExitProcHresult
  loc_A6535D: LitI4 0
  loc_A65362: LitStr "Error "
  loc_A65365: FLdRfVar var_BC
  loc_A65368: ImpAdCallI2 Err 'rtcErrObj
  loc_A6536D: FStAdFunc var_A8
  loc_A65370: FLdPr var_A8
  loc_A65373:  = Err.Number
  loc_A65378: ILdRf var_BC
  loc_A6537B: CStrI4
  loc_A6537D: FStStrNoPop var_B0
  loc_A65380: ConcatStr
  loc_A65381: FStStrNoPop var_B4
  loc_A65384: LitStr ": "
  loc_A65387: ConcatStr
  loc_A65388: FStStrNoPop var_F4
  loc_A6538B: FLdRfVar var_B8
  loc_A6538E: ImpAdCallI2 Err 'rtcErrObj
  loc_A65393: FStAdFunc var_C8
  loc_A65396: FLdPr var_C8
  loc_A65399:  = Err.Description
  loc_A6539E: ILdRf var_B8
  loc_A653A1: ConcatStr
  loc_A653A2: FStStrNoPop var_F8
  loc_A653A5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A653AA: FFreeStr var_B0 = "": var_B4 = "": var_F4 = "": var_B8 = ""
  loc_A653B7: FFreeAd var_A8 = ""
  loc_A653BE: ExitProcHresult
  loc_A653BF: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A32DE8
  'Data Table: 42A1F0
  loc_A32BDC: FLdRfVar var_88
  loc_A32BDF: LitI2_Byte 0
  loc_A32BE1: LitI2_Byte &HFF
  loc_A32BE3: ImpAdLdI4 MemVar_C3D83C
  loc_A32BE6: FLdPr Me
  loc_A32BE9: MemLdRfVar from_stack_1.global_76
  loc_A32BEC: NewIfNullPr IFileSystem3
  loc_A32BEF: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A32BF4: ILdRf var_88
  loc_A32BF7: FLdPr Me
  loc_A32BFA: MemStVarAd
  loc_A32BFE: FFree1Ad var_88
  loc_A32C01: Call Proc_195_19_A5BD0C()
  loc_A32C06: LitI4 1
  loc_A32C0B: FLdPr Me
  loc_A32C0E: MemLdRfVar from_stack_1.global_84
  loc_A32C11: FLdPr Me
  loc_A32C14: MemLdStr global_80
  loc_A32C17: LitI2_Byte 1
  loc_A32C19: FnUBound
  loc_A32C1B: ForI4 var_90
  loc_A32C21: FLdPr Me
  loc_A32C24: MemLdStr global_84
  loc_A32C27: FLdPr Me
  loc_A32C2A: MemLdStr global_80
  loc_A32C2D: AryLock
  loc_A32C30: Ary1LdRf
  loc_A32C31: FStR4 var_98
  loc_A32C34: LitVarStr var_A8, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A32C39: PopAdLdVar
  loc_A32C3A: FLdPr Me
  loc_A32C3D: MemLdRfVar from_stack_1.htmFile
  loc_A32C40: LdPrVar
  loc_A32C42: LateMemCall
  loc_A32C48: LitStr "Municipalidad de Guaymallén"
  loc_A32C4B: LitStr "Municipalidad de Maipú"
  loc_A32C4E: EqStr
  loc_A32C50: BranchF loc_A32D18
  loc_A32C53: LitI4 0
  loc_A32C58: LitI4 0
  loc_A32C5D: LitI2_Byte 0
  loc_A32C5F: LitStr "left"
  loc_A32C62: FMemLdR4 var_98(0)
  loc_A32C67: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A32C6C: CVarStr var_C8
  loc_A32C6F: PopAdLdVar
  loc_A32C70: FLdPr Me
  loc_A32C73: MemLdRfVar from_stack_1.htmFile
  loc_A32C76: LdPrVar
  loc_A32C78: LateMemCall
  loc_A32C7E: FFree1Var var_C8 = ""
  loc_A32C81: LitI4 0
  loc_A32C86: LitI4 0
  loc_A32C8B: LitI2_Byte 0
  loc_A32C8D: LitStr "right"
  loc_A32C90: FMemLdR4 var_98(4)
  loc_A32C95: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A32C9A: CVarStr var_C8
  loc_A32C9D: PopAdLdVar
  loc_A32C9E: FLdPr Me
  loc_A32CA1: MemLdRfVar from_stack_1.htmFile
  loc_A32CA4: LdPrVar
  loc_A32CA6: LateMemCall
  loc_A32CAC: FFree1Var var_C8 = ""
  loc_A32CAF: LitI4 0
  loc_A32CB4: LitI4 0
  loc_A32CB9: LitI2_Byte 0
  loc_A32CBB: LitStr "right"
  loc_A32CBE: FMemLdR4 var_98(8)
  loc_A32CC3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A32CC8: CVarStr var_C8
  loc_A32CCB: PopAdLdVar
  loc_A32CCC: FLdPr Me
  loc_A32CCF: MemLdRfVar from_stack_1.htmFile
  loc_A32CD2: LdPrVar
  loc_A32CD4: LateMemCall
  loc_A32CDA: FFree1Var var_C8 = ""
  loc_A32CDD: LitI4 0
  loc_A32CE2: LitI4 0
  loc_A32CE7: LitI2_Byte 0
  loc_A32CE9: LitStr "right"
  loc_A32CEC: LitStr "'"
  loc_A32CEF: FMemLdR4 var_98(12)
  loc_A32CF4: ConcatStr
  loc_A32CF5: FStStrNoPop var_CC
  loc_A32CF8: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A32CFD: CVarStr var_C8
  loc_A32D00: PopAdLdVar
  loc_A32D01: FLdPr Me
  loc_A32D04: MemLdRfVar from_stack_1.htmFile
  loc_A32D07: LdPrVar
  loc_A32D09: LateMemCall
  loc_A32D0F: FFree1Str var_CC
  loc_A32D12: FFree1Var var_C8 = ""
  loc_A32D15: Branch loc_A32DA2
  loc_A32D18: LitI4 0
  loc_A32D1D: LitI4 0
  loc_A32D22: LitI2_Byte 0
  loc_A32D24: LitStr "left"
  loc_A32D27: FMemLdR4 var_98(0)
  loc_A32D2C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A32D31: CVarStr var_C8
  loc_A32D34: PopAdLdVar
  loc_A32D35: FLdPr Me
  loc_A32D38: MemLdRfVar from_stack_1.htmFile
  loc_A32D3B: LdPrVar
  loc_A32D3D: LateMemCall
  loc_A32D43: FFree1Var var_C8 = ""
  loc_A32D46: LitI4 0
  loc_A32D4B: LitI4 0
  loc_A32D50: LitI2_Byte 0
  loc_A32D52: LitStr "right"
  loc_A32D55: FMemLdR4 var_98(4)
  loc_A32D5A: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A32D5F: CVarStr var_C8
  loc_A32D62: PopAdLdVar
  loc_A32D63: FLdPr Me
  loc_A32D66: MemLdRfVar from_stack_1.htmFile
  loc_A32D69: LdPrVar
  loc_A32D6B: LateMemCall
  loc_A32D71: FFree1Var var_C8 = ""
  loc_A32D74: LitI4 0
  loc_A32D79: LitI4 0
  loc_A32D7E: LitI2_Byte 0
  loc_A32D80: LitStr "right"
  loc_A32D83: FMemLdR4 var_98(12)
  loc_A32D88: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A32D8D: CVarStr var_C8
  loc_A32D90: PopAdLdVar
  loc_A32D91: FLdPr Me
  loc_A32D94: MemLdRfVar from_stack_1.htmFile
  loc_A32D97: LdPrVar
  loc_A32D99: LateMemCall
  loc_A32D9F: FFree1Var var_C8 = ""
  loc_A32DA2: LitVarStr var_A8, "     </tr>"
  loc_A32DA7: PopAdLdVar
  loc_A32DA8: FLdPr Me
  loc_A32DAB: MemLdRfVar from_stack_1.htmFile
  loc_A32DAE: LdPrVar
  loc_A32DB0: LateMemCall
  loc_A32DB6: LitI4 0
  loc_A32DBB: FStR4 var_98
  loc_A32DBE: AryUnlock
  loc_A32DC1: FLdPr Me
  loc_A32DC4: MemLdRfVar from_stack_1.global_84
  loc_A32DC7: NextI4 var_90, loc_A32C21
  loc_A32DCC: Call Proc_195_20_983960()
  loc_A32DD1: FLdPr Me
  loc_A32DD4: MemLdRfVar from_stack_1.htmFile
  loc_A32DD7: LdPrVar
  loc_A32DD9: LateMemCall
  loc_A32DDF: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A32DE4: ExitProcHresult
End Sub

Public Sub GeneraXLS() '952C9C
  'Data Table: 42A1F0
  loc_952C84: LitI2_Byte 0
  loc_952C86: FLdPr Me
  loc_952C89: MemStI2 bLogos
  loc_952C8C: Call GeneraHTML()
  loc_952C91: LitI2_Byte &HFF
  loc_952C93: FLdPr Me
  loc_952C96: MemStI2 bLogos
  loc_952C99: ExitProcHresult
End Sub

Private Function Proc_195_18_976478() '976478
  'Data Table: 42A1F0
  loc_97644C: LitI2_Byte 0
  loc_97644E: FLdPr Me
  loc_976451: MemStI2 bGenerado
  loc_976454: LitI2_Byte &HFF
  loc_976456: FLdPr Me
  loc_976459: MemStI2 bLogos
  loc_97645C: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_976461: ILdRf Me
  loc_976464: CastAd
  loc_976467: FStAdFunc var_88
  loc_97646A: FLdRfVar var_88
  loc_97646D: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_976472: FFree1Ad var_88
  loc_976475: ExitProcHresult
  loc_976476: ExitProcR8
End Function

Private Function Proc_195_19_A5BD0C() 'A5BD0C
  'Data Table: 42A1F0
  loc_A5BA10: LitVarStr var_94, "<html>"
  loc_A5BA15: PopAdLdVar
  loc_A5BA16: FLdPr Me
  loc_A5BA19: MemLdRfVar from_stack_1.htmFile
  loc_A5BA1C: LdPrVar
  loc_A5BA1E: LateMemCall
  loc_A5BA24: LitVarStr var_94, "<head>"
  loc_A5BA29: PopAdLdVar
  loc_A5BA2A: FLdPr Me
  loc_A5BA2D: MemLdRfVar from_stack_1.htmFile
  loc_A5BA30: LdPrVar
  loc_A5BA32: LateMemCall
  loc_A5BA38: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A5BA3D: PopAdLdVar
  loc_A5BA3E: FLdPr Me
  loc_A5BA41: MemLdRfVar from_stack_1.htmFile
  loc_A5BA44: LdPrVar
  loc_A5BA46: LateMemCall
  loc_A5BA4C: LitStr "<title>"
  loc_A5BA4F: FLdRfVar var_A8
  loc_A5BA52: FLdPr Me
  loc_A5BA55:  = Me.Caption
  loc_A5BA5A: ILdRf var_A8
  loc_A5BA5D: ConcatStr
  loc_A5BA5E: FStStrNoPop var_AC
  loc_A5BA61: LitStr "</title>"
  loc_A5BA64: ConcatStr
  loc_A5BA65: CVarStr var_BC
  loc_A5BA68: PopAdLdVar
  loc_A5BA69: FLdPr Me
  loc_A5BA6C: MemLdRfVar from_stack_1.htmFile
  loc_A5BA6F: LdPrVar
  loc_A5BA71: LateMemCall
  loc_A5BA77: FFreeStr var_A8 = ""
  loc_A5BA7E: FFree1Var var_BC = ""
  loc_A5BA81: LitStr vbNullString
  loc_A5BA84: ILdRf Me
  loc_A5BA87: CastAd
  loc_A5BA8A: FStAdFunc var_C0
  loc_A5BA8D: FLdRfVar var_C0
  loc_A5BA90: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A5BA95: FFree1Ad var_C0
  loc_A5BA98: LitI4 0
  loc_A5BA9D: FStStrCopy var_AC
  loc_A5BAA0: FLdRfVar var_AC
  loc_A5BAA3: LitI4 0
  loc_A5BAA8: FStStrCopy var_A8
  loc_A5BAAB: FLdRfVar var_A8
  loc_A5BAAE: LitI2_Byte 0
  loc_A5BAB0: PopTmpLdAd2 var_C2
  loc_A5BAB3: FLdPr Me
  loc_A5BAB6: MemLdRfVar from_stack_1.htmFile
  loc_A5BAB9: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A5BABE: FFreeStr var_A8 = ""
  loc_A5BAC5: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A5BACA: PopAdLdVar
  loc_A5BACB: FLdPr Me
  loc_A5BACE: MemLdRfVar from_stack_1.htmFile
  loc_A5BAD1: LdPrVar
  loc_A5BAD3: LateMemCall
  loc_A5BAD9: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A5BADE: PopAdLdVar
  loc_A5BADF: FLdPr Me
  loc_A5BAE2: MemLdRfVar from_stack_1.htmFile
  loc_A5BAE5: LdPrVar
  loc_A5BAE7: LateMemCall
  loc_A5BAED: LitVarStr var_94, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A5BAF2: PopAdLdVar
  loc_A5BAF3: FLdPr Me
  loc_A5BAF6: MemLdRfVar from_stack_1.htmFile
  loc_A5BAF9: LdPrVar
  loc_A5BAFB: LateMemCall
  loc_A5BB01: FLdPr Me
  loc_A5BB04: MemLdI2 bLogos
  loc_A5BB07: BranchF loc_A5BB1E
  loc_A5BB0A: LitVarStr var_94, "<img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A5BB0F: PopAdLdVar
  loc_A5BB10: FLdPr Me
  loc_A5BB13: MemLdRfVar from_stack_1.htmFile
  loc_A5BB16: LdPrVar
  loc_A5BB18: LateMemCall
  loc_A5BB1E: LitVarStr var_A4, "    <br><br>"
  loc_A5BB23: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A5BB28: FStVarCopyObj var_BC
  loc_A5BB2B: FLdRfVar var_BC
  loc_A5BB2E: FLdRfVar var_D4
  loc_A5BB31: ImpAdCallFPR4  = Ucase()
  loc_A5BB36: FLdRfVar var_D4
  loc_A5BB39: ConcatVar var_E4
  loc_A5BB3D: LitVarStr var_F4, "</p>"
  loc_A5BB42: ConcatVar var_104
  loc_A5BB46: PopAdLdVar
  loc_A5BB47: FLdPr Me
  loc_A5BB4A: MemLdRfVar from_stack_1.htmFile
  loc_A5BB4D: LdPrVar
  loc_A5BB4F: LateMemCall
  loc_A5BB55: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A5BB60: LitStr "    <p>"
  loc_A5BB63: FLdRfVar var_A8
  loc_A5BB66: FLdPr Me
  loc_A5BB69:  = Me.Caption
  loc_A5BB6E: ILdRf var_A8
  loc_A5BB71: ConcatStr
  loc_A5BB72: FStStrNoPop var_AC
  loc_A5BB75: LitStr "</p></th>"
  loc_A5BB78: ConcatStr
  loc_A5BB79: CVarStr var_BC
  loc_A5BB7C: PopAdLdVar
  loc_A5BB7D: FLdPr Me
  loc_A5BB80: MemLdRfVar from_stack_1.htmFile
  loc_A5BB83: LdPrVar
  loc_A5BB85: LateMemCall
  loc_A5BB8B: FFreeStr var_A8 = ""
  loc_A5BB92: FFree1Var var_BC = ""
  loc_A5BB95: LitVarStr var_94, "  </tr>"
  loc_A5BB9A: PopAdLdVar
  loc_A5BB9B: FLdPr Me
  loc_A5BB9E: MemLdRfVar from_stack_1.htmFile
  loc_A5BBA1: LdPrVar
  loc_A5BBA3: LateMemCall
  loc_A5BBA9: LitVarStr var_94, "  <tr>"
  loc_A5BBAE: PopAdLdVar
  loc_A5BBAF: FLdPr Me
  loc_A5BBB2: MemLdRfVar from_stack_1.htmFile
  loc_A5BBB5: LdPrVar
  loc_A5BBB7: LateMemCall
  loc_A5BBBD: LitVarStr var_94, "    <th><hr></th>"
  loc_A5BBC2: PopAdLdVar
  loc_A5BBC3: FLdPr Me
  loc_A5BBC6: MemLdRfVar from_stack_1.htmFile
  loc_A5BBC9: LdPrVar
  loc_A5BBCB: LateMemCall
  loc_A5BBD1: LitVarStr var_94, "  </tr>"
  loc_A5BBD6: PopAdLdVar
  loc_A5BBD7: FLdPr Me
  loc_A5BBDA: MemLdRfVar from_stack_1.htmFile
  loc_A5BBDD: LdPrVar
  loc_A5BBDF: LateMemCall
  loc_A5BBE5: LitVarStr var_94, "</table>"
  loc_A5BBEA: PopAdLdVar
  loc_A5BBEB: FLdPr Me
  loc_A5BBEE: MemLdRfVar from_stack_1.htmFile
  loc_A5BBF1: LdPrVar
  loc_A5BBF3: LateMemCall
  loc_A5BBF9: LitVarStr var_94, "<br>"
  loc_A5BBFE: PopAdLdVar
  loc_A5BBFF: FLdPr Me
  loc_A5BC02: MemLdRfVar from_stack_1.htmFile
  loc_A5BC05: LdPrVar
  loc_A5BC07: LateMemCall
  loc_A5BC0D: LitVarStr var_94, "<table width=""80" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A5BC12: PopAdLdVar
  loc_A5BC13: FLdPr Me
  loc_A5BC16: MemLdRfVar from_stack_1.htmFile
  loc_A5BC19: LdPrVar
  loc_A5BC1B: LateMemCall
  loc_A5BC21: LitStr "Municipalidad de Guaymallén"
  loc_A5BC24: LitStr "Municipalidad de Maipú"
  loc_A5BC27: EqStr
  loc_A5BC29: BranchF loc_A5BCA7
  loc_A5BC2C: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A5BC31: PopAdLdVar
  loc_A5BC32: FLdPr Me
  loc_A5BC35: MemLdRfVar from_stack_1.htmFile
  loc_A5BC38: LdPrVar
  loc_A5BC3A: LateMemCall
  loc_A5BC40: LitVarStr var_94, "    <th>Nombre</th>"
  loc_A5BC45: PopAdLdVar
  loc_A5BC46: FLdPr Me
  loc_A5BC49: MemLdRfVar from_stack_1.htmFile
  loc_A5BC4C: LdPrVar
  loc_A5BC4E: LateMemCall
  loc_A5BC54: LitVarStr var_94, "    <th>CUIT</th>"
  loc_A5BC59: PopAdLdVar
  loc_A5BC5A: FLdPr Me
  loc_A5BC5D: MemLdRfVar from_stack_1.htmFile
  loc_A5BC60: LdPrVar
  loc_A5BC62: LateMemCall
  loc_A5BC68: LitVarStr var_94, "    <th>Interbanking</th>"
  loc_A5BC6D: PopAdLdVar
  loc_A5BC6E: FLdPr Me
  loc_A5BC71: MemLdRfVar from_stack_1.htmFile
  loc_A5BC74: LdPrVar
  loc_A5BC76: LateMemCall
  loc_A5BC7C: LitVarStr var_94, "    <th>CBU</th>"
  loc_A5BC81: PopAdLdVar
  loc_A5BC82: FLdPr Me
  loc_A5BC85: MemLdRfVar from_stack_1.htmFile
  loc_A5BC88: LdPrVar
  loc_A5BC8A: LateMemCall
  loc_A5BC90: LitVarStr var_94, "  </tr>"
  loc_A5BC95: PopAdLdVar
  loc_A5BC96: FLdPr Me
  loc_A5BC99: MemLdRfVar from_stack_1.htmFile
  loc_A5BC9C: LdPrVar
  loc_A5BC9E: LateMemCall
  loc_A5BCA4: Branch loc_A5BD0B
  loc_A5BCA7: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A5BCAC: PopAdLdVar
  loc_A5BCAD: FLdPr Me
  loc_A5BCB0: MemLdRfVar from_stack_1.htmFile
  loc_A5BCB3: LdPrVar
  loc_A5BCB5: LateMemCall
  loc_A5BCBB: LitVarStr var_94, "    <th>Nombre</th>"
  loc_A5BCC0: PopAdLdVar
  loc_A5BCC1: FLdPr Me
  loc_A5BCC4: MemLdRfVar from_stack_1.htmFile
  loc_A5BCC7: LdPrVar
  loc_A5BCC9: LateMemCall
  loc_A5BCCF: LitVarStr var_94, "    <th>CUIT</th>"
  loc_A5BCD4: PopAdLdVar
  loc_A5BCD5: FLdPr Me
  loc_A5BCD8: MemLdRfVar from_stack_1.htmFile
  loc_A5BCDB: LdPrVar
  loc_A5BCDD: LateMemCall
  loc_A5BCE3: LitVarStr var_94, "    <th>CBU</th>"
  loc_A5BCE8: PopAdLdVar
  loc_A5BCE9: FLdPr Me
  loc_A5BCEC: MemLdRfVar from_stack_1.htmFile
  loc_A5BCEF: LdPrVar
  loc_A5BCF1: LateMemCall
  loc_A5BCF7: LitVarStr var_94, "  </tr>"
  loc_A5BCFC: PopAdLdVar
  loc_A5BCFD: FLdPr Me
  loc_A5BD00: MemLdRfVar from_stack_1.htmFile
  loc_A5BD03: LdPrVar
  loc_A5BD05: LateMemCall
  loc_A5BD0B: ExitProcHresult
End Function

Private Function Proc_195_20_983960() '983960
  'Data Table: 42A1F0
  loc_983920: LitVarStr var_94, "</table>"
  loc_983925: PopAdLdVar
  loc_983926: FLdPr Me
  loc_983929: MemLdRfVar from_stack_1.htmFile
  loc_98392C: LdPrVar
  loc_98392E: LateMemCall
  loc_983934: LitVarStr var_94, "</body>"
  loc_983939: PopAdLdVar
  loc_98393A: FLdPr Me
  loc_98393D: MemLdRfVar from_stack_1.htmFile
  loc_983940: LdPrVar
  loc_983942: LateMemCall
  loc_983948: LitVarStr var_94, "</html>"
  loc_98394D: PopAdLdVar
  loc_98394E: FLdPr Me
  loc_983951: MemLdRfVar from_stack_1.htmFile
  loc_983954: LdPrVar
  loc_983956: LateMemCall
  loc_98395C: ExitProcHresult
  loc_98395D: FLdR8 arg_23
End Function
