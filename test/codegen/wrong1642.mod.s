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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #    -32(%ebp)   4  [ $v2       <int> %ebp-32 ]

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
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, 8(%ebp)           
    call    dummyINTfunc            #   1:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $31511, %eax            #   2:     add    t3 <- 31511, t2
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v2 <- t3
    movl    %eax, -32(%ebp)        
l_f0_3_while_cond:
    movl    $13746, %eax            #   5:     sub    t4 <- 13746, 34427
    movl    $34427, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     if     t4 = 48010 goto 4_while_body
    movl    $48010, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_4_while_body      
    jmp     l_f0_2                  #   7:     goto   2
l_f0_4_while_body:
l_f0_7_while_cond:
    jmp     l_f0_7_while_cond       #  10:     goto   7_while_cond
    movl    $98, %eax               #  11:     if     98 < 97 goto 10
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_10                
    jmp     l_f0_11                 #  12:     goto   11
l_f0_10:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_12                 #  15:     goto   12
l_f0_11:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f0_12:
    movzbl  -25(%ebp), %eax         #  19:     return t5
    jmp     l_f0_exit              
    jmp     l_f0_3_while_cond       #  20:     goto   3_while_cond
l_f0_2:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 51 of <array 83 of <array 40 of <array 65 of <array 14 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 64 of <array 61 of <array 23 of <array 5 of <array 48 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 41 of <array 35 of <array 16 of <array 10 of <array 55 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    call    dummyBOOLfunc           #   2:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   3:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_7_while_cond:
    jmp     l_f1_6                  #   8:     goto   6
    jmp     l_f1_7_while_cond       #   9:     goto   7_while_cond
l_f1_6:
    jmp     l_f1_15                 #  11:     goto   15
    jmp     l_f1_16                 #  12:     goto   16
l_f1_15:
    movl    $1, %eax                #  14:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_17                 #  15:     goto   17
l_f1_16:
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f1_17:
    jmp     l_f1_22                 #  19:     goto   22
    movl    $1, %eax                #  20:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_23                 #  21:     goto   23
l_f1_22:
    movl    $0, %eax                #  23:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f1_23:
    movzbl  -14(%ebp), %eax         #  25:     if     t3 # t4 goto 12_if_true
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  26:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  28:     goto   11
l_f1_13_if_false:
l_f1_11:

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 99 of <array 3 of <array 30 of <array 53 of <array 83 of <bool>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 99 of <array 3 of <array 30 of <array 53 of <array 83 of <bool>>>>>>> %ebp-20 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_1_while_cond     #   2:     goto   1_while_cond
l_test_0:
    movl    $66291, %eax            #   4:     assign v0 <- 66291
    movl    %eax, v0               
    jmp     l_test_11_if_false      #   5:     goto   11_if_false
    jmp     l_test_exit            
    jmp     l_test_9                #   7:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_6                #  10:     goto   6
l_test_6:
    jmp     l_test_exit            
    call    dummyINTfunc            #  13:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     if     t0 <= 91038 goto 15_if_true
    movl    $91038, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_15_if_true      
    jmp     l_test_16_if_false      #  15:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_21_while_cond:
    jmp     l_test_21_while_cond    #  20:     goto   21_while_cond
    leal    v1, %eax                #  21:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  23:     call   f2
    addl    $4, %esp               
    jmp     l_test_14               #  24:     goto   14
l_test_16_if_false:
l_test_14:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v1:                                 # <array 99 of <array 3 of <array 30 of <array 53 of <array 83 of <bool>>>>>>
    .long    5
    .long   99
    .long    3
    .long   30
    .long   53
    .long   83
    .skip 39195090








    # end of global data section
    #-----------------------------------------

    .end
##################################################
