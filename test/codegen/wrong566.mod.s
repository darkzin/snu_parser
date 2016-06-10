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
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t12      <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t4       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 4 of <array 1 of <array 3 of <array 6 of <int>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    movzbl  -19(%ebp), %eax         #   1:     if     t4 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_5_while_cond:
    movl    $78313, %eax            #   9:     mul    t6 <- 78313, 42509
    movl    $42509, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     div    t7 <- t6, 28596
    movl    $28596, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     div    t8 <- t7, 10427
    movl    $10427, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     div    t9 <- t8, 80400
    movl    $80400, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  13:     div    t10 <- t9, 17378
    movl    $17378, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $75095, %eax            #  14:     if     75095 > t10 goto 6_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_6_while_body      
    jmp     l_f0_4                  #  15:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #  17:     goto   5_while_cond
l_f0_4:
    call    dummyCHARfunc           #  19:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  20:     if     t11 = 100 goto 9
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_10                 #  21:     goto   10
l_f0_9:
    movl    $1, %eax                #  23:     assign t12 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_11                 #  24:     goto   11
l_f0_10:
    movl    $0, %eax                #  26:     assign t12 <- 0
    movb    %al, -18(%ebp)         
l_f0_11:
    movzbl  -18(%ebp), %eax         #  28:     return t12
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 10 of <array 5 of <array 4 of <array 6 of <char>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    jmp     l_f1_5_if_false         #   0:     goto   5_if_false
    jmp     l_f1_3                  #   1:     goto   3
l_f1_5_if_false:
l_f1_3:
l_f1_7_while_cond:
    movl    $22415, %eax            #   5:     if     22415 < 38137 goto 8_while_body
    movl    $38137, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #   6:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #   8:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_0:
    call    dummyCHARfunc           #  12:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #  13:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  14:     assign v3 <- t5
    movb    %al, -15(%ebp)         

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

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_7_while_cond:
    jmp     l_f2_6                  #   4:     goto   6
    jmp     l_f2_7_while_cond       #   5:     goto   7_while_cond
l_f2_6:
    movl    $99, %eax               #   7:     return 99
    jmp     l_f2_exit              
    movl    $97, %eax               #   8:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_14                 #  12:     goto   14
l_f2_14:
    jmp     l_f2_11                 #  14:     goto   11
l_f2_11:
    jmp     l_f2_19_if_false        #  16:     goto   19_if_false
    movl    $98, %eax               #  17:     return 98
    jmp     l_f2_exit              
    movl    $97, %eax               #  18:     return 97
    jmp     l_f2_exit              
    jmp     l_f2_17                 #  19:     goto   17
l_f2_19_if_false:
l_f2_17:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_3_while_cond:
    movl    $96417, %eax            #   3:     if     96417 > 88012 goto 4_while_body
    movl    $88012, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
    call    dummyINTfunc            #   6:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_exit            
l_test_9_while_cond:
    jmp     l_test_8                #   9:     goto   8
    jmp     l_test_9_while_cond     #  10:     goto   9_while_cond
l_test_8:
    movl    $100, %eax              #  12:     assign v0 <- 100
    movb    %al, v0                
    movl    $99, %eax               #  13:     if     99 < 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_13_if_true      
    jmp     l_test_14_if_false      #  14:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  16:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_3_while_cond     #  19:     goto   3_while_cond
l_test_2:
    movl    $0, %eax                #  21:     assign v1 <- 0
    movb    %al, v1                
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  23:     goto   21_while_cond
    movl    $0, %eax                #  24:     if     0 = 1 goto 24_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_24_if_true      
    jmp     l_test_25_if_false      #  25:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  27:     goto   23
l_test_25_if_false:
l_test_23:
l_test_28_while_cond:
    movl    $32681, %eax            #  31:     if     32681 < 47799 goto 29_while_body
    movl    $47799, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_29_while_body   
    jmp     l_test_27               #  32:     goto   27
l_test_29_while_body:
    jmp     l_test_28_while_cond    #  34:     goto   28_while_cond
l_test_27:
    jmp     l_test_17               #  36:     goto   17
l_test_17:
    call    dummyCHARfunc           #  38:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  39:     assign v0 <- t3
    movb    %al, v0                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
