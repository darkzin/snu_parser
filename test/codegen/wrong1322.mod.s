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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t8       <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $t9       <bool> %ebp-35 ]

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
    movl    $11199, %eax            #   0:     mul    t3 <- 11199, 88463
    movl    $88463, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     div    t4 <- t3, 43164
    movl    $43164, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     mul    t5 <- t4, 97391
    movl    $97391, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     mul    t6 <- t5, 67016
    movl    $67016, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $57521, %eax            #   4:     if     57521 >= t6 goto 1_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   5:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   7:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $69671, %eax            #  10:     if     69671 <= 86623 goto 5
    movl    $86623, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_5                 
l_f0_5:
    movl    $1, %eax                #  12:     assign t7 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_7                  #  13:     goto   7
    movl    $0, %eax                #  14:     assign t7 <- 0
    movb    %al, -33(%ebp)         
l_f0_7:
    movzbl  -33(%ebp), %eax         #  16:     return t7
    jmp     l_f0_exit              
l_f0_11_while_cond:
    movl    $25219, %eax            #  18:     if     25219 # 81763 goto 12_while_body
    movl    $81763, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_12_while_body     
    jmp     l_f0_10                 #  19:     goto   10
l_f0_12_while_body:
l_f0_15_while_cond:
    movl    $98, %eax               #  22:     if     98 <= 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_16_while_body     
    jmp     l_f0_14                 #  23:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  25:     goto   15_while_cond
l_f0_14:
    movl    $71229, %eax            #  27:     if     71229 < 48719 goto 19
    movl    $48719, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_19                
    jmp     l_f0_20                 #  28:     goto   20
l_f0_19:
    movl    $1, %eax                #  30:     assign t8 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f0_21                 #  31:     goto   21
l_f0_20:
    movl    $0, %eax                #  33:     assign t8 <- 0
    movb    %al, -34(%ebp)         
l_f0_21:
    movzbl  -34(%ebp), %eax         #  35:     return t8
    jmp     l_f0_exit              
    movl    $100, %eax              #  36:     if     100 < 97 goto 24
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_24                
    jmp     l_f0_25                 #  37:     goto   25
l_f0_24:
    movl    $1, %eax                #  39:     assign t9 <- 1
    movb    %al, -35(%ebp)         
    jmp     l_f0_26                 #  40:     goto   26
l_f0_25:
    movl    $0, %eax                #  42:     assign t9 <- 0
    movb    %al, -35(%ebp)         
l_f0_26:
    movzbl  -35(%ebp), %eax         #  44:     return t9
    jmp     l_f0_exit              
    jmp     l_f0_30_if_false        #  45:     goto   30_if_false
    jmp     l_f0_28                 #  46:     goto   28
l_f0_30_if_false:
l_f0_28:
l_f0_32_while_cond:
    movl    $98, %eax               #  50:     if     98 <= 98 goto 33_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_33_while_body     
    jmp     l_f0_31                 #  51:     goto   31
l_f0_33_while_body:
    jmp     l_f0_32_while_cond      #  53:     goto   32_while_cond
l_f0_31:
    call    ReadInt                 #  55:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_11_while_cond      #  56:     goto   11_while_cond
l_f0_10:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $v1       <char> %ebp-49 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $40889, %eax            #   0:     div    t3 <- 40889, 50056
    movl    $50056, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     div    t4 <- t3, 9840
    movl    $9840, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     div    t5 <- t4, 72761
    movl    $72761, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     sub    t6 <- t5, 78933
    movl    $78933, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   4:     add    t7 <- t6, 33811
    movl    $33811, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   5:     add    t8 <- t7, 43560
    movl    $43560, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   6:     add    t9 <- t8, 57220
    movl    $57220, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     return t9
    jmp     l_f1_exit              
    movl    $46386, %eax            #   8:     add    t10 <- 46386, 14821
    movl    $14821, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     return t10
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  10:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  11:     assign v1 <- t11
    movb    %al, -49(%ebp)         

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

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
l_f2_1_while_cond:
    movl    $67322, %eax            #   1:     assign v1 <- 67322
    movl    %eax, 8(%ebp)          
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
    jmp     l_f2_exit              
    jmp     l_f2_6                  #   4:     goto   6
    jmp     l_f2_7                  #   5:     goto   7
l_f2_6:
    movl    $1, %eax                #   7:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_8                  #   8:     goto   8
l_f2_7:
    movl    $0, %eax                #  10:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_8:
    movzbl  -13(%ebp), %eax         #  12:     assign v2 <- t3
    movb    %al, -14(%ebp)         

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    movl    $29542, %eax            #   0:     assign v0 <- 29542
    movl    %eax, v0               
l_test_2_while_cond:
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 # 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   4:     goto   1
l_test_3_while_body:
    jmp     l_test_exit            
    call    dummyProcedure          #   7:     call   dummyProcedure
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_9_while_cond:
    movl    $47621, %eax            #  12:     if     47621 >= 74011 goto 10_while_body
    movl    $74011, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_10_while_body   
    jmp     l_test_8                #  13:     goto   8
l_test_10_while_body:
    movl    $0, %eax                #  15:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_9_while_cond     #  16:     goto   9_while_cond
l_test_8:
    call    dummyCHARfunc           #  18:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
