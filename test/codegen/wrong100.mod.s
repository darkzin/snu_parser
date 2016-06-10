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
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   2:     if     98 > 98 goto 3_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   3:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_2                  #   5:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
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
    movl    $86096, %eax            #   0:     if     86096 > 82375 goto 1
    movl    $82375, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t6 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t6 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v1 <- t6
    movb    %al, 8(%ebp)           
l_f1_6_while_cond:
    jmp     l_f1_5                  #  10:     goto   5
    movl    $10265, %eax            #  11:     assign v2 <- 10265
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  12:     assign v3 <- 99
    movb    %al, -21(%ebp)         
    jmp     l_f1_6_while_cond       #  13:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_exit              

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
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 2 of <array 9 of <array 9 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 7 of <array 6 of <array 6 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t6 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    f0                      #   1:     call   t7 <- f0
    movb    %al, -17(%ebp)         
    jmp     l_f2_3_if_true          #   2:     goto   3_if_true
    jmp     l_f2_4_if_false         #   3:     goto   4_if_false
l_f2_3_if_true:
    jmp     l_f2_2                  #   5:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 7 of <array 6 of <array 6 of <array 5 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 2 of <array 9 of <array 9 of <array 10 of <bool>>>>>>> %ebp-32 ]
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
    movl    $100, %eax              #   0:     if     100 >= 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $50209, %eax            #   3:     add    t0 <- 50209, 39266
    movl    $39266, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     sub    t1 <- t0, 70815
    movl    $70815, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $43036, %eax            #   5:     if     43036 > t1 goto 5
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_5               
    jmp     l_test_6                #   6:     goto   6
l_test_5:
    movl    $1, %eax                #   8:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_7                #   9:     goto   7
l_test_6:
    movl    $0, %eax                #  11:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_7:
    movzbl  -21(%ebp), %eax         #  13:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #  18:     goto   10_while_cond
l_test_15_while_cond:
    movl    $1, %eax                #  20:     param  2 <- 1
    pushl   %eax                   
    leal    v2, %eax                #  21:     &()    t3 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     param  1 <- t3
    pushl   %eax                   
    leal    v1, %eax                #  23:     &()    t4 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     param  0 <- t4
    pushl   %eax                   
    call    f2                      #  25:     call   t5 <- f2
    addl    $12, %esp              
    movl    %eax, -36(%ebp)        
    movl    $42632, %eax            #  26:     if     42632 < t5 goto 16_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_16_while_body   
    jmp     l_test_14               #  27:     goto   14
l_test_16_while_body:
    jmp     l_test_exit            
    jmp     l_test_15_while_cond    #  30:     goto   15_while_cond
l_test_14:
l_test_20_while_cond:
    movl    $66814, %eax            #  33:     if     66814 = 66533 goto 21_while_body
    movl    $66533, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_21_while_body   
    jmp     l_test_19               #  34:     goto   19
l_test_21_while_body:
    movl    $34490, %eax            #  36:     if     34490 >= 46046 goto 24_if_true
    movl    $46046, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_24_if_true      
    jmp     l_test_25_if_false      #  37:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  39:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_20_while_cond    #  42:     goto   20_while_cond
l_test_19:

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <array 6 of <array 2 of <array 9 of <array 9 of <array 10 of <bool>>>>>>
    .long    5
    .long    6
    .long    2
    .long    9
    .long    9
    .long   10
    .skip 9720
v2:                                 # <array 4 of <array 7 of <array 6 of <array 6 of <array 5 of <bool>>>>>>
    .long    5
    .long    4
    .long    7
    .long    6
    .long    6
    .long    5
    .skip 5040








    # end of global data section
    #-----------------------------------------

    .end
##################################################
