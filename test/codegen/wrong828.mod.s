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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]

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
l_f0_1_while_cond:
    movl    $96915, %eax            #   1:     div    t5 <- 96915, 1422
    movl    $1422, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $90951, %eax            #   2:     if     90951 < t5 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    movl    $97, %eax               #   5:     assign v1 <- 97
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #   6:     assign v1 <- 99
    movb    %al, -17(%ebp)         
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_exit              
    movl    $98, %eax               #  10:     assign v1 <- 98
    movb    %al, -17(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v3       <char> %ebp-21 ]

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
l_f1_1_while_cond:
    movl    $1, %eax                #   1:     if     1 = 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $1, %eax                #   4:     if     1 = 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   8:     goto   7
l_f1_6:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  12:     assign v1 <- t5
    movb    %al, -15(%ebp)         
    movl    $37821, %eax            #  13:     assign v2 <- 37821
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1_while_cond       #  14:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  16:     call   t6 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  17:     assign v3 <- t6
    movb    %al, -21(%ebp)         
l_f1_12_while_cond:
    movl    $23842, %eax            #  19:     assign v2 <- 23842
    movl    %eax, -20(%ebp)        
l_f1_16_while_cond:
    movl    $100, %eax              #  21:     if     100 <= 100 goto 17_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f1_17_while_body     
    jmp     l_f1_15                 #  22:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  24:     goto   16_while_cond
l_f1_15:
    call    f0                      #  26:     call   f0
    jmp     l_f1_12_while_cond      #  27:     goto   12_while_cond

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 10 of <array 9 of <array 9 of <array 8 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
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
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_2                  #   1:     goto   2
l_f2_1:
    movl    $1, %eax                #   3:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v3 <- t5
    movb    %al, -29(%ebp)         
l_f2_6_while_cond:
    movl    $36777, %eax            #  10:     div    t6 <- 36777, 60103
    movl    $60103, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     div    t7 <- t6, 84142
    movl    $84142, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     if     t7 # 72590 goto 7_while_body
    movl    $72590, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #  13:     goto   5
l_f2_7_while_body:
    movl    $7089, %eax             #  15:     assign v2 <- 7089
    movl    %eax, 12(%ebp)         
    call    ReadInt                 #  16:     call   t8 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f2_6_while_cond       #  17:     goto   6_while_cond
l_f2_5:
l_f2_12_while_cond:
    jmp     l_f2_14                 #  20:     goto   14
l_f2_14:
l_f2_18_while_cond:
    movl    $0, %eax                #  23:     if     0 # 0 goto 19_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_19_while_body     
    jmp     l_f2_17                 #  24:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  26:     goto   18_while_cond
l_f2_17:
    movl    $97, %eax               #  28:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  29:     call   WriteChar
    addl    $4, %esp               
l_f2_23_while_cond:
    jmp     l_f2_22                 #  31:     goto   22
    jmp     l_f2_22                 #  32:     goto   22
    jmp     l_f2_23_while_cond      #  33:     goto   23_while_cond
l_f2_22:
    jmp     l_f2_12_while_cond      #  35:     goto   12_while_cond

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
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]

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
l_test_1_while_cond:
    jmp     l_test_exit            
    movl    $67081, %eax            #   2:     add    t0 <- 67081, 49224
    movl    $49224, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     sub    t1 <- t0, 75665
    movl    $75665, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t2 <- t1, 37333
    movl    $37333, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t3 <- t2, 8381
    movl    $8381, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     assign v0 <- t3
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
    call    dummyProcedure          #   8:     call   dummyProcedure
l_test_10_while_cond:
    movl    $100, %eax              #  10:     if     100 < 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_11_while_body   
    jmp     l_test_9                #  11:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  13:     goto   10_while_cond
l_test_9:
    movl    $78588, %eax            #  15:     assign v0 <- 78588
    movl    %eax, v0               
    jmp     l_test_14               #  16:     goto   14
l_test_14:
    movl    $17603, %eax            #  18:     param  0 <- 17603
    pushl   %eax                   
    call    WriteInt                #  19:     call   WriteInt
    addl    $4, %esp               
    movl    $62228, %eax            #  20:     assign v0 <- 62228
    movl    %eax, v0               
    movl    $0, %eax                #  21:     if     0 = 1 goto 20_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_20_if_true      
    jmp     l_test_21_if_false      #  22:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  24:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_6                #  27:     goto   6
l_test_6:
    movl    $74255, %eax            #  29:     if     74255 < 9810 goto 24_if_true
    movl    $9810, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_24_if_true      
    jmp     l_test_25_if_false      #  30:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_27               #  32:     goto   27
l_test_27:
    call    dummyBOOLfunc           #  34:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_23               #  36:     goto   23
l_test_25_if_false:
l_test_23:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
