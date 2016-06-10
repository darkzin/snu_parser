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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 88 of <array 69 of <array 6 of <array 68 of <array 51 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 26 of <array 19 of <array 23 of <array 44 of <array 78 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 35 of <array 56 of <array 27 of <array 62 of <array 99 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -38(%ebp)   1  [ $v4       <bool> %ebp-38 ]

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
l_f0_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_2_while_body       #   3:     goto   2_while_body
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $2060, %eax             #   8:     mul    t2 <- 2060, 50141
    movl    $50141, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     div    t3 <- t2, 69700
    movl    $69700, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     mul    t4 <- t3, 98971
    movl    $98971, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     div    t5 <- t4, 20233
    movl    $20233, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     add    t6 <- t5, 38500
    movl    $38500, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  13:     return t6
    jmp     l_f0_exit              
    movl    $98, %eax               #  14:     if     98 <= 100 goto 7
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_7                 
    jmp     l_f0_8                  #  15:     goto   8
l_f0_7:
    movl    $1, %eax                #  17:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f0_9                  #  18:     goto   9
l_f0_8:
    movl    $0, %eax                #  20:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_f0_9:
    movzbl  -37(%ebp), %eax         #  22:     assign v4 <- t7
    movb    %al, -38(%ebp)         

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 56 of <array 21 of <array 11 of <array 69 of <array 54 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_5_if_false         #   1:     goto   5_if_false
    jmp     l_f1_8_if_false         #   2:     goto   8_if_false
    jmp     l_f1_6                  #   3:     goto   6
l_f1_8_if_false:
l_f1_6:
    jmp     l_f1_3                  #   6:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_0                  #   9:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  12:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_11_while_cond:
    jmp     l_f1_12_while_body      #  14:     goto   12_while_body
l_f1_12_while_body:
    movl    $97, %eax               #  16:     assign v4 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f1_15                 #  17:     goto   15
l_f1_15:
    jmp     l_f1_11_while_cond      #  19:     goto   11_while_cond

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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <bool> %ebp-33 ]
    #    -34(%ebp)   1  [ $t7       <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $v0       <bool> %ebp-35 ]

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
l_f2_1_while_cond:
    movl    $21311, %eax            #   1:     div    t1 <- 21311, 94864
    movl    $94864, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t2 <- t1, 25374
    movl    $25374, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t3 <- t2, 3150
    movl    $3150, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $17276, %eax            #   4:     if     17276 < t3 goto 2_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_2_while_body      
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    movl    $12761, %eax            #   9:     div    t4 <- 12761, 10530
    movl    $10530, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     div    t5 <- t4, 62977
    movl    $62977, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     if     t5 < 6127 goto 5
    movl    $6127, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_5                 
    jmp     l_f2_6                  #  12:     goto   6
l_f2_5:
    movl    $1, %eax                #  14:     assign t6 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f2_7                  #  15:     goto   7
l_f2_6:
    movl    $0, %eax                #  17:     assign t6 <- 0
    movb    %al, -33(%ebp)         
l_f2_7:
    movzbl  -33(%ebp), %eax         #  19:     assign v0 <- t6
    movb    %al, -35(%ebp)         
    movl    $100, %eax              #  20:     if     100 < 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_10                
    jmp     l_f2_11                 #  21:     goto   11
l_f2_10:
    movl    $1, %eax                #  23:     assign t7 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f2_12                 #  24:     goto   12
l_f2_11:
    movl    $0, %eax                #  26:     assign t7 <- 0
    movb    %al, -34(%ebp)         
l_f2_12:
    movzbl  -34(%ebp), %eax         #  28:     assign v0 <- t7
    movb    %al, -35(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    movl    $42602, %eax            #   5:     assign v0 <- 42602
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_9_if_false       #   7:     goto   9_if_false
    jmp     l_test_7                #   8:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $60269, %eax            #  14:     if     60269 <= 72188 goto 12_if_true
    movl    $72188, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_12_if_true      
    jmp     l_test_13_if_false      #  15:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_exit            
    movl    $37135, %eax            #  18:     assign v0 <- 37135
    movl    %eax, v0               
    movl    $99, %eax               #  19:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #  20:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  21:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  22:     goto   11
l_test_13_if_false:
l_test_11:

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
