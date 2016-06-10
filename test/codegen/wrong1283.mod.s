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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v2       <bool> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
    movl    $4758, %eax             #   3:     assign v1 <- 4758
    movl    %eax, -20(%ebp)        
    movl    $6567, %eax             #   4:     assign v1 <- 6567
    movl    %eax, -20(%ebp)        
    movl    $100, %eax              #   5:     if     100 # 100 goto 10
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_10                
    jmp     l_f0_11                 #   6:     goto   11
l_f0_10:
    movl    $1, %eax                #   8:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_12                 #   9:     goto   12
l_f0_11:
    movl    $0, %eax                #  11:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f0_12:
    movzbl  -14(%ebp), %eax         #  13:     assign v2 <- t7
    movb    %al, -21(%ebp)         
    jmp     l_f0_5                  #  14:     goto   5
l_f0_5:
    jmp     l_f0_1                  #  16:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  19:     call   t8 <- dummyCHARfunc
    movb    %al, -15(%ebp)         

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 23 of <array 49 of <array 31 of <array 25 of <array 86 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 # 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
    call    dummyBOOLfunc           #   4:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_f1_7_while_cond:
    movl    $34190, %eax            #   6:     if     34190 = 53226 goto 8_while_body
    movl    $53226, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_8_while_body      
    jmp     l_f1_6                  #   7:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #   9:     goto   7_while_cond
l_f1_6:
l_f1_11_while_cond:
    jmp     l_f1_10                 #  12:     goto   10
    jmp     l_f1_11_while_cond      #  13:     goto   11_while_cond
l_f1_10:
l_f1_14_while_cond:
    jmp     l_f1_14_while_cond      #  16:     goto   14_while_cond
    call    dummyBOOLfunc           #  17:     call   t8 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    call    WriteLn                 #  18:     call   WriteLn
    jmp     l_f1_1                  #  19:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t9       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 35 of <array 54 of <array 8 of <array 92 of <array 50 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 > t6 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $97, %eax               #   7:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #   8:     call   t7 <- f0
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  10:     call   t8 <- f0
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
    jmp     l_f2_6                  #  11:     goto   6
l_f2_6:
    movl    $1, %eax                #  13:     assign t9 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_8                  #  14:     goto   8
    movl    $0, %eax                #  15:     assign t9 <- 0
    movb    %al, -16(%ebp)         
l_f2_8:
    movzbl  -16(%ebp), %eax         #  17:     return t9
    jmp     l_f2_exit              

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
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
l_test_6_while_cond:
    movl    $98, %eax               #   8:     if     98 < 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_5                #   9:     goto   5
l_test_7_while_body:
    jmp     l_test_exit            
    jmp     l_test_6_while_cond     #  12:     goto   6_while_cond
l_test_5:
    call    dummyCHARfunc           #  14:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $59507, %eax            #  15:     div    t1 <- 59507, 84405
    movl    $84405, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     mul    t2 <- t1, 79042
    movl    $79042, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     mul    t3 <- t2, 16521
    movl    $16521, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  18:     mul    t4 <- t3, 40568
    movl    $40568, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     div    t5 <- t4, 31999
    movl    $31999, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     assign v0 <- t5
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
