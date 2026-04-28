VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgSeleccionaCategoria
  Caption = "Selecciona Categoria del Proveedor"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  LinkTopic = "Form1"
  ControlBox = 0   'False
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12120
  ClientHeight = 5205
  StartUpPosition = 3 'Windows Default
  Begin VB.CommandButton cmdAceptar
    Caption = "Aceptar"
    Left = 3360
    Top = 4440
    Width = 2415
    Height = 495
    TabIndex = 1
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
  Begin MSDataGridLib.DataGrid dgdRetencion
    Left = 120
    Top = 1800
    Width = 11775
    Height = 2415
    TabIndex = 0
    OleObjectBlob = "dlgSeleccionaCategoria.frx":0000
  End
  Begin VB.Label lblCodiRete
    Left = 120
    Top = 960
    Width = 11775
    Height = 495
    TabIndex = 3
    BorderStyle = 1 'Fixed Single
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
  Begin VB.Label lblDetaProv
    Left = 120
    Top = 240
    Width = 11775
    Height = 495
    TabIndex = 2
    BorderStyle = 1 'Fixed Single
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

Attribute VB_Name = "dlgSeleccionaCategoria"

Public RetexProvCLS As New Class
Public sCucuPers As String
Public iCodiRete As Byte


Private Sub cmdAceptar_Click() '95CD1C
  'Data Table: 40F57C
  loc_95CD04: ILdRf Me
  loc_95CD07: FStAdNoPop
  loc_95CD0B: ImpAdLdRf MemVar_C44F9C
  loc_95CD0E: NewIfNullPr Me
  loc_95CD11: Me.Global.Unload from_stack_1
  loc_95CD16: FFree1Ad var_88
  loc_95CD19: ExitProcHresult
End Sub

Private Sub Form_Load() '9D7C4C
  'Data Table: 40F57C
  loc_9D7B7C: LitStr "SELECT *"
  loc_9D7B7F: LitStr " FROM retexprov"
  loc_9D7B82: ConcatStr
  loc_9D7B83: FStStrNoPop var_88
  loc_9D7B86: LitStr " INNER JOIN deretenciones ON deretenciones.PeriInfo = retexprov.PeriInfo AND deretenciones.CodiRete = retexprov.CodiRete AND deretenciones.CodiDere = retexprov.CodiDere"
  loc_9D7B89: ConcatStr
  loc_9D7B8A: FStStrNoPop var_8C
  loc_9D7B8D: LitStr " WHERE retexprov.CucuPers = "
  loc_9D7B90: ConcatStr
  loc_9D7B91: FStStrNoPop var_90
  loc_9D7B94: FLdPr Me
  loc_9D7B97: MemLdStr sCucuPers
  loc_9D7B9A: ConcatStr
  loc_9D7B9B: FStStrNoPop var_94
  loc_9D7B9E: LitStr " AND retexprov.PeriInfo = "
  loc_9D7BA1: ConcatStr
  loc_9D7BA2: FStStrNoPop var_98
  loc_9D7BA5: ImpAdLdI2 MemVar_C3D064
  loc_9D7BA8: CStrUI1
  loc_9D7BAA: FStStrNoPop var_9C
  loc_9D7BAD: ConcatStr
  loc_9D7BAE: FStStrNoPop var_A0
  loc_9D7BB1: LitStr " AND retexprov.CodiRete = "
  loc_9D7BB4: ConcatStr
  loc_9D7BB5: FStStrNoPop var_A4
  loc_9D7BB8: FLdPr Me
  loc_9D7BBB: MemLdUI1 iCodiRete
  loc_9D7BBF: CStrI2
  loc_9D7BC1: FStStrNoPop var_A8
  loc_9D7BC4: ConcatStr
  loc_9D7BC5: FStStrNoPop var_AC
  loc_9D7BC8: FLdPr Me
  loc_9D7BCB: MemLdRfVar from_stack_1.RetexProvCLS
  loc_9D7BCE: NewIfNullPr clsretenciones
  loc_9D7BD1: Call clsretenciones.RedefineRS(from_stack_1v)
  loc_9D7BD6: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = ""
  loc_9D7BED: LitI4 0
  loc_9D7BF2: LitI4 1
  loc_9D7BF7: FLdRfVar var_B0
  loc_9D7BFA: Redim
  loc_9D7C04: FLdPr Me
  loc_9D7C07: MemLdRfVar from_stack_1.RetexProvCLS
  loc_9D7C0A: NewIfNullAd
  loc_9D7C0D: FStAd var_B4 
  loc_9D7C11: FLdRfVar var_B4
  loc_9D7C14: CVarRef
  loc_9D7C19: ParmAry1St
  loc_9D7C1F: FLdPr Me
  loc_9D7C22: VCallAd Control_ID_dgdRetencion
  loc_9D7C25: CVarAd
  loc_9D7C29: ParmAry1St
  loc_9D7C2F: FLdRfVar var_B0
  loc_9D7C32: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9D7C37: ILdRf var_B4
  loc_9D7C3A: CastAd
  loc_9D7C3D: FLdPr Me
  loc_9D7C40: MemStAdFunc
  loc_9D7C44: FLdRfVar var_B0
  loc_9D7C47: Erase
  loc_9D7C48: FFree1Ad var_B4
  loc_9D7C4B: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '975758
  'Data Table: 40F57C
  loc_97572C: LitStr vbNullString
  loc_97572F: FLdPr Me
  loc_975732: MemStStrCopy
  loc_975736: LitI2_Byte 0
  loc_975738: CUI1I2
  loc_97573A: FLdPr Me
  loc_97573D: MemStUI1
  loc_975741: ILdRf Me
  loc_975744: FStAdNoPop
  loc_975748: ImpAdLdRf MemVar_C44F9C
  loc_97574B: NewIfNullPr Me
  loc_97574E: Me.Global.Unload from_stack_1
  loc_975753: FFree1Ad var_88
  loc_975756: ExitProcHresult
End Sub

Public Function global_4257148Get() '40F91C
  global_4257148Get = global_4257148
End Function

Public Sub global_4257148Put(Value) '40F936
  global_4257148 = Value
End Sub

Public Sub global_4257148Set(Value) '40F950
  global_4257148 = Value
End Sub

Public Function sCucuPersGet() '40F96A
  sCucuPersGet = sCucuPers
End Function

Public Sub sCucuPersPut(Value) '40F979
  sCucuPers = Value
End Sub

Public Function iCodiReteGet() '40F988
  iCodiReteGet = iCodiRete
End Function

Public Sub iCodiRetePut(Value) '40F997
  iCodiRete = Value
End Sub
