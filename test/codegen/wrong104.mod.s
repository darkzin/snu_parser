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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]

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
l_f0_1_while_cond:
    jmp     l_f0_4                  #   1:     goto   4
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movl    $1, %eax                #   9:     if     1 # t8 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_while_body:
    jmp     l_f0_exit              
    movl    $1, %eax                #  13:     assign v1 <- 1
    movb    %al, 8(%ebp)           
    jmp     l_f0_1_while_cond       #  14:     goto   1_while_cond
l_f0_0:
l_f0_13_while_cond:
    jmp     l_f0_13_while_cond      #  17:     goto   13_while_cond
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t8       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t9       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 8 of <array 6 of <array 4 of <array 8 of <int>>>>>>> %ebp+8 ]
    #    -18(%ebp)   1  [ $v2       <char> %ebp-18 ]

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
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t9 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     assign v2 <- t9
    movb    %al, -18(%ebp)         
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 4 of <array 2 of <array 5 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 1 of <array 1 of <array 1 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]

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
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   1:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v3 <- t8
    movb    %al, -15(%ebp)         
l_f2_3_while_cond:
    call    dummyCHARfunc           #   4:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   5:     if     t9 # 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_4_while_body      
    jmp     l_f2_2                  #   6:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #   8:     goto   3_while_cond
l_f2_2:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <bool> %ebp-41 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $21710, %eax            #   3:     add    t1 <- 21710, 98677
    movl    $98677, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $58986, %eax            #   4:     if     58986 <= t1 goto 4_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_4_while_body    
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    movl    $64773, %eax            #   7:     assign v0 <- 64773
    movl    %eax, v0               
    movl    $99, %eax               #   8:     if     99 # 97 goto 8_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_8_if_true       
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  11:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #  15:     goto   3_while_cond
l_test_2:
    jmp     l_test_14_if_false      #  17:     goto   14_if_false
    movl    $0, %eax                #  18:     assign v1 <- 0
    movb    %al, v1                
    movl    $1, %eax                #  19:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_12               #  20:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $43095, %eax            #  23:     add    t2 <- 43095, 29825
    movl    $29825, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     sub    t3 <- t2, 7074
    movl    $7074, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     add    t4 <- t3, 11764
    movl    $11764, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  26:     add    t5 <- t4, 67194
    movl    $67194, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  27:     sub    t6 <- t5, 17278
    movl    $17278, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $78283, %eax            #  28:     if     78283 <= t6 goto 19_if_true
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_19_if_true      
    jmp     l_test_20_if_false      #  29:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_18               #  33:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_28               #  36:     goto   28
l_test_28:
    jmp     l_test_26               #  38:     goto   26
    movl    $1, %eax                #  39:     assign t7 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_test_27               #  40:     goto   27
l_test_26:
    movl    $0, %eax                #  42:     assign t7 <- 0
    movb    %al, -41(%ebp)         
l_test_27:
    movzbl  -41(%ebp), %eax         #  44:     assign v1 <- t7
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
