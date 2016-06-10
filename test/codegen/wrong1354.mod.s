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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 39 of <array 26 of <array 40 of <array 90 of <array 63 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $336, %eax              #   0:     add    t3 <- 336, 39857
    movl    $39857, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t4 <- t3, 52477
    movl    $52477, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t5 <- t4, 83947
    movl    $83947, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t6 <- t5, 32821
    movl    $32821, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t6
    jmp     l_f0_exit              
    call    ReadInt                 #   5:     call   t7 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    $44692, %eax            #   6:     if     44692 < 27864 goto 6_if_true
    movl    $27864, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   7:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_5                  #   9:     goto   5
l_f0_7_if_false:
l_f0_5:
    movl    $26797, %eax            #  12:     return 26797
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  13:     goto   1
l_f0_1:
    call    dummyBOOLfunc           #  15:     call   t8 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 29 of <array 24 of <array 96 of <array 46 of <array 41 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     return t4
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   3:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   4:     if     t5 < 99 goto 3_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   5:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_2                  #   7:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 88 of <array 5 of <array 10 of <array 72 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    movl    $53956, %eax            #   0:     if     53956 = 47519 goto 1_if_true
    movl    $47519, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $97702, %eax            #   3:     assign v0 <- 97702
    movl    %eax, 8(%ebp)          
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_7_while_cond:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #  10:     goto   12
    movl    $0, %eax                #  11:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_12:
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_20                 #  14:     goto   20
    movl    $0, %eax                #  15:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_20:
    movzbl  -14(%ebp), %eax         #  17:     if     t4 = t5 goto 8_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #  18:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  20:     goto   7_while_cond
l_f2_6:
    movl    $100, %eax              #  22:     if     100 < 97 goto 23
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_23                
    jmp     l_f2_24                 #  23:     goto   24
l_f2_23:
    movl    $1, %eax                #  25:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_25                 #  26:     goto   25
l_f2_24:
    movl    $0, %eax                #  28:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f2_25:
    movzbl  -16(%ebp), %eax         #  30:     return t6
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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 54 of <array 88 of <array 5 of <array 10 of <array 72 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]

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
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    jmp     l_test_exit            
    movl    $388, %eax              #   3:     if     388 < 62137 goto 6_if_true
    movl    $62137, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
l_test_10_while_cond:
    movl    $52246, %eax            #  10:     if     52246 > 57605 goto 11_while_body
    movl    $57605, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  11:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  13:     goto   10_while_cond
l_test_9:
    jmp     l_test_1                #  15:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $1, %eax                #  18:     if     1 = 1 goto 14_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  19:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_exit            
l_test_19_while_cond:
    jmp     l_test_18               #  23:     goto   18
l_test_22_while_cond:
    jmp     l_test_21               #  25:     goto   21
    jmp     l_test_22_while_cond    #  26:     goto   22_while_cond
l_test_21:
    jmp     l_test_19_while_cond    #  28:     goto   19_while_cond
l_test_18:
    jmp     l_test_13               #  30:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $47340, %eax            #  33:     param  2 <- 47340
    pushl   %eax                   
    leal    v0, %eax                #  34:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  35:     param  1 <- t0
    pushl   %eax                   
    movl    $94628, %eax            #  36:     param  0 <- 94628
    pushl   %eax                   
    call    f2                      #  37:     call   t1 <- f2
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movl    $23940, %eax            #  38:     assign v1 <- 23940
    movl    %eax, v1               
    jmp     l_test_exit            
    jmp     l_test_33_if_false      #  40:     goto   33_if_false
    jmp     l_test_31               #  41:     goto   31
l_test_33_if_false:
l_test_31:
    jmp     l_test_24               #  44:     goto   24
l_test_24:
    call    dummyCHARfunc           #  46:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  47:     assign v2 <- t2
    movb    %al, v2                

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
v0:                                 # <array 54 of <array 88 of <array 5 of <array 10 of <array 72 of <bool>>>>>>
    .long    5
    .long   54
    .long   88
    .long    5
    .long   10
    .long   72
    .skip 17107200
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
