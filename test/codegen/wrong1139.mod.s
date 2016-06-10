##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 90 of <array 67 of <array 46 of <array 62 of <array 80 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    movl    $99, %eax               #   0:     assign v4 <- 99
    movb    %al, -14(%ebp)         
    movl    $5867, %eax             #   1:     assign v1 <- 5867
    movl    %eax, 8(%ebp)          
    jmp     l_f0_0                  #   2:     goto   0
l_f0_0:
l_f0_6_while_cond:
    jmp     l_f0_10                 #   5:     goto   10
    movl    $1, %eax                #   6:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_11                 #   7:     goto   11
l_f0_10:
    movl    $0, %eax                #   9:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_11:
    movl    $0, %eax                #  11:     if     0 = t2 goto 7_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #  12:     goto   5
l_f0_7_while_body:
    jmp     l_f0_13                 #  14:     goto   13
l_f0_13:
l_f0_17_while_cond:
    jmp     l_f0_17_while_cond      #  17:     goto   17_while_cond
l_f0_20_while_cond:
    movl    $97, %eax               #  19:     if     97 < 99 goto 21_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_21_while_body     
    jmp     l_f0_19                 #  20:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      #  22:     goto   20_while_cond
l_f0_19:
    movl    $1, %eax                #  24:     return 1
    jmp     l_f0_exit              
    jmp     l_f0_6_while_cond       #  25:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_26_if_false        #  27:     goto   26_if_false
    movl    $98, %eax               #  28:     assign v4 <- 98
    movb    %al, -14(%ebp)         
    jmp     l_f0_24                 #  29:     goto   24
l_f0_26_if_false:
l_f0_24:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 59 of <array 17 of <array 22 of <array 71 of <array 72 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 36 of <array 33 of <array 28 of <array 86 of <bool>>>>>>> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $4128, %eax             #   2:     sub    t4 <- 4128, 20669
    movl    $20669, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $21632, %eax            #   3:     if     21632 >= t4 goto 3_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   4:     goto   4_if_false
l_f1_3_if_true:
    call    dummyCHARfunc           #   6:     call   t5 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    jmp     l_f1_2                  #   7:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -50(%ebp)   1  [ $t2       <char> %ebp-50 ]
    #    -51(%ebp)   1  [ $t20      <bool> %ebp-51 ]
    #    -52(%ebp)   1  [ $t21      <bool> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t3       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 99 of <array 84 of <array 92 of <array 50 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 97 of <array 86 of <array 49 of <array 4 of <array 78 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -89(%ebp)   1  [ $v4       <char> %ebp-89 ]
    #    -96(%ebp)   4  [ $v5       <int> %ebp-96 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -50(%ebp)         
    movzbl  -50(%ebp), %eax         #   1:     if     t2 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $2, %eax                #   4:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   5:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   6:     call   t3 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    $76964, %eax            #   7:     mul    t4 <- 76964, t3
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   8:     add    t5 <- t4, 36651
    movl    $36651, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $3, %eax                #   9:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  10:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  11:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  12:     mul    t7 <- t5, t6
    movl    -76(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  13:     add    t8 <- t7, 70749
    movl    $70749, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    $4, %eax                #  14:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  15:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  16:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  17:     mul    t10 <- t8, t9
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t11 <- t10, 30906
    movl    $30906, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  19:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  20:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  21:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  22:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  23:     add    t14 <- t13, 39594
    movl    $39594, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  26:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  27:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  28:     add    t18 <- v1, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $99, %eax               #  29:     assign @t18 <- 99
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $1, %eax                #  30:     return 1
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  31:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_7_while_cond:
    movl    $99, %eax               #  35:     if     99 > 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_8_while_body      
    jmp     l_f2_6                  #  36:     goto   6
l_f2_8_while_body:
    movl    $79204, %eax            #  38:     if     79204 < 40118 goto 11
    movl    $40118, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_11                
    jmp     l_f2_12                 #  39:     goto   12
l_f2_11:
    movl    $1, %eax                #  41:     assign t19 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_f2_13                 #  42:     goto   13
l_f2_12:
    movl    $0, %eax                #  44:     assign t19 <- 0
    movb    %al, -49(%ebp)         
l_f2_13:
    movzbl  -49(%ebp), %eax         #  46:     return t19
    jmp     l_f2_exit              
    movl    $14632, %eax            #  47:     if     14632 >= 69035 goto 19
    movl    $69035, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_19                
    jmp     l_f2_20                 #  48:     goto   20
l_f2_19:
    movl    $1, %eax                #  50:     assign t20 <- 1
    movb    %al, -51(%ebp)         
    jmp     l_f2_21                 #  51:     goto   21
l_f2_20:
    movl    $0, %eax                #  53:     assign t20 <- 0
    movb    %al, -51(%ebp)         
l_f2_21:
    movzbl  -51(%ebp), %eax         #  55:     return t20
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  56:     call   t21 <- dummyBOOLfunc
    movb    %al, -52(%ebp)         
    jmp     l_f2_15                 #  57:     goto   15
l_f2_15:
    jmp     l_f2_7_while_cond       #  59:     goto   7_while_cond
l_f2_6:
    movl    $47234, %eax            #  61:     div    t22 <- 47234, 78332
    movl    $78332, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  62:     div    t23 <- t22, 28828
    movl    $28828, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  63:     assign v5 <- t23
    movl    %eax, -96(%ebp)        

l_f2_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $4198, %eax             #   0:     assign v0 <- 4198
    movl    %eax, v0               
    movl    $99, %eax               #   1:     if     99 > 97 goto 2_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_1                #   7:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyCHARfunc           #  10:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     assign v1 <- t0
    movb    %al, v1                
    movl    $29665, %eax            #  12:     if     29665 <= 65103 goto 10_if_true
    movl    $65103, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_if_true      
    jmp     l_test_11_if_false      #  13:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_exit            
    movl    $100, %eax              #  16:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_exit            
    movl    $49062, %eax            #  18:     assign v0 <- 49062
    movl    %eax, v0               
    jmp     l_test_9                #  19:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $27907, %eax            #  22:     sub    t1 <- 27907, 92048
    movl    $92048, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  23:     assign v0 <- t1
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
