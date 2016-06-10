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
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $26921, %eax            #   0:     sub    t9 <- 26921, 80519
    movl    $80519, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     add    t10 <- t9, 38300
    movl    $38300, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     return t10
    jmp     l_f0_exit              
    movl    $20790, %eax            #   3:     if     20790 <= 31629 goto 2_if_true
    movl    $31629, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_2_if_true:
l_f0_6_while_cond:
    jmp     l_f0_5                  #   7:     goto   5
    jmp     l_f0_6_while_cond       #   8:     goto   6_while_cond
l_f0_5:
    movl    $62375, %eax            #  10:     if     62375 > 85360 goto 9
    movl    $85360, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_9                 
    jmp     l_f0_10                 #  11:     goto   10
l_f0_9:
    movl    $1, %eax                #  13:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_11                 #  14:     goto   11
l_f0_10:
    movl    $0, %eax                #  16:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f0_11:
    movzbl  -17(%ebp), %eax         #  18:     assign v2 <- t11
    movb    %al, -29(%ebp)         
    movl    $57373, %eax            #  19:     return 57373
    jmp     l_f0_exit              
l_f0_15_while_cond:
    jmp     l_f0_14                 #  21:     goto   14
    jmp     l_f0_15_while_cond      #  22:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_1                  #  24:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_18_while_cond:
    movl    $93753, %eax            #  28:     if     93753 # 95039 goto 24_if_true
    movl    $95039, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_24_if_true        
    jmp     l_f0_25_if_false        #  29:     goto   25_if_false
l_f0_24_if_true:
    jmp     l_f0_23                 #  31:     goto   23
l_f0_25_if_false:
l_f0_23:
    movl    $0, %eax                #  34:     if     0 # 1 goto 28
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_28                
    jmp     l_f0_29                 #  35:     goto   29
l_f0_28:
    movl    $1, %eax                #  37:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_30                 #  38:     goto   30
l_f0_29:
    movl    $0, %eax                #  40:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f0_30:
    movzbl  -18(%ebp), %eax         #  42:     assign v2 <- t12
    movb    %al, -29(%ebp)         
    call    dummyINTfunc            #  43:     call   t13 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
l_f0_34_while_cond:
    movl    $0, %eax                #  45:     if     0 # 1 goto 35_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_35_while_body     
    jmp     l_f0_33                 #  46:     goto   33
l_f0_35_while_body:
    jmp     l_f0_34_while_cond      #  48:     goto   34_while_cond
l_f0_33:
    jmp     l_f0_39_if_false        #  50:     goto   39_if_false
    jmp     l_f0_37                 #  51:     goto   37
l_f0_39_if_false:
l_f0_37:
    jmp     l_f0_40                 #  54:     goto   40
l_f0_40:
    jmp     l_f0_20                 #  56:     goto   20
l_f0_20:
    jmp     l_f0_18_while_cond      #  58:     goto   18_while_cond

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <char> %ebp-15 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
    movl    $100, %eax              #   3:     assign v0 <- 100
    movb    %al, -15(%ebp)         
l_f1_8_while_cond:
    movl    $70078, %eax            #   5:     if     70078 >= 97158 goto 9_while_body
    movl    $97158, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_9_while_body      
    jmp     l_f1_7                  #   6:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #   8:     goto   8_while_cond
l_f1_7:
    movl    $98, %eax               #  10:     assign v0 <- 98
    movb    %al, -15(%ebp)         
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    jmp     l_f1_exit              
l_f1_14_while_cond:
    call    dummyBOOLfunc           #  16:     call   t9 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  17:     if     t9 = 1 goto 15_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_15_while_body     
    jmp     l_f1_13                 #  18:     goto   13
l_f1_15_while_body:
    call    dummyCHARfunc           #  20:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_14_while_cond      #  21:     goto   14_while_cond
l_f1_13:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 22 of <array 54 of <array 41 of <array 86 of <array 95 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 43 of <array 100 of <array 63 of <array 55 of <array 19 of <char>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v3       <bool> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    call    ReadInt                 #   1:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     if     t9 # 71188 goto 2_while_body
    movl    $71188, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    movl    $14565, %eax            #   5:     return 14565
    jmp     l_f2_exit              
    movl    $14116, %eax            #   6:     assign v2 <- 14116
    movl    %eax, -28(%ebp)        
    movl    $100, %eax              #   7:     if     100 < 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   8:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #  10:     goto   6
l_f2_8_if_false:
l_f2_6:
    call    dummyINTfunc            #  13:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f2_1_while_cond       #  14:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  16:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    WriteLn                 #  17:     call   WriteLn
    movl    $0, %eax                #  18:     assign v3 <- 0
    movb    %al, -29(%ebp)         
    movl    $100, %eax              #  19:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  20:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_11                 #  21:     goto   11
l_f2_11:
l_f2_19_while_cond:
    jmp     l_f2_18                 #  24:     goto   18
    jmp     l_f2_18                 #  25:     goto   18
    jmp     l_f2_25_if_false        #  26:     goto   25_if_false
    jmp     l_f2_23                 #  27:     goto   23
l_f2_25_if_false:
l_f2_23:
    jmp     l_f2_26                 #  30:     goto   26
l_f2_26:
    movl    $82041, %eax            #  32:     return 82041
    jmp     l_f2_exit              
    jmp     l_f2_19_while_cond      #  33:     goto   19_while_cond
l_f2_18:

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $86043, %eax            #   0:     add    t0 <- 86043, 67058
    movl    $67058, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 86746
    movl    $86746, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $42268, %eax            #   2:     if     42268 <= t1 goto 1
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_1               
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_3:
    movzbl  -21(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    movl    $22022, %eax            #  11:     mul    t3 <- 22022, 13308
    movl    $13308, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     mul    t4 <- t3, 27673
    movl    $27673, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     div    t5 <- t4, 92449
    movl    $92449, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $69010, %eax            #  14:     sub    t6 <- 69010, 40186
    movl    $40186, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     sub    t7 <- t6, 89035
    movl    $89035, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  16:     sub    t8 <- t7, 36485
    movl    $36485, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -36(%ebp), %eax         #  17:     if     t5 # t8 goto 6_if_true
    movl    -48(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #  18:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #  20:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
