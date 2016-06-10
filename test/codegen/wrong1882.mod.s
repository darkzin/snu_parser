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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 55 of <array 71 of <array 38 of <array 16 of <array 83 of <bool>>>>>>> %ebp+12 ]
    #    -85(%ebp)   1  [ $v3       <bool> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $34858, %eax            #   0:     assign v1 <- 34858
    movl    %eax, 8(%ebp)          
    leal    _str_1, %eax            #   1:     &()    t4 <- _str_1
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   2:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #   3:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_7_if_false         #   4:     goto   7_if_false
    movl    $61578, %eax            #   5:     assign v1 <- 61578
    movl    %eax, 8(%ebp)          
    jmp     l_f0_exit              
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_0:
l_f0_11_while_cond:
    movl    $14989, %eax            #  13:     if     14989 > 61211 goto 12_while_body
    movl    $61211, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_12_while_body     
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_while_body:
    movl    $2, %eax                #  16:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  17:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  18:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    $4364, %eax             #  19:     mul    t6 <- 4364, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    $48763, %eax            #  20:     add    t7 <- 48763, 38131
    movl    $38131, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -72(%ebp), %eax         #  21:     add    t8 <- t6, t7
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  22:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  23:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  24:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  25:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  26:     add    t11 <- t10, 87165
    movl    $87165, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  27:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  28:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  29:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  30:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     add    t14 <- t13, 81483
    movl    $81483, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  32:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  33:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  34:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  35:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  36:     add    t17 <- t16, 61627
    movl    $61627, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  37:     mul    t18 <- t17, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    12(%ebp), %eax          #  38:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  39:     call   t19 <- DOFS
    addl    $4, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  40:     add    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  41:     add    t21 <- v2, t20
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    $1, %eax                #  42:     assign @t21 <- 1
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_11_while_cond      #  43:     goto   11_while_cond
l_f0_10:
    movl    $99, %eax               #  45:     if     99 >= 98 goto 16_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  46:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_exit              
    jmp     l_f0_15                 #  49:     goto   15
l_f0_17_if_false:
l_f0_15:

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
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
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t4       <bool> %ebp-73 ]
    #    -74(%ebp)   1  [ $t5       <char> %ebp-74 ]
    #    -80(%ebp)   4  [ $t6       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t7       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t8       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t9       <int> %ebp-92 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 85 of <array 68 of <array 16 of <array 80 of <array 86 of <char>>>>>>> %ebp+12 ]
    #    -93(%ebp)   1  [ $v3       <bool> %ebp-93 ]

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
    movl    $98, %eax               #   0:     if     98 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $80820, %eax            #   3:     return 80820
    jmp     l_f1_exit              
    movl    $41804, %eax            #   4:     return 41804
    jmp     l_f1_exit              
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   6:     goto   7_while_cond
    movl    $98423, %eax            #   7:     return 98423
    jmp     l_f1_exit              
    movl    $100, %eax              #   8:     if     100 < 99 goto 11
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_11                
    jmp     l_f1_12                 #   9:     goto   12
l_f1_11:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -73(%ebp)         
    jmp     l_f1_13                 #  12:     goto   13
l_f1_12:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -73(%ebp)         
l_f1_13:
    movzbl  -73(%ebp), %eax         #  16:     assign v3 <- t4
    movb    %al, -93(%ebp)         
    jmp     l_f1_0                  #  17:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  20:     call   t5 <- dummyCHARfunc
    movb    %al, -74(%ebp)         
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  22:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  23:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $10740, %eax            #  24:     mul    t7 <- 10740, t6
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  25:     add    t8 <- t7, 82110
    movl    $82110, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  27:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  28:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -92(%ebp)        
    movl    -88(%ebp), %eax         #  29:     mul    t10 <- t8, t9
    movl    -92(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  30:     add    t11 <- t10, 86390
    movl    $86390, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  32:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  33:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  34:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     add    t14 <- t13, 57668
    movl    $57668, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  37:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  38:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  39:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $10364, %eax            #  40:     div    t17 <- 10364, 48868
    movl    $48868, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  41:     mul    t18 <- t17, 66502
    movl    $66502, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -40(%ebp), %eax         #  42:     add    t19 <- t16, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  43:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    12(%ebp), %eax          #  44:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  45:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  46:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  47:     add    t23 <- v2, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -74(%ebp), %eax         #  48:     assign @t23 <- t5
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            
    call    ReadInt                 #  49:     call   t24 <- ReadInt
    movl    %eax, -72(%ebp)        

l_f1_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f2_exit              
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t4
    jmp     l_f2_exit              
    movl    $50982, %eax            #   3:     assign v3 <- 50982
    movl    %eax, -20(%ebp)        
    jmp     l_f2_2                  #   4:     goto   2
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_7_if_false       #   2:     goto   7_if_false
    jmp     l_test_5                #   3:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_0                #   7:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $56932, %eax            #  10:     if     56932 < 56914 goto 10_if_true
    movl    $56914, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_10_if_true      
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
l_test_10_if_true:
    movl    $1, %eax                #  13:     if     1 = 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  14:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  16:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $0, %eax                #  19:     assign v0 <- 0
    movb    %al, v0                
    call    dummyCHARfunc           #  20:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  21:     param  0 <- t1
    pushl   %eax                   
    call    WriteChar               #  22:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_9                #  23:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $7778, %eax             #  26:     if     7778 > 4497 goto 20_if_true
    movl    $4497, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_20_if_true      
    jmp     l_test_21_if_false      #  27:     goto   21_if_false
l_test_20_if_true:
    movl    $126, %eax              #  29:     mul    t2 <- 126, 3151
    movl    $3151, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     div    t3 <- t2, 60170
    movl    $60170, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  31:     assign v1 <- t3
    movl    %eax, v1               
    jmp     l_test_19               #  32:     goto   19
l_test_21_if_false:
l_test_19:
    movl    $52539, %eax            #  35:     param  0 <- 52539
    pushl   %eax                   
    call    WriteInt                #  36:     call   WriteInt
    addl    $4, %esp               
l_test_26_while_cond:
    movl    $97, %eax               #  38:     if     97 < 100 goto 27_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_27_while_body   
    jmp     l_test_25               #  39:     goto   25
l_test_27_while_body:
    movl    $1, %eax                #  41:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_32_if_false      #  42:     goto   32_if_false
    jmp     l_test_30               #  43:     goto   30
l_test_32_if_false:
l_test_30:
    jmp     l_test_26_while_cond    #  46:     goto   26_while_cond
l_test_25:

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
