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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 5 of <array 1 of <array 9 of <array 10 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 2 of <array 7 of <array 9 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 2 of <array 5 of <array 7 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 9 of <array 7 of <array 7 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 2 of <array 9 of <array 1 of <array 6 of <char>>>>>>> %ebp+20 ]
    #    -16(%ebp)   1  [ $v4       <bool> %ebp-16 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    movl    $0, %eax                #   2:     return 0
    jmp     l_f1_exit              
    movl    $90578, %eax            #   3:     if     90578 = 13419 goto 6
    movl    $13419, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_7                  #   4:     goto   7
l_f1_6:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_8                  #   7:     goto   8
l_f1_7:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_8:
    movzbl  -14(%ebp), %eax         #  11:     assign v4 <- t5
    movb    %al, -16(%ebp)         
    jmp     l_f1_1                  #  12:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyBOOLfunc           #  15:     call   t6 <- dummyBOOLfunc
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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 10 of <array 7 of <array 10 of <array 4 of <char>>>>>>> %ebp+12 ]
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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f2_3_while_cond:
    jmp     l_f2_4_while_body       #   3:     goto   4_while_body
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
    movl    $56783, %eax            #   6:     if     56783 = 11068 goto 7
    movl    $11068, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #   7:     goto   8
l_f2_7:
    movl    $1, %eax                #   9:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_9                  #  10:     goto   9
l_f2_8:
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f2_9:
    movzbl  -21(%ebp), %eax         #  14:     assign v2 <- t6
    movb    %al, -29(%ebp)         
    call    dummyINTfunc            #  15:     call   t7 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
l_f2_13_while_cond:
    movl    $99, %eax               #  17:     if     99 # 97 goto 14_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_14_while_body     
    jmp     l_f2_12                 #  18:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  20:     goto   13_while_cond
l_f2_12:
    movl    $97, %eax               #  22:     if     97 = 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  23:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  25:     goto   16
l_f2_18_if_false:
l_f2_16:
    jmp     l_f2_3_while_cond       #  28:     goto   3_while_cond
l_f2_2:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
l_test_9_while_cond:
    jmp     l_test_9_while_cond     #   5:     goto   9_while_cond
l_test_12_while_cond:
    movl    $46036, %eax            #   7:     if     46036 > 96945 goto 13_while_body
    movl    $96945, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_13_while_body   
    jmp     l_test_11               #   8:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  10:     goto   12_while_cond
l_test_11:
    jmp     l_test_5                #  12:     goto   5
l_test_5:
l_test_16_while_cond:
    movl    $20428, %eax            #  15:     sub    t1 <- 20428, 59136
    movl    $59136, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     sub    t2 <- t1, 10430
    movl    $10430, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $30138, %eax            #  17:     if     30138 # t2 goto 17_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_17_while_body   
    jmp     l_test_15               #  18:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  20:     goto   16_while_cond
l_test_15:
    call    ReadInt                 #  22:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
