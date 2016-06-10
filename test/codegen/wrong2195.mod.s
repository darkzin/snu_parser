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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t9       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $v0       <bool> %ebp-31 ]

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
    movl    $8510, %eax             #   0:     div    t5 <- 8510, 26640
    movl    $26640, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     sub    t6 <- t5, 60874
    movl    $60874, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t7 <- t6, 55361
    movl    $55361, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     return t7
    jmp     l_f0_exit              
    jmp     l_f0_3                  #   4:     goto   3
    movl    $1, %eax                #   5:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_4                  #   6:     goto   4
l_f0_3:
    movl    $0, %eax                #   8:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f0_4:
    movzbl  -29(%ebp), %eax         #  10:     assign v0 <- t8
    movb    %al, -31(%ebp)         
l_f0_7_while_cond:
    call    dummyCHARfunc           #  12:     call   t9 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movl    $98, %eax               #  13:     if     98 > t9 goto 8_while_body
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_8_while_body      
    jmp     l_f0_6                  #  14:     goto   6
l_f0_8_while_body:
    movl    $86507, %eax            #  16:     if     86507 # 41432 goto 11_if_true
    movl    $41432, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  17:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  19:     goto   10
l_f0_12_if_false:
l_f0_10:
l_f0_15_while_cond:
    movl    $68642, %eax            #  23:     if     68642 >= 98052 goto 16_while_body
    movl    $98052, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_16_while_body     
    jmp     l_f0_14                 #  24:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  26:     goto   15_while_cond
l_f0_14:
    movl    $4132, %eax             #  28:     return 4132
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  29:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f0_21_while_cond:
    jmp     l_f0_21_while_cond      #  31:     goto   21_while_cond
    movl    $99, %eax               #  32:     if     99 # 97 goto 24_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_24_if_true        
    jmp     l_f0_25_if_false        #  33:     goto   25_if_false
l_f0_24_if_true:
    jmp     l_f0_23                 #  35:     goto   23
l_f0_25_if_false:
l_f0_23:
    jmp     l_f0_29_if_false        #  38:     goto   29_if_false
    jmp     l_f0_27                 #  39:     goto   27
l_f0_29_if_false:
l_f0_27:
    jmp     l_f0_7_while_cond       #  42:     goto   7_while_cond
l_f0_6:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]

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
    movl    $13773, %eax            #   0:     mul    t5 <- 13773, 97214
    movl    $97214, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t6 <- t5, 38367
    movl    $38367, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t7 <- t6, 21131
    movl    $21131, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v0 <- t7
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #   4:     call   t8 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   5:     return t8
    jmp     l_f1_exit              
l_f1_3_while_cond:
    movl    $0, %eax                #   7:     if     0 # 0 goto 4_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_4_while_body      
    jmp     l_f1_4_while_body       #   8:     goto   4_while_body
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  10:     goto   3_while_cond

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 73 of <array 85 of <array 22 of <array 75 of <array 41 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 52 of <array 29 of <array 39 of <array 9 of <array 87 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    jmp     l_f2_1_while_cond       #   1:     goto   1_while_cond
    call    dummyBOOLfunc           #   2:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_8_while_cond:
    movl    $98732, %eax            #   4:     if     98732 < 87754 goto 9_while_body
    movl    $87754, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_9_while_body      
    jmp     l_f2_7                  #   5:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #   7:     goto   8_while_cond
l_f2_7:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    movl    $50207, %eax            #   0:     assign v0 <- 50207
    movl    %eax, v0               
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   2:     if     99 >= t0 goto 2_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
l_test_6_while_cond:
    call    ReadInt                 #   9:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $83091, %eax            #  10:     mul    t2 <- 83091, 6863
    movl    $6863, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t3 <- t2, 89546
    movl    $89546, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     div    t4 <- t3, 65219
    movl    $65219, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -20(%ebp), %eax         #  13:     if     t1 > t4 goto 7_while_body
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #  14:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  16:     goto   6_while_cond
l_test_5:

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
