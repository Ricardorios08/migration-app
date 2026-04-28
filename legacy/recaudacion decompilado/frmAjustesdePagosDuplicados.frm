VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Begin VB.Form frmAjustesdePagosDuplicados
  Caption = "Ajustes de pagos duplicados"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HFF0000&
  BorderStyle = 1 'Fixed Single
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 48
  ClientTop = 336
  ClientWidth = 15180
  ClientHeight = 10152
  Begin VB.TextBox txtTotaSeleDeuda
    Left = 13200
    Top = 7560
    Width = 1815
    Height = 360
    TabIndex = 32
    Alignment = 1 'Right Justify
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtTotaDere
    Left = 6000
    Top = 4080
    Width = 1815
    Height = 345
    TabIndex = 22
    Alignment = 1 'Right Justify
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtTotaReca
    Left = 10320
    Top = 4080
    Width = 1815
    Height = 345
    TabIndex = 21
    Alignment = 1 'Right Justify
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtTotaApre
    Left = 1920
    Top = 4080
    Width = 1815
    Height = 360
    TabIndex = 20
    Alignment = 1 'Right Justify
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtTotal
    Left = 13080
    Top = 4080
    Width = 1815
    Height = 345
    TabIndex = 19
    Alignment = 1 'Right Justify
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.TextBox txtTotaSele
    Left = 13080
    Top = 4560
    Width = 1815
    Height = 360
    TabIndex = 18
    Alignment = 1 'Right Justify
    Locked = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Frame Frame1
    Caption = "Datos del Crédito Manual "
    Left = 120
    Top = 8040
    Width = 15015
    Height = 1935
    TabIndex = 15
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton ConfirmarCmd
      Left = 4800
      Top = 1320
      Width = 1335
      Height = 525
      TabIndex = 9
      Picture = "frmAjustesdePagosDuplicados.frx":0000
      Style = 1
    End
    Begin VB.TextBox DetaCtctTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 840
      Width = 9015
      Height = 345
      TabIndex = 8
      MaxLength = 100
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox ExpeCtctTxt
      ForeColor = &HFF0000&
      Left = 1920
      Top = 360
      Width = 1695
      Height = 345
      TabIndex = 7
      MaxLength = 15
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label11
      Caption = "Observaciones:"
      Left = 255
      Top = 840
      Width = 1635
      Height = 300
      TabIndex = 17
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label10
      Caption = "Expediente:"
      Left = 630
      Top = 360
      Width = 1260
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.CheckBox SeleTodoChk
    Caption = "Seleccionar todo"
    Left = 5040
    Top = 720
    Width = 2175
    Height = 255
    TabIndex = 14
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.ComboBox OficinaCbo
    Style = 2
    ForeColor = &HFF0000&
    Left = 1560
    Top = 120
    Width = 2175
    Height = 420
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton BuscarCmd
    Left = 4440
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 6
    Picture = "frmAjustesdePagosDuplicados.frx":032E
    Style = 1
  End
  Begin VB.CommandButton NumeCtaCmd
    Left = 6720
    Top = 120
    Width = 450
    Height = 345
    TabIndex = 2
    Picture = "frmAjustesdePagosDuplicados.frx":0410
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.TextBox NumeCtaTxt
    ForeColor = &HFF0000&
    Left = 4680
    Top = 120
    Width = 1935
    Height = 345
    TabIndex = 1
    MaxLength = 11
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton SalirCmd
    Left = 14400
    Top = 480
    Width = 735
    Height = 615
    TabIndex = 11
    Picture = "frmAjustesdePagosDuplicados.frx":050A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton FechVencCmd
    Left = 3840
    Top = 720
    Width = 450
    Height = 345
    TabIndex = 5
    Picture = "frmAjustesdePagosDuplicados.frx":075C
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSMask.MaskEdBox FechVencMsk
    Left = 2280
    Top = 720
    Width = 1455
    Height = 345
    TabIndex = 3
    OleObjectBlob = "frmAjustesdePagosDuplicados.frx":0C9E
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteFlex
    Left = 120
    Top = 1200
    Width = 15015
    Height = 2775
    TabIndex = 10
    OleObjectBlob = "frmAjustesdePagosDuplicados.frx":0D4E
    Appearance = 0 'Flat
  End
  Begin MSFlexGridLib.MSFlexGrid ctacteDeudaFlex
    Left = 120
    Top = 5040
    Width = 15015
    Height = 2415
    TabIndex = 31
    OleObjectBlob = "frmAjustesdePagosDuplicados.frx":0E3A
    Appearance = 0 'Flat
  End
  Begin VB.Label Label9
    Caption = "Total Seleccionado:"
    Left = 10680
    Top = 7560
    Width = 2385
    Height = 300
    TabIndex = 33
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label DetaPersLbl
    ForeColor = &HFF0000&
    Left = 9240
    Top = 120
    Width = 5175
    Height = 315
    TabIndex = 30
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label CucuPersLbl
    ForeColor = &HFF0000&
    Left = 7320
    Top = 120
    Width = 1695
    Height = 315
    TabIndex = 29
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label DomiPersLbl
    ForeColor = &HFF0000&
    Left = 7320
    Top = 600
    Width = 6975
    Height = 315
    TabIndex = 28
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label2
    Caption = "Total Derecho:"
    Left = 3960
    Top = 4080
    Width = 1785
    Height = 300
    TabIndex = 27
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label6
    Caption = "Total Recargo:"
    Left = 8280
    Top = 4080
    Width = 1785
    Height = 300
    TabIndex = 26
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label7
    Caption = "Total Apremio:"
    Left = 120
    Top = 4080
    Width = 1755
    Height = 300
    TabIndex = 25
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label8
    Caption = "Total:"
    Left = 12240
    Top = 4080
    Width = 690
    Height = 300
    TabIndex = 24
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label1
    Caption = "Total Seleccionado:"
    Left = 10560
    Top = 4560
    Width = 2385
    Height = 300
    TabIndex = 23
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label5
    Caption = "Oficina:"
    Left = 720
    Top = 120
    Width = 795
    Height = 300
    TabIndex = 13
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label3
    Caption = "Cuenta:"
    Left = 3840
    Top = 120
    Width = 840
    Height = 300
    TabIndex = 12
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Label Label4
    Caption = "Fecha Vencimiento:"
    Left = 120
    Top = 720
    Width = 2115
    Height = 300
    TabIndex = 4
    AutoSize = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
End

Attribute VB_Name = "frmAjustesdePagosDuplicados"


Private Sub ConfirmarCmd_Click() 'C56340
  'Data Table: 4E5E1C
  loc_C554EC: FLdPr Me
  loc_C554EF: VCallAd Control_ID_ctacteFlex
  loc_C554F2: FStAdFunc var_94
  loc_C554F5: FLdPr var_94
  loc_C554F8: LateIdLdVar var_A4 DispID_4 0
  loc_C554FF: CI4Var
  loc_C55501: LitI4 1
  loc_C55506: LeI4
  loc_C55507: FFree1Ad var_94
  loc_C5550A: FFree1Var var_A4 = ""
  loc_C5550D: BranchF loc_C55542
  loc_C55510: LitVar_Missing var_114
  loc_C55513: LitVar_Missing var_F4
  loc_C55516: LitVarStr var_C4, "InfoGov"
  loc_C5551B: FStVarCopyObj var_D4
  loc_C5551E: FLdRfVar var_D4
  loc_C55521: LitI4 &H30
  loc_C55526: LitVarStr var_B4, "No existe ningún crédito a favor seleccionado. Reintente..."
  loc_C5552B: FStVarCopyObj var_A4
  loc_C5552E: FLdRfVar var_A4
  loc_C55531: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C55536: FFreeVar var_A4 = "": var_D4 = "": var_F4 = ""
  loc_C55541: ExitProcHresult
  loc_C55542: FLdPr Me
  loc_C55545: VCallAd Control_ID_ctacteDeudaFlex
  loc_C55548: FStAdFunc var_94
  loc_C5554B: FLdPr var_94
  loc_C5554E: LateIdLdVar var_A4 DispID_4 0
  loc_C55555: CI4Var
  loc_C55557: LitI4 1
  loc_C5555C: LeI4
  loc_C5555D: FFree1Ad var_94
  loc_C55560: FFree1Var var_A4 = ""
  loc_C55563: BranchF loc_C55598
  loc_C55566: LitVar_Missing var_114
  loc_C55569: LitVar_Missing var_F4
  loc_C5556C: LitVarStr var_C4, "InfoGov"
  loc_C55571: FStVarCopyObj var_D4
  loc_C55574: FLdRfVar var_D4
  loc_C55577: LitI4 &H30
  loc_C5557C: LitVarStr var_B4, "No existe deuda seleccionada para realizar el ajuste. Reintente..."
  loc_C55581: FStVarCopyObj var_A4
  loc_C55584: FLdRfVar var_A4
  loc_C55587: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C5558C: FFreeVar var_A4 = "": var_D4 = "": var_F4 = ""
  loc_C55597: ExitProcHresult
  loc_C55598: LitI2_Byte 0
  loc_C5559A: FStI2 var_86
  loc_C5559D: LitI2_Byte 1
  loc_C5559F: FLdPr Me
  loc_C555A2: MemLdRfVar from_stack_1.global_60
  loc_C555A5: FLdPr Me
  loc_C555A8: VCallAd Control_ID_ctacteFlex
  loc_C555AB: FStAdFunc var_94
  loc_C555AE: FLdPr var_94
  loc_C555B1: LateIdLdVar var_A4 DispID_4 0
  loc_C555B8: CI4Var
  loc_C555BA: LitI4 1
  loc_C555BF: SubI4
  loc_C555C0: CI2I4
  loc_C555C1: FFree1Ad var_94
  loc_C555C4: FFree1Var var_A4 = ""
  loc_C555C7: ForI2 var_118
  loc_C555CD: FLdPr Me
  loc_C555D0: MemLdI2 global_60
  loc_C555D3: CI4UI1
  loc_C555D4: CVarI4
  loc_C555D8: PopAdLdVar
  loc_C555D9: LitVarI4
  loc_C555E1: PopAdLdVar
  loc_C555E2: FLdPr Me
  loc_C555E5: VCallAd Control_ID_ctacteFlex
  loc_C555E8: FStAdFunc var_94
  loc_C555EB: FLdPr var_94
  loc_C555EE: LateIdCallLdVar
  loc_C555F8: CStrVarTmp
  loc_C555F9: FStStrNoPop var_11C
  loc_C555FC: LitStr "Si"
  loc_C555FF: EqStr
  loc_C55601: FFree1Str var_11C
  loc_C55604: FFree1Ad var_94
  loc_C55607: FFree1Var var_A4 = ""
  loc_C5560A: BranchF loc_C55612
  loc_C5560D: LitI2_Byte &HFF
  loc_C5560F: FStI2 var_86
  loc_C55612: FLdPr Me
  loc_C55615: MemLdRfVar from_stack_1.global_60
  loc_C55618: NextI2 var_118, loc_C555CD
  loc_C5561D: FLdI2 var_86
  loc_C55620: LitI2_Byte 0
  loc_C55622: EqI2
  loc_C55623: BranchF loc_C55658
  loc_C55626: LitVar_Missing var_114
  loc_C55629: LitVar_Missing var_F4
  loc_C5562C: LitVarStr var_C4, "InfoGov"
  loc_C55631: FStVarCopyObj var_D4
  loc_C55634: FLdRfVar var_D4
  loc_C55637: LitI4 &H30
  loc_C5563C: LitVarStr var_B4, "Debe Seleccionar por lo menos un pago duplicado..."
  loc_C55641: FStVarCopyObj var_A4
  loc_C55644: FLdRfVar var_A4
  loc_C55647: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C5564C: FFreeVar var_A4 = "": var_D4 = "": var_F4 = ""
  loc_C55657: ExitProcHresult
  loc_C55658: LitI2_Byte 0
  loc_C5565A: FStI2 var_86
  loc_C5565D: LitI2_Byte 1
  loc_C5565F: FLdPr Me
  loc_C55662: MemLdRfVar from_stack_1.global_60
  loc_C55665: FLdPr Me
  loc_C55668: VCallAd Control_ID_ctacteDeudaFlex
  loc_C5566B: FStAdFunc var_94
  loc_C5566E: FLdPr var_94
  loc_C55671: LateIdLdVar var_A4 DispID_4 0
  loc_C55678: CI4Var
  loc_C5567A: LitI4 1
  loc_C5567F: SubI4
  loc_C55680: CI2I4
  loc_C55681: FFree1Ad var_94
  loc_C55684: FFree1Var var_A4 = ""
  loc_C55687: ForI2 var_120
  loc_C5568D: FLdPr Me
  loc_C55690: MemLdI2 global_60
  loc_C55693: CI4UI1
  loc_C55694: CVarI4
  loc_C55698: PopAdLdVar
  loc_C55699: LitVarI4
  loc_C556A1: PopAdLdVar
  loc_C556A2: FLdPr Me
  loc_C556A5: VCallAd Control_ID_ctacteDeudaFlex
  loc_C556A8: FStAdFunc var_94
  loc_C556AB: FLdPr var_94
  loc_C556AE: LateIdCallLdVar
  loc_C556B8: CStrVarTmp
  loc_C556B9: FStStrNoPop var_11C
  loc_C556BC: LitStr "Si"
  loc_C556BF: EqStr
  loc_C556C1: FFree1Str var_11C
  loc_C556C4: FFree1Ad var_94
  loc_C556C7: FFree1Var var_A4 = ""
  loc_C556CA: BranchF loc_C556D2
  loc_C556CD: LitI2_Byte &HFF
  loc_C556CF: FStI2 var_86
  loc_C556D2: FLdPr Me
  loc_C556D5: MemLdRfVar from_stack_1.global_60
  loc_C556D8: NextI2 var_120, loc_C5568D
  loc_C556DD: FLdI2 var_86
  loc_C556E0: LitI2_Byte 0
  loc_C556E2: EqI2
  loc_C556E3: BranchF loc_C55718
  loc_C556E6: LitVar_Missing var_114
  loc_C556E9: LitVar_Missing var_F4
  loc_C556EC: LitVarStr var_C4, "InfoGov"
  loc_C556F1: FStVarCopyObj var_D4
  loc_C556F4: FLdRfVar var_D4
  loc_C556F7: LitI4 &H30
  loc_C556FC: LitVarStr var_B4, "Debe Seleccionar por lo menos un item de deuda. Reintente..."
  loc_C55701: FStVarCopyObj var_A4
  loc_C55704: FLdRfVar var_A4
  loc_C55707: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C5570C: FFreeVar var_A4 = "": var_D4 = "": var_F4 = ""
  loc_C55717: ExitProcHresult
  loc_C55718: FLdRfVar var_128
  loc_C5571B: FLdPr Me
  loc_C5571E: VCallAd Control_ID_txtTotaSeleDeuda
  loc_C55721: FStAdFunc var_124
  loc_C55724: FLdPr var_124
  loc_C55727:  = Me.Text
  loc_C5572C: FLdRfVar var_11C
  loc_C5572F: FLdPr Me
  loc_C55732: VCallAd Control_ID_txtTotaSele
  loc_C55735: FStAdFunc var_94
  loc_C55738: FLdPr var_94
  loc_C5573B:  = Me.Text
  loc_C55740: ILdRf var_11C
  loc_C55743: CR8Str
  loc_C55745: LitI2_Byte &HFF
  loc_C55747: CR8I2
  loc_C55748: MulR8
  loc_C55749: CR8R8
  loc_C5574A: ILdRf var_128
  loc_C5574D: CR8Str
  loc_C5574F: GtR4
  loc_C55750: FFreeStr var_11C = ""
  loc_C55757: FFreeAd var_94 = ""
  loc_C5575E: BranchF loc_C55793
  loc_C55761: LitVar_Missing var_114
  loc_C55764: LitVar_Missing var_F4
  loc_C55767: LitVarStr var_C4, "InfoGov"
  loc_C5576C: FStVarCopyObj var_D4
  loc_C5576F: FLdRfVar var_D4
  loc_C55772: LitI4 &H30
  loc_C55777: LitVarStr var_B4, "El importe seleccionado de la deuda no puede ser mayor a la cantidad de pagos duplicados. Reintente..."
  loc_C5577C: FStVarCopyObj var_A4
  loc_C5577F: FLdRfVar var_A4
  loc_C55782: ImpAdCallFPR4 MsgBox(, , , , )
  loc_C55787: FFreeVar var_A4 = "": var_D4 = "": var_F4 = ""
  loc_C55792: ExitProcHresult
  loc_C55793: FLdRfVar var_128
  loc_C55796: FLdPr Me
  loc_C55799: VCallAd Control_ID_txtTotaSeleDeuda
  loc_C5579C: FStAdFunc var_124
  loc_C5579F: FLdPr var_124
  loc_C557A2:  = Me.Text
  loc_C557A7: FLdRfVar var_11C
  loc_C557AA: FLdPr Me
  loc_C557AD: VCallAd Control_ID_txtTotaSele
  loc_C557B0: FStAdFunc var_94
  loc_C557B3: FLdPr var_94
  loc_C557B6:  = Me.Text
  loc_C557BB: ILdRf var_11C
  loc_C557BE: CR8Str
  loc_C557C0: LitI2_Byte &HFF
  loc_C557C2: CR8I2
  loc_C557C3: MulR8
  loc_C557C4: CR8R8
  loc_C557C5: ILdRf var_128
  loc_C557C8: CR8Str
  loc_C557CA: NeR8
  loc_C557CB: FFreeStr var_11C = ""
  loc_C557D2: FFreeAd var_94 = ""
  loc_C557D9: BranchF loc_C557E5
  loc_C557DC: LitStr "El importe seleccionado de los pagos dobles, es distinto a la deuda seleccionada. No se puede realizar el proceso."
  loc_C557DF: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C557E4: ExitProcHresult
  loc_C557E5: LitI2_Byte 1
  loc_C557E7: FLdPr Me
  loc_C557EA: MemLdRfVar from_stack_1.global_60
  loc_C557ED: FLdPr Me
  loc_C557F0: VCallAd Control_ID_ctacteFlex
  loc_C557F3: FStAdFunc var_94
  loc_C557F6: FLdPr var_94
  loc_C557F9: LateIdLdVar var_A4 DispID_4 0
  loc_C55800: CI4Var
  loc_C55802: LitI4 1
  loc_C55807: SubI4
  loc_C55808: CI2I4
  loc_C55809: FFree1Ad var_94
  loc_C5580C: FFree1Var var_A4 = ""
  loc_C5580F: ForI2 var_12C
  loc_C55815: FLdPr Me
  loc_C55818: MemLdI2 global_60
  loc_C5581B: CI4UI1
  loc_C5581C: CVarI4
  loc_C55820: PopAdLdVar
  loc_C55821: LitVarI4
  loc_C55829: PopAdLdVar
  loc_C5582A: FLdPr Me
  loc_C5582D: VCallAd Control_ID_ctacteFlex
  loc_C55830: FStAdFunc var_94
  loc_C55833: FLdPr var_94
  loc_C55836: LateIdCallLdVar
  loc_C55840: CStrVarTmp
  loc_C55841: FStStrNoPop var_11C
  loc_C55844: LitStr "Si"
  loc_C55847: EqStr
  loc_C55849: FFree1Str var_11C
  loc_C5584C: FFree1Ad var_94
  loc_C5584F: FFree1Var var_A4 = ""
  loc_C55852: BranchF loc_C55C75
  loc_C55855: FLdPr Me
  loc_C55858: MemLdI2 global_60
  loc_C5585B: CI4UI1
  loc_C5585C: CVarI4
  loc_C55860: PopAdLdVar
  loc_C55861: LitVarI4
  loc_C55869: PopAdLdVar
  loc_C5586A: FLdPr Me
  loc_C5586D: VCallAd Control_ID_ctacteFlex
  loc_C55870: FStAdFunc var_1C4
  loc_C55873: FLdPr var_1C4
  loc_C55876: LateIdCallLdVar
  loc_C55880: PopAd
  loc_C55882: FLdPr Me
  loc_C55885: MemLdI2 global_60
  loc_C55888: CI4UI1
  loc_C55889: CVarI4
  loc_C5588D: PopAdLdVar
  loc_C5588E: LitVarI4
  loc_C55896: PopAdLdVar
  loc_C55897: FLdPr Me
  loc_C5589A: VCallAd Control_ID_ctacteFlex
  loc_C5589D: FStAdFunc var_278
  loc_C558A0: FLdPr var_278
  loc_C558A3: LateIdCallLdVar
  loc_C558AD: PopAd
  loc_C558AF: LitStr "SELECT * FROM ctacte "
  loc_C558B2: LitStr " WHERE ctacte.CodiOfic = "
  loc_C558B5: ConcatStr
  loc_C558B6: FStStrNoPop var_11C
  loc_C558B9: FLdPr Me
  loc_C558BC: MemLdI2 global_60
  loc_C558BF: CI4UI1
  loc_C558C0: CVarI4
  loc_C558C4: PopAdLdVar
  loc_C558C5: LitVarI4
  loc_C558CD: PopAdLdVar
  loc_C558CE: FLdPr Me
  loc_C558D1: VCallAd Control_ID_ctacteFlex
  loc_C558D4: FStAdFunc var_94
  loc_C558D7: FLdPr var_94
  loc_C558DA: LateIdCallLdVar
  loc_C558E4: CStrVarTmp
  loc_C558E5: FStStrNoPop var_128
  loc_C558E8: ConcatStr
  loc_C558E9: FStStrNoPop var_130
  loc_C558EC: LitStr " AND ctacte.CuenCtct = '"
  loc_C558EF: ConcatStr
  loc_C558F0: FStStrNoPop var_174
  loc_C558F3: FLdPr Me
  loc_C558F6: MemLdI2 global_60
  loc_C558F9: CI4UI1
  loc_C558FA: CVarI4
  loc_C558FE: PopAdLdVar
  loc_C558FF: LitVarI4
  loc_C55907: PopAdLdVar
  loc_C55908: FLdPr Me
  loc_C5590B: VCallAd Control_ID_ctacteFlex
  loc_C5590E: FStAdFunc var_124
  loc_C55911: FLdPr var_124
  loc_C55914: LateIdCallLdVar
  loc_C5591E: CStrVarTmp
  loc_C5591F: FStStrNoPop var_178
  loc_C55922: ConcatStr
  loc_C55923: FStStrNoPop var_17C
  loc_C55926: LitStr "'"
  loc_C55929: ConcatStr
  loc_C5592A: FStStrNoPop var_180
  loc_C5592D: LitStr " AND ctacte.PeriCtct = "
  loc_C55930: ConcatStr
  loc_C55931: CVarStr var_204
  loc_C55934: LitVarI2 var_1E4, 4
  loc_C55939: LitI4 4
  loc_C5593E: FLdRfVar var_F4
  loc_C55941: CStrVarTmp
  loc_C55942: CVarStr var_114
  loc_C55945: FLdRfVar var_1F4
  loc_C55948: ImpAdCallFPR4  = Mid(, , )
  loc_C5594D: FLdRfVar var_1F4
  loc_C55950: ConcatVar var_214
  loc_C55954: LitVarStr var_224, " AND ctacte.BimeCtct = "
  loc_C55959: ConcatVar var_234
  loc_C5595D: LitVarI2 var_2B8, 2
  loc_C55962: LitI4 1
  loc_C55967: FLdRfVar var_288
  loc_C5596A: CStrVarTmp
  loc_C5596B: CVarStr var_298
  loc_C5596E: FLdRfVar var_2C8
  loc_C55971: ImpAdCallFPR4  = Mid(, , )
  loc_C55976: FLdRfVar var_2C8
  loc_C55979: ConcatVar var_2D8
  loc_C5597D: LitVarStr var_2E8, " AND ctacte.NumeCtct = "
  loc_C55982: ConcatVar var_2F8
  loc_C55986: FLdPr Me
  loc_C55989: MemLdI2 global_60
  loc_C5598C: CI4UI1
  loc_C5598D: CVarI4
  loc_C55991: PopAdLdVar
  loc_C55992: LitVarI4
  loc_C5599A: PopAdLdVar
  loc_C5599B: FLdPr Me
  loc_C5599E: VCallAd Control_ID_ctacteFlex
  loc_C559A1: FStAdFunc var_33C
  loc_C559A4: FLdPr var_33C
  loc_C559A7: LateIdCallLdVar
  loc_C559B1: CStrVarTmp
  loc_C559B2: CVarStr var_35C
  loc_C559B5: ConcatVar var_36C
  loc_C559B9: LitVarStr var_37C, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_C559BE: ConcatVar var_38C
  loc_C559C2: CStrVarVal var_390
  loc_C559C6: FLdPr Me
  loc_C559C9: MemLdRfVar from_stack_1.global_52
  loc_C559CC: NewIfNullPr clsctacte
  loc_C559CF: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C559D4: FFreeStr var_11C = "": var_128 = "": var_130 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_C559E7: FFreeAd var_94 = "": var_124 = "": var_1C4 = "": var_278 = ""
  loc_C559F4: FFreeVar var_A4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_1E4 = "": var_204 = "": var_1F4 = "": var_214 = "": var_288 = "": var_298 = "": var_2B8 = "": var_234 = "": var_2C8 = "": var_2D8 = "": var_34C = "": var_2F8 = "": var_35C = "": var_36C = ""
  loc_C55A1D: FLdRfVar var_394
  loc_C55A20: FLdPr Me
  loc_C55A23: MemLdRfVar from_stack_1.global_52
  loc_C55A26: NewIfNullPr clsctacte
  loc_C55A29: from_stack_1 = clsctacte.RecordCount
  loc_C55A2E: ILdRf var_394
  loc_C55A31: LitI4 1
  loc_C55A36: GeI4
  loc_C55A37: BranchF loc_C55C75
  loc_C55A3A: FLdPr Me
  loc_C55A3D: MemLdRfVar from_stack_1.global_52
  loc_C55A40: NewIfNullPr clsctacte
  loc_C55A43: Call clsctacte.MoveLast()
  loc_C55A48: FLdRfVar var_396
  loc_C55A4B: FLdPr Me
  loc_C55A4E: MemLdRfVar from_stack_1.global_52
  loc_C55A51: NewIfNullPr clsctacte
  loc_C55A54: from_stack_1 = clsctacte.MoviCtct
  loc_C55A59: FLdI2 var_396
  loc_C55A5C: LitI2_Byte 1
  loc_C55A5E: AddI2
  loc_C55A5F: FStI2 var_88
  loc_C55A62: FLdPr Me
  loc_C55A65: MemLdI2 global_60
  loc_C55A68: CI4UI1
  loc_C55A69: CVarI4
  loc_C55A6D: PopAdLdVar
  loc_C55A6E: LitVarI4
  loc_C55A76: PopAdLdVar
  loc_C55A77: FLdPr Me
  loc_C55A7A: VCallAd Control_ID_ctacteFlex
  loc_C55A7D: FStAdFunc var_94
  loc_C55A80: FLdPr var_94
  loc_C55A83: LateIdCallLdVar
  loc_C55A8D: PopAd
  loc_C55A8F: LitI4 2
  loc_C55A94: FLdRfVar var_A4
  loc_C55A97: CStrVarTmp
  loc_C55A98: FStStrNoPop var_11C
  loc_C55A9B: CR8Str
  loc_C55A9D: LitI2_Byte &HFF
  loc_C55A9F: CR8I2
  loc_C55AA0: MulR8
  loc_C55AA1: CVarR8
  loc_C55AA5: FLdRfVar var_F4
  loc_C55AA8: ImpAdCallFPR4  = Round(, )
  loc_C55AAD: FLdRfVar var_F4
  loc_C55AB0: CR4Var
  loc_C55AB1: FStFPR8 var_90
  loc_C55AB4: FFree1Str var_11C
  loc_C55AB7: FFree1Ad var_94
  loc_C55ABA: FFreeVar var_A4 = "": var_D4 = ""
  loc_C55AC3: FLdRfVar var_396
  loc_C55AC6: FLdPr Me
  loc_C55AC9: MemLdRfVar from_stack_1.global_52
  loc_C55ACC: NewIfNullPr clsctacte
  loc_C55ACF: from_stack_1 = clsctacte.CodiOfic
  loc_C55AD4: FLdRfVar var_11C
  loc_C55AD7: FLdPr Me
  loc_C55ADA: MemLdRfVar from_stack_1.global_52
  loc_C55ADD: NewIfNullPr clsctacte
  loc_C55AE0: from_stack_1 = clsctacte.CuenCtct
  loc_C55AE5: FLdRfVar var_398
  loc_C55AE8: FLdPr Me
  loc_C55AEB: MemLdRfVar from_stack_1.global_52
  loc_C55AEE: NewIfNullPr clsctacte
  loc_C55AF1: from_stack_1 = clsctacte.PeriCtct
  loc_C55AF6: FLdRfVar var_39A
  loc_C55AF9: FLdPr Me
  loc_C55AFC: MemLdRfVar from_stack_1.global_52
  loc_C55AFF: NewIfNullPr clsctacte
  loc_C55B02: from_stack_1 = clsctacte.BimeCtct
  loc_C55B07: FLdRfVar var_394
  loc_C55B0A: FLdPr Me
  loc_C55B0D: MemLdRfVar from_stack_1.global_52
  loc_C55B10: NewIfNullPr clsctacte
  loc_C55B13: from_stack_1 = clsctacte.NumeCtct
  loc_C55B18: FLdRfVar var_39C
  loc_C55B1B: FLdPr Me
  loc_C55B1E: MemLdRfVar from_stack_1.global_52
  loc_C55B21: NewIfNullPr clsctacte
  loc_C55B24: from_stack_1 = clsctacte.CodiTili
  loc_C55B29: FLdRfVar var_39E
  loc_C55B2C: FLdPr Me
  loc_C55B2F: MemLdRfVar from_stack_1.global_52
  loc_C55B32: NewIfNullPr clsctacte
  loc_C55B35: from_stack_1 = clsctacte.NumeLiqu
  loc_C55B3A: FLdRfVar var_128
  loc_C55B3D: FLdPr Me
  loc_C55B40: MemLdRfVar from_stack_1.global_52
  loc_C55B43: NewIfNullPr clsctacte
  loc_C55B46: from_stack_1 = clsctacte.TipoCtct
  loc_C55B4B: LitI2_Byte 0
  loc_C55B4D: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C55B52: FStFPR8 var_3B4
  loc_C55B55: LitI2_Byte 0
  loc_C55B57: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C55B5C: FStFPR8 var_3BC
  loc_C55B5F: FLdRfVar var_3A0
  loc_C55B62: FLdPr Me
  loc_C55B65: MemLdRfVar from_stack_1.global_52
  loc_C55B68: NewIfNullPr clsctacte
  loc_C55B6B: from_stack_1 = clsctacte.PeriInfo
  loc_C55B70: FLdRfVar var_130
  loc_C55B73: FLdPr Me
  loc_C55B76: MemLdRfVar from_stack_1.global_52
  loc_C55B79: NewIfNullPr clsctacte
  loc_C55B7C: from_stack_1 = clsctacte.CodiConc
  loc_C55B81: FLdRfVar var_3A4
  loc_C55B84: FLdPr Me
  loc_C55B87: MemLdRfVar from_stack_1.global_52
  loc_C55B8A: NewIfNullPr clsctacte
  loc_C55B8D: from_stack_1 = clsctacte.CodiFapa
  loc_C55B92: FLdRfVar var_3A6
  loc_C55B95: FLdPr Me
  loc_C55B98: MemLdRfVar from_stack_1.global_52
  loc_C55B9B: NewIfNullPr clsctacte
  loc_C55B9E: from_stack_1 = clsctacte.CuotDefa
  loc_C55BA3: FLdRfVar var_3AC
  loc_C55BA6: FLdPr Me
  loc_C55BA9: MemLdRfVar from_stack_1.global_52
  loc_C55BAC: NewIfNullPr clsctacte
  loc_C55BAF: from_stack_1 = clsctacte.NumeApre
  loc_C55BB4: FLdRfVar var_174
  loc_C55BB7: FLdPr Me
  loc_C55BBA: VCallAd Control_ID_ExpeCtctTxt
  loc_C55BBD: FStAdFunc var_94
  loc_C55BC0: FLdPr var_94
  loc_C55BC3:  = Me.Text
  loc_C55BC8: FLdRfVar var_178
  loc_C55BCB: FLdPr Me
  loc_C55BCE: MemLdRfVar from_stack_1.global_52
  loc_C55BD1: NewIfNullPr clsctacte
  loc_C55BD4: from_stack_1 = clsctacte.TifaCtct
  loc_C55BD9: FLdRfVar var_17C
  loc_C55BDC: FLdPr Me
  loc_C55BDF: VCallAd Control_ID_DetaCtctTxt
  loc_C55BE2: FStAdFunc var_124
  loc_C55BE5: FLdPr var_124
  loc_C55BE8:  = Me.Text
  loc_C55BED: LitI2_Byte 0
  loc_C55BEF: CR8I2
  loc_C55BF0: PopFPR8
  loc_C55BF1: FLdR8 var_90
  loc_C55BF4: ILdRf var_17C
  loc_C55BF7: LitI4 0
  loc_C55BFC: LitI2_Byte 0
  loc_C55BFE: ILdRf var_178
  loc_C55C01: ILdRf var_174
  loc_C55C04: LitI2_Byte &HA
  loc_C55C06: CUI1I2
  loc_C55C08: ILdRf var_3AC
  loc_C55C0B: FLdI2 var_3A6
  loc_C55C0E: ILdRf var_3A4
  loc_C55C11: ILdRf var_130
  loc_C55C14: FLdI2 var_3A0
  loc_C55C17: LitI2_Byte 0
  loc_C55C19: LitStr vbNullString
  loc_C55C1C: FLdFPR8 var_3BC
  loc_C55C1F: CVarDate var_C4
  loc_C55C23: PopAdLdVar
  loc_C55C24: FLdFPR8 var_3B4
  loc_C55C27: CVarDate var_B4
  loc_C55C2B: PopAdLdVar
  loc_C55C2C: ILdRf var_128
  loc_C55C2F: LitI4 0
  loc_C55C34: LitI2_Byte 0
  loc_C55C36: FLdI2 var_39E
  loc_C55C39: FLdUI1
  loc_C55C3D: FLdI2 var_88
  loc_C55C40: ILdRf var_394
  loc_C55C43: FLdI2 var_39A
  loc_C55C46: FLdI2 var_398
  loc_C55C49: ILdRf var_11C
  loc_C55C4C: FLdI2 var_396
  loc_C55C4F: CUI1I2
  loc_C55C51: FLdPr Me
  loc_C55C54: MemLdRfVar from_stack_1.global_52
  loc_C55C57: NewIfNullPr clsctacte
  loc_C55C5A: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C55C5F: FFreeStr var_11C = "": var_128 = "": var_130 = "": var_174 = "": var_178 = ""
  loc_C55C6E: FFreeAd var_94 = ""
  loc_C55C75: FLdPr Me
  loc_C55C78: MemLdRfVar from_stack_1.global_60
  loc_C55C7B: NextI2 var_12C, loc_C55815
  loc_C55C80: LitI2_Byte 1
  loc_C55C82: FLdPr Me
  loc_C55C85: MemLdRfVar from_stack_1.global_60
  loc_C55C88: FLdPr Me
  loc_C55C8B: VCallAd Control_ID_ctacteDeudaFlex
  loc_C55C8E: FStAdFunc var_94
  loc_C55C91: FLdPr var_94
  loc_C55C94: LateIdLdVar var_A4 DispID_4 0
  loc_C55C9B: CI4Var
  loc_C55C9D: LitI4 1
  loc_C55CA2: SubI4
  loc_C55CA3: CI2I4
  loc_C55CA4: FFree1Ad var_94
  loc_C55CA7: FFree1Var var_A4 = ""
  loc_C55CAA: ForI2 var_3C0
  loc_C55CB0: FLdPr Me
  loc_C55CB3: MemLdI2 global_60
  loc_C55CB6: CI4UI1
  loc_C55CB7: CVarI4
  loc_C55CBB: PopAdLdVar
  loc_C55CBC: LitVarI4
  loc_C55CC4: PopAdLdVar
  loc_C55CC5: FLdPr Me
  loc_C55CC8: VCallAd Control_ID_ctacteDeudaFlex
  loc_C55CCB: FStAdFunc var_94
  loc_C55CCE: FLdPr var_94
  loc_C55CD1: LateIdCallLdVar
  loc_C55CDB: CStrVarTmp
  loc_C55CDC: FStStrNoPop var_11C
  loc_C55CDF: LitStr "Si"
  loc_C55CE2: EqStr
  loc_C55CE4: FFree1Str var_11C
  loc_C55CE7: FFree1Ad var_94
  loc_C55CEA: FFree1Var var_A4 = ""
  loc_C55CED: BranchF loc_C560E5
  loc_C55CF0: FLdPr Me
  loc_C55CF3: MemLdI2 global_60
  loc_C55CF6: CI4UI1
  loc_C55CF7: CVarI4
  loc_C55CFB: PopAdLdVar
  loc_C55CFC: LitVarI4
  loc_C55D04: PopAdLdVar
  loc_C55D05: FLdPr Me
  loc_C55D08: VCallAd Control_ID_ctacteDeudaFlex
  loc_C55D0B: FStAdFunc var_1C4
  loc_C55D0E: FLdPr var_1C4
  loc_C55D11: LateIdCallLdVar
  loc_C55D1B: PopAd
  loc_C55D1D: FLdPr Me
  loc_C55D20: MemLdI2 global_60
  loc_C55D23: CI4UI1
  loc_C55D24: CVarI4
  loc_C55D28: PopAdLdVar
  loc_C55D29: LitVarI4
  loc_C55D31: PopAdLdVar
  loc_C55D32: FLdPr Me
  loc_C55D35: VCallAd Control_ID_ctacteDeudaFlex
  loc_C55D38: FStAdFunc var_278
  loc_C55D3B: FLdPr var_278
  loc_C55D3E: LateIdCallLdVar
  loc_C55D48: PopAd
  loc_C55D4A: LitStr "SELECT * FROM ctacte "
  loc_C55D4D: LitStr " WHERE ctacte.CodiOfic = "
  loc_C55D50: ConcatStr
  loc_C55D51: FStStrNoPop var_11C
  loc_C55D54: FLdPr Me
  loc_C55D57: MemLdI2 global_60
  loc_C55D5A: CI4UI1
  loc_C55D5B: CVarI4
  loc_C55D5F: PopAdLdVar
  loc_C55D60: LitVarI4
  loc_C55D68: PopAdLdVar
  loc_C55D69: FLdPr Me
  loc_C55D6C: VCallAd Control_ID_ctacteDeudaFlex
  loc_C55D6F: FStAdFunc var_94
  loc_C55D72: FLdPr var_94
  loc_C55D75: LateIdCallLdVar
  loc_C55D7F: CStrVarTmp
  loc_C55D80: FStStrNoPop var_128
  loc_C55D83: ConcatStr
  loc_C55D84: FStStrNoPop var_130
  loc_C55D87: LitStr " AND ctacte.CuenCtct = '"
  loc_C55D8A: ConcatStr
  loc_C55D8B: FStStrNoPop var_174
  loc_C55D8E: FLdPr Me
  loc_C55D91: MemLdI2 global_60
  loc_C55D94: CI4UI1
  loc_C55D95: CVarI4
  loc_C55D99: PopAdLdVar
  loc_C55D9A: LitVarI4
  loc_C55DA2: PopAdLdVar
  loc_C55DA3: FLdPr Me
  loc_C55DA6: VCallAd Control_ID_ctacteDeudaFlex
  loc_C55DA9: FStAdFunc var_124
  loc_C55DAC: FLdPr var_124
  loc_C55DAF: LateIdCallLdVar
  loc_C55DB9: CStrVarTmp
  loc_C55DBA: FStStrNoPop var_178
  loc_C55DBD: ConcatStr
  loc_C55DBE: FStStrNoPop var_17C
  loc_C55DC1: LitStr "'"
  loc_C55DC4: ConcatStr
  loc_C55DC5: FStStrNoPop var_180
  loc_C55DC8: LitStr " AND ctacte.PeriCtct = "
  loc_C55DCB: ConcatStr
  loc_C55DCC: CVarStr var_204
  loc_C55DCF: LitVarI2 var_1E4, 4
  loc_C55DD4: LitI4 4
  loc_C55DD9: FLdRfVar var_F4
  loc_C55DDC: CStrVarTmp
  loc_C55DDD: CVarStr var_114
  loc_C55DE0: FLdRfVar var_1F4
  loc_C55DE3: ImpAdCallFPR4  = Mid(, , )
  loc_C55DE8: FLdRfVar var_1F4
  loc_C55DEB: ConcatVar var_214
  loc_C55DEF: LitVarStr var_224, " AND ctacte.BimeCtct = "
  loc_C55DF4: ConcatVar var_234
  loc_C55DF8: LitVarI2 var_2B8, 2
  loc_C55DFD: LitI4 1
  loc_C55E02: FLdRfVar var_288
  loc_C55E05: CStrVarTmp
  loc_C55E06: CVarStr var_298
  loc_C55E09: FLdRfVar var_2C8
  loc_C55E0C: ImpAdCallFPR4  = Mid(, , )
  loc_C55E11: FLdRfVar var_2C8
  loc_C55E14: ConcatVar var_2D8
  loc_C55E18: LitVarStr var_2E8, " AND ctacte.NumeCtct = "
  loc_C55E1D: ConcatVar var_2F8
  loc_C55E21: FLdPr Me
  loc_C55E24: MemLdI2 global_60
  loc_C55E27: CI4UI1
  loc_C55E28: CVarI4
  loc_C55E2C: PopAdLdVar
  loc_C55E2D: LitVarI4
  loc_C55E35: PopAdLdVar
  loc_C55E36: FLdPr Me
  loc_C55E39: VCallAd Control_ID_ctacteDeudaFlex
  loc_C55E3C: FStAdFunc var_33C
  loc_C55E3F: FLdPr var_33C
  loc_C55E42: LateIdCallLdVar
  loc_C55E4C: CStrVarTmp
  loc_C55E4D: CVarStr var_35C
  loc_C55E50: ConcatVar var_36C
  loc_C55E54: LitVarStr var_37C, " ORDER BY ctacte.CodiOfic, ctacte.CuenCtct, ctacte.PeriCtct, ctacte.BimeCtct, ctacte.NumeCtct, ctacte.MoviCtct"
  loc_C55E59: ConcatVar var_38C
  loc_C55E5D: CStrVarVal var_390
  loc_C55E61: FLdPr Me
  loc_C55E64: MemLdRfVar from_stack_1.global_52
  loc_C55E67: NewIfNullPr clsctacte
  loc_C55E6A: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C55E6F: FFreeStr var_11C = "": var_128 = "": var_130 = "": var_174 = "": var_178 = "": var_17C = "": var_180 = ""
  loc_C55E82: FFreeAd var_94 = "": var_124 = "": var_1C4 = "": var_278 = ""
  loc_C55E8F: FFreeVar var_A4 = "": var_D4 = "": var_F4 = "": var_114 = "": var_1E4 = "": var_204 = "": var_1F4 = "": var_214 = "": var_288 = "": var_298 = "": var_2B8 = "": var_234 = "": var_2C8 = "": var_2D8 = "": var_34C = "": var_2F8 = "": var_35C = "": var_36C = ""
  loc_C55EB8: FLdRfVar var_394
  loc_C55EBB: FLdPr Me
  loc_C55EBE: MemLdRfVar from_stack_1.global_52
  loc_C55EC1: NewIfNullPr clsctacte
  loc_C55EC4: from_stack_1 = clsctacte.RecordCount
  loc_C55EC9: ILdRf var_394
  loc_C55ECC: LitI4 1
  loc_C55ED1: GeI4
  loc_C55ED2: BranchF loc_C560E5
  loc_C55ED5: FLdPr Me
  loc_C55ED8: MemLdRfVar from_stack_1.global_52
  loc_C55EDB: NewIfNullPr clsctacte
  loc_C55EDE: Call clsctacte.MoveLast()
  loc_C55EE3: FLdRfVar var_396
  loc_C55EE6: FLdPr Me
  loc_C55EE9: MemLdRfVar from_stack_1.global_52
  loc_C55EEC: NewIfNullPr clsctacte
  loc_C55EEF: from_stack_1 = clsctacte.MoviCtct
  loc_C55EF4: FLdI2 var_396
  loc_C55EF7: LitI2_Byte 1
  loc_C55EF9: AddI2
  loc_C55EFA: FStI2 var_88
  loc_C55EFD: FLdRfVar var_396
  loc_C55F00: FLdPr Me
  loc_C55F03: MemLdRfVar from_stack_1.global_52
  loc_C55F06: NewIfNullPr clsctacte
  loc_C55F09: from_stack_1 = clsctacte.CodiOfic
  loc_C55F0E: FLdRfVar var_11C
  loc_C55F11: FLdPr Me
  loc_C55F14: MemLdRfVar from_stack_1.global_52
  loc_C55F17: NewIfNullPr clsctacte
  loc_C55F1A: from_stack_1 = clsctacte.CuenCtct
  loc_C55F1F: FLdRfVar var_398
  loc_C55F22: FLdPr Me
  loc_C55F25: MemLdRfVar from_stack_1.global_52
  loc_C55F28: NewIfNullPr clsctacte
  loc_C55F2B: from_stack_1 = clsctacte.PeriCtct
  loc_C55F30: FLdRfVar var_39A
  loc_C55F33: FLdPr Me
  loc_C55F36: MemLdRfVar from_stack_1.global_52
  loc_C55F39: NewIfNullPr clsctacte
  loc_C55F3C: from_stack_1 = clsctacte.BimeCtct
  loc_C55F41: FLdRfVar var_394
  loc_C55F44: FLdPr Me
  loc_C55F47: MemLdRfVar from_stack_1.global_52
  loc_C55F4A: NewIfNullPr clsctacte
  loc_C55F4D: from_stack_1 = clsctacte.NumeCtct
  loc_C55F52: FLdRfVar var_39C
  loc_C55F55: FLdPr Me
  loc_C55F58: MemLdRfVar from_stack_1.global_52
  loc_C55F5B: NewIfNullPr clsctacte
  loc_C55F5E: from_stack_1 = clsctacte.CodiTili
  loc_C55F63: FLdRfVar var_39E
  loc_C55F66: FLdPr Me
  loc_C55F69: MemLdRfVar from_stack_1.global_52
  loc_C55F6C: NewIfNullPr clsctacte
  loc_C55F6F: from_stack_1 = clsctacte.NumeLiqu
  loc_C55F74: FLdRfVar var_128
  loc_C55F77: FLdPr Me
  loc_C55F7A: MemLdRfVar from_stack_1.global_52
  loc_C55F7D: NewIfNullPr clsctacte
  loc_C55F80: from_stack_1 = clsctacte.TipoCtct
  loc_C55F85: LitI2_Byte 0
  loc_C55F87: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C55F8C: FStFPR8 var_3B4
  loc_C55F8F: LitI2_Byte 0
  loc_C55F91: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C55F96: FStFPR8 var_3BC
  loc_C55F99: FLdRfVar var_3A0
  loc_C55F9C: FLdPr Me
  loc_C55F9F: MemLdRfVar from_stack_1.global_52
  loc_C55FA2: NewIfNullPr clsctacte
  loc_C55FA5: from_stack_1 = clsctacte.PeriInfo
  loc_C55FAA: FLdRfVar var_130
  loc_C55FAD: FLdPr Me
  loc_C55FB0: MemLdRfVar from_stack_1.global_52
  loc_C55FB3: NewIfNullPr clsctacte
  loc_C55FB6: from_stack_1 = clsctacte.CodiConc
  loc_C55FBB: FLdRfVar var_3A4
  loc_C55FBE: FLdPr Me
  loc_C55FC1: MemLdRfVar from_stack_1.global_52
  loc_C55FC4: NewIfNullPr clsctacte
  loc_C55FC7: from_stack_1 = clsctacte.CodiFapa
  loc_C55FCC: FLdRfVar var_3A6
  loc_C55FCF: FLdPr Me
  loc_C55FD2: MemLdRfVar from_stack_1.global_52
  loc_C55FD5: NewIfNullPr clsctacte
  loc_C55FD8: from_stack_1 = clsctacte.CuotDefa
  loc_C55FDD: FLdRfVar var_3AC
  loc_C55FE0: FLdPr Me
  loc_C55FE3: MemLdRfVar from_stack_1.global_52
  loc_C55FE6: NewIfNullPr clsctacte
  loc_C55FE9: from_stack_1 = clsctacte.NumeApre
  loc_C55FEE: FLdRfVar var_174
  loc_C55FF1: FLdPr Me
  loc_C55FF4: VCallAd Control_ID_ExpeCtctTxt
  loc_C55FF7: FStAdFunc var_94
  loc_C55FFA: FLdPr var_94
  loc_C55FFD:  = Me.Text
  loc_C56002: FLdRfVar var_178
  loc_C56005: FLdPr Me
  loc_C56008: MemLdRfVar from_stack_1.global_52
  loc_C5600B: NewIfNullPr clsctacte
  loc_C5600E: from_stack_1 = clsctacte.TifaCtct
  loc_C56013: FLdRfVar var_17C
  loc_C56016: FLdPr Me
  loc_C56019: VCallAd Control_ID_DetaCtctTxt
  loc_C5601C: FStAdFunc var_124
  loc_C5601F: FLdPr var_124
  loc_C56022:  = Me.Text
  loc_C56027: FLdPr Me
  loc_C5602A: MemLdI2 global_60
  loc_C5602D: CI4UI1
  loc_C5602E: CVarI4
  loc_C56032: PopAdLdVar
  loc_C56033: LitVarI4
  loc_C5603B: PopAdLdVar
  loc_C5603C: FLdPr Me
  loc_C5603F: VCallAd Control_ID_ctacteDeudaFlex
  loc_C56042: FStAdFunc var_1C4
  loc_C56045: FLdPr var_1C4
  loc_C56048: LateIdCallLdVar
  loc_C56052: CStrVarTmp
  loc_C56053: FStStrNoPop var_180
  loc_C56056: CR8Str
  loc_C56058: PopFPR8
  loc_C56059: LitI2_Byte 0
  loc_C5605B: CR8I2
  loc_C5605C: PopFPR8
  loc_C5605D: ILdRf var_17C
  loc_C56060: LitI4 0
  loc_C56065: LitI2_Byte 0
  loc_C56067: ILdRf var_178
  loc_C5606A: ILdRf var_174
  loc_C5606D: LitI2_Byte &HB
  loc_C5606F: CUI1I2
  loc_C56071: ILdRf var_3AC
  loc_C56074: FLdI2 var_3A6
  loc_C56077: ILdRf var_3A4
  loc_C5607A: ILdRf var_130
  loc_C5607D: FLdI2 var_3A0
  loc_C56080: LitI2_Byte 0
  loc_C56082: LitStr vbNullString
  loc_C56085: FLdFPR8 var_3BC
  loc_C56088: CVarDate var_150
  loc_C5608C: PopAdLdVar
  loc_C5608D: FLdFPR8 var_3B4
  loc_C56090: CVarDate var_140
  loc_C56094: PopAdLdVar
  loc_C56095: ILdRf var_128
  loc_C56098: LitI4 0
  loc_C5609D: LitI2_Byte 0
  loc_C5609F: FLdI2 var_39E
  loc_C560A2: FLdUI1
  loc_C560A6: FLdI2 var_88
  loc_C560A9: ILdRf var_394
  loc_C560AC: FLdI2 var_39A
  loc_C560AF: FLdI2 var_398
  loc_C560B2: ILdRf var_11C
  loc_C560B5: FLdI2 var_396
  loc_C560B8: CUI1I2
  loc_C560BA: FLdPr Me
  loc_C560BD: MemLdRfVar from_stack_1.global_52
  loc_C560C0: NewIfNullPr clsctacte
  loc_C560C3: Call clsctacte.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C560C8: FFreeStr var_180 = "": var_11C = "": var_128 = "": var_130 = "": var_174 = "": var_178 = ""
  loc_C560D9: FFreeAd var_94 = "": var_124 = ""
  loc_C560E2: FFree1Var var_A4 = ""
  loc_C560E5: FLdPr Me
  loc_C560E8: MemLdRfVar from_stack_1.global_60
  loc_C560EB: NextI2 var_3C0, loc_C55CB0
  loc_C560F0: LitStr "Se realizo el ajuste de pagos duplicados. Por favor verifique los datos"
  loc_C560F3: FLdPr Me
  loc_C560F6: MemStStrCopy
  loc_C560FA: FLdPr Me
  loc_C560FD: MemLdStr global_92
  loc_C56100: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C56105: Call Proc_230_18_B7F1C0()
  loc_C5610A: ILdRf Me
  loc_C5610D: CastAd
  loc_C56110: FStAdFunc var_94
  loc_C56113: FLdRfVar var_94
  loc_C56116: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_C5611B: FFree1Ad var_94
  loc_C5611E: LitI4 1
  loc_C56123: LitI4 1
  loc_C56128: LitVarStr var_C4, "0.00"
  loc_C5612D: FStVarCopyObj var_D4
  loc_C56130: FLdRfVar var_D4
  loc_C56133: LitVarI2 var_A4, 0
  loc_C56138: FLdRfVar var_F4
  loc_C5613B: ImpAdCallFPR4  = Format(, )
  loc_C56140: FLdRfVar var_F4
  loc_C56143: CStrVarVal var_11C
  loc_C56147: FLdPr Me
  loc_C5614A: VCallAd Control_ID_txtTotaApre
  loc_C5614D: FStAdFunc var_94
  loc_C56150: FLdPr var_94
  loc_C56153: Me.Text = from_stack_1
  loc_C56158: FFree1Str var_11C
  loc_C5615B: FFree1Ad var_94
  loc_C5615E: FFreeVar var_A4 = "": var_D4 = ""
  loc_C56167: LitI4 1
  loc_C5616C: LitI4 1
  loc_C56171: LitVarStr var_C4, "0.00"
  loc_C56176: FStVarCopyObj var_D4
  loc_C56179: FLdRfVar var_D4
  loc_C5617C: LitVarI2 var_A4, 0
  loc_C56181: FLdRfVar var_F4
  loc_C56184: ImpAdCallFPR4  = Format(, )
  loc_C56189: FLdRfVar var_F4
  loc_C5618C: CStrVarVal var_11C
  loc_C56190: FLdPr Me
  loc_C56193: VCallAd Control_ID_txtTotaDere
  loc_C56196: FStAdFunc var_94
  loc_C56199: FLdPr var_94
  loc_C5619C: Me.Text = from_stack_1
  loc_C561A1: FFree1Str var_11C
  loc_C561A4: FFree1Ad var_94
  loc_C561A7: FFreeVar var_A4 = "": var_D4 = ""
  loc_C561B0: LitI4 1
  loc_C561B5: LitI4 1
  loc_C561BA: LitVarStr var_C4, "0.00"
  loc_C561BF: FStVarCopyObj var_D4
  loc_C561C2: FLdRfVar var_D4
  loc_C561C5: LitVarI2 var_A4, 0
  loc_C561CA: FLdRfVar var_F4
  loc_C561CD: ImpAdCallFPR4  = Format(, )
  loc_C561D2: FLdRfVar var_F4
  loc_C561D5: CStrVarVal var_11C
  loc_C561D9: FLdPr Me
  loc_C561DC: VCallAd Control_ID_txtTotaReca
  loc_C561DF: FStAdFunc var_94
  loc_C561E2: FLdPr var_94
  loc_C561E5: Me.Text = from_stack_1
  loc_C561EA: FFree1Str var_11C
  loc_C561ED: FFree1Ad var_94
  loc_C561F0: FFreeVar var_A4 = "": var_D4 = ""
  loc_C561F9: LitI4 1
  loc_C561FE: LitI4 1
  loc_C56203: LitVarStr var_C4, "0.00"
  loc_C56208: FStVarCopyObj var_D4
  loc_C5620B: FLdRfVar var_D4
  loc_C5620E: LitVarI2 var_A4, 0
  loc_C56213: FLdRfVar var_F4
  loc_C56216: ImpAdCallFPR4  = Format(, )
  loc_C5621B: FLdRfVar var_F4
  loc_C5621E: CStrVarVal var_11C
  loc_C56222: FLdPr Me
  loc_C56225: VCallAd Control_ID_txtTotal
  loc_C56228: FStAdFunc var_94
  loc_C5622B: FLdPr var_94
  loc_C5622E: Me.Text = from_stack_1
  loc_C56233: FFree1Str var_11C
  loc_C56236: FFree1Ad var_94
  loc_C56239: FFreeVar var_A4 = "": var_D4 = ""
  loc_C56242: LitI4 1
  loc_C56247: LitI4 1
  loc_C5624C: LitVarStr var_C4, "0.00"
  loc_C56251: FStVarCopyObj var_D4
  loc_C56254: FLdRfVar var_D4
  loc_C56257: LitVarI2 var_A4, 0
  loc_C5625C: FLdRfVar var_F4
  loc_C5625F: ImpAdCallFPR4  = Format(, )
  loc_C56264: FLdRfVar var_F4
  loc_C56267: CStrVarVal var_11C
  loc_C5626B: FLdPr Me
  loc_C5626E: VCallAd Control_ID_txtTotaSele
  loc_C56271: FStAdFunc var_94
  loc_C56274: FLdPr var_94
  loc_C56277: Me.Text = from_stack_1
  loc_C5627C: FFree1Str var_11C
  loc_C5627F: FFree1Ad var_94
  loc_C56282: FFreeVar var_A4 = "": var_D4 = ""
  loc_C5628B: LitI4 1
  loc_C56290: LitI4 1
  loc_C56295: LitVarStr var_C4, "0.00"
  loc_C5629A: FStVarCopyObj var_D4
  loc_C5629D: FLdRfVar var_D4
  loc_C562A0: LitVarI2 var_A4, 0
  loc_C562A5: FLdRfVar var_F4
  loc_C562A8: ImpAdCallFPR4  = Format(, )
  loc_C562AD: FLdRfVar var_F4
  loc_C562B0: CStrVarVal var_11C
  loc_C562B4: FLdPr Me
  loc_C562B7: VCallAd Control_ID_txtTotaSeleDeuda
  loc_C562BA: FStAdFunc var_94
  loc_C562BD: FLdPr var_94
  loc_C562C0: Me.Text = from_stack_1
  loc_C562C5: FFree1Str var_11C
  loc_C562C8: FFree1Ad var_94
  loc_C562CB: FFreeVar var_A4 = "": var_D4 = ""
  loc_C562D4: LitI2_Byte 0
  loc_C562D6: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C562DB: CStrDate
  loc_C562DD: CVarStr var_A4
  loc_C562E0: PopAdLdVar
  loc_C562E1: FLdPr Me
  loc_C562E4: VCallAd Control_ID_FechVencMsk
  loc_C562E7: FStAdFunc var_94
  loc_C562EA: FLdPr var_94
  loc_C562ED: LateIdSt
  loc_C562F2: FFree1Ad var_94
  loc_C562F5: FFree1Var var_A4 = ""
  loc_C562F8: LitI4 0
  loc_C562FD: LitI4 0
  loc_C56302: FLdRfVar var_3C4
  loc_C56305: Redim
  loc_C5630F: FLdPr Me
  loc_C56312: VCallAd Control_ID_ConfirmarCmd
  loc_C56315: CVarAd
  loc_C56319: ParmAry1St
  loc_C5631F: FLdRfVar var_3C4
  loc_C56322: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C56327: FLdRfVar var_3C4
  loc_C5632A: Erase
  loc_C5632B: FLdPr Me
  loc_C5632E: VCallAd Control_ID_OficinaCbo
  loc_C56331: FStAdFunc var_94
  loc_C56334: FLdPr var_94
  loc_C56337: Me.SetFocus
  loc_C5633C: FFree1Ad var_94
  loc_C5633F: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_GotFocus() 'A4CC88
  'Data Table: 4E5E1C
  loc_A4CC3C: Call Proc_230_18_B7F1C0()
  loc_A4CC41: LitI4 0
  loc_A4CC46: LitI4 0
  loc_A4CC4B: FLdRfVar var_88
  loc_A4CC4E: Redim
  loc_A4CC58: FLdPr Me
  loc_A4CC5B: VCallAd Control_ID_ConfirmarCmd
  loc_A4CC5E: CVarAd
  loc_A4CC62: ParmAry1St
  loc_A4CC68: FLdRfVar var_88
  loc_A4CC6B: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A4CC70: FLdRfVar var_88
  loc_A4CC73: Erase
  loc_A4CC74: FLdPrThis
  loc_A4CC75: VCallAd Control_ID_NumeCtaTxt
  loc_A4CC78: CVarAd
  loc_A4CC7C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4CC81: FFree1Var var_98 = ""
  loc_A4CC84: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_KeyPress(KeyAscii As Integer) '9CB7C4
  'Data Table: 4E5E1C
  loc_9CB7AC: LitStr "1234567890"
  loc_9CB7AF: FStStrCopy var_88
  loc_9CB7B2: FLdRfVar var_88
  loc_9CB7B5: ILdRf KeyAscii
  loc_9CB7B8: ImpAdCallI2 Proc_272_12_A8945C(, )
  loc_9CB7BD: IStI2 KeyAscii
  loc_9CB7C0: FFree1Str var_88
  loc_9CB7C3: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_LostFocus() 'A5FA80
  'Data Table: 4E5E1C
  loc_A5FA20: FLdRfVar var_8A
  loc_A5FA23: FLdPr Me
  loc_A5FA26: VCallAd Control_ID_NumeCtaTxt
  loc_A5FA29: FStAdFunc var_88
  loc_A5FA2C: FLdPr var_88
  loc_A5FA2F:  = Me.Enabled
  loc_A5FA34: FLdI2 var_8A
  loc_A5FA37: FFree1Ad var_88
  loc_A5FA3A: BranchF loc_A5FA7D
  loc_A5FA3D: FLdRfVar var_90
  loc_A5FA40: FLdPr Me
  loc_A5FA43: VCallAd Control_ID_NumeCtaTxt
  loc_A5FA46: FStAdFunc var_88
  loc_A5FA49: FLdPr var_88
  loc_A5FA4C:  = Me.Text
  loc_A5FA51: FLdZeroAd var_90
  loc_A5FA54: CVarStr var_A0
  loc_A5FA57: ImpAdCallI2 IsNumeric()
  loc_A5FA5C: NotI4
  loc_A5FA5D: FFree1Ad var_88
  loc_A5FA60: FFree1Var var_A0 = ""
  loc_A5FA63: BranchF loc_A5FA7D
  loc_A5FA66: LitStr "0"
  loc_A5FA69: FLdPr Me
  loc_A5FA6C: VCallAd Control_ID_NumeCtaTxt
  loc_A5FA6F: FStAdFunc var_88
  loc_A5FA72: FLdPr var_88
  loc_A5FA75: Me.Text = from_stack_1
  loc_A5FA7A: FFree1Ad var_88
  loc_A5FA7D: ExitProcHresult
End Sub

Private Sub NumeCtaTxt_Validate(Cancel As Boolean) 'B2BD48
  'Data Table: 4E5E1C
  loc_B2BAA4: FLdRfVar var_8A
  loc_B2BAA7: FLdPr Me
  loc_B2BAAA: VCallAd Control_ID_NumeCtaTxt
  loc_B2BAAD: FStAdFunc var_88
  loc_B2BAB0: FLdPr var_88
  loc_B2BAB3:  = Me.Enabled
  loc_B2BAB8: FLdI2 var_8A
  loc_B2BABB: FFree1Ad var_88
  loc_B2BABE: BranchF loc_B2BD45
  loc_B2BAC1: FLdRfVar var_8A
  loc_B2BAC4: FLdPr Me
  loc_B2BAC7: VCallAd Control_ID_OficinaCbo
  loc_B2BACA: FStAdFunc var_88
  loc_B2BACD: FLdPr var_88
  loc_B2BAD0:  = Me.ListIndex
  loc_B2BAD5: FLdI2 var_8A
  loc_B2BAD8: FStI2 var_8C
  loc_B2BADB: FFree1Ad var_88
  loc_B2BADE: FLdI2 var_8C
  loc_B2BAE1: LitI2_Byte 0
  loc_B2BAE3: EqI2
  loc_B2BAE4: BranchF loc_B2BAF2
  loc_B2BAE7: LitI2_Byte 1
  loc_B2BAE9: CUI1I2
  loc_B2BAEB: ImpAdStUI1 MemVar_D93038
  loc_B2BAEF: Branch loc_B2BB2B
  loc_B2BAF2: FLdI2 var_8C
  loc_B2BAF5: LitI2_Byte 1
  loc_B2BAF7: EqI2
  loc_B2BAF8: BranchF loc_B2BB06
  loc_B2BAFB: LitI2_Byte 2
  loc_B2BAFD: CUI1I2
  loc_B2BAFF: ImpAdStUI1 MemVar_D93038
  loc_B2BB03: Branch loc_B2BB2B
  loc_B2BB06: FLdI2 var_8C
  loc_B2BB09: LitI2_Byte 2
  loc_B2BB0B: EqI2
  loc_B2BB0C: BranchF loc_B2BB1A
  loc_B2BB0F: LitI2_Byte 3
  loc_B2BB11: CUI1I2
  loc_B2BB13: ImpAdStUI1 MemVar_D93038
  loc_B2BB17: Branch loc_B2BB2B
  loc_B2BB1A: FLdI2 var_8C
  loc_B2BB1D: LitI2_Byte 3
  loc_B2BB1F: EqI2
  loc_B2BB20: BranchF loc_B2BB2B
  loc_B2BB23: LitI2_Byte 4
  loc_B2BB25: CUI1I2
  loc_B2BB27: ImpAdStUI1 MemVar_D93038
  loc_B2BB2B: FLdRfVar var_90
  loc_B2BB2E: FLdPr Me
  loc_B2BB31: VCallAd Control_ID_NumeCtaTxt
  loc_B2BB34: FStAdFunc var_88
  loc_B2BB37: FLdPr var_88
  loc_B2BB3A:  = Me.Text
  loc_B2BB3F: FLdPr Me
  loc_B2BB42: MemLdRfVar from_stack_1.global_56
  loc_B2BB45: NewIfNullRf
  loc_B2BB49: LitStr "Titular"
  loc_B2BB4C: ILdRf var_90
  loc_B2BB4F: ImpAdLdUI1
  loc_B2BB53: CStrI2
  loc_B2BB55: FStStrNoPop var_94
  loc_B2BB58: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B2BB5D: FFreeStr var_94 = ""
  loc_B2BB64: FFree1Ad var_88
  loc_B2BB67: BranchF loc_B2BCBF
  loc_B2BB6A: FLdRfVar var_90
  loc_B2BB6D: FLdPr Me
  loc_B2BB70: MemLdRfVar from_stack_1.global_56
  loc_B2BB73: NewIfNullPr tblPersona
  loc_B2BB76: from_stack_1v = tblPersona.CucuPersGet()
  loc_B2BB7B: ILdRf var_90
  loc_B2BB7E: FLdPr Me
  loc_B2BB81: VCallAd Control_ID_CucuPersLbl
  loc_B2BB84: FStAdFunc var_88
  loc_B2BB87: FLdPr var_88
  loc_B2BB8A: Me.Caption = from_stack_1
  loc_B2BB8F: FFree1Str var_90
  loc_B2BB92: FFree1Ad var_88
  loc_B2BB95: FLdRfVar var_90
  loc_B2BB98: FLdPr Me
  loc_B2BB9B: MemLdRfVar from_stack_1.global_56
  loc_B2BB9E: NewIfNullPr tblPersona
  loc_B2BBA1: from_stack_1v = tblPersona.DetaPersGet()
  loc_B2BBA6: ILdRf var_90
  loc_B2BBA9: FLdPr Me
  loc_B2BBAC: VCallAd Control_ID_DetaPersLbl
  loc_B2BBAF: FStAdFunc var_88
  loc_B2BBB2: FLdPr var_88
  loc_B2BBB5: Me.Caption = from_stack_1
  loc_B2BBBA: FFree1Str var_90
  loc_B2BBBD: FFree1Ad var_88
  loc_B2BBC0: FLdRfVar var_94
  loc_B2BBC3: FLdPr Me
  loc_B2BBC6: MemLdRfVar from_stack_1.global_56
  loc_B2BBC9: NewIfNullPr tblPersona
  loc_B2BBCC: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B2BBD1: FLdRfVar var_98
  loc_B2BBD4: FLdPr Me
  loc_B2BBD7: MemLdRfVar from_stack_1.global_56
  loc_B2BBDA: NewIfNullPr tblPersona
  loc_B2BBDD: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B2BBE2: FLdRfVar var_90
  loc_B2BBE5: FLdPr Me
  loc_B2BBE8: MemLdRfVar from_stack_1.global_56
  loc_B2BBEB: NewIfNullPr tblPersona
  loc_B2BBEE: from_stack_1v = tblPersona.DetaCallGet()
  loc_B2BBF3: ILdRf var_90
  loc_B2BBF6: LitStr " "
  loc_B2BBF9: ConcatStr
  loc_B2BBFA: CVarStr var_F8
  loc_B2BBFD: LitVarStr var_C8, vbNullString
  loc_B2BC02: FStVarCopyObj var_D8
  loc_B2BC05: FLdRfVar var_D8
  loc_B2BC08: LitStr "Nro: "
  loc_B2BC0B: ILdRf var_98
  loc_B2BC0E: ConcatStr
  loc_B2BC0F: CVarStr var_B8
  loc_B2BC12: ILdRf var_94
  loc_B2BC15: LitStr "0"
  loc_B2BC18: NeStr
  loc_B2BC1A: CVarBoolI2 var_A8
  loc_B2BC1E: FLdRfVar var_E8
  loc_B2BC21: ImpAdCallFPR4  = IIf(, , )
  loc_B2BC26: FLdRfVar var_E8
  loc_B2BC29: ConcatVar var_108
  loc_B2BC2D: LitVarStr var_118, " "
  loc_B2BC32: ConcatVar var_128
  loc_B2BC36: FLdRfVar var_12C
  loc_B2BC39: FLdPr Me
  loc_B2BC3C: MemLdRfVar from_stack_1.global_56
  loc_B2BC3F: NewIfNullPr tblPersona
  loc_B2BC42: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B2BC47: FLdZeroAd var_12C
  loc_B2BC4A: CVarStr var_13C
  loc_B2BC4D: ConcatVar var_14C
  loc_B2BC51: CStrVarVal var_150
  loc_B2BC55: FLdPr Me
  loc_B2BC58: VCallAd Control_ID_DomiPersLbl
  loc_B2BC5B: FStAdFunc var_88
  loc_B2BC5E: FLdPr var_88
  loc_B2BC61: Me.Caption = from_stack_1
  loc_B2BC66: FFreeStr var_90 = "": var_94 = "": var_98 = ""
  loc_B2BC71: FFree1Ad var_88
  loc_B2BC74: FFreeVar var_A8 = "": var_B8 = "": var_D8 = "": var_F8 = "": var_E8 = "": var_108 = "": var_128 = "": var_13C = ""
  loc_B2BC89: LitI4 0
  loc_B2BC8E: LitI4 0
  loc_B2BC93: FLdRfVar var_154
  loc_B2BC96: Redim
  loc_B2BCA0: FLdPr Me
  loc_B2BCA3: VCallAd Control_ID_ConfirmarCmd
  loc_B2BCA6: CVarAd
  loc_B2BCAA: ParmAry1St
  loc_B2BCB0: FLdRfVar var_154
  loc_B2BCB3: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_B2BCB8: FLdRfVar var_154
  loc_B2BCBB: Erase
  loc_B2BCBC: Branch loc_B2BD45
  loc_B2BCBF: FLdRfVar var_90
  loc_B2BCC2: FLdPr Me
  loc_B2BCC5: MemLdRfVar from_stack_1.global_56
  loc_B2BCC8: NewIfNullPr tblPersona
  loc_B2BCCB: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B2BCD0: ILdRf var_90
  loc_B2BCD3: FLdPr Me
  loc_B2BCD6: MemStStrCopy
  loc_B2BCDA: FFree1Str var_90
  loc_B2BCDD: FLdPr Me
  loc_B2BCE0: MemLdStr global_92
  loc_B2BCE3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B2BCE8: LitStr vbNullString
  loc_B2BCEB: FLdPr Me
  loc_B2BCEE: VCallAd Control_ID_CucuPersLbl
  loc_B2BCF1: FStAdFunc var_88
  loc_B2BCF4: FLdPr var_88
  loc_B2BCF7: Me.Caption = from_stack_1
  loc_B2BCFC: FFree1Ad var_88
  loc_B2BCFF: LitStr vbNullString
  loc_B2BD02: FLdPr Me
  loc_B2BD05: VCallAd Control_ID_DetaPersLbl
  loc_B2BD08: FStAdFunc var_88
  loc_B2BD0B: FLdPr var_88
  loc_B2BD0E: Me.Caption = from_stack_1
  loc_B2BD13: FFree1Ad var_88
  loc_B2BD16: LitStr vbNullString
  loc_B2BD19: FLdPr Me
  loc_B2BD1C: VCallAd Control_ID_DomiPersLbl
  loc_B2BD1F: FStAdFunc var_88
  loc_B2BD22: FLdPr var_88
  loc_B2BD25: Me.Caption = from_stack_1
  loc_B2BD2A: FFree1Ad var_88
  loc_B2BD2D: FLdPr Me
  loc_B2BD30: VCallAd Control_ID_NumeCtaTxt
  loc_B2BD33: CVarAd
  loc_B2BD37: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B2BD3C: FFree1Var var_B8 = ""
  loc_B2BD3F: LitI2_Byte &HFF
  loc_B2BD41: IStI2 Cancel
  loc_B2BD44: ExitProcHresult
  loc_B2BD45: ExitProcHresult
  loc_B2BD46: OnErrorGoto loc_B35EA7
End Sub

Private Sub SalirCmd_Click() '9C8844
  'Data Table: 4E5E1C
  loc_9C882C: ILdRf Me
  loc_9C882F: FStAdNoPop
  loc_9C8833: ImpAdLdRf MemVar_D9C5D8
  loc_9C8836: NewIfNullPr Global
  loc_9C8839: Global.Unload from_stack_1
  loc_9C883E: FFree1Ad var_88
  loc_9C8841: ExitProcHresult
End Sub

Private Sub ctacteFlex_Click() 'BF3280
  'Data Table: 4E5E1C
  loc_BF2A1C: FLdPr Me
  loc_BF2A1F: VCallAd Control_ID_ctacteFlex
  loc_BF2A22: FStAdFunc var_88
  loc_BF2A25: FLdPr var_88
  loc_BF2A28: LateIdLdVar var_98 DispID_4 0
  loc_BF2A2F: CI4Var
  loc_BF2A31: LitI4 1
  loc_BF2A36: GtI4
  loc_BF2A37: FFree1Ad var_88
  loc_BF2A3A: FFree1Var var_98 = ""
  loc_BF2A3D: BranchF loc_BF327E
  loc_BF2A40: FLdPr Me
  loc_BF2A43: VCallAd Control_ID_ctacteFlex
  loc_BF2A46: FStAdFunc var_88
  loc_BF2A49: FLdPr var_88
  loc_BF2A4C: LateIdLdVar var_98 DispID_10 0
  loc_BF2A53: CI4Var
  loc_BF2A55: CVarI4
  loc_BF2A59: PopAdLdVar
  loc_BF2A5A: LitVarI4
  loc_BF2A62: PopAdLdVar
  loc_BF2A63: FLdPr Me
  loc_BF2A66: VCallAd Control_ID_ctacteFlex
  loc_BF2A69: FStAdFunc var_DC
  loc_BF2A6C: FLdPr var_DC
  loc_BF2A6F: LateIdCallLdVar
  loc_BF2A79: CStrVarTmp
  loc_BF2A7A: FStStrNoPop var_F0
  loc_BF2A7D: CI4Str
  loc_BF2A7E: LitI4 0
  loc_BF2A83: NeI4
  loc_BF2A84: FFree1Str var_F0
  loc_BF2A87: FFreeAd var_88 = ""
  loc_BF2A8E: FFreeVar var_98 = ""
  loc_BF2A95: BranchF loc_BF2AAE
  loc_BF2A98: LitStr "No se puede seleccionar movimientos con facilidad de pago"
  loc_BF2A9B: FLdPr Me
  loc_BF2A9E: MemStStrCopy
  loc_BF2AA2: FLdPr Me
  loc_BF2AA5: MemLdStr global_92
  loc_BF2AA8: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BF2AAD: ExitProcHresult
  loc_BF2AAE: FLdPr Me
  loc_BF2AB1: VCallAd Control_ID_ctacteFlex
  loc_BF2AB4: FStAdFunc var_88
  loc_BF2AB7: FLdPr var_88
  loc_BF2ABA: LateIdLdVar var_98 DispID_10 0
  loc_BF2AC1: CI4Var
  loc_BF2AC3: CVarI4
  loc_BF2AC7: PopAdLdVar
  loc_BF2AC8: LitVarI4
  loc_BF2AD0: PopAdLdVar
  loc_BF2AD1: FLdPr Me
  loc_BF2AD4: VCallAd Control_ID_ctacteFlex
  loc_BF2AD7: FStAdFunc var_DC
  loc_BF2ADA: FLdPr var_DC
  loc_BF2ADD: LateIdCallLdVar
  loc_BF2AE7: CStrVarTmp
  loc_BF2AE8: FStStrNoPop var_F0
  loc_BF2AEB: CI2Str
  loc_BF2AED: LitI2_Byte 0
  loc_BF2AEF: EqI2
  loc_BF2AF0: FFree1Str var_F0
  loc_BF2AF3: FFreeAd var_88 = ""
  loc_BF2AFA: FFreeVar var_98 = ""
  loc_BF2B01: BranchF loc_BF2DFD
  loc_BF2B04: LitI2_Byte 0
  loc_BF2B06: FLdPr Me
  loc_BF2B09: MemLdRfVar from_stack_1.global_60
  loc_BF2B0C: FLdPr Me
  loc_BF2B0F: VCallAd Control_ID_ctacteFlex
  loc_BF2B12: FStAdFunc var_88
  loc_BF2B15: FLdPr var_88
  loc_BF2B18: LateIdLdVar var_98 DispID_5 0
  loc_BF2B1F: CI4Var
  loc_BF2B21: LitI4 1
  loc_BF2B26: SubI4
  loc_BF2B27: CI2I4
  loc_BF2B28: FFree1Ad var_88
  loc_BF2B2B: FFree1Var var_98 = ""
  loc_BF2B2E: ForI2 var_F4
  loc_BF2B34: FLdPr Me
  loc_BF2B37: MemLdI2 global_60
  loc_BF2B3A: CI4UI1
  loc_BF2B3B: CVarI4
  loc_BF2B3F: PopAdLdVar
  loc_BF2B40: FLdPr Me
  loc_BF2B43: VCallAd Control_ID_ctacteFlex
  loc_BF2B46: FStAdFunc var_88
  loc_BF2B49: FLdPr var_88
  loc_BF2B4C: LateIdSt
  loc_BF2B51: FFree1Ad var_88
  loc_BF2B54: FLdPr Me
  loc_BF2B57: VCallAd Control_ID_ctacteFlex
  loc_BF2B5A: FStAdFunc var_88
  loc_BF2B5D: FLdPr var_88
  loc_BF2B60: LateIdLdVar var_98 DispID_38 0
  loc_BF2B67: CI4Var
  loc_BF2B69: LitI4 &HFFFF80
  loc_BF2B6E: EqI4
  loc_BF2B6F: FFree1Ad var_88
  loc_BF2B72: FFree1Var var_98 = ""
  loc_BF2B75: BranchF loc_BF2CB5
  loc_BF2B78: LitVarI4
  loc_BF2B80: PopAdLdVar
  loc_BF2B81: FLdPr Me
  loc_BF2B84: VCallAd Control_ID_ctacteFlex
  loc_BF2B87: FStAdFunc var_88
  loc_BF2B8A: FLdPr var_88
  loc_BF2B8D: LateIdSt
  loc_BF2B92: FFree1Ad var_88
  loc_BF2B95: FLdPr Me
  loc_BF2B98: VCallAd Control_ID_ctacteFlex
  loc_BF2B9B: FStAdFunc var_88
  loc_BF2B9E: FLdPr var_88
  loc_BF2BA1: LateIdLdVar var_98 DispID_10 0
  loc_BF2BA8: CI4Var
  loc_BF2BAA: CVarI4
  loc_BF2BAE: PopAdLdVar
  loc_BF2BAF: LitVarI4
  loc_BF2BB7: PopAdLdVar
  loc_BF2BB8: LitVarStr var_104, "No"
  loc_BF2BBD: PopAdLdVar
  loc_BF2BBE: FLdPr Me
  loc_BF2BC1: VCallAd Control_ID_ctacteFlex
  loc_BF2BC4: FStAdFunc var_DC
  loc_BF2BC7: FLdPr var_DC
  loc_BF2BCA: LateIdCallSt
  loc_BF2BD2: FFreeAd var_88 = ""
  loc_BF2BD9: FFree1Var var_98 = ""
  loc_BF2BDC: FLdPr Me
  loc_BF2BDF: MemLdI2 global_60
  loc_BF2BE2: LitI2_Byte &HD
  loc_BF2BE4: EqI2
  loc_BF2BE5: BranchF loc_BF2CB2
  loc_BF2BE8: FLdPr Me
  loc_BF2BEB: VCallAd Control_ID_ctacteFlex
  loc_BF2BEE: FStAdFunc var_88
  loc_BF2BF1: FLdPr var_88
  loc_BF2BF4: LateIdLdVar var_98 DispID_10 0
  loc_BF2BFB: CI4Var
  loc_BF2BFD: CVarI4
  loc_BF2C01: PopAdLdVar
  loc_BF2C02: FLdPr Me
  loc_BF2C05: MemLdI2 global_60
  loc_BF2C08: CI4UI1
  loc_BF2C09: CVarI4
  loc_BF2C0D: PopAdLdVar
  loc_BF2C0E: FLdPr Me
  loc_BF2C11: VCallAd Control_ID_ctacteFlex
  loc_BF2C14: FStAdFunc var_DC
  loc_BF2C17: FLdPr var_DC
  loc_BF2C1A: LateIdCallLdVar
  loc_BF2C24: PopAd
  loc_BF2C26: FLdPr Me
  loc_BF2C29: MemLdFPR8 global_64
  loc_BF2C2C: FLdRfVar var_EC
  loc_BF2C2F: CStrVarTmp
  loc_BF2C30: FStStrNoPop var_F0
  loc_BF2C33: CR8Str
  loc_BF2C35: SubR4
  loc_BF2C36: FLdPr Me
  loc_BF2C39: MemStFPR8 global_64
  loc_BF2C3C: FFree1Str var_F0
  loc_BF2C3F: FFreeAd var_88 = ""
  loc_BF2C46: FFreeVar var_98 = ""
  loc_BF2C4D: FLdPr Me
  loc_BF2C50: VCallAd Control_ID_ctacteFlex
  loc_BF2C53: FStAdFunc var_88
  loc_BF2C56: FLdPr var_88
  loc_BF2C59: LateIdLdVar var_98 DispID_10 0
  loc_BF2C60: CI4Var
  loc_BF2C62: CVarI4
  loc_BF2C66: PopAdLdVar
  loc_BF2C67: FLdPr Me
  loc_BF2C6A: MemLdI2 global_60
  loc_BF2C6D: CI4UI1
  loc_BF2C6E: CVarI4
  loc_BF2C72: PopAdLdVar
  loc_BF2C73: FLdPr Me
  loc_BF2C76: VCallAd Control_ID_ctacteFlex
  loc_BF2C79: FStAdFunc var_DC
  loc_BF2C7C: FLdPr var_DC
  loc_BF2C7F: LateIdCallLdVar
  loc_BF2C89: PopAd
  loc_BF2C8B: FLdPr Me
  loc_BF2C8E: MemLdFPR8 global_72
  loc_BF2C91: FLdRfVar var_EC
  loc_BF2C94: CStrVarTmp
  loc_BF2C95: FStStrNoPop var_F0
  loc_BF2C98: CR8Str
  loc_BF2C9A: AddR8
  loc_BF2C9B: FLdPr Me
  loc_BF2C9E: MemStFPR8 global_72
  loc_BF2CA1: FFree1Str var_F0
  loc_BF2CA4: FFreeAd var_88 = ""
  loc_BF2CAB: FFreeVar var_98 = ""
  loc_BF2CB2: Branch loc_BF2DEF
  loc_BF2CB5: LitVarI4
  loc_BF2CBD: PopAdLdVar
  loc_BF2CBE: FLdPr Me
  loc_BF2CC1: VCallAd Control_ID_ctacteFlex
  loc_BF2CC4: FStAdFunc var_88
  loc_BF2CC7: FLdPr var_88
  loc_BF2CCA: LateIdSt
  loc_BF2CCF: FFree1Ad var_88
  loc_BF2CD2: FLdPr Me
  loc_BF2CD5: VCallAd Control_ID_ctacteFlex
  loc_BF2CD8: FStAdFunc var_88
  loc_BF2CDB: FLdPr var_88
  loc_BF2CDE: LateIdLdVar var_98 DispID_10 0
  loc_BF2CE5: CI4Var
  loc_BF2CE7: CVarI4
  loc_BF2CEB: PopAdLdVar
  loc_BF2CEC: LitVarI4
  loc_BF2CF4: PopAdLdVar
  loc_BF2CF5: LitVarStr var_104, "Si"
  loc_BF2CFA: PopAdLdVar
  loc_BF2CFB: FLdPr Me
  loc_BF2CFE: VCallAd Control_ID_ctacteFlex
  loc_BF2D01: FStAdFunc var_DC
  loc_BF2D04: FLdPr var_DC
  loc_BF2D07: LateIdCallSt
  loc_BF2D0F: FFreeAd var_88 = ""
  loc_BF2D16: FFree1Var var_98 = ""
  loc_BF2D19: FLdPr Me
  loc_BF2D1C: MemLdI2 global_60
  loc_BF2D1F: LitI2_Byte &HD
  loc_BF2D21: EqI2
  loc_BF2D22: BranchF loc_BF2DEF
  loc_BF2D25: FLdPr Me
  loc_BF2D28: VCallAd Control_ID_ctacteFlex
  loc_BF2D2B: FStAdFunc var_88
  loc_BF2D2E: FLdPr var_88
  loc_BF2D31: LateIdLdVar var_98 DispID_10 0
  loc_BF2D38: CI4Var
  loc_BF2D3A: CVarI4
  loc_BF2D3E: PopAdLdVar
  loc_BF2D3F: FLdPr Me
  loc_BF2D42: MemLdI2 global_60
  loc_BF2D45: CI4UI1
  loc_BF2D46: CVarI4
  loc_BF2D4A: PopAdLdVar
  loc_BF2D4B: FLdPr Me
  loc_BF2D4E: VCallAd Control_ID_ctacteFlex
  loc_BF2D51: FStAdFunc var_DC
  loc_BF2D54: FLdPr var_DC
  loc_BF2D57: LateIdCallLdVar
  loc_BF2D61: PopAd
  loc_BF2D63: FLdPr Me
  loc_BF2D66: MemLdFPR8 global_64
  loc_BF2D69: FLdRfVar var_EC
  loc_BF2D6C: CStrVarTmp
  loc_BF2D6D: FStStrNoPop var_F0
  loc_BF2D70: CR8Str
  loc_BF2D72: AddR8
  loc_BF2D73: FLdPr Me
  loc_BF2D76: MemStFPR8 global_64
  loc_BF2D79: FFree1Str var_F0
  loc_BF2D7C: FFreeAd var_88 = ""
  loc_BF2D83: FFreeVar var_98 = ""
  loc_BF2D8A: FLdPr Me
  loc_BF2D8D: VCallAd Control_ID_ctacteFlex
  loc_BF2D90: FStAdFunc var_88
  loc_BF2D93: FLdPr var_88
  loc_BF2D96: LateIdLdVar var_98 DispID_10 0
  loc_BF2D9D: CI4Var
  loc_BF2D9F: CVarI4
  loc_BF2DA3: PopAdLdVar
  loc_BF2DA4: FLdPr Me
  loc_BF2DA7: MemLdI2 global_60
  loc_BF2DAA: CI4UI1
  loc_BF2DAB: CVarI4
  loc_BF2DAF: PopAdLdVar
  loc_BF2DB0: FLdPr Me
  loc_BF2DB3: VCallAd Control_ID_ctacteFlex
  loc_BF2DB6: FStAdFunc var_DC
  loc_BF2DB9: FLdPr var_DC
  loc_BF2DBC: LateIdCallLdVar
  loc_BF2DC6: PopAd
  loc_BF2DC8: FLdPr Me
  loc_BF2DCB: MemLdFPR8 global_72
  loc_BF2DCE: FLdRfVar var_EC
  loc_BF2DD1: CStrVarTmp
  loc_BF2DD2: FStStrNoPop var_F0
  loc_BF2DD5: CR8Str
  loc_BF2DD7: SubR4
  loc_BF2DD8: FLdPr Me
  loc_BF2DDB: MemStFPR8 global_72
  loc_BF2DDE: FFree1Str var_F0
  loc_BF2DE1: FFreeAd var_88 = ""
  loc_BF2DE8: FFreeVar var_98 = ""
  loc_BF2DEF: FLdPr Me
  loc_BF2DF2: MemLdRfVar from_stack_1.global_60
  loc_BF2DF5: NextI2 var_F4, loc_BF2B34
  loc_BF2DFA: Branch loc_BF3231
  loc_BF2DFD: FLdPr Me
  loc_BF2E00: VCallAd Control_ID_ctacteFlex
  loc_BF2E03: FStAdFunc var_88
  loc_BF2E06: FLdPr var_88
  loc_BF2E09: LateIdLdVar var_98 DispID_10 0
  loc_BF2E10: CI4Var
  loc_BF2E12: CVarI4
  loc_BF2E16: PopAdLdVar
  loc_BF2E17: LitVarI4
  loc_BF2E1F: PopAdLdVar
  loc_BF2E20: FLdPr Me
  loc_BF2E23: VCallAd Control_ID_ctacteFlex
  loc_BF2E26: FStAdFunc var_DC
  loc_BF2E29: FLdPr var_DC
  loc_BF2E2C: LateIdCallLdVar
  loc_BF2E36: CStrVarTmp
  loc_BF2E37: FStStrNoPop var_F0
  loc_BF2E3A: CI2Str
  loc_BF2E3C: LitI2_Byte 0
  loc_BF2E3E: NeI2
  loc_BF2E3F: FFree1Str var_F0
  loc_BF2E42: FFreeAd var_88 = ""
  loc_BF2E49: FFreeVar var_98 = ""
  loc_BF2E50: BranchF loc_BF3231
  loc_BF2E53: LitI2_Byte 1
  loc_BF2E55: FLdPr Me
  loc_BF2E58: MemLdRfVar from_stack_1.global_60
  loc_BF2E5B: FLdPr Me
  loc_BF2E5E: VCallAd Control_ID_ctacteFlex
  loc_BF2E61: FStAdFunc var_88
  loc_BF2E64: FLdPr var_88
  loc_BF2E67: LateIdLdVar var_98 DispID_4 0
  loc_BF2E6E: CI4Var
  loc_BF2E70: LitI4 1
  loc_BF2E75: SubI4
  loc_BF2E76: CI2I4
  loc_BF2E77: FFree1Ad var_88
  loc_BF2E7A: FFree1Var var_98 = ""
  loc_BF2E7D: ForI2 var_118
  loc_BF2E83: FLdPr Me
  loc_BF2E86: MemLdI2 global_60
  loc_BF2E89: CI4UI1
  loc_BF2E8A: CVarI4
  loc_BF2E8E: PopAdLdVar
  loc_BF2E8F: LitVarI4
  loc_BF2E97: PopAdLdVar
  loc_BF2E98: FLdPr Me
  loc_BF2E9B: VCallAd Control_ID_ctacteFlex
  loc_BF2E9E: FStAdFunc var_88
  loc_BF2EA1: FLdPr var_88
  loc_BF2EA4: LateIdCallLdVar
  loc_BF2EAE: CStrVarTmp
  loc_BF2EAF: FStStrNoPop var_F0
  loc_BF2EB2: CI2Str
  loc_BF2EB4: FLdPr Me
  loc_BF2EB7: VCallAd Control_ID_ctacteFlex
  loc_BF2EBA: FStAdFunc var_DC
  loc_BF2EBD: FLdPr var_DC
  loc_BF2EC0: LateIdLdVar var_EC DispID_10 0
  loc_BF2EC7: CI4Var
  loc_BF2EC9: CVarI4
  loc_BF2ECD: PopAdLdVar
  loc_BF2ECE: LitVarI4
  loc_BF2ED6: PopAdLdVar
  loc_BF2ED7: FLdPr Me
  loc_BF2EDA: VCallAd Control_ID_ctacteFlex
  loc_BF2EDD: FStAdFunc var_13C
  loc_BF2EE0: FLdPr var_13C
  loc_BF2EE3: LateIdCallLdVar
  loc_BF2EED: CStrVarTmp
  loc_BF2EEE: FStStrNoPop var_150
  loc_BF2EF1: CI2Str
  loc_BF2EF3: EqI2
  loc_BF2EF4: FFreeStr var_F0 = ""
  loc_BF2EFB: FFreeAd var_88 = "": var_DC = ""
  loc_BF2F04: FFreeVar var_98 = "": var_EC = ""
  loc_BF2F0D: BranchF loc_BF3226
  loc_BF2F10: FLdPr Me
  loc_BF2F13: MemLdI2 global_60
  loc_BF2F16: CI4UI1
  loc_BF2F17: CVarI4
  loc_BF2F1B: PopAdLdVar
  loc_BF2F1C: FLdPr Me
  loc_BF2F1F: VCallAd Control_ID_ctacteFlex
  loc_BF2F22: FStAdFunc var_88
  loc_BF2F25: FLdPr var_88
  loc_BF2F28: LateIdSt
  loc_BF2F2D: FFree1Ad var_88
  loc_BF2F30: LitI2_Byte 0
  loc_BF2F32: FLdPr Me
  loc_BF2F35: MemLdRfVar from_stack_1.global_62
  loc_BF2F38: FLdPr Me
  loc_BF2F3B: VCallAd Control_ID_ctacteFlex
  loc_BF2F3E: FStAdFunc var_88
  loc_BF2F41: FLdPr var_88
  loc_BF2F44: LateIdLdVar var_98 DispID_5 0
  loc_BF2F4B: CI4Var
  loc_BF2F4D: LitI4 1
  loc_BF2F52: SubI4
  loc_BF2F53: CI2I4
  loc_BF2F54: FFree1Ad var_88
  loc_BF2F57: FFree1Var var_98 = ""
  loc_BF2F5A: ForI2 var_154
  loc_BF2F60: FLdPr Me
  loc_BF2F63: MemLdI2 global_62
  loc_BF2F66: CI4UI1
  loc_BF2F67: CVarI4
  loc_BF2F6B: PopAdLdVar
  loc_BF2F6C: FLdPr Me
  loc_BF2F6F: VCallAd Control_ID_ctacteFlex
  loc_BF2F72: FStAdFunc var_88
  loc_BF2F75: FLdPr var_88
  loc_BF2F78: LateIdSt
  loc_BF2F7D: FFree1Ad var_88
  loc_BF2F80: FLdPr Me
  loc_BF2F83: VCallAd Control_ID_ctacteFlex
  loc_BF2F86: FStAdFunc var_88
  loc_BF2F89: FLdPr var_88
  loc_BF2F8C: LateIdLdVar var_98 DispID_38 0
  loc_BF2F93: CI4Var
  loc_BF2F95: LitI4 &HFFFF80
  loc_BF2F9A: EqI4
  loc_BF2F9B: FFree1Ad var_88
  loc_BF2F9E: FFree1Var var_98 = ""
  loc_BF2FA1: BranchF loc_BF30E1
  loc_BF2FA4: LitVarI4
  loc_BF2FAC: PopAdLdVar
  loc_BF2FAD: FLdPr Me
  loc_BF2FB0: VCallAd Control_ID_ctacteFlex
  loc_BF2FB3: FStAdFunc var_88
  loc_BF2FB6: FLdPr var_88
  loc_BF2FB9: LateIdSt
  loc_BF2FBE: FFree1Ad var_88
  loc_BF2FC1: FLdPr Me
  loc_BF2FC4: VCallAd Control_ID_ctacteFlex
  loc_BF2FC7: FStAdFunc var_88
  loc_BF2FCA: FLdPr var_88
  loc_BF2FCD: LateIdLdVar var_98 DispID_10 0
  loc_BF2FD4: CI4Var
  loc_BF2FD6: CVarI4
  loc_BF2FDA: PopAdLdVar
  loc_BF2FDB: LitVarI4
  loc_BF2FE3: PopAdLdVar
  loc_BF2FE4: LitVarStr var_104, "No"
  loc_BF2FE9: PopAdLdVar
  loc_BF2FEA: FLdPr Me
  loc_BF2FED: VCallAd Control_ID_ctacteFlex
  loc_BF2FF0: FStAdFunc var_DC
  loc_BF2FF3: FLdPr var_DC
  loc_BF2FF6: LateIdCallSt
  loc_BF2FFE: FFreeAd var_88 = ""
  loc_BF3005: FFree1Var var_98 = ""
  loc_BF3008: FLdPr Me
  loc_BF300B: MemLdI2 global_62
  loc_BF300E: LitI2_Byte &HD
  loc_BF3010: EqI2
  loc_BF3011: BranchF loc_BF30DE
  loc_BF3014: FLdPr Me
  loc_BF3017: VCallAd Control_ID_ctacteFlex
  loc_BF301A: FStAdFunc var_88
  loc_BF301D: FLdPr var_88
  loc_BF3020: LateIdLdVar var_98 DispID_10 0
  loc_BF3027: CI4Var
  loc_BF3029: CVarI4
  loc_BF302D: PopAdLdVar
  loc_BF302E: FLdPr Me
  loc_BF3031: MemLdI2 global_62
  loc_BF3034: CI4UI1
  loc_BF3035: CVarI4
  loc_BF3039: PopAdLdVar
  loc_BF303A: FLdPr Me
  loc_BF303D: VCallAd Control_ID_ctacteFlex
  loc_BF3040: FStAdFunc var_DC
  loc_BF3043: FLdPr var_DC
  loc_BF3046: LateIdCallLdVar
  loc_BF3050: PopAd
  loc_BF3052: FLdPr Me
  loc_BF3055: MemLdFPR8 global_64
  loc_BF3058: FLdRfVar var_EC
  loc_BF305B: CStrVarTmp
  loc_BF305C: FStStrNoPop var_F0
  loc_BF305F: CR8Str
  loc_BF3061: SubR4
  loc_BF3062: FLdPr Me
  loc_BF3065: MemStFPR8 global_64
  loc_BF3068: FFree1Str var_F0
  loc_BF306B: FFreeAd var_88 = ""
  loc_BF3072: FFreeVar var_98 = ""
  loc_BF3079: FLdPr Me
  loc_BF307C: VCallAd Control_ID_ctacteFlex
  loc_BF307F: FStAdFunc var_88
  loc_BF3082: FLdPr var_88
  loc_BF3085: LateIdLdVar var_98 DispID_10 0
  loc_BF308C: CI4Var
  loc_BF308E: CVarI4
  loc_BF3092: PopAdLdVar
  loc_BF3093: FLdPr Me
  loc_BF3096: MemLdI2 global_62
  loc_BF3099: CI4UI1
  loc_BF309A: CVarI4
  loc_BF309E: PopAdLdVar
  loc_BF309F: FLdPr Me
  loc_BF30A2: VCallAd Control_ID_ctacteFlex
  loc_BF30A5: FStAdFunc var_DC
  loc_BF30A8: FLdPr var_DC
  loc_BF30AB: LateIdCallLdVar
  loc_BF30B5: PopAd
  loc_BF30B7: FLdPr Me
  loc_BF30BA: MemLdFPR8 global_72
  loc_BF30BD: FLdRfVar var_EC
  loc_BF30C0: CStrVarTmp
  loc_BF30C1: FStStrNoPop var_F0
  loc_BF30C4: CR8Str
  loc_BF30C6: AddR8
  loc_BF30C7: FLdPr Me
  loc_BF30CA: MemStFPR8 global_72
  loc_BF30CD: FFree1Str var_F0
  loc_BF30D0: FFreeAd var_88 = ""
  loc_BF30D7: FFreeVar var_98 = ""
  loc_BF30DE: Branch loc_BF321B
  loc_BF30E1: LitVarI4
  loc_BF30E9: PopAdLdVar
  loc_BF30EA: FLdPr Me
  loc_BF30ED: VCallAd Control_ID_ctacteFlex
  loc_BF30F0: FStAdFunc var_88
  loc_BF30F3: FLdPr var_88
  loc_BF30F6: LateIdSt
  loc_BF30FB: FFree1Ad var_88
  loc_BF30FE: FLdPr Me
  loc_BF3101: VCallAd Control_ID_ctacteFlex
  loc_BF3104: FStAdFunc var_88
  loc_BF3107: FLdPr var_88
  loc_BF310A: LateIdLdVar var_98 DispID_10 0
  loc_BF3111: CI4Var
  loc_BF3113: CVarI4
  loc_BF3117: PopAdLdVar
  loc_BF3118: LitVarI4
  loc_BF3120: PopAdLdVar
  loc_BF3121: LitVarStr var_104, "Si"
  loc_BF3126: PopAdLdVar
  loc_BF3127: FLdPr Me
  loc_BF312A: VCallAd Control_ID_ctacteFlex
  loc_BF312D: FStAdFunc var_DC
  loc_BF3130: FLdPr var_DC
  loc_BF3133: LateIdCallSt
  loc_BF313B: FFreeAd var_88 = ""
  loc_BF3142: FFree1Var var_98 = ""
  loc_BF3145: FLdPr Me
  loc_BF3148: MemLdI2 global_62
  loc_BF314B: LitI2_Byte &HD
  loc_BF314D: EqI2
  loc_BF314E: BranchF loc_BF321B
  loc_BF3151: FLdPr Me
  loc_BF3154: VCallAd Control_ID_ctacteFlex
  loc_BF3157: FStAdFunc var_88
  loc_BF315A: FLdPr var_88
  loc_BF315D: LateIdLdVar var_98 DispID_10 0
  loc_BF3164: CI4Var
  loc_BF3166: CVarI4
  loc_BF316A: PopAdLdVar
  loc_BF316B: FLdPr Me
  loc_BF316E: MemLdI2 global_62
  loc_BF3171: CI4UI1
  loc_BF3172: CVarI4
  loc_BF3176: PopAdLdVar
  loc_BF3177: FLdPr Me
  loc_BF317A: VCallAd Control_ID_ctacteFlex
  loc_BF317D: FStAdFunc var_DC
  loc_BF3180: FLdPr var_DC
  loc_BF3183: LateIdCallLdVar
  loc_BF318D: PopAd
  loc_BF318F: FLdPr Me
  loc_BF3192: MemLdFPR8 global_64
  loc_BF3195: FLdRfVar var_EC
  loc_BF3198: CStrVarTmp
  loc_BF3199: FStStrNoPop var_F0
  loc_BF319C: CR8Str
  loc_BF319E: AddR8
  loc_BF319F: FLdPr Me
  loc_BF31A2: MemStFPR8 global_64
  loc_BF31A5: FFree1Str var_F0
  loc_BF31A8: FFreeAd var_88 = ""
  loc_BF31AF: FFreeVar var_98 = ""
  loc_BF31B6: FLdPr Me
  loc_BF31B9: VCallAd Control_ID_ctacteFlex
  loc_BF31BC: FStAdFunc var_88
  loc_BF31BF: FLdPr var_88
  loc_BF31C2: LateIdLdVar var_98 DispID_10 0
  loc_BF31C9: CI4Var
  loc_BF31CB: CVarI4
  loc_BF31CF: PopAdLdVar
  loc_BF31D0: FLdPr Me
  loc_BF31D3: MemLdI2 global_62
  loc_BF31D6: CI4UI1
  loc_BF31D7: CVarI4
  loc_BF31DB: PopAdLdVar
  loc_BF31DC: FLdPr Me
  loc_BF31DF: VCallAd Control_ID_ctacteFlex
  loc_BF31E2: FStAdFunc var_DC
  loc_BF31E5: FLdPr var_DC
  loc_BF31E8: LateIdCallLdVar
  loc_BF31F2: PopAd
  loc_BF31F4: FLdPr Me
  loc_BF31F7: MemLdFPR8 global_72
  loc_BF31FA: FLdRfVar var_EC
  loc_BF31FD: CStrVarTmp
  loc_BF31FE: FStStrNoPop var_F0
  loc_BF3201: CR8Str
  loc_BF3203: SubR4
  loc_BF3204: FLdPr Me
  loc_BF3207: MemStFPR8 global_72
  loc_BF320A: FFree1Str var_F0
  loc_BF320D: FFreeAd var_88 = ""
  loc_BF3214: FFreeVar var_98 = ""
  loc_BF321B: FLdPr Me
  loc_BF321E: MemLdRfVar from_stack_1.global_62
  loc_BF3221: NextI2 var_154, loc_BF2F60
  loc_BF3226: FLdPr Me
  loc_BF3229: MemLdRfVar from_stack_1.global_60
  loc_BF322C: NextI2 var_118, loc_BF2E83
  loc_BF3231: LitI4 1
  loc_BF3236: LitI4 1
  loc_BF323B: LitVarStr var_B8, "0.00"
  loc_BF3240: FStVarCopyObj var_98
  loc_BF3243: FLdRfVar var_98
  loc_BF3246: FLdPr Me
  loc_BF3249: MemLdRfVar from_stack_1.global_64
  loc_BF324C: CVarRef
  loc_BF3251: FLdRfVar var_EC
  loc_BF3254: ImpAdCallFPR4  = Format(, )
  loc_BF3259: FLdRfVar var_EC
  loc_BF325C: CStrVarVal var_F0
  loc_BF3260: FLdPr Me
  loc_BF3263: VCallAd Control_ID_txtTotaSele
  loc_BF3266: FStAdFunc var_88
  loc_BF3269: FLdPr var_88
  loc_BF326C: Me.Text = from_stack_1
  loc_BF3271: FFree1Str var_F0
  loc_BF3274: FFree1Ad var_88
  loc_BF3277: FFreeVar var_98 = ""
  loc_BF327E: ExitProcHresult
End Sub

Private Sub ctacteDeudaFlex_Click() 'BD1E84
  'Data Table: 4E5E1C
  loc_BD1790: FLdPr Me
  loc_BD1793: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1796: FStAdFunc var_88
  loc_BD1799: FLdPr var_88
  loc_BD179C: LateIdLdVar var_98 DispID_4 0
  loc_BD17A3: CI4Var
  loc_BD17A5: LitI4 1
  loc_BD17AA: GtI4
  loc_BD17AB: FFree1Ad var_88
  loc_BD17AE: FFree1Var var_98 = ""
  loc_BD17B1: BranchF loc_BD1E81
  loc_BD17B4: FLdPr Me
  loc_BD17B7: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD17BA: FStAdFunc var_88
  loc_BD17BD: FLdPr var_88
  loc_BD17C0: LateIdLdVar var_98 DispID_10 0
  loc_BD17C7: CI4Var
  loc_BD17C9: CVarI4
  loc_BD17CD: PopAdLdVar
  loc_BD17CE: LitVarI4
  loc_BD17D6: PopAdLdVar
  loc_BD17D7: FLdPr Me
  loc_BD17DA: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD17DD: FStAdFunc var_DC
  loc_BD17E0: FLdPr var_DC
  loc_BD17E3: LateIdCallLdVar
  loc_BD17ED: CStrVarTmp
  loc_BD17EE: FStStrNoPop var_F0
  loc_BD17F1: CI4Str
  loc_BD17F2: LitI4 0
  loc_BD17F7: NeI4
  loc_BD17F8: FFree1Str var_F0
  loc_BD17FB: FFreeAd var_88 = ""
  loc_BD1802: FFreeVar var_98 = ""
  loc_BD1809: BranchF loc_BD1822
  loc_BD180C: LitStr "No se puede seleccionar movimientos con facilidad de pago."
  loc_BD180F: FLdPr Me
  loc_BD1812: MemStStrCopy
  loc_BD1816: FLdPr Me
  loc_BD1819: MemLdStr global_92
  loc_BD181C: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BD1821: ExitProcHresult
  loc_BD1822: LitI4 2
  loc_BD1827: FLdPr Me
  loc_BD182A: MemLdRfVar from_stack_1.global_72
  loc_BD182D: CVarRef
  loc_BD1832: FLdRfVar var_98
  loc_BD1835: ImpAdCallFPR4  = Round(, )
  loc_BD183A: FLdRfVar var_98
  loc_BD183D: LitVarI2 var_B8, 0
  loc_BD1842: HardType
  loc_BD1843: GtVar var_EC
  loc_BD1847: FLdPr Me
  loc_BD184A: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD184D: FStAdFunc var_88
  loc_BD1850: FLdPr var_88
  loc_BD1853: LateIdLdVar var_100 DispID_10 0
  loc_BD185A: CI4Var
  loc_BD185C: CVarI4
  loc_BD1860: PopAdLdVar
  loc_BD1861: LitVarI4
  loc_BD1869: PopAdLdVar
  loc_BD186A: FLdPr Me
  loc_BD186D: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1870: FStAdFunc var_DC
  loc_BD1873: FLdPr var_DC
  loc_BD1876: LateIdCallLdVar
  loc_BD1880: CStrVarTmp
  loc_BD1881: FStStrNoPop var_F0
  loc_BD1884: LitStr "Si"
  loc_BD1887: EqStr
  loc_BD1889: CVarBoolI2 var_140
  loc_BD188D: OrVar var_150
  loc_BD1891: CBoolVarNull
  loc_BD1893: FFree1Str var_F0
  loc_BD1896: FFreeAd var_88 = ""
  loc_BD189D: FFreeVar var_98 = "": var_100 = "": var_130 = ""
  loc_BD18A8: BranchF loc_BD1E34
  loc_BD18AB: LitI2_Byte 0
  loc_BD18AD: FLdPr Me
  loc_BD18B0: MemLdRfVar from_stack_1.global_60
  loc_BD18B3: FLdPr Me
  loc_BD18B6: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD18B9: FStAdFunc var_88
  loc_BD18BC: FLdPr var_88
  loc_BD18BF: LateIdLdVar var_98 DispID_5 0
  loc_BD18C6: CI4Var
  loc_BD18C8: LitI4 1
  loc_BD18CD: SubI4
  loc_BD18CE: CI2I4
  loc_BD18CF: FFree1Ad var_88
  loc_BD18D2: FFree1Var var_98 = ""
  loc_BD18D5: ForI2 var_154
  loc_BD18DB: FLdPr Me
  loc_BD18DE: MemLdI2 global_60
  loc_BD18E1: CI4UI1
  loc_BD18E2: CVarI4
  loc_BD18E6: PopAdLdVar
  loc_BD18E7: FLdPr Me
  loc_BD18EA: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD18ED: FStAdFunc var_88
  loc_BD18F0: FLdPr var_88
  loc_BD18F3: LateIdSt
  loc_BD18F8: FFree1Ad var_88
  loc_BD18FB: FLdPr Me
  loc_BD18FE: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1901: FStAdFunc var_88
  loc_BD1904: FLdPr var_88
  loc_BD1907: LateIdLdVar var_98 DispID_38 0
  loc_BD190E: CI4Var
  loc_BD1910: LitI4 &HFFFF80
  loc_BD1915: EqI4
  loc_BD1916: FFree1Ad var_88
  loc_BD1919: FFree1Var var_98 = ""
  loc_BD191C: BranchF loc_BD1BE7
  loc_BD191F: LitVarI4
  loc_BD1927: PopAdLdVar
  loc_BD1928: FLdPr Me
  loc_BD192B: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD192E: FStAdFunc var_88
  loc_BD1931: FLdPr var_88
  loc_BD1934: LateIdSt
  loc_BD1939: FFree1Ad var_88
  loc_BD193C: FLdPr Me
  loc_BD193F: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1942: FStAdFunc var_88
  loc_BD1945: FLdPr var_88
  loc_BD1948: LateIdLdVar var_98 DispID_10 0
  loc_BD194F: CI4Var
  loc_BD1951: CVarI4
  loc_BD1955: PopAdLdVar
  loc_BD1956: LitVarI4
  loc_BD195E: PopAdLdVar
  loc_BD195F: LitVarStr var_110, "No"
  loc_BD1964: PopAdLdVar
  loc_BD1965: FLdPr Me
  loc_BD1968: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD196B: FStAdFunc var_DC
  loc_BD196E: FLdPr var_DC
  loc_BD1971: LateIdCallSt
  loc_BD1979: FFreeAd var_88 = ""
  loc_BD1980: FFree1Var var_98 = ""
  loc_BD1983: FLdPr Me
  loc_BD1986: MemLdI2 global_60
  loc_BD1989: LitI2_Byte &HB
  loc_BD198B: EqI2
  loc_BD198C: BranchF loc_BD1A59
  loc_BD198F: FLdPr Me
  loc_BD1992: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1995: FStAdFunc var_88
  loc_BD1998: FLdPr var_88
  loc_BD199B: LateIdLdVar var_98 DispID_10 0
  loc_BD19A2: CI4Var
  loc_BD19A4: CVarI4
  loc_BD19A8: PopAdLdVar
  loc_BD19A9: FLdPr Me
  loc_BD19AC: MemLdI2 global_60
  loc_BD19AF: CI4UI1
  loc_BD19B0: CVarI4
  loc_BD19B4: PopAdLdVar
  loc_BD19B5: FLdPr Me
  loc_BD19B8: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD19BB: FStAdFunc var_DC
  loc_BD19BE: FLdPr var_DC
  loc_BD19C1: LateIdCallLdVar
  loc_BD19CB: PopAd
  loc_BD19CD: FLdPr Me
  loc_BD19D0: MemLdFPR8 global_80
  loc_BD19D3: FLdRfVar var_EC
  loc_BD19D6: CStrVarTmp
  loc_BD19D7: FStStrNoPop var_F0
  loc_BD19DA: CR8Str
  loc_BD19DC: SubR4
  loc_BD19DD: FLdPr Me
  loc_BD19E0: MemStFPR8 global_80
  loc_BD19E3: FFree1Str var_F0
  loc_BD19E6: FFreeAd var_88 = ""
  loc_BD19ED: FFreeVar var_98 = ""
  loc_BD19F4: FLdPr Me
  loc_BD19F7: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD19FA: FStAdFunc var_88
  loc_BD19FD: FLdPr var_88
  loc_BD1A00: LateIdLdVar var_98 DispID_10 0
  loc_BD1A07: CI4Var
  loc_BD1A09: CVarI4
  loc_BD1A0D: PopAdLdVar
  loc_BD1A0E: FLdPr Me
  loc_BD1A11: MemLdI2 global_60
  loc_BD1A14: CI4UI1
  loc_BD1A15: CVarI4
  loc_BD1A19: PopAdLdVar
  loc_BD1A1A: FLdPr Me
  loc_BD1A1D: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1A20: FStAdFunc var_DC
  loc_BD1A23: FLdPr var_DC
  loc_BD1A26: LateIdCallLdVar
  loc_BD1A30: PopAd
  loc_BD1A32: FLdPr Me
  loc_BD1A35: MemLdFPR8 global_72
  loc_BD1A38: FLdRfVar var_EC
  loc_BD1A3B: CStrVarTmp
  loc_BD1A3C: FStStrNoPop var_F0
  loc_BD1A3F: CR8Str
  loc_BD1A41: AddR8
  loc_BD1A42: FLdPr Me
  loc_BD1A45: MemStFPR8 global_72
  loc_BD1A48: FFree1Str var_F0
  loc_BD1A4B: FFreeAd var_88 = ""
  loc_BD1A52: FFreeVar var_98 = ""
  loc_BD1A59: FLdPr Me
  loc_BD1A5C: MemLdI2 global_60
  loc_BD1A5F: LitI2_Byte &HD
  loc_BD1A61: EqI2
  loc_BD1A62: BranchF loc_BD1BE4
  loc_BD1A65: FLdPr Me
  loc_BD1A68: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1A6B: FStAdFunc var_88
  loc_BD1A6E: FLdPr var_88
  loc_BD1A71: LateIdLdVar var_98 DispID_10 0
  loc_BD1A78: CI4Var
  loc_BD1A7A: CVarI4
  loc_BD1A7E: PopAdLdVar
  loc_BD1A7F: LitVarI4
  loc_BD1A87: PopAdLdVar
  loc_BD1A88: FLdPr Me
  loc_BD1A8B: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1A8E: FStAdFunc var_DC
  loc_BD1A91: FLdPr var_DC
  loc_BD1A94: LateIdCallLdVar
  loc_BD1A9E: PopAd
  loc_BD1AA0: FLdPr Me
  loc_BD1AA3: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1AA6: FStAdFunc var_158
  loc_BD1AA9: FLdPr var_158
  loc_BD1AAC: LateIdLdVar var_100 DispID_10 0
  loc_BD1AB3: CI4Var
  loc_BD1AB5: CVarI4
  loc_BD1AB9: PopAdLdVar
  loc_BD1ABA: LitVarI4
  loc_BD1AC2: PopAdLdVar
  loc_BD1AC3: FLdPr Me
  loc_BD1AC6: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1AC9: FStAdFunc var_16C
  loc_BD1ACC: FLdPr var_16C
  loc_BD1ACF: LateIdCallLdVar
  loc_BD1AD9: CStrVarTmp
  loc_BD1ADA: CVarStr var_150
  loc_BD1ADD: ImpAdCallI2 IsNumeric()
  loc_BD1AE2: FStI2 var_2FE
  loc_BD1AE5: FLdPr Me
  loc_BD1AE8: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1AEB: FStAdFunc var_170
  loc_BD1AEE: FLdPr var_170
  loc_BD1AF1: LateIdLdVar var_180 DispID_10 0
  loc_BD1AF8: CI4Var
  loc_BD1AFA: CVarI4
  loc_BD1AFE: PopAdLdVar
  loc_BD1AFF: LitVarI4
  loc_BD1B07: PopAdLdVar
  loc_BD1B08: FLdPr Me
  loc_BD1B0B: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1B0E: FStAdFunc var_1C4
  loc_BD1B11: FLdPr var_1C4
  loc_BD1B14: LateIdCallLdVar
  loc_BD1B1E: PopAd
  loc_BD1B20: LitVarI2 var_214, 0
  loc_BD1B25: FLdRfVar var_1D4
  loc_BD1B28: CStrVarTmp
  loc_BD1B29: CVarStr var_1F4
  loc_BD1B2C: FLdI2 var_2FE
  loc_BD1B2F: CVarBoolI2 var_1E4
  loc_BD1B33: FLdRfVar var_224
  loc_BD1B36: ImpAdCallFPR4  = IIf(, , )
  loc_BD1B3B: FLdPr Me
  loc_BD1B3E: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1B41: FStAdFunc var_288
  loc_BD1B44: FLdPr var_288
  loc_BD1B47: LateIdLdVar var_298 DispID_10 0
  loc_BD1B4E: CI4Var
  loc_BD1B50: CVarI4
  loc_BD1B54: PopAdLdVar
  loc_BD1B55: LitVarI4
  loc_BD1B5D: PopAdLdVar
  loc_BD1B5E: LitI4 1
  loc_BD1B63: LitI4 1
  loc_BD1B68: LitVarStr var_264, "0.00"
  loc_BD1B6D: FStVarCopyObj var_274
  loc_BD1B70: FLdRfVar var_274
  loc_BD1B73: FLdRfVar var_EC
  loc_BD1B76: CStrVarTmp
  loc_BD1B77: CVarStr var_234
  loc_BD1B7A: FLdRfVar var_224
  loc_BD1B7D: SubVar var_244
  loc_BD1B81: FStVar var_254
  loc_BD1B85: FLdRfVar var_254
  loc_BD1B88: FLdRfVar var_284
  loc_BD1B8B: ImpAdCallFPR4  = Format(, )
  loc_BD1B90: FLdRfVar var_284
  loc_BD1B93: CStrVarTmp
  loc_BD1B94: CVarStr var_2E8
  loc_BD1B97: PopAdLdVar
  loc_BD1B98: FLdPr Me
  loc_BD1B9B: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1B9E: FStAdFunc var_2FC
  loc_BD1BA1: FLdPr var_2FC
  loc_BD1BA4: LateIdCallSt
  loc_BD1BAC: FFreeAd var_88 = "": var_DC = "": var_158 = "": var_16C = "": var_170 = "": var_1C4 = "": var_288 = ""
  loc_BD1BBF: FFreeVar var_98 = "": var_EC = "": var_100 = "": var_130 = "": var_150 = "": var_180 = "": var_1D4 = "": var_1E4 = "": var_1F4 = "": var_214 = "": var_234 = "": var_224 = "": var_254 = "": var_274 = "": var_298 = "": var_284 = ""
  loc_BD1BE4: Branch loc_BD1E29
  loc_BD1BE7: LitVarI4
  loc_BD1BEF: PopAdLdVar
  loc_BD1BF0: FLdPr Me
  loc_BD1BF3: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1BF6: FStAdFunc var_88
  loc_BD1BF9: FLdPr var_88
  loc_BD1BFC: LateIdSt
  loc_BD1C01: FFree1Ad var_88
  loc_BD1C04: FLdPr Me
  loc_BD1C07: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1C0A: FStAdFunc var_88
  loc_BD1C0D: FLdPr var_88
  loc_BD1C10: LateIdLdVar var_98 DispID_10 0
  loc_BD1C17: CI4Var
  loc_BD1C19: CVarI4
  loc_BD1C1D: PopAdLdVar
  loc_BD1C1E: LitVarI4
  loc_BD1C26: PopAdLdVar
  loc_BD1C27: LitVarStr var_110, "Si"
  loc_BD1C2C: PopAdLdVar
  loc_BD1C2D: FLdPr Me
  loc_BD1C30: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1C33: FStAdFunc var_DC
  loc_BD1C36: FLdPr var_DC
  loc_BD1C39: LateIdCallSt
  loc_BD1C41: FFreeAd var_88 = ""
  loc_BD1C48: FFree1Var var_98 = ""
  loc_BD1C4B: FLdPr Me
  loc_BD1C4E: MemLdI2 global_60
  loc_BD1C51: LitI2_Byte &HB
  loc_BD1C53: EqI2
  loc_BD1C54: BranchF loc_BD1E29
  loc_BD1C57: FLdPr Me
  loc_BD1C5A: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1C5D: FStAdFunc var_88
  loc_BD1C60: FLdPr var_88
  loc_BD1C63: LateIdLdVar var_98 DispID_10 0
  loc_BD1C6A: CI4Var
  loc_BD1C6C: CVarI4
  loc_BD1C70: PopAdLdVar
  loc_BD1C71: FLdPr Me
  loc_BD1C74: MemLdI2 global_60
  loc_BD1C77: CI4UI1
  loc_BD1C78: CVarI4
  loc_BD1C7C: PopAdLdVar
  loc_BD1C7D: FLdPr Me
  loc_BD1C80: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1C83: FStAdFunc var_DC
  loc_BD1C86: FLdPr var_DC
  loc_BD1C89: LateIdCallLdVar
  loc_BD1C93: CStrVarTmp
  loc_BD1C94: FStStrNoPop var_F0
  loc_BD1C97: CR8Str
  loc_BD1C99: CVarR8
  loc_BD1C9D: HardType
  loc_BD1C9E: LitI4 2
  loc_BD1CA3: FLdPr Me
  loc_BD1CA6: MemLdRfVar from_stack_1.global_72
  loc_BD1CA9: CVarRef
  loc_BD1CAE: FLdRfVar var_100
  loc_BD1CB1: ImpAdCallFPR4  = Round(, )
  loc_BD1CB6: FLdRfVar var_100
  loc_BD1CB9: GtVarBool
  loc_BD1CBB: FFree1Str var_F0
  loc_BD1CBE: FFreeAd var_88 = ""
  loc_BD1CC5: FFreeVar var_98 = "": var_EC = ""
  loc_BD1CCE: BranchF loc_BD1D5F
  loc_BD1CD1: LitI4 2
  loc_BD1CD6: FLdPr Me
  loc_BD1CD9: MemLdRfVar from_stack_1.global_72
  loc_BD1CDC: CVarRef
  loc_BD1CE1: FLdRfVar var_98
  loc_BD1CE4: ImpAdCallFPR4  = Round(, )
  loc_BD1CE9: FLdPr Me
  loc_BD1CEC: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1CEF: FStAdFunc var_88
  loc_BD1CF2: FLdPr var_88
  loc_BD1CF5: LateIdLdVar var_130 DispID_10 0
  loc_BD1CFC: CI4Var
  loc_BD1CFE: CVarI4
  loc_BD1D02: PopAdLdVar
  loc_BD1D03: FLdPr Me
  loc_BD1D06: MemLdI2 global_60
  loc_BD1D09: CI4UI1
  loc_BD1D0A: CVarI4
  loc_BD1D0E: PopAdLdVar
  loc_BD1D0F: LitI4 1
  loc_BD1D14: LitI4 1
  loc_BD1D19: LitVarStr var_B8, "0.00"
  loc_BD1D1E: FStVarCopyObj var_EC
  loc_BD1D21: FLdRfVar var_EC
  loc_BD1D24: FLdRfVar var_98
  loc_BD1D27: FLdRfVar var_100
  loc_BD1D2A: ImpAdCallFPR4  = Format(, )
  loc_BD1D2F: FLdRfVar var_100
  loc_BD1D32: CStrVarTmp
  loc_BD1D33: CVarStr var_150
  loc_BD1D36: PopAdLdVar
  loc_BD1D37: FLdPr Me
  loc_BD1D3A: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1D3D: FStAdFunc var_DC
  loc_BD1D40: FLdPr var_DC
  loc_BD1D43: LateIdCallSt
  loc_BD1D4B: FFreeAd var_88 = ""
  loc_BD1D52: FFreeVar var_98 = "": var_EC = "": var_130 = "": var_100 = ""
  loc_BD1D5F: FLdPr Me
  loc_BD1D62: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1D65: FStAdFunc var_88
  loc_BD1D68: FLdPr var_88
  loc_BD1D6B: LateIdLdVar var_98 DispID_10 0
  loc_BD1D72: CI4Var
  loc_BD1D74: CVarI4
  loc_BD1D78: PopAdLdVar
  loc_BD1D79: FLdPr Me
  loc_BD1D7C: MemLdI2 global_60
  loc_BD1D7F: CI4UI1
  loc_BD1D80: CVarI4
  loc_BD1D84: PopAdLdVar
  loc_BD1D85: FLdPr Me
  loc_BD1D88: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1D8B: FStAdFunc var_DC
  loc_BD1D8E: FLdPr var_DC
  loc_BD1D91: LateIdCallLdVar
  loc_BD1D9B: PopAd
  loc_BD1D9D: FLdPr Me
  loc_BD1DA0: MemLdFPR8 global_80
  loc_BD1DA3: FLdRfVar var_EC
  loc_BD1DA6: CStrVarTmp
  loc_BD1DA7: FStStrNoPop var_F0
  loc_BD1DAA: CR8Str
  loc_BD1DAC: AddR8
  loc_BD1DAD: FLdPr Me
  loc_BD1DB0: MemStFPR8 global_80
  loc_BD1DB3: FFree1Str var_F0
  loc_BD1DB6: FFreeAd var_88 = ""
  loc_BD1DBD: FFreeVar var_98 = ""
  loc_BD1DC4: FLdPr Me
  loc_BD1DC7: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1DCA: FStAdFunc var_88
  loc_BD1DCD: FLdPr var_88
  loc_BD1DD0: LateIdLdVar var_98 DispID_10 0
  loc_BD1DD7: CI4Var
  loc_BD1DD9: CVarI4
  loc_BD1DDD: PopAdLdVar
  loc_BD1DDE: FLdPr Me
  loc_BD1DE1: MemLdI2 global_60
  loc_BD1DE4: CI4UI1
  loc_BD1DE5: CVarI4
  loc_BD1DE9: PopAdLdVar
  loc_BD1DEA: FLdPr Me
  loc_BD1DED: VCallAd Control_ID_ctacteDeudaFlex
  loc_BD1DF0: FStAdFunc var_DC
  loc_BD1DF3: FLdPr var_DC
  loc_BD1DF6: LateIdCallLdVar
  loc_BD1E00: PopAd
  loc_BD1E02: FLdPr Me
  loc_BD1E05: MemLdFPR8 global_72
  loc_BD1E08: FLdRfVar var_EC
  loc_BD1E0B: CStrVarTmp
  loc_BD1E0C: FStStrNoPop var_F0
  loc_BD1E0F: CR8Str
  loc_BD1E11: SubR4
  loc_BD1E12: FLdPr Me
  loc_BD1E15: MemStFPR8 global_72
  loc_BD1E18: FFree1Str var_F0
  loc_BD1E1B: FFreeAd var_88 = ""
  loc_BD1E22: FFreeVar var_98 = ""
  loc_BD1E29: FLdPr Me
  loc_BD1E2C: MemLdRfVar from_stack_1.global_60
  loc_BD1E2F: NextI2 var_154, loc_BD18DB
  loc_BD1E34: LitI4 1
  loc_BD1E39: LitI4 1
  loc_BD1E3E: LitVarStr var_B8, "0.00"
  loc_BD1E43: FStVarCopyObj var_98
  loc_BD1E46: FLdRfVar var_98
  loc_BD1E49: FLdPr Me
  loc_BD1E4C: MemLdRfVar from_stack_1.global_80
  loc_BD1E4F: CVarRef
  loc_BD1E54: FLdRfVar var_EC
  loc_BD1E57: ImpAdCallFPR4  = Format(, )
  loc_BD1E5C: FLdRfVar var_EC
  loc_BD1E5F: CStrVarVal var_F0
  loc_BD1E63: FLdPr Me
  loc_BD1E66: VCallAd Control_ID_txtTotaSeleDeuda
  loc_BD1E69: FStAdFunc var_88
  loc_BD1E6C: FLdPr var_88
  loc_BD1E6F: Me.Text = from_stack_1
  loc_BD1E74: FFree1Str var_F0
  loc_BD1E77: FFree1Ad var_88
  loc_BD1E7A: FFreeVar var_98 = ""
  loc_BD1E81: ExitProcHresult
End Sub

Private Sub BuscarCmd_Click() 'C660A4
  'Data Table: 4E5E1C
  loc_C6513C: Call Proc_230_18_B7F1C0()
  loc_C65141: LitI2_Byte 0
  loc_C65143: FLdPr Me
  loc_C65146: VCallAd Control_ID_SeleTodoChk
  loc_C65149: FStAdFunc var_F0
  loc_C6514C: FLdPr var_F0
  loc_C6514F: Me.Value = from_stack_1
  loc_C65154: FFree1Ad var_F0
  loc_C65157: LitVarStr var_100, vbNullString
  loc_C6515C: PopAdLdVar
  loc_C6515D: FLdPr Me
  loc_C65160: VCallAd Control_ID_FechVencMsk
  loc_C65163: FStAdFunc var_F0
  loc_C65166: FLdPr var_F0
  loc_C65169: LateIdSt
  loc_C6516E: FFree1Ad var_F0
  loc_C65171: FLdRfVar var_112
  loc_C65174: FLdPr Me
  loc_C65177: VCallAd Control_ID_OficinaCbo
  loc_C6517A: FStAdFunc var_F0
  loc_C6517D: FLdPr var_F0
  loc_C65180:  = Me.ListIndex
  loc_C65185: FLdI2 var_112
  loc_C65188: FStI2 var_114
  loc_C6518B: FFree1Ad var_F0
  loc_C6518E: FLdI2 var_114
  loc_C65191: LitI2_Byte 0
  loc_C65193: EqI2
  loc_C65194: BranchF loc_C651A2
  loc_C65197: LitI2_Byte 1
  loc_C65199: CUI1I2
  loc_C6519B: ImpAdStUI1 MemVar_D93038
  loc_C6519F: Branch loc_C651DB
  loc_C651A2: FLdI2 var_114
  loc_C651A5: LitI2_Byte 1
  loc_C651A7: EqI2
  loc_C651A8: BranchF loc_C651B6
  loc_C651AB: LitI2_Byte 2
  loc_C651AD: CUI1I2
  loc_C651AF: ImpAdStUI1 MemVar_D93038
  loc_C651B3: Branch loc_C651DB
  loc_C651B6: FLdI2 var_114
  loc_C651B9: LitI2_Byte 2
  loc_C651BB: EqI2
  loc_C651BC: BranchF loc_C651CA
  loc_C651BF: LitI2_Byte 3
  loc_C651C1: CUI1I2
  loc_C651C3: ImpAdStUI1 MemVar_D93038
  loc_C651C7: Branch loc_C651DB
  loc_C651CA: FLdI2 var_114
  loc_C651CD: LitI2_Byte 3
  loc_C651CF: EqI2
  loc_C651D0: BranchF loc_C651DB
  loc_C651D3: LitI2_Byte 4
  loc_C651D5: CUI1I2
  loc_C651D7: ImpAdStUI1 MemVar_D93038
  loc_C651DB: LitI2_Byte 0
  loc_C651DD: CR8I2
  loc_C651DE: FLdPr Me
  loc_C651E1: MemStFPR8 global_64
  loc_C651E4: LitI2_Byte 0
  loc_C651E6: CR8I2
  loc_C651E7: FLdPr Me
  loc_C651EA: MemStFPR8 global_72
  loc_C651ED: LitI2_Byte 0
  loc_C651EF: CR8I2
  loc_C651F0: FLdPr Me
  loc_C651F3: MemStFPR8 global_80
  loc_C651F6: LitI2_Byte 0
  loc_C651F8: CR8I2
  loc_C651F9: FStFPR8 var_CC
  loc_C651FC: LitI2_Byte 0
  loc_C651FE: CR8I2
  loc_C651FF: FStFPR8 var_D4
  loc_C65202: LitI2_Byte 0
  loc_C65204: CR8I2
  loc_C65205: FStFPR8 var_DC
  loc_C65208: LitI2_Byte 0
  loc_C6520A: CR8I2
  loc_C6520B: FStFPR8 var_E4
  loc_C6520E: LitI2_Byte 0
  loc_C65210: CR8I2
  loc_C65211: FStFPR8 var_EC
  loc_C65214: LitI4 1
  loc_C65219: LitI4 1
  loc_C6521E: LitVarStr var_110, "0.00"
  loc_C65223: FStVarCopyObj var_124
  loc_C65226: FLdRfVar var_124
  loc_C65229: FLdRfVar var_CC
  loc_C6522C: CVarRef
  loc_C65231: FLdRfVar var_134
  loc_C65234: ImpAdCallFPR4  = Format(, )
  loc_C65239: FLdRfVar var_134
  loc_C6523C: CStrVarVal var_138
  loc_C65240: FLdPr Me
  loc_C65243: VCallAd Control_ID_txtTotaDere
  loc_C65246: FStAdFunc var_F0
  loc_C65249: FLdPr var_F0
  loc_C6524C: Me.Text = from_stack_1
  loc_C65251: FFree1Str var_138
  loc_C65254: FFree1Ad var_F0
  loc_C65257: FFreeVar var_124 = ""
  loc_C6525E: LitI4 1
  loc_C65263: LitI4 1
  loc_C65268: LitVarStr var_110, "0.00"
  loc_C6526D: FStVarCopyObj var_124
  loc_C65270: FLdRfVar var_124
  loc_C65273: FLdRfVar var_D4
  loc_C65276: CVarRef
  loc_C6527B: FLdRfVar var_134
  loc_C6527E: ImpAdCallFPR4  = Format(, )
  loc_C65283: FLdRfVar var_134
  loc_C65286: CStrVarVal var_138
  loc_C6528A: FLdPr Me
  loc_C6528D: VCallAd Control_ID_txtTotaReca
  loc_C65290: FStAdFunc var_F0
  loc_C65293: FLdPr var_F0
  loc_C65296: Me.Text = from_stack_1
  loc_C6529B: FFree1Str var_138
  loc_C6529E: FFree1Ad var_F0
  loc_C652A1: FFreeVar var_124 = ""
  loc_C652A8: LitI4 1
  loc_C652AD: LitI4 1
  loc_C652B2: LitVarStr var_110, "0.00"
  loc_C652B7: FStVarCopyObj var_124
  loc_C652BA: FLdRfVar var_124
  loc_C652BD: FLdRfVar var_DC
  loc_C652C0: CVarRef
  loc_C652C5: FLdRfVar var_134
  loc_C652C8: ImpAdCallFPR4  = Format(, )
  loc_C652CD: FLdRfVar var_134
  loc_C652D0: CStrVarVal var_138
  loc_C652D4: FLdPr Me
  loc_C652D7: VCallAd Control_ID_txtTotaApre
  loc_C652DA: FStAdFunc var_F0
  loc_C652DD: FLdPr var_F0
  loc_C652E0: Me.Text = from_stack_1
  loc_C652E5: FFree1Str var_138
  loc_C652E8: FFree1Ad var_F0
  loc_C652EB: FFreeVar var_124 = ""
  loc_C652F2: LitI4 2
  loc_C652F7: FLdRfVar var_CC
  loc_C652FA: CVarRef
  loc_C652FF: FLdRfVar var_124
  loc_C65302: ImpAdCallFPR4  = Round(, )
  loc_C65307: FLdRfVar var_124
  loc_C6530A: LitI4 2
  loc_C6530F: FLdRfVar var_D4
  loc_C65312: CVarRef
  loc_C65317: FLdRfVar var_134
  loc_C6531A: ImpAdCallFPR4  = Round(, )
  loc_C6531F: FLdRfVar var_134
  loc_C65322: AddVar var_148
  loc_C65326: LitI4 2
  loc_C6532B: FLdRfVar var_DC
  loc_C6532E: CVarRef
  loc_C65333: FLdRfVar var_168
  loc_C65336: ImpAdCallFPR4  = Round(, )
  loc_C6533B: FLdRfVar var_168
  loc_C6533E: AddVar var_178
  loc_C65342: CR4Var
  loc_C65343: FStFPR8 var_E4
  loc_C65346: FFreeVar var_124 = "": var_134 = "": var_148 = "": var_168 = ""
  loc_C65353: LitI4 1
  loc_C65358: LitI4 1
  loc_C6535D: LitVarStr var_110, "0.00"
  loc_C65362: FStVarCopyObj var_124
  loc_C65365: FLdRfVar var_124
  loc_C65368: FLdRfVar var_E4
  loc_C6536B: CVarRef
  loc_C65370: FLdRfVar var_134
  loc_C65373: ImpAdCallFPR4  = Format(, )
  loc_C65378: FLdRfVar var_134
  loc_C6537B: CStrVarVal var_138
  loc_C6537F: FLdPr Me
  loc_C65382: VCallAd Control_ID_txtTotal
  loc_C65385: FStAdFunc var_F0
  loc_C65388: FLdPr var_F0
  loc_C6538B: Me.Text = from_stack_1
  loc_C65390: FFree1Str var_138
  loc_C65393: FFree1Ad var_F0
  loc_C65396: FFreeVar var_124 = ""
  loc_C6539D: LitI4 1
  loc_C653A2: LitI4 1
  loc_C653A7: LitVarStr var_110, "0.00"
  loc_C653AC: FStVarCopyObj var_124
  loc_C653AF: FLdRfVar var_124
  loc_C653B2: FLdRfVar var_EC
  loc_C653B5: CVarRef
  loc_C653BA: FLdRfVar var_134
  loc_C653BD: ImpAdCallFPR4  = Format(, )
  loc_C653C2: FLdRfVar var_134
  loc_C653C5: CStrVarVal var_138
  loc_C653C9: FLdPr Me
  loc_C653CC: VCallAd Control_ID_txtTotaSele
  loc_C653CF: FStAdFunc var_F0
  loc_C653D2: FLdPr var_F0
  loc_C653D5: Me.Text = from_stack_1
  loc_C653DA: FFree1Str var_138
  loc_C653DD: FFree1Ad var_F0
  loc_C653E0: FFreeVar var_124 = ""
  loc_C653E7: LitI4 1
  loc_C653EC: LitI4 1
  loc_C653F1: LitVarStr var_110, "0.00"
  loc_C653F6: FStVarCopyObj var_124
  loc_C653F9: FLdRfVar var_124
  loc_C653FC: FLdRfVar var_EC
  loc_C653FF: CVarRef
  loc_C65404: FLdRfVar var_134
  loc_C65407: ImpAdCallFPR4  = Format(, )
  loc_C6540C: FLdRfVar var_134
  loc_C6540F: CStrVarVal var_138
  loc_C65413: FLdPr Me
  loc_C65416: VCallAd Control_ID_txtTotaSeleDeuda
  loc_C65419: FStAdFunc var_F0
  loc_C6541C: FLdPr var_F0
  loc_C6541F: Me.Text = from_stack_1
  loc_C65424: FFree1Str var_138
  loc_C65427: FFree1Ad var_F0
  loc_C6542A: FFreeVar var_124 = ""
  loc_C65431: FLdRfVar var_138
  loc_C65434: FLdPr Me
  loc_C65437: VCallAd Control_ID_NumeCtaTxt
  loc_C6543A: FStAdFunc var_F0
  loc_C6543D: FLdPr var_F0
  loc_C65440:  = Me.Text
  loc_C65445: FLdPr Me
  loc_C65448: VCallAd Control_ID_FechVencMsk
  loc_C6544B: FStAdFunc var_17C
  loc_C6544E: FLdPr var_17C
  loc_C65451: LateIdLdVar var_124 DispID_22 0
  loc_C65458: PopAd
  loc_C6545A: LitStr "tmp_ctactedebito"
  loc_C6545D: FLdRfVar var_124
  loc_C65460: CStrVarTmp
  loc_C65461: FStStrNoPop var_180
  loc_C65464: ILdRf var_138
  loc_C65467: ImpAdLdUI1
  loc_C6546B: FLdPr Me
  loc_C6546E: MemLdRfVar from_stack_1.global_52
  loc_C65471: NewIfNullPr clsctacte
  loc_C65474: Call clsctacte.CreaTemporalCtaCte(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_C65479: FFreeStr var_138 = ""
  loc_C65480: FFreeAd var_F0 = ""
  loc_C65487: FFree1Var var_124 = ""
  loc_C6548A: LitStr "SELECT * FROM tmp_ctactedebito LEFT JOIN tipomovi ON tmp_ctactedebito.CodiTimo = tipomovi.CodiTimo"
  loc_C6548D: LitStr " ORDER BY tmp_ctactedebito.CodiOfic, tmp_ctactedebito.CuenCtct, tmp_ctactedebito.PeriCtct, tmp_ctactedebito.BimeCtct, tmp_ctactedebito.NumeCtct, tmp_ctactedebito.MoviCtct"
  loc_C65490: ConcatStr
  loc_C65491: FStStrNoPop var_138
  loc_C65494: FLdPr Me
  loc_C65497: MemLdRfVar from_stack_1.global_52
  loc_C6549A: NewIfNullPr clsctacte
  loc_C6549D: Call clsctacte.RedefineRS(from_stack_1v)
  loc_C654A2: FFree1Str var_138
  loc_C654A5: FLdRfVar var_184
  loc_C654A8: FLdPr Me
  loc_C654AB: MemLdRfVar from_stack_1.global_52
  loc_C654AE: NewIfNullPr clsctacte
  loc_C654B1: from_stack_1 = clsctacte.RecordCount
  loc_C654B6: ILdRf var_184
  loc_C654B9: LitI4 0
  loc_C654BE: GtI4
  loc_C654BF: BranchF loc_C6604B
  loc_C654C2: FLdPr Me
  loc_C654C5: MemLdRfVar from_stack_1.global_52
  loc_C654C8: NewIfNullPr clsctacte
  loc_C654CB: Call clsctacte.MoveFirst()
  loc_C654D0: FLdRfVar var_112
  loc_C654D3: FLdPr Me
  loc_C654D6: MemLdRfVar from_stack_1.global_52
  loc_C654D9: NewIfNullPr clsctacte
  loc_C654DC: from_stack_1 = clsctacte.EOF
  loc_C654E1: FLdI2 var_112
  loc_C654E4: NotI4
  loc_C654E5: BranchF loc_C65EC2
  loc_C654E8: FLdRfVar var_112
  loc_C654EB: FLdPr Me
  loc_C654EE: MemLdRfVar from_stack_1.global_52
  loc_C654F1: NewIfNullPr clsctacte
  loc_C654F4: from_stack_1 = clsctacte.BimeCtct
  loc_C654F9: LitI4 1
  loc_C654FE: LitI4 1
  loc_C65503: LitVarStr var_110, "00"
  loc_C65508: FStVarCopyObj var_134
  loc_C6550B: FLdRfVar var_134
  loc_C6550E: FLdI2 var_112
  loc_C65511: CVarI2 var_124
  loc_C65514: FLdRfVar var_148
  loc_C65517: ImpAdCallFPR4  = Format(, )
  loc_C6551C: FLdRfVar var_148
  loc_C6551F: LitVarStr var_158, "/"
  loc_C65524: ConcatVar var_168
  loc_C65528: FLdRfVar var_186
  loc_C6552B: FLdPr Me
  loc_C6552E: MemLdRfVar from_stack_1.global_52
  loc_C65531: NewIfNullPr clsctacte
  loc_C65534: from_stack_1 = clsctacte.PeriCtct
  loc_C65539: FLdI2 var_186
  loc_C6553C: CVarI2 var_198
  loc_C6553F: ConcatVar var_178
  loc_C65543: CStrVarTmp
  loc_C65544: FLdRfVar var_96
  loc_C65547: StFixedStrFree
  loc_C6554B: FFreeVar var_124 = "": var_134 = "": var_148 = "": var_168 = ""
  loc_C65558: FLdRfVar var_184
  loc_C6555B: FLdPr Me
  loc_C6555E: MemLdRfVar from_stack_1.global_52
  loc_C65561: NewIfNullPr clsctacte
  loc_C65564: from_stack_1 = clsctacte.NumeBole
  loc_C65569: LitI4 1
  loc_C6556E: LitI4 1
  loc_C65573: LitVarStr var_110, "#######0"
  loc_C65578: FStVarCopyObj var_134
  loc_C6557B: FLdRfVar var_134
  loc_C6557E: ILdRf var_184
  loc_C65581: CVarI4
  loc_C65585: FLdRfVar var_148
  loc_C65588: ImpAdCallFPR4  = Format(, )
  loc_C6558D: FLdRfVar var_148
  loc_C65590: LitVarStr var_158, "-"
  loc_C65595: ConcatVar var_168
  loc_C65599: FLdRfVar var_112
  loc_C6559C: FLdPr Me
  loc_C6559F: MemLdRfVar from_stack_1.global_52
  loc_C655A2: NewIfNullPr clsctacte
  loc_C655A5: from_stack_1 = clsctacte.PeriBole
  loc_C655AA: FLdI2 var_112
  loc_C655AD: CVarI2 var_198
  loc_C655B0: ConcatVar var_178
  loc_C655B4: CStrVarTmp
  loc_C655B5: FLdRfVar var_B0
  loc_C655B8: StFixedStrFree
  loc_C655BC: FFreeVar var_124 = "": var_134 = "": var_148 = "": var_168 = ""
  loc_C655C9: FLdRfVar var_1A0
  loc_C655CC: FLdPr Me
  loc_C655CF: MemLdRfVar from_stack_1.global_52
  loc_C655D2: NewIfNullPr clsctacte
  loc_C655D5: from_stack_1 = clsctacte.SaldCtct
  loc_C655DA: FLdFPR8 var_1A0
  loc_C655DD: FnCDblR8
  loc_C655DF: LitI2_Byte 0
  loc_C655E1: CR8I2
  loc_C655E2: NeR8
  loc_C655E3: BranchF loc_C6562E
  loc_C655E6: FLdRfVar var_1A0
  loc_C655E9: FLdPr Me
  loc_C655EC: MemLdRfVar from_stack_1.global_52
  loc_C655EF: NewIfNullPr clsctacte
  loc_C655F2: from_stack_1 = clsctacte.SaldCtct
  loc_C655F7: LitI4 1
  loc_C655FC: LitI4 1
  loc_C65601: LitVarStr var_110, "0.00"
  loc_C65606: FStVarCopyObj var_134
  loc_C65609: FLdRfVar var_134
  loc_C6560C: FLdFPR8 var_1A0
  loc_C6560F: CVarR8
  loc_C65613: FLdRfVar var_148
  loc_C65616: ImpAdCallFPR4  = Format(, )
  loc_C6561B: FLdRfVar var_148
  loc_C6561E: CStrVarTmp
  loc_C6561F: FStStr var_B8
  loc_C65622: FFreeVar var_124 = "": var_134 = ""
  loc_C6562B: Branch loc_C65634
  loc_C6562E: LitStr vbNullString
  loc_C65631: FStStrCopy var_B8
  loc_C65634: LitStr vbNullString
  loc_C65637: FStStrCopy var_BC
  loc_C6563A: FLdRfVar var_1A0
  loc_C6563D: FLdPr Me
  loc_C65640: MemLdRfVar from_stack_1.global_52
  loc_C65643: NewIfNullPr clsctacte
  loc_C65646: from_stack_1 = clsctacte.RecaCtct
  loc_C6564B: FLdFPR8 var_1A0
  loc_C6564E: FnCDblR8
  loc_C65650: LitI2_Byte 0
  loc_C65652: CR8I2
  loc_C65653: NeR8
  loc_C65654: BranchF loc_C6569F
  loc_C65657: FLdRfVar var_1A0
  loc_C6565A: FLdPr Me
  loc_C6565D: MemLdRfVar from_stack_1.global_52
  loc_C65660: NewIfNullPr clsctacte
  loc_C65663: from_stack_1 = clsctacte.RecaCtct
  loc_C65668: LitI4 1
  loc_C6566D: LitI4 1
  loc_C65672: LitVarStr var_110, "0.00"
  loc_C65677: FStVarCopyObj var_134
  loc_C6567A: FLdRfVar var_134
  loc_C6567D: FLdFPR8 var_1A0
  loc_C65680: CVarR8
  loc_C65684: FLdRfVar var_148
  loc_C65687: ImpAdCallFPR4  = Format(, )
  loc_C6568C: FLdRfVar var_148
  loc_C6568F: CStrVarTmp
  loc_C65690: FStStr var_C0
  loc_C65693: FFreeVar var_124 = "": var_134 = ""
  loc_C6569C: Branch loc_C656A5
  loc_C6569F: LitStr vbNullString
  loc_C656A2: FStStrCopy var_C0
  loc_C656A5: FLdRfVar var_1A0
  loc_C656A8: FLdPr Me
  loc_C656AB: MemLdRfVar from_stack_1.global_52
  loc_C656AE: NewIfNullPr clsctacte
  loc_C656B1: from_stack_1 = clsctacte.SaldCtct
  loc_C656B6: FLdFPR8 var_1A0
  loc_C656B9: FnCDblR8
  loc_C656BB: LitI2_Byte 0
  loc_C656BD: CR8I2
  loc_C656BE: LtR8
  loc_C656BF: BranchF loc_C65AE9
  loc_C656C2: LitI2_Byte 0
  loc_C656C4: CR8I2
  loc_C656C5: FStFPR8 var_DC
  loc_C656C8: FLdRfVar var_1A0
  loc_C656CB: FLdPr Me
  loc_C656CE: MemLdRfVar from_stack_1.global_52
  loc_C656D1: NewIfNullPr clsctacte
  loc_C656D4: from_stack_1 = clsctacte.SaldCtct
  loc_C656D9: LitI4 2
  loc_C656DE: FLdFPR8 var_CC
  loc_C656E1: FnCDblR8
  loc_C656E3: FLdFPR8 var_1A0
  loc_C656E6: FnCDblR8
  loc_C656E8: AddR8
  loc_C656E9: CVarR8
  loc_C656ED: FLdRfVar var_134
  loc_C656F0: ImpAdCallFPR4  = Round(, )
  loc_C656F5: FLdRfVar var_134
  loc_C656F8: CR4Var
  loc_C656F9: FStFPR8 var_CC
  loc_C656FC: FFreeVar var_124 = ""
  loc_C65703: FLdRfVar var_1A0
  loc_C65706: FLdPr Me
  loc_C65709: MemLdRfVar from_stack_1.global_52
  loc_C6570C: NewIfNullPr clsctacte
  loc_C6570F: from_stack_1 = clsctacte.RecaCtct
  loc_C65714: LitI4 2
  loc_C65719: FLdFPR8 var_D4
  loc_C6571C: FnCDblR8
  loc_C6571E: FLdFPR8 var_1A0
  loc_C65721: FnCDblR8
  loc_C65723: AddR8
  loc_C65724: CVarR8
  loc_C65728: FLdRfVar var_134
  loc_C6572B: ImpAdCallFPR4  = Round(, )
  loc_C65730: FLdRfVar var_134
  loc_C65733: CR4Var
  loc_C65734: FStFPR8 var_D4
  loc_C65737: FFreeVar var_124 = ""
  loc_C6573E: FLdRfVar var_1A0
  loc_C65741: FLdPr Me
  loc_C65744: MemLdRfVar from_stack_1.global_52
  loc_C65747: NewIfNullPr clsctacte
  loc_C6574A: from_stack_1 = clsctacte.SaldCtct
  loc_C6574F: FLdRfVar var_1A8
  loc_C65752: FLdPr Me
  loc_C65755: MemLdRfVar from_stack_1.global_52
  loc_C65758: NewIfNullPr clsctacte
  loc_C6575B: from_stack_1 = clsctacte.RecaCtct
  loc_C65760: LitI4 2
  loc_C65765: FLdFPR8 var_1A0
  loc_C65768: FnCDblR8
  loc_C6576A: FLdFPR8 var_1A8
  loc_C6576D: FnCDblR8
  loc_C6576F: AddR8
  loc_C65770: CVarR8
  loc_C65774: FLdRfVar var_134
  loc_C65777: ImpAdCallFPR4  = Round(, )
  loc_C6577C: LitI4 1
  loc_C65781: LitI4 1
  loc_C65786: LitVarStr var_110, "0.00"
  loc_C6578B: FStVarCopyObj var_148
  loc_C6578E: FLdRfVar var_148
  loc_C65791: FLdRfVar var_134
  loc_C65794: FLdRfVar var_168
  loc_C65797: ImpAdCallFPR4  = Format(, )
  loc_C6579C: FLdRfVar var_168
  loc_C6579F: CStrVarTmp
  loc_C657A0: FStStr var_C4
  loc_C657A3: FFreeVar var_124 = "": var_134 = "": var_148 = ""
  loc_C657AE: FLdRfVar var_112
  loc_C657B1: FLdPr Me
  loc_C657B4: MemLdRfVar from_stack_1.global_52
  loc_C657B7: NewIfNullPr clsctacte
  loc_C657BA: from_stack_1 = clsctacte.CodiOfic
  loc_C657BF: FLdI2 var_112
  loc_C657C2: CVarI2 var_100
  loc_C657C5: LitI4 9
  loc_C657CA: FLdRfVar var_124
  loc_C657CD: ImpAdCallFPR4  = Chr()
  loc_C657D2: FLdRfVar var_124
  loc_C657D5: ConcatVar var_134
  loc_C657D9: FLdRfVar var_138
  loc_C657DC: FLdPr Me
  loc_C657DF: MemLdRfVar from_stack_1.global_52
  loc_C657E2: NewIfNullPr clsctacte
  loc_C657E5: from_stack_1 = clsctacte.CuenCtct
  loc_C657EA: FLdZeroAd var_138
  loc_C657ED: CVarStr var_148
  loc_C657F0: ConcatVar var_168
  loc_C657F4: LitI4 9
  loc_C657F9: FLdRfVar var_178
  loc_C657FC: ImpAdCallFPR4  = Chr()
  loc_C65801: FLdRfVar var_178
  loc_C65804: ConcatVar var_1B8
  loc_C65808: FLdRfVar var_96
  loc_C6580B: LdFixedStr
  loc_C6580E: CVarStr var_1C8
  loc_C65811: ConcatVar var_1D8
  loc_C65815: LitI4 9
  loc_C6581A: FLdRfVar var_1E8
  loc_C6581D: ImpAdCallFPR4  = Chr()
  loc_C65822: FLdRfVar var_1E8
  loc_C65825: ConcatVar var_1F8
  loc_C65829: FLdRfVar var_B0
  loc_C6582C: LdFixedStr
  loc_C6582F: CVarStr var_208
  loc_C65832: ConcatVar var_218
  loc_C65836: LitI4 9
  loc_C6583B: FLdRfVar var_228
  loc_C6583E: ImpAdCallFPR4  = Chr()
  loc_C65843: FLdRfVar var_228
  loc_C65846: ConcatVar var_238
  loc_C6584A: FLdRfVar var_180
  loc_C6584D: FLdPr Me
  loc_C65850: MemLdRfVar from_stack_1.global_52
  loc_C65853: NewIfNullPr clsctacte
  loc_C65856: from_stack_1 = clsctacte.FealCtct
  loc_C6585B: FLdZeroAd var_180
  loc_C6585E: CVarStr var_248
  loc_C65861: ConcatVar var_258
  loc_C65865: LitI4 9
  loc_C6586A: FLdRfVar var_268
  loc_C6586D: ImpAdCallFPR4  = Chr()
  loc_C65872: FLdRfVar var_268
  loc_C65875: ConcatVar var_278
  loc_C65879: FLdRfVar var_288
  loc_C6587C: FLdPr Me
  loc_C6587F: MemLdRfVar from_stack_1.global_52
  loc_C65882: NewIfNullPr clsctacte
  loc_C65885: from_stack_1 = clsctacte.FeveCtct
  loc_C6588A: FLdRfVar var_288
  loc_C6588D: ConcatVar var_298
  loc_C65891: LitI4 9
  loc_C65896: FLdRfVar var_2A8
  loc_C65899: ImpAdCallFPR4  = Chr()
  loc_C6589E: FLdRfVar var_2A8
  loc_C658A1: ConcatVar var_2B8
  loc_C658A5: FLdRfVar var_2BC
  loc_C658A8: FLdPr Me
  loc_C658AB: MemLdRfVar from_stack_1.global_52
  loc_C658AE: NewIfNullPr clsctacte
  loc_C658B1: from_stack_1 = clsctacte.CodiConc
  loc_C658B6: FLdZeroAd var_2BC
  loc_C658B9: CVarStr var_2CC
  loc_C658BC: ConcatVar var_2DC
  loc_C658C0: LitI4 9
  loc_C658C5: FLdRfVar var_2EC
  loc_C658C8: ImpAdCallFPR4  = Chr()
  loc_C658CD: FLdRfVar var_2EC
  loc_C658D0: ConcatVar var_2FC
  loc_C658D4: FLdRfVar var_184
  loc_C658D7: FLdPr Me
  loc_C658DA: MemLdRfVar from_stack_1.global_52
  loc_C658DD: NewIfNullPr clsctacte
  loc_C658E0: from_stack_1 = clsctacte.CodiFapa
  loc_C658E5: ILdRf var_184
  loc_C658E8: CVarI4
  loc_C658EC: ConcatVar var_30C
  loc_C658F0: LitI4 9
  loc_C658F5: FLdRfVar var_31C
  loc_C658F8: ImpAdCallFPR4  = Chr()
  loc_C658FD: FLdRfVar var_31C
  loc_C65900: ConcatVar var_32C
  loc_C65904: FLdRfVar var_330
  loc_C65907: FLdPr Me
  loc_C6590A: MemLdRfVar from_stack_1.global_52
  loc_C6590D: NewIfNullPr clsctacte
  loc_C65910: from_stack_1 = clsctacte.NumeApre
  loc_C65915: ILdRf var_330
  loc_C65918: CVarI4
  loc_C6591C: ConcatVar var_340
  loc_C65920: LitI4 9
  loc_C65925: FLdRfVar var_350
  loc_C65928: ImpAdCallFPR4  = Chr()
  loc_C6592D: FLdRfVar var_350
  loc_C65930: ConcatVar var_360
  loc_C65934: FLdRfVar var_364
  loc_C65937: FLdPr Me
  loc_C6593A: MemLdRfVar from_stack_1.global_52
  loc_C6593D: NewIfNullPr clsctacte
  loc_C65940: from_stack_1 = clsctacte.ExpeCtct
  loc_C65945: FLdZeroAd var_364
  loc_C65948: CVarStr var_374
  loc_C6594B: ConcatVar var_384
  loc_C6594F: LitI4 9
  loc_C65954: FLdRfVar var_394
  loc_C65957: ImpAdCallFPR4  = Chr()
  loc_C6595C: FLdRfVar var_394
  loc_C6595F: ConcatVar var_3A4
  loc_C65963: FLdRfVar var_3A8
  loc_C65966: FLdPr Me
  loc_C65969: MemLdRfVar from_stack_1.global_52
  loc_C6596C: NewIfNullPr clsctacte
  loc_C6596F: from_stack_1 = clsctacte.AbreTimo
  loc_C65974: FLdZeroAd var_3A8
  loc_C65977: CVarStr var_3B8
  loc_C6597A: ConcatVar var_3C8
  loc_C6597E: LitI4 9
  loc_C65983: FLdRfVar var_3D8
  loc_C65986: ImpAdCallFPR4  = Chr()
  loc_C6598B: FLdRfVar var_3D8
  loc_C6598E: ConcatVar var_3E8
  loc_C65992: ILdRf var_B8
  loc_C65995: CVarStr var_198
  loc_C65998: ConcatVar var_3F8
  loc_C6599C: LitI4 9
  loc_C659A1: FLdRfVar var_408
  loc_C659A4: ImpAdCallFPR4  = Chr()
  loc_C659A9: FLdRfVar var_408
  loc_C659AC: ConcatVar var_418
  loc_C659B0: ILdRf var_C0
  loc_C659B3: CVarStr var_428
  loc_C659B6: ConcatVar var_438
  loc_C659BA: LitI4 9
  loc_C659BF: FLdRfVar var_448
  loc_C659C2: ImpAdCallFPR4  = Chr()
  loc_C659C7: FLdRfVar var_448
  loc_C659CA: ConcatVar var_458
  loc_C659CE: ILdRf var_C4
  loc_C659D1: CVarStr var_468
  loc_C659D4: ConcatVar var_478
  loc_C659D8: LitI4 9
  loc_C659DD: FLdRfVar var_488
  loc_C659E0: ImpAdCallFPR4  = Chr()
  loc_C659E5: FLdRfVar var_488
  loc_C659E8: ConcatVar var_498
  loc_C659EC: LitVarStr var_4A8, "No"
  loc_C659F1: ConcatVar var_4B8
  loc_C659F5: LitI4 9
  loc_C659FA: FLdRfVar var_4C8
  loc_C659FD: ImpAdCallFPR4  = Chr()
  loc_C65A02: FLdRfVar var_4C8
  loc_C65A05: ConcatVar var_4D8
  loc_C65A09: FLdRfVar var_4DC
  loc_C65A0C: FLdPr Me
  loc_C65A0F: MemLdRfVar from_stack_1.global_52
  loc_C65A12: NewIfNullPr clsctacte
  loc_C65A15: from_stack_1 = clsctacte.NumeCtct
  loc_C65A1A: ILdRf var_4DC
  loc_C65A1D: CVarI4
  loc_C65A21: ConcatVar var_4FC
  loc_C65A25: LitI4 9
  loc_C65A2A: FLdRfVar var_50C
  loc_C65A2D: ImpAdCallFPR4  = Chr()
  loc_C65A32: FLdRfVar var_50C
  loc_C65A35: ConcatVar var_51C
  loc_C65A39: FLdRfVar var_186
  loc_C65A3C: FLdPr Me
  loc_C65A3F: MemLdRfVar from_stack_1.global_52
  loc_C65A42: NewIfNullPr clsctacte
  loc_C65A45: from_stack_1 = clsctacte.MoviCtct
  loc_C65A4A: FLdI2 var_186
  loc_C65A4D: CVarI2 var_52C
  loc_C65A50: ConcatVar var_53C
  loc_C65A54: CStrVarTmp
  loc_C65A55: FStStr var_B4
  loc_C65A58: FFreeVar var_350 = "": var_360 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B8 = "": var_3C8 = "": var_3D8 = "": var_3E8 = "": var_3F8 = "": var_408 = "": var_418 = "": var_438 = "": var_448 = "": var_458 = "": var_478 = "": var_488 = "": var_498 = "": var_4B8 = "": var_4C8 = "": var_4D8 = "": var_4FC = "": var_50C = "": var_51C = "": var_53C = "": var_124 = "": var_134 = "": var_148 = "": var_168 = "": var_178 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2CC = "": var_2DC = "": var_2EC = "": var_2FC = "": var_30C = "": var_31C = "": var_32C = ""
  loc_C65ACB: FLdRfVar var_B4
  loc_C65ACE: CDargRef
  loc_C65AD2: FLdPr Me
  loc_C65AD5: VCallAd Control_ID_ctacteFlex
  loc_C65AD8: FStAdFunc var_F0
  loc_C65ADB: FLdPr var_F0
  loc_C65ADE: LateIdCall
  loc_C65AE6: FFree1Ad var_F0
  loc_C65AE9: FLdRfVar var_1A0
  loc_C65AEC: FLdPr Me
  loc_C65AEF: MemLdRfVar from_stack_1.global_52
  loc_C65AF2: NewIfNullPr clsctacte
  loc_C65AF5: from_stack_1 = clsctacte.SaldCtct
  loc_C65AFA: FLdFPR8 var_1A0
  loc_C65AFD: FnCDblR8
  loc_C65AFF: LitI2_Byte 0
  loc_C65B01: CR8I2
  loc_C65B02: GtR4
  loc_C65B03: BranchF loc_C65EB1
  loc_C65B06: FLdRfVar var_1A0
  loc_C65B09: FLdPr Me
  loc_C65B0C: MemLdRfVar from_stack_1.global_52
  loc_C65B0F: NewIfNullPr clsctacte
  loc_C65B12: from_stack_1 = clsctacte.SaldCtct
  loc_C65B17: FLdRfVar var_1A8
  loc_C65B1A: FLdPr Me
  loc_C65B1D: MemLdRfVar from_stack_1.global_52
  loc_C65B20: NewIfNullPr clsctacte
  loc_C65B23: from_stack_1 = clsctacte.RecaCtct
  loc_C65B28: LitI4 2
  loc_C65B2D: FLdFPR8 var_1A0
  loc_C65B30: FnCDblR8
  loc_C65B32: FLdFPR8 var_1A8
  loc_C65B35: FnCDblR8
  loc_C65B37: AddR8
  loc_C65B38: CVarR8
  loc_C65B3C: FLdRfVar var_134
  loc_C65B3F: ImpAdCallFPR4  = Round(, )
  loc_C65B44: LitI4 1
  loc_C65B49: LitI4 1
  loc_C65B4E: LitVarStr var_110, "0.00"
  loc_C65B53: FStVarCopyObj var_148
  loc_C65B56: FLdRfVar var_148
  loc_C65B59: FLdRfVar var_134
  loc_C65B5C: FLdRfVar var_168
  loc_C65B5F: ImpAdCallFPR4  = Format(, )
  loc_C65B64: FLdRfVar var_168
  loc_C65B67: CStrVarTmp
  loc_C65B68: FStStr var_C4
  loc_C65B6B: FFreeVar var_124 = "": var_134 = "": var_148 = ""
  loc_C65B76: FLdRfVar var_112
  loc_C65B79: FLdPr Me
  loc_C65B7C: MemLdRfVar from_stack_1.global_52
  loc_C65B7F: NewIfNullPr clsctacte
  loc_C65B82: from_stack_1 = clsctacte.CodiOfic
  loc_C65B87: FLdI2 var_112
  loc_C65B8A: CVarI2 var_100
  loc_C65B8D: LitI4 9
  loc_C65B92: FLdRfVar var_124
  loc_C65B95: ImpAdCallFPR4  = Chr()
  loc_C65B9A: FLdRfVar var_124
  loc_C65B9D: ConcatVar var_134
  loc_C65BA1: FLdRfVar var_138
  loc_C65BA4: FLdPr Me
  loc_C65BA7: MemLdRfVar from_stack_1.global_52
  loc_C65BAA: NewIfNullPr clsctacte
  loc_C65BAD: from_stack_1 = clsctacte.CuenCtct
  loc_C65BB2: FLdZeroAd var_138
  loc_C65BB5: CVarStr var_148
  loc_C65BB8: ConcatVar var_168
  loc_C65BBC: LitI4 9
  loc_C65BC1: FLdRfVar var_178
  loc_C65BC4: ImpAdCallFPR4  = Chr()
  loc_C65BC9: FLdRfVar var_178
  loc_C65BCC: ConcatVar var_1B8
  loc_C65BD0: FLdRfVar var_96
  loc_C65BD3: LdFixedStr
  loc_C65BD6: CVarStr var_1C8
  loc_C65BD9: ConcatVar var_1D8
  loc_C65BDD: LitI4 9
  loc_C65BE2: FLdRfVar var_1E8
  loc_C65BE5: ImpAdCallFPR4  = Chr()
  loc_C65BEA: FLdRfVar var_1E8
  loc_C65BED: ConcatVar var_1F8
  loc_C65BF1: FLdRfVar var_B0
  loc_C65BF4: LdFixedStr
  loc_C65BF7: CVarStr var_208
  loc_C65BFA: ConcatVar var_218
  loc_C65BFE: LitI4 9
  loc_C65C03: FLdRfVar var_228
  loc_C65C06: ImpAdCallFPR4  = Chr()
  loc_C65C0B: FLdRfVar var_228
  loc_C65C0E: ConcatVar var_238
  loc_C65C12: FLdRfVar var_180
  loc_C65C15: FLdPr Me
  loc_C65C18: MemLdRfVar from_stack_1.global_52
  loc_C65C1B: NewIfNullPr clsctacte
  loc_C65C1E: from_stack_1 = clsctacte.FealCtct
  loc_C65C23: FLdZeroAd var_180
  loc_C65C26: CVarStr var_248
  loc_C65C29: ConcatVar var_258
  loc_C65C2D: LitI4 9
  loc_C65C32: FLdRfVar var_268
  loc_C65C35: ImpAdCallFPR4  = Chr()
  loc_C65C3A: FLdRfVar var_268
  loc_C65C3D: ConcatVar var_278
  loc_C65C41: FLdRfVar var_288
  loc_C65C44: FLdPr Me
  loc_C65C47: MemLdRfVar from_stack_1.global_52
  loc_C65C4A: NewIfNullPr clsctacte
  loc_C65C4D: from_stack_1 = clsctacte.FeveCtct
  loc_C65C52: FLdRfVar var_288
  loc_C65C55: ConcatVar var_298
  loc_C65C59: LitI4 9
  loc_C65C5E: FLdRfVar var_2A8
  loc_C65C61: ImpAdCallFPR4  = Chr()
  loc_C65C66: FLdRfVar var_2A8
  loc_C65C69: ConcatVar var_2B8
  loc_C65C6D: FLdRfVar var_2BC
  loc_C65C70: FLdPr Me
  loc_C65C73: MemLdRfVar from_stack_1.global_52
  loc_C65C76: NewIfNullPr clsctacte
  loc_C65C79: from_stack_1 = clsctacte.CodiConc
  loc_C65C7E: FLdZeroAd var_2BC
  loc_C65C81: CVarStr var_2CC
  loc_C65C84: ConcatVar var_2DC
  loc_C65C88: LitI4 9
  loc_C65C8D: FLdRfVar var_2EC
  loc_C65C90: ImpAdCallFPR4  = Chr()
  loc_C65C95: FLdRfVar var_2EC
  loc_C65C98: ConcatVar var_2FC
  loc_C65C9C: FLdRfVar var_184
  loc_C65C9F: FLdPr Me
  loc_C65CA2: MemLdRfVar from_stack_1.global_52
  loc_C65CA5: NewIfNullPr clsctacte
  loc_C65CA8: from_stack_1 = clsctacte.CodiFapa
  loc_C65CAD: ILdRf var_184
  loc_C65CB0: CVarI4
  loc_C65CB4: ConcatVar var_30C
  loc_C65CB8: LitI4 9
  loc_C65CBD: FLdRfVar var_31C
  loc_C65CC0: ImpAdCallFPR4  = Chr()
  loc_C65CC5: FLdRfVar var_31C
  loc_C65CC8: ConcatVar var_32C
  loc_C65CCC: FLdRfVar var_330
  loc_C65CCF: FLdPr Me
  loc_C65CD2: MemLdRfVar from_stack_1.global_52
  loc_C65CD5: NewIfNullPr clsctacte
  loc_C65CD8: from_stack_1 = clsctacte.NumeApre
  loc_C65CDD: ILdRf var_330
  loc_C65CE0: CVarI4
  loc_C65CE4: ConcatVar var_340
  loc_C65CE8: LitI4 9
  loc_C65CED: FLdRfVar var_350
  loc_C65CF0: ImpAdCallFPR4  = Chr()
  loc_C65CF5: FLdRfVar var_350
  loc_C65CF8: ConcatVar var_360
  loc_C65CFC: FLdRfVar var_364
  loc_C65CFF: FLdPr Me
  loc_C65D02: MemLdRfVar from_stack_1.global_52
  loc_C65D05: NewIfNullPr clsctacte
  loc_C65D08: from_stack_1 = clsctacte.ExpeCtct
  loc_C65D0D: FLdZeroAd var_364
  loc_C65D10: CVarStr var_374
  loc_C65D13: ConcatVar var_384
  loc_C65D17: LitI4 9
  loc_C65D1C: FLdRfVar var_394
  loc_C65D1F: ImpAdCallFPR4  = Chr()
  loc_C65D24: FLdRfVar var_394
  loc_C65D27: ConcatVar var_3A4
  loc_C65D2B: FLdRfVar var_3A8
  loc_C65D2E: FLdPr Me
  loc_C65D31: MemLdRfVar from_stack_1.global_52
  loc_C65D34: NewIfNullPr clsctacte
  loc_C65D37: from_stack_1 = clsctacte.AbreTimo
  loc_C65D3C: FLdZeroAd var_3A8
  loc_C65D3F: CVarStr var_3B8
  loc_C65D42: ConcatVar var_3C8
  loc_C65D46: LitI4 9
  loc_C65D4B: FLdRfVar var_3D8
  loc_C65D4E: ImpAdCallFPR4  = Chr()
  loc_C65D53: FLdRfVar var_3D8
  loc_C65D56: ConcatVar var_3E8
  loc_C65D5A: ILdRf var_B8
  loc_C65D5D: CVarStr var_198
  loc_C65D60: ConcatVar var_3F8
  loc_C65D64: LitI4 9
  loc_C65D69: FLdRfVar var_408
  loc_C65D6C: ImpAdCallFPR4  = Chr()
  loc_C65D71: FLdRfVar var_408
  loc_C65D74: ConcatVar var_418
  loc_C65D78: ILdRf var_C0
  loc_C65D7B: CVarStr var_428
  loc_C65D7E: ConcatVar var_438
  loc_C65D82: LitI4 9
  loc_C65D87: FLdRfVar var_448
  loc_C65D8A: ImpAdCallFPR4  = Chr()
  loc_C65D8F: FLdRfVar var_448
  loc_C65D92: ConcatVar var_458
  loc_C65D96: ILdRf var_C4
  loc_C65D99: CVarStr var_468
  loc_C65D9C: ConcatVar var_478
  loc_C65DA0: LitI4 9
  loc_C65DA5: FLdRfVar var_488
  loc_C65DA8: ImpAdCallFPR4  = Chr()
  loc_C65DAD: FLdRfVar var_488
  loc_C65DB0: ConcatVar var_498
  loc_C65DB4: LitVarStr var_4A8, "No"
  loc_C65DB9: ConcatVar var_4B8
  loc_C65DBD: LitI4 9
  loc_C65DC2: FLdRfVar var_4C8
  loc_C65DC5: ImpAdCallFPR4  = Chr()
  loc_C65DCA: FLdRfVar var_4C8
  loc_C65DCD: ConcatVar var_4D8
  loc_C65DD1: FLdRfVar var_4DC
  loc_C65DD4: FLdPr Me
  loc_C65DD7: MemLdRfVar from_stack_1.global_52
  loc_C65DDA: NewIfNullPr clsctacte
  loc_C65DDD: from_stack_1 = clsctacte.NumeCtct
  loc_C65DE2: ILdRf var_4DC
  loc_C65DE5: CVarI4
  loc_C65DE9: ConcatVar var_4FC
  loc_C65DED: LitI4 9
  loc_C65DF2: FLdRfVar var_50C
  loc_C65DF5: ImpAdCallFPR4  = Chr()
  loc_C65DFA: FLdRfVar var_50C
  loc_C65DFD: ConcatVar var_51C
  loc_C65E01: FLdRfVar var_186
  loc_C65E04: FLdPr Me
  loc_C65E07: MemLdRfVar from_stack_1.global_52
  loc_C65E0A: NewIfNullPr clsctacte
  loc_C65E0D: from_stack_1 = clsctacte.MoviCtct
  loc_C65E12: FLdI2 var_186
  loc_C65E15: CVarI2 var_52C
  loc_C65E18: ConcatVar var_53C
  loc_C65E1C: CStrVarTmp
  loc_C65E1D: FStStr var_B4
  loc_C65E20: FFreeVar var_350 = "": var_360 = "": var_374 = "": var_384 = "": var_394 = "": var_3A4 = "": var_3B8 = "": var_3C8 = "": var_3D8 = "": var_3E8 = "": var_3F8 = "": var_408 = "": var_418 = "": var_438 = "": var_448 = "": var_458 = "": var_478 = "": var_488 = "": var_498 = "": var_4B8 = "": var_4C8 = "": var_4D8 = "": var_4FC = "": var_50C = "": var_51C = "": var_53C = "": var_124 = "": var_134 = "": var_148 = "": var_168 = "": var_178 = "": var_1B8 = "": var_1C8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_208 = "": var_218 = "": var_228 = "": var_238 = "": var_248 = "": var_258 = "": var_268 = "": var_278 = "": var_288 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2CC = "": var_2DC = "": var_2EC = "": var_2FC = "": var_30C = "": var_31C = "": var_32C = ""
  loc_C65E93: FLdRfVar var_B4
  loc_C65E96: CDargRef
  loc_C65E9A: FLdPr Me
  loc_C65E9D: VCallAd Control_ID_ctacteDeudaFlex
  loc_C65EA0: FStAdFunc var_F0
  loc_C65EA3: FLdPr var_F0
  loc_C65EA6: LateIdCall
  loc_C65EAE: FFree1Ad var_F0
  loc_C65EB1: FLdPr Me
  loc_C65EB4: MemLdRfVar from_stack_1.global_52
  loc_C65EB7: NewIfNullPr clsctacte
  loc_C65EBA: Call clsctacte.MoveSiguiente()
  loc_C65EBF: Branch loc_C654D0
  loc_C65EC2: LitI4 1
  loc_C65EC7: LitI4 1
  loc_C65ECC: LitVarStr var_110, "###,###,##0.00"
  loc_C65ED1: FStVarCopyObj var_124
  loc_C65ED4: FLdRfVar var_124
  loc_C65ED7: FLdRfVar var_CC
  loc_C65EDA: CVarRef
  loc_C65EDF: FLdRfVar var_134
  loc_C65EE2: ImpAdCallFPR4  = Format(, )
  loc_C65EE7: FLdRfVar var_134
  loc_C65EEA: CStrVarVal var_138
  loc_C65EEE: FLdPr Me
  loc_C65EF1: VCallAd Control_ID_txtTotaDere
  loc_C65EF4: FStAdFunc var_F0
  loc_C65EF7: FLdPr var_F0
  loc_C65EFA: Me.Text = from_stack_1
  loc_C65EFF: FFree1Str var_138
  loc_C65F02: FFree1Ad var_F0
  loc_C65F05: FFreeVar var_124 = ""
  loc_C65F0C: LitI4 1
  loc_C65F11: LitI4 1
  loc_C65F16: LitVarStr var_110, "###,###,##0.00"
  loc_C65F1B: FStVarCopyObj var_124
  loc_C65F1E: FLdRfVar var_124
  loc_C65F21: FLdRfVar var_D4
  loc_C65F24: CVarRef
  loc_C65F29: FLdRfVar var_134
  loc_C65F2C: ImpAdCallFPR4  = Format(, )
  loc_C65F31: FLdRfVar var_134
  loc_C65F34: CStrVarVal var_138
  loc_C65F38: FLdPr Me
  loc_C65F3B: VCallAd Control_ID_txtTotaReca
  loc_C65F3E: FStAdFunc var_F0
  loc_C65F41: FLdPr var_F0
  loc_C65F44: Me.Text = from_stack_1
  loc_C65F49: FFree1Str var_138
  loc_C65F4C: FFree1Ad var_F0
  loc_C65F4F: FFreeVar var_124 = ""
  loc_C65F56: LitI4 1
  loc_C65F5B: LitI4 1
  loc_C65F60: LitVarStr var_110, "###,###,##0.00"
  loc_C65F65: FStVarCopyObj var_124
  loc_C65F68: FLdRfVar var_124
  loc_C65F6B: FLdRfVar var_DC
  loc_C65F6E: CVarRef
  loc_C65F73: FLdRfVar var_134
  loc_C65F76: ImpAdCallFPR4  = Format(, )
  loc_C65F7B: FLdRfVar var_134
  loc_C65F7E: CStrVarVal var_138
  loc_C65F82: FLdPr Me
  loc_C65F85: VCallAd Control_ID_txtTotaApre
  loc_C65F88: FStAdFunc var_F0
  loc_C65F8B: FLdPr var_F0
  loc_C65F8E: Me.Text = from_stack_1
  loc_C65F93: FFree1Str var_138
  loc_C65F96: FFree1Ad var_F0
  loc_C65F99: FFreeVar var_124 = ""
  loc_C65FA0: LitI4 2
  loc_C65FA5: FLdRfVar var_CC
  loc_C65FA8: CVarRef
  loc_C65FAD: FLdRfVar var_124
  loc_C65FB0: ImpAdCallFPR4  = Round(, )
  loc_C65FB5: FLdRfVar var_124
  loc_C65FB8: LitI4 2
  loc_C65FBD: FLdRfVar var_D4
  loc_C65FC0: CVarRef
  loc_C65FC5: FLdRfVar var_134
  loc_C65FC8: ImpAdCallFPR4  = Round(, )
  loc_C65FCD: FLdRfVar var_134
  loc_C65FD0: AddVar var_148
  loc_C65FD4: LitI4 2
  loc_C65FD9: FLdRfVar var_DC
  loc_C65FDC: CVarRef
  loc_C65FE1: FLdRfVar var_168
  loc_C65FE4: ImpAdCallFPR4  = Round(, )
  loc_C65FE9: FLdRfVar var_168
  loc_C65FEC: AddVar var_178
  loc_C65FF0: CR4Var
  loc_C65FF1: FStFPR8 var_E4
  loc_C65FF4: FFreeVar var_124 = "": var_134 = "": var_148 = "": var_168 = ""
  loc_C66001: LitI4 1
  loc_C66006: LitI4 1
  loc_C6600B: LitVarStr var_110, "###,###,##0.00"
  loc_C66010: FStVarCopyObj var_124
  loc_C66013: FLdRfVar var_124
  loc_C66016: FLdRfVar var_E4
  loc_C66019: CVarRef
  loc_C6601E: FLdRfVar var_134
  loc_C66021: ImpAdCallFPR4  = Format(, )
  loc_C66026: FLdRfVar var_134
  loc_C66029: CStrVarVal var_138
  loc_C6602D: FLdPr Me
  loc_C66030: VCallAd Control_ID_txtTotal
  loc_C66033: FStAdFunc var_F0
  loc_C66036: FLdPr var_F0
  loc_C66039: Me.Text = from_stack_1
  loc_C6603E: FFree1Str var_138
  loc_C66041: FFree1Ad var_F0
  loc_C66044: FFreeVar var_124 = ""
  loc_C6604B: FLdPr Me
  loc_C6604E: VCallAd Control_ID_ctacteFlex
  loc_C66051: FStAdFunc var_F0
  loc_C66054: FLdPr var_F0
  loc_C66057: LateIdLdVar var_124 DispID_4 0
  loc_C6605E: CI4Var
  loc_C66060: LitI4 1
  loc_C66065: GtI4
  loc_C66066: FFree1Ad var_F0
  loc_C66069: FFree1Var var_124 = ""
  loc_C6606C: BranchF loc_C660A2
  loc_C6606F: LitI4 0
  loc_C66074: LitI4 0
  loc_C66079: FLdRfVar var_540
  loc_C6607C: Redim
  loc_C66086: FLdPr Me
  loc_C66089: VCallAd Control_ID_ConfirmarCmd
  loc_C6608C: CVarAd
  loc_C66090: ParmAry1St
  loc_C66096: FLdRfVar var_540
  loc_C66099: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_C6609E: FLdRfVar var_540
  loc_C660A1: Erase
  loc_C660A2: ExitProcHresult
End Sub

Private Sub NumeCtaCmd_Click() 'B1EDF4
  'Data Table: 4E5E1C
  loc_B1EB68: FLdRfVar var_8A
  loc_B1EB6B: FLdPr Me
  loc_B1EB6E: VCallAd Control_ID_OficinaCbo
  loc_B1EB71: FStAdFunc var_88
  loc_B1EB74: FLdPr var_88
  loc_B1EB77:  = Me.ListIndex
  loc_B1EB7C: FLdI2 var_8A
  loc_B1EB7F: FStI2 var_8C
  loc_B1EB82: FFree1Ad var_88
  loc_B1EB85: FLdI2 var_8C
  loc_B1EB88: LitI2_Byte 0
  loc_B1EB8A: EqI2
  loc_B1EB8B: BranchF loc_B1EB99
  loc_B1EB8E: LitI2_Byte 1
  loc_B1EB90: CUI1I2
  loc_B1EB92: ImpAdStUI1 MemVar_D93038
  loc_B1EB96: Branch loc_B1EBD2
  loc_B1EB99: FLdI2 var_8C
  loc_B1EB9C: LitI2_Byte 1
  loc_B1EB9E: EqI2
  loc_B1EB9F: BranchF loc_B1EBAD
  loc_B1EBA2: LitI2_Byte 2
  loc_B1EBA4: CUI1I2
  loc_B1EBA6: ImpAdStUI1 MemVar_D93038
  loc_B1EBAA: Branch loc_B1EBD2
  loc_B1EBAD: FLdI2 var_8C
  loc_B1EBB0: LitI2_Byte 2
  loc_B1EBB2: EqI2
  loc_B1EBB3: BranchF loc_B1EBC1
  loc_B1EBB6: LitI2_Byte 3
  loc_B1EBB8: CUI1I2
  loc_B1EBBA: ImpAdStUI1 MemVar_D93038
  loc_B1EBBE: Branch loc_B1EBD2
  loc_B1EBC1: FLdI2 var_8C
  loc_B1EBC4: LitI2_Byte 3
  loc_B1EBC6: EqI2
  loc_B1EBC7: BranchF loc_B1EBD2
  loc_B1EBCA: LitI2_Byte 4
  loc_B1EBCC: CUI1I2
  loc_B1EBCE: ImpAdStUI1 MemVar_D93038
  loc_B1EBD2: LitVar_Missing var_AC
  loc_B1EBD5: PopAdLdVar
  loc_B1EBD6: LitVarI4
  loc_B1EBDE: PopAdLdVar
  loc_B1EBDF: ImpAdLdRf MemVar_D94034
  loc_B1EBE2: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1EBE5: dlgBuscarPersonaPorOficinaCuenta.Show from_stack_1, from_stack_2
  loc_B1EBEA: FLdRfVar var_B0
  loc_B1EBED: FLdRfVar var_88
  loc_B1EBF0: ImpAdLdRf MemVar_D94034
  loc_B1EBF3: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1EBF6: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1EBFB: FLdPr var_88
  loc_B1EBFE: from_stack_1 = clsbase.RecordCount
  loc_B1EC03: ILdRf var_B0
  loc_B1EC06: LitI4 0
  loc_B1EC0B: GtI4
  loc_B1EC0C: FFree1Ad var_88
  loc_B1EC0F: BranchF loc_B1EDE0
  loc_B1EC12: FLdRfVar var_CC
  loc_B1EC15: FLdRfVar var_BC
  loc_B1EC18: LitVarStr var_9C, "CodiOfic"
  loc_B1EC1D: PopAdLdVar
  loc_B1EC1E: FLdRfVar var_B8
  loc_B1EC21: FLdRfVar var_B4
  loc_B1EC24: FLdRfVar var_88
  loc_B1EC27: ImpAdLdRf MemVar_D94034
  loc_B1EC2A: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1EC2D: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1EC32: FLdPr var_88
  loc_B1EC35: from_stack_1v = clsbase.RsFrmGet()
  loc_B1EC3A: FLdPr var_B4
  loc_B1EC3D:  = Me.Fields
  loc_B1EC42: FLdPr var_B8
  loc_B1EC45: from_stack_2 = Me.Item(from_stack_1)
  loc_B1EC4A: FLdPr var_BC
  loc_B1EC4D:  = Me.Value
  loc_B1EC52: FLdRfVar var_CC
  loc_B1EC55: FStVar var_DC
  loc_B1EC59: FFreeAd var_88 = "": var_B4 = "": var_B8 = ""
  loc_B1EC64: FLdRfVar var_DC
  loc_B1EC67: LitVarI2 var_9C, 1
  loc_B1EC6C: HardType
  loc_B1EC6D: EqVarBool
  loc_B1EC6F: BranchF loc_B1ECA9
  loc_B1EC72: FLdRfVar var_E0
  loc_B1EC75: LitI2_Byte 0
  loc_B1EC77: FLdPr Me
  loc_B1EC7A: VCallAd Control_ID_OficinaCbo
  loc_B1EC7D: FStAdFunc var_88
  loc_B1EC80: FLdPr var_88
  loc_B1EC83: from_stack_2 = Me.List(from_stack_1)
  loc_B1EC88: ILdRf var_E0
  loc_B1EC8B: FLdPr Me
  loc_B1EC8E: VCallAd Control_ID_OficinaCbo
  loc_B1EC91: FStAdFunc var_B4
  loc_B1EC94: FLdPr var_B4
  loc_B1EC97: Me.Text = from_stack_1
  loc_B1EC9C: FFree1Str var_E0
  loc_B1EC9F: FFreeAd var_88 = ""
  loc_B1ECA6: Branch loc_B1ED75
  loc_B1ECA9: FLdRfVar var_DC
  loc_B1ECAC: LitVarI2 var_9C, 2
  loc_B1ECB1: HardType
  loc_B1ECB2: EqVarBool
  loc_B1ECB4: BranchF loc_B1ECEE
  loc_B1ECB7: FLdRfVar var_E0
  loc_B1ECBA: LitI2_Byte 1
  loc_B1ECBC: FLdPr Me
  loc_B1ECBF: VCallAd Control_ID_OficinaCbo
  loc_B1ECC2: FStAdFunc var_88
  loc_B1ECC5: FLdPr var_88
  loc_B1ECC8: from_stack_2 = Me.List(from_stack_1)
  loc_B1ECCD: ILdRf var_E0
  loc_B1ECD0: FLdPr Me
  loc_B1ECD3: VCallAd Control_ID_OficinaCbo
  loc_B1ECD6: FStAdFunc var_B4
  loc_B1ECD9: FLdPr var_B4
  loc_B1ECDC: Me.Text = from_stack_1
  loc_B1ECE1: FFree1Str var_E0
  loc_B1ECE4: FFreeAd var_88 = ""
  loc_B1ECEB: Branch loc_B1ED75
  loc_B1ECEE: FLdRfVar var_DC
  loc_B1ECF1: LitVarI2 var_9C, 3
  loc_B1ECF6: HardType
  loc_B1ECF7: EqVarBool
  loc_B1ECF9: BranchF loc_B1ED33
  loc_B1ECFC: FLdRfVar var_E0
  loc_B1ECFF: LitI2_Byte 2
  loc_B1ED01: FLdPr Me
  loc_B1ED04: VCallAd Control_ID_OficinaCbo
  loc_B1ED07: FStAdFunc var_88
  loc_B1ED0A: FLdPr var_88
  loc_B1ED0D: from_stack_2 = Me.List(from_stack_1)
  loc_B1ED12: ILdRf var_E0
  loc_B1ED15: FLdPr Me
  loc_B1ED18: VCallAd Control_ID_OficinaCbo
  loc_B1ED1B: FStAdFunc var_B4
  loc_B1ED1E: FLdPr var_B4
  loc_B1ED21: Me.Text = from_stack_1
  loc_B1ED26: FFree1Str var_E0
  loc_B1ED29: FFreeAd var_88 = ""
  loc_B1ED30: Branch loc_B1ED75
  loc_B1ED33: FLdRfVar var_DC
  loc_B1ED36: LitVarI2 var_9C, 4
  loc_B1ED3B: HardType
  loc_B1ED3C: EqVarBool
  loc_B1ED3E: BranchF loc_B1ED75
  loc_B1ED41: FLdRfVar var_E0
  loc_B1ED44: LitI2_Byte 3
  loc_B1ED46: FLdPr Me
  loc_B1ED49: VCallAd Control_ID_OficinaCbo
  loc_B1ED4C: FStAdFunc var_88
  loc_B1ED4F: FLdPr var_88
  loc_B1ED52: from_stack_2 = Me.List(from_stack_1)
  loc_B1ED57: ILdRf var_E0
  loc_B1ED5A: FLdPr Me
  loc_B1ED5D: VCallAd Control_ID_OficinaCbo
  loc_B1ED60: FStAdFunc var_B4
  loc_B1ED63: FLdPr var_B4
  loc_B1ED66: Me.Text = from_stack_1
  loc_B1ED6B: FFree1Str var_E0
  loc_B1ED6E: FFreeAd var_88 = ""
  loc_B1ED75: FLdRfVar var_CC
  loc_B1ED78: FLdRfVar var_BC
  loc_B1ED7B: LitVarStr var_9C, "CuenCtct"
  loc_B1ED80: PopAdLdVar
  loc_B1ED81: FLdRfVar var_B8
  loc_B1ED84: FLdRfVar var_B4
  loc_B1ED87: FLdRfVar var_88
  loc_B1ED8A: ImpAdLdRf MemVar_D94034
  loc_B1ED8D: NewIfNullPr dlgBuscarPersonaPorOficinaCuenta
  loc_B1ED90: from_stack_1v = dlgBuscarPersonaPorOficinaCuenta.global_4587360Get()
  loc_B1ED95: FLdPr var_88
  loc_B1ED98: from_stack_1v = clsbase.RsFrmGet()
  loc_B1ED9D: FLdPr var_B4
  loc_B1EDA0:  = Me.Fields
  loc_B1EDA5: FLdPr var_B8
  loc_B1EDA8: from_stack_2 = Me.Item(from_stack_1)
  loc_B1EDAD: FLdPr var_BC
  loc_B1EDB0:  = Me.Value
  loc_B1EDB5: FLdRfVar var_CC
  loc_B1EDB8: CStrVarTmp
  loc_B1EDB9: FStStrNoPop var_E0
  loc_B1EDBC: FLdPr Me
  loc_B1EDBF: VCallAd Control_ID_NumeCtaTxt
  loc_B1EDC2: FStAdFunc var_E4
  loc_B1EDC5: FLdPr var_E4
  loc_B1EDC8: Me.Text = from_stack_1
  loc_B1EDCD: FFree1Str var_E0
  loc_B1EDD0: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_B1EDDD: FFree1Var var_CC = ""
  loc_B1EDE0: FLdPr Me
  loc_B1EDE3: VCallAd Control_ID_NumeCtaTxt
  loc_B1EDE6: CVarAd
  loc_B1EDEA: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B1EDEF: FFree1Var var_CC = ""
  loc_B1EDF2: ExitProcHresult
End Sub

Private Sub FechVencCmd_Click() 'A4F968
  'Data Table: 4E5E1C
  loc_A4F914: LitVar_Missing var_A4
  loc_A4F917: PopAdLdVar
  loc_A4F918: LitVarI4
  loc_A4F920: PopAdLdVar
  loc_A4F921: ImpAdLdRf MemVar_D930A4
  loc_A4F924: NewIfNullPr frmCalendario
  loc_A4F927: frmCalendario.Show from_stack_1, from_stack_2
  loc_A4F92C: ImpAdLdI4 MemVar_D93028
  loc_A4F92F: LitStr vbNullString
  loc_A4F932: NeStr
  loc_A4F934: BranchF loc_A4F952
  loc_A4F937: ImpAdLdRf MemVar_D93028
  loc_A4F93A: CDargRef
  loc_A4F93E: FLdPr Me
  loc_A4F941: VCallAd Control_ID_FechVencMsk
  loc_A4F944: FStAdFunc var_A8
  loc_A4F947: FLdPr var_A8
  loc_A4F94A: LateIdSt
  loc_A4F94F: FFree1Ad var_A8
  loc_A4F952: FLdPr Me
  loc_A4F955: VCallAd Control_ID_FechVencMsk
  loc_A4F958: CVarAd
  loc_A4F95C: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A4F961: FFree1Var var_B8 = ""
  loc_A4F964: ExitProcHresult
  loc_A4F967: EqCy
End Sub

Private Sub Form_Load() 'C0DFE4
  'Data Table: 4E5E1C
  loc_C0D654: LitVar_Missing var_94
  loc_C0D657: PopAdLdVar
  loc_C0D658: LitStr "Inmueble"
  loc_C0D65B: FLdPr Me
  loc_C0D65E: VCallAd Control_ID_OficinaCbo
  loc_C0D661: FStAdFunc var_98
  loc_C0D664: FLdPr var_98
  loc_C0D667: Me.AddItem from_stack_1, from_stack_2
  loc_C0D66C: FFree1Ad var_98
  loc_C0D66F: LitVar_Missing var_94
  loc_C0D672: PopAdLdVar
  loc_C0D673: LitStr "Comercio"
  loc_C0D676: FLdPr Me
  loc_C0D679: VCallAd Control_ID_OficinaCbo
  loc_C0D67C: FStAdFunc var_98
  loc_C0D67F: FLdPr var_98
  loc_C0D682: Me.AddItem from_stack_1, from_stack_2
  loc_C0D687: FFree1Ad var_98
  loc_C0D68A: LitVar_Missing var_94
  loc_C0D68D: PopAdLdVar
  loc_C0D68E: LitStr "Deudores Varios"
  loc_C0D691: FLdPr Me
  loc_C0D694: VCallAd Control_ID_OficinaCbo
  loc_C0D697: FStAdFunc var_98
  loc_C0D69A: FLdPr var_98
  loc_C0D69D: Me.AddItem from_stack_1, from_stack_2
  loc_C0D6A2: FFree1Ad var_98
  loc_C0D6A5: LitVar_Missing var_94
  loc_C0D6A8: PopAdLdVar
  loc_C0D6A9: LitStr "Cementerio"
  loc_C0D6AC: FLdPr Me
  loc_C0D6AF: VCallAd Control_ID_OficinaCbo
  loc_C0D6B2: FStAdFunc var_98
  loc_C0D6B5: FLdPr var_98
  loc_C0D6B8: Me.AddItem from_stack_1, from_stack_2
  loc_C0D6BD: FFree1Ad var_98
  loc_C0D6C0: LitI2_Byte 0
  loc_C0D6C2: FLdPr Me
  loc_C0D6C5: VCallAd Control_ID_OficinaCbo
  loc_C0D6C8: FStAdFunc var_98
  loc_C0D6CB: FLdPr var_98
  loc_C0D6CE: Me.ListIndex = from_stack_1
  loc_C0D6D3: FFree1Ad var_98
  loc_C0D6D6: LitStr "0"
  loc_C0D6D9: FLdPr Me
  loc_C0D6DC: VCallAd Control_ID_NumeCtaTxt
  loc_C0D6DF: FStAdFunc var_98
  loc_C0D6E2: FLdPr var_98
  loc_C0D6E5: Me.Text = from_stack_1
  loc_C0D6EA: FFree1Ad var_98
  loc_C0D6ED: LitI2_Byte 0
  loc_C0D6EF: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_C0D6F4: CStrDate
  loc_C0D6F6: CVarStr var_A8
  loc_C0D6F9: PopAdLdVar
  loc_C0D6FA: FLdPr Me
  loc_C0D6FD: VCallAd Control_ID_FechVencMsk
  loc_C0D700: FStAdFunc var_98
  loc_C0D703: FLdPr var_98
  loc_C0D706: LateIdSt
  loc_C0D70B: FFree1Ad var_98
  loc_C0D70E: FFree1Var var_A8 = ""
  loc_C0D711: FLdPr Me
  loc_C0D714: VCallAd Control_ID_ctacteFlex
  loc_C0D717: FStAdFunc var_AC
  loc_C0D71A: LitVarI4
  loc_C0D722: PopAdLdVar
  loc_C0D723: LitVarI4
  loc_C0D72B: PopAdLdVar
  loc_C0D72C: FLdPr var_AC
  loc_C0D72F: LateIdCallSt
  loc_C0D737: LitVarI4
  loc_C0D73F: PopAdLdVar
  loc_C0D740: LitVarI4
  loc_C0D748: PopAdLdVar
  loc_C0D749: FLdPr var_AC
  loc_C0D74C: LateIdCallSt
  loc_C0D754: LitVarI4
  loc_C0D75C: PopAdLdVar
  loc_C0D75D: LitVarI4
  loc_C0D765: PopAdLdVar
  loc_C0D766: FLdPr var_AC
  loc_C0D769: LateIdCallSt
  loc_C0D771: LitVarI4
  loc_C0D779: PopAdLdVar
  loc_C0D77A: LitVarI4
  loc_C0D782: PopAdLdVar
  loc_C0D783: FLdPr var_AC
  loc_C0D786: LateIdCallSt
  loc_C0D78E: LitVarI4
  loc_C0D796: PopAdLdVar
  loc_C0D797: LitVarI4
  loc_C0D79F: PopAdLdVar
  loc_C0D7A0: FLdPr var_AC
  loc_C0D7A3: LateIdCallSt
  loc_C0D7AB: LitVarI4
  loc_C0D7B3: PopAdLdVar
  loc_C0D7B4: LitVarI4
  loc_C0D7BC: PopAdLdVar
  loc_C0D7BD: FLdPr var_AC
  loc_C0D7C0: LateIdCallSt
  loc_C0D7C8: LitVarI4
  loc_C0D7D0: PopAdLdVar
  loc_C0D7D1: LitVarI4
  loc_C0D7D9: PopAdLdVar
  loc_C0D7DA: FLdPr var_AC
  loc_C0D7DD: LateIdCallSt
  loc_C0D7E5: LitVarI4
  loc_C0D7ED: PopAdLdVar
  loc_C0D7EE: LitVarI4
  loc_C0D7F6: PopAdLdVar
  loc_C0D7F7: FLdPr var_AC
  loc_C0D7FA: LateIdCallSt
  loc_C0D802: LitVarI4
  loc_C0D80A: PopAdLdVar
  loc_C0D80B: LitVarI4
  loc_C0D813: PopAdLdVar
  loc_C0D814: FLdPr var_AC
  loc_C0D817: LateIdCallSt
  loc_C0D81F: LitVarI4
  loc_C0D827: PopAdLdVar
  loc_C0D828: LitVarI4
  loc_C0D830: PopAdLdVar
  loc_C0D831: FLdPr var_AC
  loc_C0D834: LateIdCallSt
  loc_C0D83C: LitVarI4
  loc_C0D844: PopAdLdVar
  loc_C0D845: LitVarI4
  loc_C0D84D: PopAdLdVar
  loc_C0D84E: FLdPr var_AC
  loc_C0D851: LateIdCallSt
  loc_C0D859: LitVarI4
  loc_C0D861: PopAdLdVar
  loc_C0D862: LitVarI4
  loc_C0D86A: PopAdLdVar
  loc_C0D86B: FLdPr var_AC
  loc_C0D86E: LateIdCallSt
  loc_C0D876: LitVarI4
  loc_C0D87E: PopAdLdVar
  loc_C0D87F: LitVarI4
  loc_C0D887: PopAdLdVar
  loc_C0D888: FLdPr var_AC
  loc_C0D88B: LateIdCallSt
  loc_C0D893: LitVarI4
  loc_C0D89B: PopAdLdVar
  loc_C0D89C: LitVarI4
  loc_C0D8A4: PopAdLdVar
  loc_C0D8A5: FLdPr var_AC
  loc_C0D8A8: LateIdCallSt
  loc_C0D8B0: LitVarI4
  loc_C0D8B8: PopAdLdVar
  loc_C0D8B9: LitVarI4
  loc_C0D8C1: PopAdLdVar
  loc_C0D8C2: FLdPr var_AC
  loc_C0D8C5: LateIdCallSt
  loc_C0D8CD: LitVarI4
  loc_C0D8D5: PopAdLdVar
  loc_C0D8D6: LitVarI4
  loc_C0D8DE: PopAdLdVar
  loc_C0D8DF: FLdPr var_AC
  loc_C0D8E2: LateIdCallSt
  loc_C0D8EA: LitVarI4
  loc_C0D8F2: PopAdLdVar
  loc_C0D8F3: LitVarI4
  loc_C0D8FB: PopAdLdVar
  loc_C0D8FC: FLdPr var_AC
  loc_C0D8FF: LateIdCallSt
  loc_C0D907: LitVarI4
  loc_C0D90F: PopAdLdVar
  loc_C0D910: LitVarI4
  loc_C0D918: PopAdLdVar
  loc_C0D919: LitVarStr var_EC, "Of"
  loc_C0D91E: PopAdLdVar
  loc_C0D91F: FLdPr var_AC
  loc_C0D922: LateIdCallSt
  loc_C0D92A: LitVarI4
  loc_C0D932: PopAdLdVar
  loc_C0D933: LitVarI4
  loc_C0D93B: PopAdLdVar
  loc_C0D93C: LitVarStr var_EC, "Cuenta"
  loc_C0D941: PopAdLdVar
  loc_C0D942: FLdPr var_AC
  loc_C0D945: LateIdCallSt
  loc_C0D94D: LitVarI4
  loc_C0D955: PopAdLdVar
  loc_C0D956: LitVarI4
  loc_C0D95E: PopAdLdVar
  loc_C0D95F: LitVarStr var_EC, "Periodo"
  loc_C0D964: PopAdLdVar
  loc_C0D965: FLdPr var_AC
  loc_C0D968: LateIdCallSt
  loc_C0D970: LitVarI4
  loc_C0D978: PopAdLdVar
  loc_C0D979: LitVarI4
  loc_C0D981: PopAdLdVar
  loc_C0D982: LitVarStr var_EC, "Boleto"
  loc_C0D987: PopAdLdVar
  loc_C0D988: FLdPr var_AC
  loc_C0D98B: LateIdCallSt
  loc_C0D993: LitVarI4
  loc_C0D99B: PopAdLdVar
  loc_C0D99C: LitVarI4
  loc_C0D9A4: PopAdLdVar
  loc_C0D9A5: LitVarStr var_EC, "Emision"
  loc_C0D9AA: PopAdLdVar
  loc_C0D9AB: FLdPr var_AC
  loc_C0D9AE: LateIdCallSt
  loc_C0D9B6: LitVarI4
  loc_C0D9BE: PopAdLdVar
  loc_C0D9BF: LitVarI4
  loc_C0D9C7: PopAdLdVar
  loc_C0D9C8: LitVarStr var_EC, "Vencimiento"
  loc_C0D9CD: PopAdLdVar
  loc_C0D9CE: FLdPr var_AC
  loc_C0D9D1: LateIdCallSt
  loc_C0D9D9: LitVarI4
  loc_C0D9E1: PopAdLdVar
  loc_C0D9E2: LitVarI4
  loc_C0D9EA: PopAdLdVar
  loc_C0D9EB: LitVarStr var_EC, "Concepto"
  loc_C0D9F0: PopAdLdVar
  loc_C0D9F1: FLdPr var_AC
  loc_C0D9F4: LateIdCallSt
  loc_C0D9FC: LitVarI4
  loc_C0DA04: PopAdLdVar
  loc_C0DA05: LitVarI4
  loc_C0DA0D: PopAdLdVar
  loc_C0DA0E: LitVarStr var_EC, "Facilidad"
  loc_C0DA13: PopAdLdVar
  loc_C0DA14: FLdPr var_AC
  loc_C0DA17: LateIdCallSt
  loc_C0DA1F: LitVarI4
  loc_C0DA27: PopAdLdVar
  loc_C0DA28: LitVarI4
  loc_C0DA30: PopAdLdVar
  loc_C0DA31: LitVarStr var_EC, "Apremio"
  loc_C0DA36: PopAdLdVar
  loc_C0DA37: FLdPr var_AC
  loc_C0DA3A: LateIdCallSt
  loc_C0DA42: LitVarI4
  loc_C0DA4A: PopAdLdVar
  loc_C0DA4B: LitVarI4
  loc_C0DA53: PopAdLdVar
  loc_C0DA54: LitVarStr var_EC, "Exp/Comp"
  loc_C0DA59: PopAdLdVar
  loc_C0DA5A: FLdPr var_AC
  loc_C0DA5D: LateIdCallSt
  loc_C0DA65: LitVarI4
  loc_C0DA6D: PopAdLdVar
  loc_C0DA6E: LitVarI4
  loc_C0DA76: PopAdLdVar
  loc_C0DA77: LitVarStr var_EC, "Tipo Movi."
  loc_C0DA7C: PopAdLdVar
  loc_C0DA7D: FLdPr var_AC
  loc_C0DA80: LateIdCallSt
  loc_C0DA88: LitVarI4
  loc_C0DA90: PopAdLdVar
  loc_C0DA91: LitVarI4
  loc_C0DA99: PopAdLdVar
  loc_C0DA9A: LitVarStr var_EC, "Debito"
  loc_C0DA9F: PopAdLdVar
  loc_C0DAA0: FLdPr var_AC
  loc_C0DAA3: LateIdCallSt
  loc_C0DAAB: LitVarI4
  loc_C0DAB3: PopAdLdVar
  loc_C0DAB4: LitVarI4
  loc_C0DABC: PopAdLdVar
  loc_C0DABD: LitVarStr var_EC, "Recargo"
  loc_C0DAC2: PopAdLdVar
  loc_C0DAC3: FLdPr var_AC
  loc_C0DAC6: LateIdCallSt
  loc_C0DACE: LitVarI4
  loc_C0DAD6: PopAdLdVar
  loc_C0DAD7: LitVarI4
  loc_C0DADF: PopAdLdVar
  loc_C0DAE0: LitVarStr var_EC, "Saldo"
  loc_C0DAE5: PopAdLdVar
  loc_C0DAE6: FLdPr var_AC
  loc_C0DAE9: LateIdCallSt
  loc_C0DAF1: LitVarI4
  loc_C0DAF9: PopAdLdVar
  loc_C0DAFA: LitVarI4
  loc_C0DB02: PopAdLdVar
  loc_C0DB03: LitVarStr var_EC, "Sel"
  loc_C0DB08: PopAdLdVar
  loc_C0DB09: FLdPr var_AC
  loc_C0DB0C: LateIdCallSt
  loc_C0DB14: LitVarI4
  loc_C0DB1C: PopAdLdVar
  loc_C0DB1D: LitVarI4
  loc_C0DB25: PopAdLdVar
  loc_C0DB26: LitVarStr var_EC, "Numero"
  loc_C0DB2B: PopAdLdVar
  loc_C0DB2C: FLdPr var_AC
  loc_C0DB2F: LateIdCallSt
  loc_C0DB37: LitVarI4
  loc_C0DB3F: PopAdLdVar
  loc_C0DB40: LitVarI4
  loc_C0DB48: PopAdLdVar
  loc_C0DB49: LitVarStr var_EC, "Mov"
  loc_C0DB4E: PopAdLdVar
  loc_C0DB4F: FLdPr var_AC
  loc_C0DB52: LateIdCallSt
  loc_C0DB5A: LitNothing
  loc_C0DB5C: FStAd var_AC 
  loc_C0DB60: FLdPr Me
  loc_C0DB63: VCallAd Control_ID_ctacteDeudaFlex
  loc_C0DB66: FStAdFunc var_100
  loc_C0DB69: LitVarI4
  loc_C0DB71: PopAdLdVar
  loc_C0DB72: LitVarI4
  loc_C0DB7A: PopAdLdVar
  loc_C0DB7B: FLdPr var_100
  loc_C0DB7E: LateIdCallSt
  loc_C0DB86: LitVarI4
  loc_C0DB8E: PopAdLdVar
  loc_C0DB8F: LitVarI4
  loc_C0DB97: PopAdLdVar
  loc_C0DB98: FLdPr var_100
  loc_C0DB9B: LateIdCallSt
  loc_C0DBA3: LitVarI4
  loc_C0DBAB: PopAdLdVar
  loc_C0DBAC: LitVarI4
  loc_C0DBB4: PopAdLdVar
  loc_C0DBB5: FLdPr var_100
  loc_C0DBB8: LateIdCallSt
  loc_C0DBC0: LitVarI4
  loc_C0DBC8: PopAdLdVar
  loc_C0DBC9: LitVarI4
  loc_C0DBD1: PopAdLdVar
  loc_C0DBD2: FLdPr var_100
  loc_C0DBD5: LateIdCallSt
  loc_C0DBDD: LitVarI4
  loc_C0DBE5: PopAdLdVar
  loc_C0DBE6: LitVarI4
  loc_C0DBEE: PopAdLdVar
  loc_C0DBEF: FLdPr var_100
  loc_C0DBF2: LateIdCallSt
  loc_C0DBFA: LitVarI4
  loc_C0DC02: PopAdLdVar
  loc_C0DC03: LitVarI4
  loc_C0DC0B: PopAdLdVar
  loc_C0DC0C: FLdPr var_100
  loc_C0DC0F: LateIdCallSt
  loc_C0DC17: LitVarI4
  loc_C0DC1F: PopAdLdVar
  loc_C0DC20: LitVarI4
  loc_C0DC28: PopAdLdVar
  loc_C0DC29: FLdPr var_100
  loc_C0DC2C: LateIdCallSt
  loc_C0DC34: LitVarI4
  loc_C0DC3C: PopAdLdVar
  loc_C0DC3D: LitVarI4
  loc_C0DC45: PopAdLdVar
  loc_C0DC46: FLdPr var_100
  loc_C0DC49: LateIdCallSt
  loc_C0DC51: LitVarI4
  loc_C0DC59: PopAdLdVar
  loc_C0DC5A: LitVarI4
  loc_C0DC62: PopAdLdVar
  loc_C0DC63: FLdPr var_100
  loc_C0DC66: LateIdCallSt
  loc_C0DC6E: LitVarI4
  loc_C0DC76: PopAdLdVar
  loc_C0DC77: LitVarI4
  loc_C0DC7F: PopAdLdVar
  loc_C0DC80: FLdPr var_100
  loc_C0DC83: LateIdCallSt
  loc_C0DC8B: LitVarI4
  loc_C0DC93: PopAdLdVar
  loc_C0DC94: LitVarI4
  loc_C0DC9C: PopAdLdVar
  loc_C0DC9D: FLdPr var_100
  loc_C0DCA0: LateIdCallSt
  loc_C0DCA8: LitVarI4
  loc_C0DCB0: PopAdLdVar
  loc_C0DCB1: LitVarI4
  loc_C0DCB9: PopAdLdVar
  loc_C0DCBA: FLdPr var_100
  loc_C0DCBD: LateIdCallSt
  loc_C0DCC5: LitVarI4
  loc_C0DCCD: PopAdLdVar
  loc_C0DCCE: LitVarI4
  loc_C0DCD6: PopAdLdVar
  loc_C0DCD7: FLdPr var_100
  loc_C0DCDA: LateIdCallSt
  loc_C0DCE2: LitVarI4
  loc_C0DCEA: PopAdLdVar
  loc_C0DCEB: LitVarI4
  loc_C0DCF3: PopAdLdVar
  loc_C0DCF4: FLdPr var_100
  loc_C0DCF7: LateIdCallSt
  loc_C0DCFF: LitVarI4
  loc_C0DD07: PopAdLdVar
  loc_C0DD08: LitVarI4
  loc_C0DD10: PopAdLdVar
  loc_C0DD11: FLdPr var_100
  loc_C0DD14: LateIdCallSt
  loc_C0DD1C: LitVarI4
  loc_C0DD24: PopAdLdVar
  loc_C0DD25: LitVarI4
  loc_C0DD2D: PopAdLdVar
  loc_C0DD2E: FLdPr var_100
  loc_C0DD31: LateIdCallSt
  loc_C0DD39: LitVarI4
  loc_C0DD41: PopAdLdVar
  loc_C0DD42: LitVarI4
  loc_C0DD4A: PopAdLdVar
  loc_C0DD4B: FLdPr var_100
  loc_C0DD4E: LateIdCallSt
  loc_C0DD56: LitVarI4
  loc_C0DD5E: PopAdLdVar
  loc_C0DD5F: LitVarI4
  loc_C0DD67: PopAdLdVar
  loc_C0DD68: LitVarStr var_EC, "Of"
  loc_C0DD6D: PopAdLdVar
  loc_C0DD6E: FLdPr var_100
  loc_C0DD71: LateIdCallSt
  loc_C0DD79: LitVarI4
  loc_C0DD81: PopAdLdVar
  loc_C0DD82: LitVarI4
  loc_C0DD8A: PopAdLdVar
  loc_C0DD8B: LitVarStr var_EC, "Cuenta"
  loc_C0DD90: PopAdLdVar
  loc_C0DD91: FLdPr var_100
  loc_C0DD94: LateIdCallSt
  loc_C0DD9C: LitVarI4
  loc_C0DDA4: PopAdLdVar
  loc_C0DDA5: LitVarI4
  loc_C0DDAD: PopAdLdVar
  loc_C0DDAE: LitVarStr var_EC, "Periodo"
  loc_C0DDB3: PopAdLdVar
  loc_C0DDB4: FLdPr var_100
  loc_C0DDB7: LateIdCallSt
  loc_C0DDBF: LitVarI4
  loc_C0DDC7: PopAdLdVar
  loc_C0DDC8: LitVarI4
  loc_C0DDD0: PopAdLdVar
  loc_C0DDD1: LitVarStr var_EC, "Boleto"
  loc_C0DDD6: PopAdLdVar
  loc_C0DDD7: FLdPr var_100
  loc_C0DDDA: LateIdCallSt
  loc_C0DDE2: LitVarI4
  loc_C0DDEA: PopAdLdVar
  loc_C0DDEB: LitVarI4
  loc_C0DDF3: PopAdLdVar
  loc_C0DDF4: LitVarStr var_EC, "Emision"
  loc_C0DDF9: PopAdLdVar
  loc_C0DDFA: FLdPr var_100
  loc_C0DDFD: LateIdCallSt
  loc_C0DE05: LitVarI4
  loc_C0DE0D: PopAdLdVar
  loc_C0DE0E: LitVarI4
  loc_C0DE16: PopAdLdVar
  loc_C0DE17: LitVarStr var_EC, "Vencimiento"
  loc_C0DE1C: PopAdLdVar
  loc_C0DE1D: FLdPr var_100
  loc_C0DE20: LateIdCallSt
  loc_C0DE28: LitVarI4
  loc_C0DE30: PopAdLdVar
  loc_C0DE31: LitVarI4
  loc_C0DE39: PopAdLdVar
  loc_C0DE3A: LitVarStr var_EC, "Concepto"
  loc_C0DE3F: PopAdLdVar
  loc_C0DE40: FLdPr var_100
  loc_C0DE43: LateIdCallSt
  loc_C0DE4B: LitVarI4
  loc_C0DE53: PopAdLdVar
  loc_C0DE54: LitVarI4
  loc_C0DE5C: PopAdLdVar
  loc_C0DE5D: LitVarStr var_EC, "Facilidad"
  loc_C0DE62: PopAdLdVar
  loc_C0DE63: FLdPr var_100
  loc_C0DE66: LateIdCallSt
  loc_C0DE6E: LitVarI4
  loc_C0DE76: PopAdLdVar
  loc_C0DE77: LitVarI4
  loc_C0DE7F: PopAdLdVar
  loc_C0DE80: LitVarStr var_EC, "Apremio"
  loc_C0DE85: PopAdLdVar
  loc_C0DE86: FLdPr var_100
  loc_C0DE89: LateIdCallSt
  loc_C0DE91: LitVarI4
  loc_C0DE99: PopAdLdVar
  loc_C0DE9A: LitVarI4
  loc_C0DEA2: PopAdLdVar
  loc_C0DEA3: LitVarStr var_EC, "Exp/Comp"
  loc_C0DEA8: PopAdLdVar
  loc_C0DEA9: FLdPr var_100
  loc_C0DEAC: LateIdCallSt
  loc_C0DEB4: LitVarI4
  loc_C0DEBC: PopAdLdVar
  loc_C0DEBD: LitVarI4
  loc_C0DEC5: PopAdLdVar
  loc_C0DEC6: LitVarStr var_EC, "Tipo Movi."
  loc_C0DECB: PopAdLdVar
  loc_C0DECC: FLdPr var_100
  loc_C0DECF: LateIdCallSt
  loc_C0DED7: LitVarI4
  loc_C0DEDF: PopAdLdVar
  loc_C0DEE0: LitVarI4
  loc_C0DEE8: PopAdLdVar
  loc_C0DEE9: LitVarStr var_EC, "Debito"
  loc_C0DEEE: PopAdLdVar
  loc_C0DEEF: FLdPr var_100
  loc_C0DEF2: LateIdCallSt
  loc_C0DEFA: LitVarI4
  loc_C0DF02: PopAdLdVar
  loc_C0DF03: LitVarI4
  loc_C0DF0B: PopAdLdVar
  loc_C0DF0C: LitVarStr var_EC, "Recargo"
  loc_C0DF11: PopAdLdVar
  loc_C0DF12: FLdPr var_100
  loc_C0DF15: LateIdCallSt
  loc_C0DF1D: LitVarI4
  loc_C0DF25: PopAdLdVar
  loc_C0DF26: LitVarI4
  loc_C0DF2E: PopAdLdVar
  loc_C0DF2F: LitVarStr var_EC, "Saldo"
  loc_C0DF34: PopAdLdVar
  loc_C0DF35: FLdPr var_100
  loc_C0DF38: LateIdCallSt
  loc_C0DF40: LitVarI4
  loc_C0DF48: PopAdLdVar
  loc_C0DF49: LitVarI4
  loc_C0DF51: PopAdLdVar
  loc_C0DF52: LitVarStr var_EC, "Sel"
  loc_C0DF57: PopAdLdVar
  loc_C0DF58: FLdPr var_100
  loc_C0DF5B: LateIdCallSt
  loc_C0DF63: LitVarI4
  loc_C0DF6B: PopAdLdVar
  loc_C0DF6C: LitVarI4
  loc_C0DF74: PopAdLdVar
  loc_C0DF75: LitVarStr var_EC, "Numero"
  loc_C0DF7A: PopAdLdVar
  loc_C0DF7B: FLdPr var_100
  loc_C0DF7E: LateIdCallSt
  loc_C0DF86: LitVarI4
  loc_C0DF8E: PopAdLdVar
  loc_C0DF8F: LitVarI4
  loc_C0DF97: PopAdLdVar
  loc_C0DF98: LitVarStr var_EC, "Mov"
  loc_C0DF9D: PopAdLdVar
  loc_C0DF9E: FLdPr var_100
  loc_C0DFA1: LateIdCallSt
  loc_C0DFA9: LitNothing
  loc_C0DFAB: FStAd var_100 
  loc_C0DFAF: LitI4 0
  loc_C0DFB4: LitI4 0
  loc_C0DFB9: FLdRfVar var_104
  loc_C0DFBC: Redim
  loc_C0DFC6: FLdPr Me
  loc_C0DFC9: VCallAd Control_ID_ConfirmarCmd
  loc_C0DFCC: CVarAd
  loc_C0DFD0: ParmAry1St
  loc_C0DFD6: FLdRfVar var_104
  loc_C0DFD9: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_C0DFDE: FLdRfVar var_104
  loc_C0DFE1: Erase
  loc_C0DFE2: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9B9958
  'Data Table: 4E5E1C
  loc_9B9944: ILdI2 KeyCode
  loc_9B9947: CI4UI1
  loc_9B9948: LitI4 &H78
  loc_9B994D: EqI4
  loc_9B994E: BranchF loc_9B9956
  loc_9B9951: Call SalirCmd_Click()
  loc_9B9956: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_0 '9BB580
  'Data Table: 4E5E1C
  loc_9BB56C: FLdPr Me
  loc_9BB56F: VCallAd Control_ID_FechVencMsk
  loc_9BB572: CVarAd
  loc_9BB576: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_9BB57B: FFree1Var var_94 = ""
  loc_9BB57E: ExitProcHresult
End Sub

Private Sub FechVencMsk_UnknownEvent_8 'ABC9FC
  'Data Table: 4E5E1C
  loc_ABC904: FLdPr Me
  loc_ABC907: VCallAd Control_ID_FechVencMsk
  loc_ABC90A: FStAdFunc var_88
  loc_ABC90D: FLdPr var_88
  loc_ABC910: LateIdLdVar var_98 DispID_13 -32767
  loc_ABC917: CBoolVar
  loc_ABC919: LitI2_Byte &HFF
  loc_ABC91B: EqI2
  loc_ABC91C: FFree1Ad var_88
  loc_ABC91F: FFree1Var var_98 = ""
  loc_ABC922: BranchF loc_ABC9FA
  loc_ABC925: LitVarStr var_A8, vbNullString
  loc_ABC92A: PopAdLdVar
  loc_ABC92B: FLdPr Me
  loc_ABC92E: VCallAd Control_ID_FechVencMsk
  loc_ABC931: FStAdFunc var_88
  loc_ABC934: FLdPr var_88
  loc_ABC937: LateIdSt
  loc_ABC93C: FFree1Ad var_88
  loc_ABC93F: FLdPr Me
  loc_ABC942: VCallAd Control_ID_FechVencMsk
  loc_ABC945: FStAdFunc var_88
  loc_ABC948: FLdPr var_88
  loc_ABC94B: LateIdLdVar var_98 DispID_22 0
  loc_ABC952: CStrVarTmp
  loc_ABC953: FStStrNoPop var_BC
  loc_ABC956: ImpAdCallI2 Proc_18_6_A08898()
  loc_ABC95B: FStStrNoPop var_C0
  loc_ABC95E: FLdPr Me
  loc_ABC961: MemStStrCopy
  loc_ABC965: FFreeStr var_BC = ""
  loc_ABC96C: FFree1Ad var_88
  loc_ABC96F: FFree1Var var_98 = ""
  loc_ABC972: LitVarStr var_A8, "##/##/####"
  loc_ABC977: PopAdLdVar
  loc_ABC978: FLdPr Me
  loc_ABC97B: VCallAd Control_ID_FechVencMsk
  loc_ABC97E: FStAdFunc var_88
  loc_ABC981: FLdPr var_88
  loc_ABC984: LateIdSt
  loc_ABC989: FFree1Ad var_88
  loc_ABC98C: LitVarI2 var_A8, 10
  loc_ABC991: PopAdLdVar
  loc_ABC992: FLdPr Me
  loc_ABC995: VCallAd Control_ID_FechVencMsk
  loc_ABC998: FStAdFunc var_88
  loc_ABC99B: FLdPr var_88
  loc_ABC99E: LateIdSt
  loc_ABC9A3: FFree1Ad var_88
  loc_ABC9A6: FLdPr Me
  loc_ABC9A9: MemLdStr global_92
  loc_ABC9AC: LitStr vbNullString
  loc_ABC9AF: NeStr
  loc_ABC9B1: BranchF loc_ABC9FA
  loc_ABC9B4: FLdPr Me
  loc_ABC9B7: MemLdStr global_92
  loc_ABC9BA: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABC9BF: LitI2_Byte 0
  loc_ABC9C1: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_ABC9C6: CStrDate
  loc_ABC9C8: CVarStr var_98
  loc_ABC9CB: PopAdLdVar
  loc_ABC9CC: FLdPr Me
  loc_ABC9CF: VCallAd Control_ID_FechVencMsk
  loc_ABC9D2: FStAdFunc var_88
  loc_ABC9D5: FLdPr var_88
  loc_ABC9D8: LateIdSt
  loc_ABC9DD: FFree1Ad var_88
  loc_ABC9E0: FFree1Var var_98 = ""
  loc_ABC9E3: FLdPr Me
  loc_ABC9E6: VCallAd Control_ID_FechVencMsk
  loc_ABC9E9: CVarAd
  loc_ABC9ED: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_ABC9F2: FFree1Var var_98 = ""
  loc_ABC9F5: LitI2_Byte &HFF
  loc_ABC9F7: IStI2 KeyCode
  loc_ABC9FA: ExitProcHresult
End Sub

Private Sub SeleTodoChk_Click() 'B3FFC0
  'Data Table: 4E5E1C
  loc_B3FC88: LitI2_Byte 0
  loc_B3FC8A: CR8I2
  loc_B3FC8B: FLdPr Me
  loc_B3FC8E: MemStFPR8 global_64
  loc_B3FC91: LitI2_Byte 0
  loc_B3FC93: CR8I2
  loc_B3FC94: FLdPr Me
  loc_B3FC97: MemStFPR8 global_72
  loc_B3FC9A: LitI2_Byte 1
  loc_B3FC9C: FLdPr Me
  loc_B3FC9F: MemLdRfVar from_stack_1.global_60
  loc_B3FCA2: FLdPr Me
  loc_B3FCA5: VCallAd Control_ID_ctacteFlex
  loc_B3FCA8: FStAdFunc var_88
  loc_B3FCAB: FLdPr var_88
  loc_B3FCAE: LateIdLdVar var_98 DispID_4 0
  loc_B3FCB5: CI4Var
  loc_B3FCB7: LitI4 1
  loc_B3FCBC: SubI4
  loc_B3FCBD: CI2I4
  loc_B3FCBE: FFree1Ad var_88
  loc_B3FCC1: FFree1Var var_98 = ""
  loc_B3FCC4: ForI2 var_9C
  loc_B3FCCA: FLdPr Me
  loc_B3FCCD: MemLdI2 global_60
  loc_B3FCD0: CI4UI1
  loc_B3FCD1: CVarI4
  loc_B3FCD5: PopAdLdVar
  loc_B3FCD6: LitVarI4
  loc_B3FCDE: PopAdLdVar
  loc_B3FCDF: FLdPr Me
  loc_B3FCE2: VCallAd Control_ID_ctacteFlex
  loc_B3FCE5: FStAdFunc var_88
  loc_B3FCE8: FLdPr var_88
  loc_B3FCEB: LateIdCallLdVar
  loc_B3FCF5: CStrVarTmp
  loc_B3FCF6: FStStrNoPop var_E0
  loc_B3FCF9: CI2Str
  loc_B3FCFB: LitI2_Byte 0
  loc_B3FCFD: EqI2
  loc_B3FCFE: FFree1Str var_E0
  loc_B3FD01: FFree1Ad var_88
  loc_B3FD04: FFree1Var var_98 = ""
  loc_B3FD07: BranchF loc_B3FF64
  loc_B3FD0A: FLdPr Me
  loc_B3FD0D: MemLdI2 global_60
  loc_B3FD10: CI4UI1
  loc_B3FD11: CVarI4
  loc_B3FD15: PopAdLdVar
  loc_B3FD16: FLdPr Me
  loc_B3FD19: VCallAd Control_ID_ctacteFlex
  loc_B3FD1C: FStAdFunc var_88
  loc_B3FD1F: FLdPr var_88
  loc_B3FD22: LateIdSt
  loc_B3FD27: FFree1Ad var_88
  loc_B3FD2A: LitI2_Byte 0
  loc_B3FD2C: FLdPr Me
  loc_B3FD2F: MemLdRfVar from_stack_1.global_62
  loc_B3FD32: FLdPr Me
  loc_B3FD35: VCallAd Control_ID_ctacteFlex
  loc_B3FD38: FStAdFunc var_88
  loc_B3FD3B: FLdPr var_88
  loc_B3FD3E: LateIdLdVar var_98 DispID_5 0
  loc_B3FD45: CI4Var
  loc_B3FD47: LitI4 1
  loc_B3FD4C: SubI4
  loc_B3FD4D: CI2I4
  loc_B3FD4E: FFree1Ad var_88
  loc_B3FD51: FFree1Var var_98 = ""
  loc_B3FD54: ForI2 var_E4
  loc_B3FD5A: FLdPr Me
  loc_B3FD5D: MemLdI2 global_62
  loc_B3FD60: CI4UI1
  loc_B3FD61: CVarI4
  loc_B3FD65: PopAdLdVar
  loc_B3FD66: FLdPr Me
  loc_B3FD69: VCallAd Control_ID_ctacteFlex
  loc_B3FD6C: FStAdFunc var_88
  loc_B3FD6F: FLdPr var_88
  loc_B3FD72: LateIdSt
  loc_B3FD77: FFree1Ad var_88
  loc_B3FD7A: FLdRfVar var_E6
  loc_B3FD7D: FLdPr Me
  loc_B3FD80: VCallAd Control_ID_SeleTodoChk
  loc_B3FD83: FStAdFunc var_88
  loc_B3FD86: FLdPr var_88
  loc_B3FD89:  = Me.Value
  loc_B3FD8E: FLdI2 var_E6
  loc_B3FD91: LitI2_Byte 0
  loc_B3FD93: EqI2
  loc_B3FD94: FFree1Ad var_88
  loc_B3FD97: BranchF loc_B3FE1F
  loc_B3FD9A: LitVarI4
  loc_B3FDA2: PopAdLdVar
  loc_B3FDA3: FLdPr Me
  loc_B3FDA6: VCallAd Control_ID_ctacteFlex
  loc_B3FDA9: FStAdFunc var_88
  loc_B3FDAC: FLdPr var_88
  loc_B3FDAF: LateIdSt
  loc_B3FDB4: FFree1Ad var_88
  loc_B3FDB7: FLdPr Me
  loc_B3FDBA: VCallAd Control_ID_ctacteFlex
  loc_B3FDBD: FStAdFunc var_88
  loc_B3FDC0: FLdPr var_88
  loc_B3FDC3: LateIdLdVar var_98 DispID_10 0
  loc_B3FDCA: CI4Var
  loc_B3FDCC: CVarI4
  loc_B3FDD0: PopAdLdVar
  loc_B3FDD1: LitVarI4
  loc_B3FDD9: PopAdLdVar
  loc_B3FDDA: LitVarStr var_F8, "No"
  loc_B3FDDF: PopAdLdVar
  loc_B3FDE0: FLdPr Me
  loc_B3FDE3: VCallAd Control_ID_ctacteFlex
  loc_B3FDE6: FStAdFunc var_10C
  loc_B3FDE9: FLdPr var_10C
  loc_B3FDEC: LateIdCallSt
  loc_B3FDF4: FFreeAd var_88 = ""
  loc_B3FDFB: FFree1Var var_98 = ""
  loc_B3FDFE: FLdPr Me
  loc_B3FE01: MemLdI2 global_62
  loc_B3FE04: LitI2_Byte &HD
  loc_B3FE06: EqI2
  loc_B3FE07: BranchF loc_B3FE1C
  loc_B3FE0A: LitI2_Byte 0
  loc_B3FE0C: CR8I2
  loc_B3FE0D: FLdPr Me
  loc_B3FE10: MemStFPR8 global_64
  loc_B3FE13: LitI2_Byte 0
  loc_B3FE15: CR8I2
  loc_B3FE16: FLdPr Me
  loc_B3FE19: MemStFPR8 global_72
  loc_B3FE1C: Branch loc_B3FF59
  loc_B3FE1F: LitVarI4
  loc_B3FE27: PopAdLdVar
  loc_B3FE28: FLdPr Me
  loc_B3FE2B: VCallAd Control_ID_ctacteFlex
  loc_B3FE2E: FStAdFunc var_88
  loc_B3FE31: FLdPr var_88
  loc_B3FE34: LateIdSt
  loc_B3FE39: FFree1Ad var_88
  loc_B3FE3C: FLdPr Me
  loc_B3FE3F: VCallAd Control_ID_ctacteFlex
  loc_B3FE42: FStAdFunc var_88
  loc_B3FE45: FLdPr var_88
  loc_B3FE48: LateIdLdVar var_98 DispID_10 0
  loc_B3FE4F: CI4Var
  loc_B3FE51: CVarI4
  loc_B3FE55: PopAdLdVar
  loc_B3FE56: LitVarI4
  loc_B3FE5E: PopAdLdVar
  loc_B3FE5F: LitVarStr var_F8, "Si"
  loc_B3FE64: PopAdLdVar
  loc_B3FE65: FLdPr Me
  loc_B3FE68: VCallAd Control_ID_ctacteFlex
  loc_B3FE6B: FStAdFunc var_10C
  loc_B3FE6E: FLdPr var_10C
  loc_B3FE71: LateIdCallSt
  loc_B3FE79: FFreeAd var_88 = ""
  loc_B3FE80: FFree1Var var_98 = ""
  loc_B3FE83: FLdPr Me
  loc_B3FE86: MemLdI2 global_62
  loc_B3FE89: LitI2_Byte &HD
  loc_B3FE8B: EqI2
  loc_B3FE8C: BranchF loc_B3FF59
  loc_B3FE8F: FLdPr Me
  loc_B3FE92: VCallAd Control_ID_ctacteFlex
  loc_B3FE95: FStAdFunc var_88
  loc_B3FE98: FLdPr var_88
  loc_B3FE9B: LateIdLdVar var_98 DispID_10 0
  loc_B3FEA2: CI4Var
  loc_B3FEA4: CVarI4
  loc_B3FEA8: PopAdLdVar
  loc_B3FEA9: FLdPr Me
  loc_B3FEAC: MemLdI2 global_62
  loc_B3FEAF: CI4UI1
  loc_B3FEB0: CVarI4
  loc_B3FEB4: PopAdLdVar
  loc_B3FEB5: FLdPr Me
  loc_B3FEB8: VCallAd Control_ID_ctacteFlex
  loc_B3FEBB: FStAdFunc var_10C
  loc_B3FEBE: FLdPr var_10C
  loc_B3FEC1: LateIdCallLdVar
  loc_B3FECB: PopAd
  loc_B3FECD: FLdPr Me
  loc_B3FED0: MemLdFPR8 global_64
  loc_B3FED3: FLdRfVar var_11C
  loc_B3FED6: CStrVarTmp
  loc_B3FED7: FStStrNoPop var_E0
  loc_B3FEDA: CR8Str
  loc_B3FEDC: AddR8
  loc_B3FEDD: FLdPr Me
  loc_B3FEE0: MemStFPR8 global_64
  loc_B3FEE3: FFree1Str var_E0
  loc_B3FEE6: FFreeAd var_88 = ""
  loc_B3FEED: FFreeVar var_98 = ""
  loc_B3FEF4: FLdPr Me
  loc_B3FEF7: VCallAd Control_ID_ctacteFlex
  loc_B3FEFA: FStAdFunc var_88
  loc_B3FEFD: FLdPr var_88
  loc_B3FF00: LateIdLdVar var_98 DispID_10 0
  loc_B3FF07: CI4Var
  loc_B3FF09: CVarI4
  loc_B3FF0D: PopAdLdVar
  loc_B3FF0E: FLdPr Me
  loc_B3FF11: MemLdI2 global_62
  loc_B3FF14: CI4UI1
  loc_B3FF15: CVarI4
  loc_B3FF19: PopAdLdVar
  loc_B3FF1A: FLdPr Me
  loc_B3FF1D: VCallAd Control_ID_ctacteFlex
  loc_B3FF20: FStAdFunc var_10C
  loc_B3FF23: FLdPr var_10C
  loc_B3FF26: LateIdCallLdVar
  loc_B3FF30: PopAd
  loc_B3FF32: FLdPr Me
  loc_B3FF35: MemLdFPR8 global_72
  loc_B3FF38: FLdRfVar var_11C
  loc_B3FF3B: CStrVarTmp
  loc_B3FF3C: FStStrNoPop var_E0
  loc_B3FF3F: CR8Str
  loc_B3FF41: SubR4
  loc_B3FF42: FLdPr Me
  loc_B3FF45: MemStFPR8 global_72
  loc_B3FF48: FFree1Str var_E0
  loc_B3FF4B: FFreeAd var_88 = ""
  loc_B3FF52: FFreeVar var_98 = ""
  loc_B3FF59: FLdPr Me
  loc_B3FF5C: MemLdRfVar from_stack_1.global_62
  loc_B3FF5F: NextI2 var_E4, loc_B3FD5A
  loc_B3FF64: FLdPr Me
  loc_B3FF67: MemLdRfVar from_stack_1.global_60
  loc_B3FF6A: NextI2 var_9C, loc_B3FCCA
  loc_B3FF6F: LitI4 1
  loc_B3FF74: LitI4 1
  loc_B3FF79: LitVarStr var_BC, "0.00"
  loc_B3FF7E: FStVarCopyObj var_98
  loc_B3FF81: FLdRfVar var_98
  loc_B3FF84: FLdPr Me
  loc_B3FF87: MemLdRfVar from_stack_1.global_64
  loc_B3FF8A: CVarRef
  loc_B3FF8F: FLdRfVar var_11C
  loc_B3FF92: ImpAdCallFPR4  = Format(, )
  loc_B3FF97: FLdRfVar var_11C
  loc_B3FF9A: CStrVarVal var_E0
  loc_B3FF9E: FLdPr Me
  loc_B3FFA1: VCallAd Control_ID_txtTotaSele
  loc_B3FFA4: FStAdFunc var_88
  loc_B3FFA7: FLdPr var_88
  loc_B3FFAA: Me.Text = from_stack_1
  loc_B3FFAF: FFree1Str var_E0
  loc_B3FFB2: FFree1Ad var_88
  loc_B3FFB5: FFreeVar var_98 = ""
  loc_B3FFBC: ExitProcHresult
  loc_B3FFBD: LdPrVar
End Sub

Private Sub OficinaCbo_Click() 'B27048
  'Data Table: 4E5E1C
  loc_B26DA8: FLdRfVar var_8A
  loc_B26DAB: FLdPr Me
  loc_B26DAE: VCallAd Control_ID_OficinaCbo
  loc_B26DB1: FStAdFunc var_88
  loc_B26DB4: FLdPr var_88
  loc_B26DB7:  = Me.ListIndex
  loc_B26DBC: FLdI2 var_8A
  loc_B26DBF: FStI2 var_8C
  loc_B26DC2: FFree1Ad var_88
  loc_B26DC5: FLdI2 var_8C
  loc_B26DC8: LitI2_Byte 0
  loc_B26DCA: EqI2
  loc_B26DCB: BranchF loc_B26DD9
  loc_B26DCE: LitI2_Byte 1
  loc_B26DD0: CUI1I2
  loc_B26DD2: ImpAdStUI1 MemVar_D93038
  loc_B26DD6: Branch loc_B26E12
  loc_B26DD9: FLdI2 var_8C
  loc_B26DDC: LitI2_Byte 1
  loc_B26DDE: EqI2
  loc_B26DDF: BranchF loc_B26DED
  loc_B26DE2: LitI2_Byte 2
  loc_B26DE4: CUI1I2
  loc_B26DE6: ImpAdStUI1 MemVar_D93038
  loc_B26DEA: Branch loc_B26E12
  loc_B26DED: FLdI2 var_8C
  loc_B26DF0: LitI2_Byte 2
  loc_B26DF2: EqI2
  loc_B26DF3: BranchF loc_B26E01
  loc_B26DF6: LitI2_Byte 3
  loc_B26DF8: CUI1I2
  loc_B26DFA: ImpAdStUI1 MemVar_D93038
  loc_B26DFE: Branch loc_B26E12
  loc_B26E01: FLdI2 var_8C
  loc_B26E04: LitI2_Byte 3
  loc_B26E06: EqI2
  loc_B26E07: BranchF loc_B26E12
  loc_B26E0A: LitI2_Byte 4
  loc_B26E0C: CUI1I2
  loc_B26E0E: ImpAdStUI1 MemVar_D93038
  loc_B26E12: ImpAdLdUI1
  loc_B26E16: CI2UI1
  loc_B26E18: LitI2_Byte 0
  loc_B26E1A: NeI2
  loc_B26E1B: FLdRfVar var_90
  loc_B26E1E: FLdPr Me
  loc_B26E21: VCallAd Control_ID_NumeCtaTxt
  loc_B26E24: FStAdFunc var_88
  loc_B26E27: FLdPr var_88
  loc_B26E2A:  = Me.Text
  loc_B26E2F: ILdRf var_90
  loc_B26E32: LitStr vbNullString
  loc_B26E35: NeStr
  loc_B26E37: AndI4
  loc_B26E38: FLdRfVar var_98
  loc_B26E3B: FLdPr Me
  loc_B26E3E: VCallAd Control_ID_NumeCtaTxt
  loc_B26E41: FStAdFunc var_94
  loc_B26E44: FLdPr var_94
  loc_B26E47:  = Me.Text
  loc_B26E4C: ILdRf var_98
  loc_B26E4F: LitStr "0"
  loc_B26E52: NeStr
  loc_B26E54: AndI4
  loc_B26E55: FFreeStr var_90 = ""
  loc_B26E5C: FFreeAd var_88 = ""
  loc_B26E63: BranchF loc_B27047
  loc_B26E66: FLdRfVar var_90
  loc_B26E69: FLdPr Me
  loc_B26E6C: VCallAd Control_ID_NumeCtaTxt
  loc_B26E6F: FStAdFunc var_88
  loc_B26E72: FLdPr var_88
  loc_B26E75:  = Me.Text
  loc_B26E7A: FLdPr Me
  loc_B26E7D: MemLdRfVar from_stack_1.global_56
  loc_B26E80: NewIfNullRf
  loc_B26E84: LitStr "Titular"
  loc_B26E87: ILdRf var_90
  loc_B26E8A: ImpAdLdUI1
  loc_B26E8E: CStrI2
  loc_B26E90: FStStrNoPop var_98
  loc_B26E93: ImpAdCallI2 Proc_270_12_C7FB3C(, , , )
  loc_B26E98: FFreeStr var_98 = ""
  loc_B26E9F: FFree1Ad var_88
  loc_B26EA2: BranchF loc_B26FC7
  loc_B26EA5: FLdRfVar var_90
  loc_B26EA8: FLdPr Me
  loc_B26EAB: MemLdRfVar from_stack_1.global_56
  loc_B26EAE: NewIfNullPr tblPersona
  loc_B26EB1: from_stack_1v = tblPersona.CucuPersGet()
  loc_B26EB6: ILdRf var_90
  loc_B26EB9: FLdPr Me
  loc_B26EBC: VCallAd Control_ID_CucuPersLbl
  loc_B26EBF: FStAdFunc var_88
  loc_B26EC2: FLdPr var_88
  loc_B26EC5: Me.Caption = from_stack_1
  loc_B26ECA: FFree1Str var_90
  loc_B26ECD: FFree1Ad var_88
  loc_B26ED0: FLdRfVar var_90
  loc_B26ED3: FLdPr Me
  loc_B26ED6: MemLdRfVar from_stack_1.global_56
  loc_B26ED9: NewIfNullPr tblPersona
  loc_B26EDC: from_stack_1v = tblPersona.DetaPersGet()
  loc_B26EE1: ILdRf var_90
  loc_B26EE4: FLdPr Me
  loc_B26EE7: VCallAd Control_ID_DetaPersLbl
  loc_B26EEA: FStAdFunc var_88
  loc_B26EED: FLdPr var_88
  loc_B26EF0: Me.Caption = from_stack_1
  loc_B26EF5: FFree1Str var_90
  loc_B26EF8: FFree1Ad var_88
  loc_B26EFB: FLdRfVar var_98
  loc_B26EFE: FLdPr Me
  loc_B26F01: MemLdRfVar from_stack_1.global_56
  loc_B26F04: NewIfNullPr tblPersona
  loc_B26F07: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B26F0C: FLdRfVar var_9C
  loc_B26F0F: FLdPr Me
  loc_B26F12: MemLdRfVar from_stack_1.global_56
  loc_B26F15: NewIfNullPr tblPersona
  loc_B26F18: from_stack_1v = tblPersona.NumeCasaGet()
  loc_B26F1D: FLdRfVar var_90
  loc_B26F20: FLdPr Me
  loc_B26F23: MemLdRfVar from_stack_1.global_56
  loc_B26F26: NewIfNullPr tblPersona
  loc_B26F29: from_stack_1v = tblPersona.DetaCallGet()
  loc_B26F2E: ILdRf var_90
  loc_B26F31: LitStr " "
  loc_B26F34: ConcatStr
  loc_B26F35: CVarStr var_FC
  loc_B26F38: LitVarStr var_CC, vbNullString
  loc_B26F3D: FStVarCopyObj var_DC
  loc_B26F40: FLdRfVar var_DC
  loc_B26F43: LitStr "Nro: "
  loc_B26F46: ILdRf var_9C
  loc_B26F49: ConcatStr
  loc_B26F4A: CVarStr var_BC
  loc_B26F4D: ILdRf var_98
  loc_B26F50: LitStr "0"
  loc_B26F53: NeStr
  loc_B26F55: CVarBoolI2 var_AC
  loc_B26F59: FLdRfVar var_EC
  loc_B26F5C: ImpAdCallFPR4  = IIf(, , )
  loc_B26F61: FLdRfVar var_EC
  loc_B26F64: ConcatVar var_10C
  loc_B26F68: LitVarStr var_11C, " "
  loc_B26F6D: ConcatVar var_12C
  loc_B26F71: FLdRfVar var_130
  loc_B26F74: FLdPr Me
  loc_B26F77: MemLdRfVar from_stack_1.global_56
  loc_B26F7A: NewIfNullPr tblPersona
  loc_B26F7D: from_stack_1v = tblPersona.DetaLocaGet()
  loc_B26F82: FLdZeroAd var_130
  loc_B26F85: CVarStr var_140
  loc_B26F88: ConcatVar var_150
  loc_B26F8C: CStrVarVal var_154
  loc_B26F90: FLdPr Me
  loc_B26F93: VCallAd Control_ID_DomiPersLbl
  loc_B26F96: FStAdFunc var_88
  loc_B26F99: FLdPr var_88
  loc_B26F9C: Me.Caption = from_stack_1
  loc_B26FA1: FFreeStr var_90 = "": var_98 = "": var_9C = ""
  loc_B26FAC: FFree1Ad var_88
  loc_B26FAF: FFreeVar var_AC = "": var_BC = "": var_DC = "": var_FC = "": var_EC = "": var_10C = "": var_12C = "": var_140 = ""
  loc_B26FC4: Branch loc_B27047
  loc_B26FC7: FLdRfVar var_90
  loc_B26FCA: FLdPr Me
  loc_B26FCD: MemLdRfVar from_stack_1.global_56
  loc_B26FD0: NewIfNullPr tblPersona
  loc_B26FD3: from_stack_1v = tblPersona.MsgErrorGet()
  loc_B26FD8: ILdRf var_90
  loc_B26FDB: FLdPr Me
  loc_B26FDE: MemStStrCopy
  loc_B26FE2: FFree1Str var_90
  loc_B26FE5: FLdPr Me
  loc_B26FE8: MemLdStr global_92
  loc_B26FEB: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_B26FF0: LitStr vbNullString
  loc_B26FF3: FLdPr Me
  loc_B26FF6: VCallAd Control_ID_CucuPersLbl
  loc_B26FF9: FStAdFunc var_88
  loc_B26FFC: FLdPr var_88
  loc_B26FFF: Me.Caption = from_stack_1
  loc_B27004: FFree1Ad var_88
  loc_B27007: LitStr vbNullString
  loc_B2700A: FLdPr Me
  loc_B2700D: VCallAd Control_ID_DetaPersLbl
  loc_B27010: FStAdFunc var_88
  loc_B27013: FLdPr var_88
  loc_B27016: Me.Caption = from_stack_1
  loc_B2701B: FFree1Ad var_88
  loc_B2701E: LitStr vbNullString
  loc_B27021: FLdPr Me
  loc_B27024: VCallAd Control_ID_DomiPersLbl
  loc_B27027: FStAdFunc var_88
  loc_B2702A: FLdPr var_88
  loc_B2702D: Me.Caption = from_stack_1
  loc_B27032: FFree1Ad var_88
  loc_B27035: FLdPr Me
  loc_B27038: VCallAd Control_ID_NumeCtaTxt
  loc_B2703B: CVarAd
  loc_B2703F: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_B27044: FFree1Var var_BC = ""
  loc_B27047: ExitProcHresult
End Sub

Private Sub OficinaCbo_GotFocus() 'A22D38
  'Data Table: 4E5E1C
  loc_A22CFC: Call Proc_230_18_B7F1C0()
  loc_A22D01: LitI4 0
  loc_A22D06: LitI4 0
  loc_A22D0B: FLdRfVar var_88
  loc_A22D0E: Redim
  loc_A22D18: FLdPr Me
  loc_A22D1B: VCallAd Control_ID_ConfirmarCmd
  loc_A22D1E: CVarAd
  loc_A22D22: ParmAry1St
  loc_A22D28: FLdRfVar var_88
  loc_A22D2B: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_A22D30: FLdRfVar var_88
  loc_A22D33: Erase
  loc_A22D34: ExitProcHresult
  loc_A22D35: MemLdRfVar from_stack_1.global_60
End Sub

Private Function Proc_230_18_B7F1C0() 'B7F1C0
  'Data Table: 4E5E1C
  loc_B7ECAC: FLdPr Me
  loc_B7ECAF: VCallAd Control_ID_ctacteFlex
  loc_B7ECB2: FStAdFunc var_88
  loc_B7ECB5: FLdPr var_88
  loc_B7ECB8: LateIdCall
  loc_B7ECC0: LitVarI4
  loc_B7ECC8: PopAdLdVar
  loc_B7ECC9: FLdPr var_88
  loc_B7ECCC: LateIdSt
  loc_B7ECD1: LitVarI4
  loc_B7ECD9: PopAdLdVar
  loc_B7ECDA: LitVarI4
  loc_B7ECE2: PopAdLdVar
  loc_B7ECE3: LitVarStr var_D8, "Of"
  loc_B7ECE8: PopAdLdVar
  loc_B7ECE9: FLdPr var_88
  loc_B7ECEC: LateIdCallSt
  loc_B7ECF4: LitVarI4
  loc_B7ECFC: PopAdLdVar
  loc_B7ECFD: LitVarI4
  loc_B7ED05: PopAdLdVar
  loc_B7ED06: LitVarStr var_D8, "Cuenta"
  loc_B7ED0B: PopAdLdVar
  loc_B7ED0C: FLdPr var_88
  loc_B7ED0F: LateIdCallSt
  loc_B7ED17: LitVarI4
  loc_B7ED1F: PopAdLdVar
  loc_B7ED20: LitVarI4
  loc_B7ED28: PopAdLdVar
  loc_B7ED29: LitVarStr var_D8, "Periodo"
  loc_B7ED2E: PopAdLdVar
  loc_B7ED2F: FLdPr var_88
  loc_B7ED32: LateIdCallSt
  loc_B7ED3A: LitVarI4
  loc_B7ED42: PopAdLdVar
  loc_B7ED43: LitVarI4
  loc_B7ED4B: PopAdLdVar
  loc_B7ED4C: LitVarStr var_D8, "Boleto"
  loc_B7ED51: PopAdLdVar
  loc_B7ED52: FLdPr var_88
  loc_B7ED55: LateIdCallSt
  loc_B7ED5D: LitVarI4
  loc_B7ED65: PopAdLdVar
  loc_B7ED66: LitVarI4
  loc_B7ED6E: PopAdLdVar
  loc_B7ED6F: LitVarStr var_D8, "Emision"
  loc_B7ED74: PopAdLdVar
  loc_B7ED75: FLdPr var_88
  loc_B7ED78: LateIdCallSt
  loc_B7ED80: LitVarI4
  loc_B7ED88: PopAdLdVar
  loc_B7ED89: LitVarI4
  loc_B7ED91: PopAdLdVar
  loc_B7ED92: LitVarStr var_D8, "Vencimiento"
  loc_B7ED97: PopAdLdVar
  loc_B7ED98: FLdPr var_88
  loc_B7ED9B: LateIdCallSt
  loc_B7EDA3: LitVarI4
  loc_B7EDAB: PopAdLdVar
  loc_B7EDAC: LitVarI4
  loc_B7EDB4: PopAdLdVar
  loc_B7EDB5: LitVarStr var_D8, "Concepto"
  loc_B7EDBA: PopAdLdVar
  loc_B7EDBB: FLdPr var_88
  loc_B7EDBE: LateIdCallSt
  loc_B7EDC6: LitVarI4
  loc_B7EDCE: PopAdLdVar
  loc_B7EDCF: LitVarI4
  loc_B7EDD7: PopAdLdVar
  loc_B7EDD8: LitVarStr var_D8, "Facilidad"
  loc_B7EDDD: PopAdLdVar
  loc_B7EDDE: FLdPr var_88
  loc_B7EDE1: LateIdCallSt
  loc_B7EDE9: LitVarI4
  loc_B7EDF1: PopAdLdVar
  loc_B7EDF2: LitVarI4
  loc_B7EDFA: PopAdLdVar
  loc_B7EDFB: LitVarStr var_D8, "Apremio"
  loc_B7EE00: PopAdLdVar
  loc_B7EE01: FLdPr var_88
  loc_B7EE04: LateIdCallSt
  loc_B7EE0C: LitVarI4
  loc_B7EE14: PopAdLdVar
  loc_B7EE15: LitVarI4
  loc_B7EE1D: PopAdLdVar
  loc_B7EE1E: LitVarStr var_D8, "Exp/Comp"
  loc_B7EE23: PopAdLdVar
  loc_B7EE24: FLdPr var_88
  loc_B7EE27: LateIdCallSt
  loc_B7EE2F: LitVarI4
  loc_B7EE37: PopAdLdVar
  loc_B7EE38: LitVarI4
  loc_B7EE40: PopAdLdVar
  loc_B7EE41: LitVarStr var_D8, "Tipo Movi."
  loc_B7EE46: PopAdLdVar
  loc_B7EE47: FLdPr var_88
  loc_B7EE4A: LateIdCallSt
  loc_B7EE52: LitVarI4
  loc_B7EE5A: PopAdLdVar
  loc_B7EE5B: LitVarI4
  loc_B7EE63: PopAdLdVar
  loc_B7EE64: LitVarStr var_D8, "Debito"
  loc_B7EE69: PopAdLdVar
  loc_B7EE6A: FLdPr var_88
  loc_B7EE6D: LateIdCallSt
  loc_B7EE75: LitVarI4
  loc_B7EE7D: PopAdLdVar
  loc_B7EE7E: LitVarI4
  loc_B7EE86: PopAdLdVar
  loc_B7EE87: LitVarStr var_D8, "Recargo"
  loc_B7EE8C: PopAdLdVar
  loc_B7EE8D: FLdPr var_88
  loc_B7EE90: LateIdCallSt
  loc_B7EE98: LitVarI4
  loc_B7EEA0: PopAdLdVar
  loc_B7EEA1: LitVarI4
  loc_B7EEA9: PopAdLdVar
  loc_B7EEAA: LitVarStr var_D8, "Saldo"
  loc_B7EEAF: PopAdLdVar
  loc_B7EEB0: FLdPr var_88
  loc_B7EEB3: LateIdCallSt
  loc_B7EEBB: LitVarI4
  loc_B7EEC3: PopAdLdVar
  loc_B7EEC4: LitVarI4
  loc_B7EECC: PopAdLdVar
  loc_B7EECD: LitVarStr var_D8, "Sel"
  loc_B7EED2: PopAdLdVar
  loc_B7EED3: FLdPr var_88
  loc_B7EED6: LateIdCallSt
  loc_B7EEDE: LitVarI4
  loc_B7EEE6: PopAdLdVar
  loc_B7EEE7: LitVarI4
  loc_B7EEEF: PopAdLdVar
  loc_B7EEF0: LitVarStr var_D8, "Numero"
  loc_B7EEF5: PopAdLdVar
  loc_B7EEF6: FLdPr var_88
  loc_B7EEF9: LateIdCallSt
  loc_B7EF01: LitVarI4
  loc_B7EF09: PopAdLdVar
  loc_B7EF0A: LitVarI4
  loc_B7EF12: PopAdLdVar
  loc_B7EF13: LitVarStr var_D8, "Mov"
  loc_B7EF18: PopAdLdVar
  loc_B7EF19: FLdPr var_88
  loc_B7EF1C: LateIdCallSt
  loc_B7EF24: FLdPr var_88
  loc_B7EF27: LateIdCall
  loc_B7EF2F: LitNothing
  loc_B7EF31: FStAd var_88 
  loc_B7EF35: FLdPr Me
  loc_B7EF38: VCallAd Control_ID_ctacteDeudaFlex
  loc_B7EF3B: FStAdFunc var_EC
  loc_B7EF3E: FLdPr var_EC
  loc_B7EF41: LateIdCall
  loc_B7EF49: LitVarI4
  loc_B7EF51: PopAdLdVar
  loc_B7EF52: FLdPr var_EC
  loc_B7EF55: LateIdSt
  loc_B7EF5A: LitVarI4
  loc_B7EF62: PopAdLdVar
  loc_B7EF63: LitVarI4
  loc_B7EF6B: PopAdLdVar
  loc_B7EF6C: LitVarStr var_D8, "Of"
  loc_B7EF71: PopAdLdVar
  loc_B7EF72: FLdPr var_EC
  loc_B7EF75: LateIdCallSt
  loc_B7EF7D: LitVarI4
  loc_B7EF85: PopAdLdVar
  loc_B7EF86: LitVarI4
  loc_B7EF8E: PopAdLdVar
  loc_B7EF8F: LitVarStr var_D8, "Cuenta"
  loc_B7EF94: PopAdLdVar
  loc_B7EF95: FLdPr var_EC
  loc_B7EF98: LateIdCallSt
  loc_B7EFA0: LitVarI4
  loc_B7EFA8: PopAdLdVar
  loc_B7EFA9: LitVarI4
  loc_B7EFB1: PopAdLdVar
  loc_B7EFB2: LitVarStr var_D8, "Periodo"
  loc_B7EFB7: PopAdLdVar
  loc_B7EFB8: FLdPr var_EC
  loc_B7EFBB: LateIdCallSt
  loc_B7EFC3: LitVarI4
  loc_B7EFCB: PopAdLdVar
  loc_B7EFCC: LitVarI4
  loc_B7EFD4: PopAdLdVar
  loc_B7EFD5: LitVarStr var_D8, "Boleto"
  loc_B7EFDA: PopAdLdVar
  loc_B7EFDB: FLdPr var_EC
  loc_B7EFDE: LateIdCallSt
  loc_B7EFE6: LitVarI4
  loc_B7EFEE: PopAdLdVar
  loc_B7EFEF: LitVarI4
  loc_B7EFF7: PopAdLdVar
  loc_B7EFF8: LitVarStr var_D8, "Emision"
  loc_B7EFFD: PopAdLdVar
  loc_B7EFFE: FLdPr var_EC
  loc_B7F001: LateIdCallSt
  loc_B7F009: LitVarI4
  loc_B7F011: PopAdLdVar
  loc_B7F012: LitVarI4
  loc_B7F01A: PopAdLdVar
  loc_B7F01B: LitVarStr var_D8, "Vencimiento"
  loc_B7F020: PopAdLdVar
  loc_B7F021: FLdPr var_EC
  loc_B7F024: LateIdCallSt
  loc_B7F02C: LitVarI4
  loc_B7F034: PopAdLdVar
  loc_B7F035: LitVarI4
  loc_B7F03D: PopAdLdVar
  loc_B7F03E: LitVarStr var_D8, "Concepto"
  loc_B7F043: PopAdLdVar
  loc_B7F044: FLdPr var_EC
  loc_B7F047: LateIdCallSt
  loc_B7F04F: LitVarI4
  loc_B7F057: PopAdLdVar
  loc_B7F058: LitVarI4
  loc_B7F060: PopAdLdVar
  loc_B7F061: LitVarStr var_D8, "Facilidad"
  loc_B7F066: PopAdLdVar
  loc_B7F067: FLdPr var_EC
  loc_B7F06A: LateIdCallSt
  loc_B7F072: LitVarI4
  loc_B7F07A: PopAdLdVar
  loc_B7F07B: LitVarI4
  loc_B7F083: PopAdLdVar
  loc_B7F084: LitVarStr var_D8, "Apremio"
  loc_B7F089: PopAdLdVar
  loc_B7F08A: FLdPr var_EC
  loc_B7F08D: LateIdCallSt
  loc_B7F095: LitVarI4
  loc_B7F09D: PopAdLdVar
  loc_B7F09E: LitVarI4
  loc_B7F0A6: PopAdLdVar
  loc_B7F0A7: LitVarStr var_D8, "Exp/Comp"
  loc_B7F0AC: PopAdLdVar
  loc_B7F0AD: FLdPr var_EC
  loc_B7F0B0: LateIdCallSt
  loc_B7F0B8: LitVarI4
  loc_B7F0C0: PopAdLdVar
  loc_B7F0C1: LitVarI4
  loc_B7F0C9: PopAdLdVar
  loc_B7F0CA: LitVarStr var_D8, "Tipo Movi."
  loc_B7F0CF: PopAdLdVar
  loc_B7F0D0: FLdPr var_EC
  loc_B7F0D3: LateIdCallSt
  loc_B7F0DB: LitVarI4
  loc_B7F0E3: PopAdLdVar
  loc_B7F0E4: LitVarI4
  loc_B7F0EC: PopAdLdVar
  loc_B7F0ED: LitVarStr var_D8, "Debito"
  loc_B7F0F2: PopAdLdVar
  loc_B7F0F3: FLdPr var_EC
  loc_B7F0F6: LateIdCallSt
  loc_B7F0FE: LitVarI4
  loc_B7F106: PopAdLdVar
  loc_B7F107: LitVarI4
  loc_B7F10F: PopAdLdVar
  loc_B7F110: LitVarStr var_D8, "Recargo"
  loc_B7F115: PopAdLdVar
  loc_B7F116: FLdPr var_EC
  loc_B7F119: LateIdCallSt
  loc_B7F121: LitVarI4
  loc_B7F129: PopAdLdVar
  loc_B7F12A: LitVarI4
  loc_B7F132: PopAdLdVar
  loc_B7F133: LitVarStr var_D8, "Saldo"
  loc_B7F138: PopAdLdVar
  loc_B7F139: FLdPr var_EC
  loc_B7F13C: LateIdCallSt
  loc_B7F144: LitVarI4
  loc_B7F14C: PopAdLdVar
  loc_B7F14D: LitVarI4
  loc_B7F155: PopAdLdVar
  loc_B7F156: LitVarStr var_D8, "Sel"
  loc_B7F15B: PopAdLdVar
  loc_B7F15C: FLdPr var_EC
  loc_B7F15F: LateIdCallSt
  loc_B7F167: LitVarI4
  loc_B7F16F: PopAdLdVar
  loc_B7F170: LitVarI4
  loc_B7F178: PopAdLdVar
  loc_B7F179: LitVarStr var_D8, "Numero"
  loc_B7F17E: PopAdLdVar
  loc_B7F17F: FLdPr var_EC
  loc_B7F182: LateIdCallSt
  loc_B7F18A: LitVarI4
  loc_B7F192: PopAdLdVar
  loc_B7F193: LitVarI4
  loc_B7F19B: PopAdLdVar
  loc_B7F19C: LitVarStr var_D8, "Mov"
  loc_B7F1A1: PopAdLdVar
  loc_B7F1A2: FLdPr var_EC
  loc_B7F1A5: LateIdCallSt
  loc_B7F1AD: FLdPr var_EC
  loc_B7F1B0: LateIdCall
  loc_B7F1B8: LitNothing
  loc_B7F1BA: FStAd var_EC 
  loc_B7F1BE: ExitProcHresult
  loc_B7F1BF: SetLastSystemError
End Function
