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
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #   1:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_3_while_cond:
    movl    $32402, %eax            #   3:     if     32402 > 49353 goto 4_while_body
    movl    $49353, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_4_while_body      
    jmp     l_f0_2                  #   4:     goto   2
l_f0_4_while_body:
    movl    $98, %eax               #   6:     return 98
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   7:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   8:     return 98
    jmp     l_f0_exit              
    movl    $97, %eax               #   9:     return 97
    jmp     l_f0_exit              
    movl    $100, %eax              #  10:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  11:     goto   3_while_cond
l_f0_2:

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 77 of <array 82 of <array 29 of <array 84 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 100 of <array 35 of <array 37 of <array 45 of <array 16 of <int>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $99, %eax               #   0:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_exit              
    movl    $0, %eax                #   3:     if     0 # 0 goto 3_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   4:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_exit              
l_f1_8_while_cond:
    movl    $32818, %eax            #   8:     if     32818 < 11737 goto 9_while_body
    movl    $11737, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_9_while_body      
    jmp     l_f1_7                  #   9:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  11:     goto   8_while_cond
l_f1_7:
    jmp     l_f1_2                  #  13:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
l_f2_2_while_cond:
    movl    $38179, %eax            #   2:     sub    t9 <- 38179, 9607
    movl    $9607, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t10 <- t9, 83097
    movl    $83097, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $30453, %eax            #   4:     if     30453 >= t10 goto 3_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_3_while_body      
    jmp     l_f2_1                  #   5:     goto   1
l_f2_3_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t7       <bool> %ebp-37 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
l_test_4_while_cond:
    movl    $13756, %eax            #   6:     if     13756 >= 7480 goto 5_while_body
    movl    $7480, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_5_while_body    
    jmp     l_test_3                #   7:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   9:     goto   4_while_cond
l_test_3:
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #  13:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $71208, %eax            #  14:     sub    t2 <- 71208, 7607
    movl    $7607, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     add    t3 <- t2, 35838
    movl    $35838, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     sub    t4 <- t3, 39945
    movl    $39945, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     add    t5 <- t4, 48974
    movl    $48974, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $39109, %eax            #  18:     if     39109 <= t5 goto 9_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_9_if_true       
    jmp     l_test_10_if_false      #  19:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  21:     goto   8
l_test_10_if_false:
l_test_8:
    call    dummyINTfunc            #  24:     call   t6 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  25:     if     t6 >= 16858 goto 13
    movl    $16858, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_13              
    jmp     l_test_14               #  26:     goto   14
l_test_13:
    movl    $1, %eax                #  28:     assign t7 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_15               #  29:     goto   15
l_test_14:
    movl    $0, %eax                #  31:     assign t7 <- 0
    movb    %al, -37(%ebp)         
l_test_15:
    movzbl  -37(%ebp), %eax         #  33:     assign v0 <- t7
    movb    %al, v0                
    movl    $97, %eax               #  34:     param  0 <- 97
    pushl   %eax                   
    call    f2                      #  35:     call   f2
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
