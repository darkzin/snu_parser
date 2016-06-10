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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
    call    dummyBOOLfunc           #   0:     call   t5 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t5
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   2:     if     97 > 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    movl    $42122, %eax            #   5:     assign v1 <- 42122
    movl    %eax, -20(%ebp)        
    jmp     l_f0_1                  #   6:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_8_if_false         #   9:     goto   8_if_false
    movl    $0, %eax                #  10:     return 0
    jmp     l_f0_exit              
    movl    $98, %eax               #  11:     assign v2 <- 98
    movb    %al, -21(%ebp)         
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <char> %ebp-29 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
l_f1_0:
    movl    $47822, %eax            #   6:     div    t5 <- 47822, 59278
    movl    $59278, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     mul    t6 <- t5, 13175
    movl    $13175, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     assign v0 <- t6
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #   9:     call   t7 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  10:     assign v1 <- t7
    movb    %al, -29(%ebp)         

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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 4 of <array 7 of <char>>>>>>> %ebp+16 ]

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
    movl    $98, %eax               #   0:     if     98 <= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_5_if_true          #   6:     goto   5_if_true
    jmp     l_f2_6_if_false         #   7:     goto   6_if_false
l_f2_5_if_true:
l_f2_10_while_cond:
    movl    $97, %eax               #  10:     if     97 < 97 goto 11_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_11_while_body     
    jmp     l_f2_9                  #  11:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  13:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_4                  #  15:     goto   4
l_f2_6_if_false:
l_f2_4:
    call    dummyCHARfunc           #  18:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  19:     return t5
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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 10 of <array 2 of <array 9 of <array 4 of <array 7 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <char> %ebp-19 ]
    #    -20(%ebp)   1  [ $t4       <bool> %ebp-20 ]

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
    movl    $100, %eax              #   0:     if     100 >= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   3:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $0, %eax                #   6:     if     0 # 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_5_if_true       
    jmp     l_test_6_if_false       #   7:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    leal    v0, %eax                #  13:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     param  2 <- t0
    pushl   %eax                   
    movl    $98, %eax               #  15:     param  1 <- 98
    pushl   %eax                   
    movl    $97, %eax               #  16:     if     97 < 97 goto 12
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_12              
    jmp     l_test_13               #  17:     goto   13
l_test_12:
    movl    $1, %eax                #  19:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_14               #  20:     goto   14
l_test_13:
    movl    $0, %eax                #  22:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_14:
    movzbl  -17(%ebp), %eax         #  24:     param  0 <- t1
    pushl   %eax                   
    call    f2                      #  25:     call   t2 <- f2
    addl    $12, %esp              
    movb    %al, -18(%ebp)         
    movl    $41454, %eax            #  26:     if     41454 < 12 goto 17_if_true
    movl    $12, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_17_if_true      
    jmp     l_test_18_if_false      #  27:     goto   18_if_false
l_test_17_if_true:
    jmp     l_test_16               #  29:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $11395, %eax            #  32:     assign v1 <- 11395
    movl    %eax, v1               
    jmp     l_test_exit            
    call    dummyCHARfunc           #  34:     call   t3 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    jmp     l_test_4                #  35:     goto   4
l_test_6_if_false:
l_test_4:
    call    f0                      #  38:     call   t4 <- f0
    movb    %al, -20(%ebp)         
    jmp     l_test_exit            

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
v0:                                 # <array 10 of <array 2 of <array 9 of <array 4 of <array 7 of <char>>>>>>
    .long    5
    .long   10
    .long    2
    .long    9
    .long    4
    .long    7
    .skip 5040
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
