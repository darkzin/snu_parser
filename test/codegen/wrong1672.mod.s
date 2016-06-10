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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]

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
    movl    $0, %eax                #   0:     if     0 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyCHARfunc           #   3:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $80187, %eax            #   4:     return 80187
    jmp     l_f0_exit              
l_f0_7_while_cond:
    jmp     l_f0_6                  #   6:     goto   6
    jmp     l_f0_7_while_cond       #   7:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_0                  #   9:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $47700, %eax            #  12:     add    t6 <- 47700, 84062
    movl    $84062, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $63249, %eax            #  13:     mul    t7 <- 63249, 80403
    movl    $80403, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t8 <- t6, t7
    movl    -24(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     return t8
    jmp     l_f0_exit              
    call    dummyINTfunc            #  16:     call   t9 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 40 of <array 70 of <array 48 of <array 76 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $84369, %eax            #   1:     div    t5 <- 84369, 25921
    movl    $25921, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     mul    t6 <- t5, 33339
    movl    $33339, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   3:     if     t6 > 34616 goto 2_while_body
    movl    $34616, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $17080, %eax            #   8:     add    t7 <- 17080, 93303
    movl    $93303, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     add    t8 <- t7, 11529
    movl    $11529, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $2836, %eax             #  10:     if     2836 >= t8 goto 5_if_true
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #  11:     goto   6_if_false
l_f1_5_if_true:
    movl    $71482, %eax            #  13:     add    t9 <- 71482, 35007
    movl    $35007, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  14:     sub    t10 <- t9, 98178
    movl    $98178, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  15:     add    t11 <- t10, 48334
    movl    $48334, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t11
    pushl   %eax                   
    call    WriteInt                #  17:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_4                  #  18:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_10_while_cond:
    movl    $44169, %eax            #  22:     if     44169 <= 35352 goto 11_while_body
    movl    $35352, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  23:     goto   9
l_f1_11_while_body:
l_f1_14_while_cond:
    movl    $47308, %eax            #  26:     if     47308 < 94350 goto 15_while_body
    movl    $94350, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  27:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  29:     goto   14_while_cond
l_f1_13:
    movl    $97, %eax               #  31:     return 97
    jmp     l_f1_exit              
    movl    $98, %eax               #  32:     if     98 < 97 goto 19
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_19                
    jmp     l_f1_20                 #  33:     goto   20
l_f1_19:
    movl    $1, %eax                #  35:     assign t12 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_21                 #  36:     goto   21
l_f1_20:
    movl    $0, %eax                #  38:     assign t12 <- 0
    movb    %al, -21(%ebp)         
l_f1_21:
    movzbl  -21(%ebp), %eax         #  40:     assign v1 <- t12
    movb    %al, 12(%ebp)          
    jmp     l_f1_10_while_cond      #  41:     goto   10_while_cond
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t8       <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $t9       <bool> %ebp-27 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -28(%ebp)   1  [ $v1       <bool> %ebp-28 ]

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
    movl    $43201, %eax            #   0:     sub    t5 <- 43201, 43254
    movl    $43254, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t6 <- t5, 32837
    movl    $32837, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     if     t6 < 85563 goto 1
    movl    $85563, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t7 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t7 <- 0
    movb    %al, -25(%ebp)         
l_f2_3:
    movzbl  -25(%ebp), %eax         #  10:     assign v1 <- t7
    movb    %al, -28(%ebp)         
    call    dummyBOOLfunc           #  11:     call   t8 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    jmp     l_f2_11                 #  12:     goto   11
    call    dummyBOOLfunc           #  13:     call   t9 <- dummyBOOLfunc
    movb    %al, -27(%ebp)         
    movzbl  -27(%ebp), %eax         #  14:     if     t9 = 1 goto 11
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11                
    jmp     l_f2_12                 #  15:     goto   12
l_f2_11:
    movl    $1, %eax                #  17:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_13                 #  18:     goto   13
l_f2_12:
    movl    $0, %eax                #  20:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_13:
    movzbl  -13(%ebp), %eax         #  22:     if     t10 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #  23:     goto   8
l_f2_7:
    movl    $1, %eax                #  25:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_9                  #  26:     goto   9
l_f2_8:
    movl    $0, %eax                #  28:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_9:
    movzbl  -14(%ebp), %eax         #  30:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t4       <bool> %ebp-22 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $83249, %eax            #   2:     if     83249 > 30663 goto 3_if_true
    movl    $30663, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_3_if_true       
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
l_test_3_if_true:
    movl    $99, %eax               #   5:     assign v0 <- 99
    movb    %al, v0                
    call    dummyINTfunc            #   6:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_test_2                #   7:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $98, %eax               #  10:     if     98 < 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_9_if_true       
    jmp     l_test_10_if_false      #  11:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_exit            
    jmp     l_test_8                #  14:     goto   8
l_test_10_if_false:
l_test_8:
l_test_14_while_cond:
    call    dummyBOOLfunc           #  18:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  19:     if     t3 = 1 goto 15_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15_while_body   
    jmp     l_test_13               #  20:     goto   13
l_test_15_while_body:
    call    dummyBOOLfunc           #  22:     call   t4 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_14_while_cond    #  24:     goto   14_while_cond
l_test_13:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
