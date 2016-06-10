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
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t14      <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <char> %ebp-30 ]
    #    -31(%ebp)   1  [ $t9       <bool> %ebp-31 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 11 of <array 65 of <array 87 of <array 93 of <array 64 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 70 of <array 100 of <array 3 of <array 77 of <int>>>>>>> %ebp+20 ]
    #    -32(%ebp)   1  [ $v4       <char> %ebp-32 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -30(%ebp)         
    movl    $97, %eax               #   1:     if     97 < t8 goto 1
    movzbl  -30(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_1                 
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t9 <- 1
    movb    %al, -31(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t9 <- 0
    movb    %al, -31(%ebp)         
l_f0_3:
    movzbl  -31(%ebp), %eax         #   9:     return t9
    jmp     l_f0_exit              
    movl    $37794, %eax            #  10:     if     37794 > 67671 goto 6_if_true
    movl    $67671, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  11:     goto   7_if_false
l_f0_6_if_true:
    call    dummyINTfunc            #  13:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
    movl    $39696, %eax            #  16:     if     39696 = 76818 goto 14_if_true
    movl    $76818, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  17:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  19:     goto   13
l_f0_15_if_false:
l_f0_13:
l_f0_18_while_cond:
    movl    $72050, %eax            #  23:     if     72050 # 19955 goto 19_while_body
    movl    $19955, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_19_while_body     
    jmp     l_f0_17                 #  24:     goto   17
l_f0_19_while_body:
    jmp     l_f0_18_while_cond      #  26:     goto   18_while_cond
l_f0_17:
    movl    $56406, %eax            #  28:     add    t11 <- 56406, 5827
    movl    $5827, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     sub    t12 <- t11, 76683
    movl    $76683, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  30:     param  0 <- t12
    pushl   %eax                   
    call    WriteInt                #  31:     call   WriteInt
    addl    $4, %esp               
    movl    $100, %eax              #  32:     assign v4 <- 100
    movb    %al, -32(%ebp)         
    call    ReadInt                 #  33:     call   t13 <- ReadInt
    movl    %eax, -28(%ebp)        
    jmp     l_f0_5                  #  34:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_25                 #  37:     goto   25
    jmp     l_f0_25                 #  38:     goto   25
    jmp     l_f0_26                 #  39:     goto   26
l_f0_25:
    movl    $1, %eax                #  41:     assign t14 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_27                 #  42:     goto   27
l_f0_26:
    movl    $0, %eax                #  44:     assign t14 <- 0
    movb    %al, -29(%ebp)         
l_f0_27:
    movzbl  -29(%ebp), %eax         #  46:     return t14
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v0       <char> %ebp-33 ]

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
    movl    $30773, %eax            #   0:     mul    t8 <- 30773, 11829
    movl    $11829, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     mul    t9 <- t8, 39059
    movl    $39059, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     div    t10 <- t9, 13997
    movl    $13997, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     return t10
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   4:     call   t11 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     assign v0 <- t11
    movb    %al, -33(%ebp)         
    call    ReadInt                 #   6:     call   t12 <- ReadInt
    movl    %eax, -24(%ebp)        

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 30 of <array 36 of <array 39 of <array 89 of <array 69 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t8
    movb    %al, 8(%ebp)           
    call    dummyBOOLfunc           #   2:     call   t9 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_3_if_true          #   3:     goto   3_if_true
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
l_f2_3_if_true:
    movl    $1807, %eax             #   6:     assign v3 <- 1807
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #   7:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_2                  #   8:     goto   2
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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 9 of <array 70 of <array 100 of <array 3 of <array 77 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 11 of <array 65 of <array 87 of <array 93 of <array 64 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_3                #   1:     goto   3
l_test_3:
    call    f1                      #   3:     call   t0 <- f1
    movl    %eax, -16(%ebp)        
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    leal    v1, %eax                #   7:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  3 <- t1
    pushl   %eax                   
    movl    $99, %eax               #   9:     if     99 > 98 goto 10
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_10              
    jmp     l_test_11               #  10:     goto   11
l_test_10:
    movl    $1, %eax                #  12:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_12               #  13:     goto   12
l_test_11:
    movl    $0, %eax                #  15:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_12:
    movzbl  -21(%ebp), %eax         #  17:     param  2 <- t2
    pushl   %eax                   
    leal    v0, %eax                #  18:     &()    t3 <- v0
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     param  1 <- t3
    pushl   %eax                   
    movl    $29294, %eax            #  20:     sub    t4 <- 29294, 92514
    movl    $92514, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t5 <- t4, 8689
    movl    $8689, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  23:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  24:     if     t6 = 1 goto 8_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8_if_true       
    jmp     l_test_9_if_false       #  25:     goto   9_if_false
l_test_8_if_true:
    movl    $80916, %eax            #  27:     if     80916 >= 73643 goto 15_if_true
    movl    $73643, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_15_if_true      
    jmp     l_test_16_if_false      #  28:     goto   16_if_false
l_test_15_if_true:
    jmp     l_test_14               #  30:     goto   14
l_test_16_if_false:
l_test_14:
    call    ReadInt                 #  33:     call   t7 <- ReadInt
    movl    %eax, -44(%ebp)        
    jmp     l_test_7                #  34:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_exit            

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
v0:                                 # <array 11 of <array 65 of <array 87 of <array 93 of <array 64 of <int>>>>>>
    .long    5
    .long   11
    .long   65
    .long   87
    .long   93
    .long   64
    .skip 1480976640
v1:                                 # <array 9 of <array 70 of <array 100 of <array 3 of <array 77 of <int>>>>>>
    .long    5
    .long    9
    .long   70
    .long  100
    .long    3
    .long   77
    .skip 58212000








    # end of global data section
    #-----------------------------------------

    .end
##################################################
