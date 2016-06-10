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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 737
    movl    $737, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t2
    jmp     l_f0_exit              
l_f0_2_while_cond:
    movl    $3804, %eax             #   4:     div    t3 <- 3804, 65997
    movl    $65997, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $24822, %eax            #   5:     if     24822 = t3 goto 3_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_while_body:
    movl    $10666, %eax            #   8:     if     10666 >= 1231 goto 6_if_true
    movl    $1231, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   9:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #  11:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $83621, %eax            #  14:     return 83621
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  15:     goto   2_while_cond
l_f0_1:
    movl    $56155, %eax            #  17:     mul    t4 <- 56155, 69342
    movl    $69342, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    call    ReadInt                 #  18:     call   t5 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  19:     mul    t6 <- t4, t5
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     return t6
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t4       <char> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 7 of <array 7 of <array 5 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 = t1 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v2 <- t2
    movb    %al, 12(%ebp)          
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  11:     return t3
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  12:     call   t4 <- dummyCHARfunc
    movb    %al, -16(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t27      <char> %ebp-89 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t4       <int> %ebp-100 ]
    #   -101(%ebp)   1  [ $t5       <bool> %ebp-101 ]
    #   -108(%ebp)   4  [ $t6       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $t8       <bool> %ebp-113 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 10 of <array 7 of <array 1 of <array 5 of <int>>>>>>> %ebp+8 ]
    #   -124(%ebp)   4  [ $v2       <int> %ebp-124 ]
    #   -125(%ebp)   1  [ $v3       <char> %ebp-125 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $116, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $29, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $41287, %eax            #   1:     sub    t2 <- 41287, 95290
    movl    $95290, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     sub    t3 <- t2, 44308
    movl    $44308, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   3:     sub    t4 <- t3, 76459
    movl    $76459, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    $91452, %eax            #   4:     if     91452 >= 83142 goto 2
    movl    $83142, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2                 
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -101(%ebp)        
    jmp     l_f2_4                  #   8:     goto   4
l_f2_3:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -101(%ebp)        
l_f2_4:
    movzbl  -101(%ebp), %eax        #  12:     param  1 <- t5
    pushl   %eax                   
    movl    $28364, %eax            #  13:     sub    t6 <- 28364, 44736
    movl    $44736, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  14:     add    t7 <- t6, 29978
    movl    $29978, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  15:     if     t7 <= 32387 goto 6
    movl    $32387, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_6                 
    jmp     l_f2_7                  #  16:     goto   7
l_f2_6:
    movl    $1, %eax                #  18:     assign t8 <- 1
    movb    %al, -113(%ebp)        
    jmp     l_f2_8                  #  19:     goto   8
l_f2_7:
    movl    $0, %eax                #  21:     assign t8 <- 0
    movb    %al, -113(%ebp)        
l_f2_8:
    movzbl  -113(%ebp), %eax        #  23:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  24:     call   t9 <- f0
    addl    $8, %esp               
    movl    %eax, -120(%ebp)       
    movl    -100(%ebp), %eax        #  25:     sub    t10 <- t4, t9
    movl    -120(%ebp), %ebx       
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $2, %eax                #  26:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    $68847, %eax            #  29:     mul    t12 <- 68847, t11
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t13 <- t12, 30707
    movl    $30707, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $3, %eax                #  31:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  32:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  33:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  34:     mul    t15 <- t13, t14
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  35:     add    t16 <- t15, 88384
    movl    $88384, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $4, %eax                #  36:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  37:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  38:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  39:     mul    t18 <- t16, t17
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  40:     add    t19 <- t18, 54200
    movl    $54200, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $5, %eax                #  41:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  42:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  43:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -64(%ebp)        
    movl    -56(%ebp), %eax         #  44:     mul    t21 <- t19, t20
    movl    -64(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  45:     add    t22 <- t21, 85415
    movl    $85415, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  46:     mul    t23 <- t22, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    8(%ebp), %eax           #  47:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  48:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  49:     add    t25 <- t23, t24
    movl    -80(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    8(%ebp), %eax           #  50:     add    t26 <- v1, t25
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -20(%ebp), %eax         #  51:     assign @t26 <- t10
    movl    -88(%ebp), %edi        
    movl    %eax, (%edi)           
    call    dummyCHARfunc           #  52:     call   t27 <- dummyCHARfunc
    movb    %al, -89(%ebp)         
    movzbl  -89(%ebp), %eax         #  53:     assign v3 <- t27
    movb    %al, -125(%ebp)        

l_f2_exit:
    # epilogue
    addl    $116, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    movl    $71963, %eax            #   0:     assign v0 <- 71963
    movl    %eax, v0               
l_test_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   5:     goto   2_while_cond
    call    dummyProcedure          #   6:     call   dummyProcedure
    movl    $98, %eax               #   7:     if     98 >= 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_8_if_true       
    jmp     l_test_9_if_false       #   8:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_exit            
    movl    $99, %eax               #  11:     if     99 > 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_13_if_true      
    jmp     l_test_14_if_false      #  12:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  14:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_18_if_false      #  17:     goto   18_if_false
    jmp     l_test_16               #  18:     goto   16
l_test_18_if_false:
l_test_16:
    jmp     l_test_7                #  21:     goto   7
l_test_9_if_false:
l_test_7:
l_test_20_while_cond:
    jmp     l_test_21_while_body    #  25:     goto   21_while_body
    jmp     l_test_21_while_body    #  26:     goto   21_while_body
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  28:     goto   20_while_cond
l_test_26_while_cond:
    jmp     l_test_28               #  30:     goto   28
l_test_28:
    movl    $62781, %eax            #  32:     if     62781 >= 80839 goto 32_if_true
    movl    $80839, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_32_if_true      
    jmp     l_test_33_if_false      #  33:     goto   33_if_false
l_test_32_if_true:
    jmp     l_test_31               #  35:     goto   31
l_test_33_if_false:
l_test_31:
l_test_36_while_cond:
    jmp     l_test_35               #  39:     goto   35
    jmp     l_test_36_while_cond    #  40:     goto   36_while_cond
l_test_35:
    movl    $43781, %eax            #  42:     assign v0 <- 43781
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_41_while_cond:
    movl    $100, %eax              #  45:     if     100 <= 98 goto 42_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_42_while_body   
    jmp     l_test_40               #  46:     goto   40
l_test_42_while_body:
    jmp     l_test_41_while_cond    #  48:     goto   41_while_cond
l_test_40:
    jmp     l_test_exit            
    jmp     l_test_26_while_cond    #  51:     goto   26_while_cond

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
