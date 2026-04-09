Imports System

Module Module1
   Sub Main()
     Console.WriteLine("Hello World!")
     Console.WriteLine("Press Enter Key to Exit.")
     Console.ReadLine()
   End Sub
End Module 

' vbc HelloWorld.vb
' HelloWorld.exe


' Simple demo
Imports System.Windows.Forms

Public Class HelloForm
    Inherits Form

    Private label As Label

    Public Sub New()
        Me.Text = "Hello, World!"
        label = New Label()
        label.Text = "Welcome to VB.NET!"
        label.AutoSize = True
        label.Location = New System.Drawing.Point(50, 50)
        Me.Controls.Add(label)
        Me.Width = 300
        Me.Height = 200
    End Sub

    <STAThread()>
    Public Shared Sub Main()
        Application.Run(New HelloForm())
    End Sub
End Class