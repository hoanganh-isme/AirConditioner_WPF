   M S B A M L   `   `   `  ����Q  MAirConditionerSolution, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:AirConditionerSolutionAirConditionerSolution  5   	   3    -AirConditionerSolution.WindowMemberManagement   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   0local$clr-namespace:AirConditionerSolution  5   	     � Title$  WindowMemberManagement��5	   	   $	��450��6(   $	��800��65   .��5
      � ��5   
   �� 5       �� 
StartPoint$ 0.1,0&�6"    �� EndPoint$ 0.9,1&�65   .��5      �  � Color$ 	#FFF67FA9��6    � Offset$ 1Q�61   � 5      $ White��6   $ 0Q�6-   5      .+�5   
   �� $
��Left=�6   $	��200��60   .+�5      �� -   5         ��Name$ btnBack��5   T   $	��130��5      $��30q�6!   $��40��6-      MaterialDesignRaisedButton#��[  69   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 10��5      $��2q�6?   ���#D94448���#D94448
������� � ToolTip$ MemberManagement��5   9   $
��Back��6{   5      5      � 5   
   $��100, 80, 80,50q�6   .+�5      �� $
��Auto=�6   .��5      &   System.Windows.Controls.DataGrid  -   5          Name$ 
dtg_Member��5      	   AutoGenerateColumns$	 False��6r   ��6Z   �� 
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$ 70 69      
IsReadOnly$ False��6a   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6D   �� *
MemberId+6v     5      $ FullName��6-   $	 150 6?   $ False��6h    6K   �� *
FullName+6}     5      $ EmailAddress��6-   $	 150 6C   $ False��6p    6O   �� *EmailAddress+6�     5       $
 Role��6-   $	 100 6;    6G   �� *Role+ �� Mode$ OneWay=�6p   4  .System.Windows.Controls.DataGridTemplateColumn  5"      $ Action��61      CellTemplate 5#      �� 5$   "   .R�5%   &   ��  �� Orientation$ 
Horizontal=�61   .+�5&   *   �� -   5        $��30��5&   1   $��50��6=   ���	#FF2BE222.��5'   .   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Pencil=�6F   $��Center=�6T   $��20��6o   $��0 0 5 0q�6z   5(   +   �� 5)   *   -   5        $��30��5)   1   $��50��6=   .��5*   .     $ Delete=�6F   $��Center=�6T   $��0 0 5 0q�6o   5+   +   5,   '   5-   #   5/      51      52      53      �� 55   
   $��Center=�6   $	��330��62   .+�56      �� $��25(�6   $
��Bold"�6$   $��Snap ITC)�66   .��6M   Member Management6`   57      �� 59   
   $��Right=�6   $	��200��61   .+�5:      �� -   5        $ 	btnMember��5<   T   $	��130��5:      $��30q�6!   $��40��6-   #��[  69   $ 10��5;      $��2q�6?   ���#D94448���#D94448
�������$ MemberManagement��5<   9   $��
Add Member��6   5=      5>      5?      5@      