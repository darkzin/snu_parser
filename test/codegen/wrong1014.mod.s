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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    movl    $56398, %eax            #   0:     mul    t3 <- 56398, 31813
    movl    $31813, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t4 <- t3, 58593
    movl    $58593, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $66611, %eax            #   2:     add    t5 <- 66611, t4
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $36556, %eax            #   3:     if     36556 # t5 goto 1_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   4:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_5_while_cond:
    movl    $99, %eax               #  10:     if     99 > 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_6_while_body      
    jmp     l_f0_4                  #  11:     goto   4
l_f0_6_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    call    dummyINTfunc            #  16:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f0_5_while_cond       #  17:     goto   5_while_cond
l_f0_4:
    call    dummyINTfunc            #  19:     call   t7 <- dummyINTfunc
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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t9       <bool> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $25384, %eax            #   1:     mul    t3 <- 25384, 30120
    movl    $30120, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $3478, %eax             #   2:     div    t4 <- 3478, 55055
    movl    $55055, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   3:     if     t3 = t4 goto 2_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
l_f1_5_while_cond:
    movl    $51485, %eax            #   9:     sub    t5 <- 51485, 80583
    movl    $80583, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     if     t5 > 51167 goto 6_while_body
    movl    $51167, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_6_while_body      
    jmp     l_f1_4                  #  11:     goto   4
l_f1_6_while_body:
    jmp     l_f1_10_if_false        #  13:     goto   10_if_false
    jmp     l_f1_8                  #  14:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_5_while_cond       #  17:     goto   5_while_cond
l_f1_4:
l_f1_12_while_cond:
    movl    $62391, %eax            #  20:     sub    t6 <- 62391, 4261
    movl    $4261, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     add    t7 <- t6, 29504
    movl    $29504, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     add    t8 <- t7, 89625
    movl    $89625, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  23:     if     t8 >= 66578 goto 13_while_body
    movl    $66578, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_13_while_body     
    jmp     l_f1_11                 #  24:     goto   11
l_f1_13_while_body:
    call    dummyBOOLfunc           #  26:     call   t9 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         
    movl    $97, %eax               #  27:     return 97
    jmp     l_f1_exit              
    movl    $99, %eax               #  28:     return 99
    jmp     l_f1_exit              
    movl    $99, %eax               #  29:     return 99
    jmp     l_f1_exit              
    movl    $99, %eax               #  30:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  31:     call   WriteChar
    addl    $4, %esp               
l_f1_21_while_cond:
    movl    $1, %eax                #  33:     if     1 # 0 goto 22_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_22_while_body     
    jmp     l_f1_20                 #  34:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  36:     goto   21_while_cond
l_f1_20:
    jmp     l_f1_12_while_cond      #  38:     goto   12_while_cond
l_f1_11:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $v1       <char> %ebp-34 ]

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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     assign v1 <- t4
    movb    %al, -34(%ebp)         
    movl    $35550, %eax            #   3:     add    t5 <- 35550, 53159
    movl    $53159, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t6 <- t5, 72715
    movl    $72715, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t7 <- t6, 56573
    movl    $56573, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $78217, %eax            #   6:     if     78217 >= t7 goto 3
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_3                 
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_5                  #  10:     goto   5
l_f2_4:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f2_5:
    movzbl  -33(%ebp), %eax         #  14:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    movl    $5872, %eax             #   6:     mul    t0 <- 5872, 30011
    movl    $30011, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $19185, %eax            #   7:     sub    t1 <- 19185, t0
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     assign v0 <- t1
    movl    %eax, v0               
l_test_7_while_cond:
    call    f1                      #  10:     call   t2 <- f1
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  11:     if     t2 < 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_while_body    
    jmp     l_test_6                #  12:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  14:     goto   7_while_cond
l_test_6:
    movl    $12935, %eax            #  16:     if     12935 = 10943 goto 11_if_true
    movl    $10943, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11_if_true      
    jmp     l_test_12_if_false      #  17:     goto   12_if_false
l_test_11_if_true:
    movl    $99, %eax               #  19:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_17_if_false      #  20:     goto   17_if_false
    jmp     l_test_15               #  21:     goto   15
l_test_17_if_false:
l_test_15:
    movl    $59292, %eax            #  24:     assign v0 <- 59292
    movl    %eax, v0               
    jmp     l_test_10               #  25:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $100, %eax              #  28:     if     100 < 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_20_if_true      
    jmp     l_test_21_if_false      #  29:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  31:     goto   19
l_test_21_if_false:
l_test_19:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
