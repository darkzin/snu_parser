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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 77 of <array 6 of <array 16 of <array 54 of <array 96 of <int>>>>>>> %ebp+12 ]
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_2                  #   2:     goto   2
    jmp     l_f0_2                  #   3:     goto   2
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f0_4:
    movzbl  -17(%ebp), %eax         #  11:     assign v2 <- t5
    movb    %al, -19(%ebp)         
    call    dummyBOOLfunc           #  12:     call   t6 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  13:     if     t6 = 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9_if_true         
l_f0_9_if_true:
    jmp     l_f0_8                  #  15:     goto   8
l_f0_8:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t7       <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 99 of <array 94 of <array 48 of <array 67 of <array 24 of <bool>>>>>>> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_3:
    movzbl  -14(%ebp), %eax         #   9:     return t5
    jmp     l_f1_exit              
    movl    $99, %eax               #  10:     if     99 < 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  11:     goto   7_if_false
l_f1_6_if_true:
    movl    $10831, %eax            #  13:     if     10831 >= 79708 goto 10
    movl    $79708, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_10                
    jmp     l_f1_11                 #  14:     goto   11
l_f1_10:
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_12                 #  17:     goto   12
l_f1_11:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f1_12:
    movzbl  -15(%ebp), %eax         #  21:     return t6
    jmp     l_f1_exit              
l_f1_15_while_cond:
    movl    $1, %eax                #  23:     if     1 = 1 goto 16_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_16_while_body     
    jmp     l_f1_14                 #  24:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  26:     goto   15_while_cond
l_f1_14:
    movl    $53980, %eax            #  28:     if     53980 > 32416 goto 19_if_true
    movl    $32416, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  29:     goto   20_if_false
l_f1_19_if_true:
    jmp     l_f1_18                 #  31:     goto   18
l_f1_20_if_false:
l_f1_18:
    jmp     l_f1_5                  #  34:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyCHARfunc           #  37:     call   t7 <- dummyCHARfunc
    movb    %al, -16(%ebp)         
    movl    $98, %eax               #  38:     if     98 < t7 goto 23
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_23                
    jmp     l_f1_24                 #  39:     goto   24
l_f1_23:
    movl    $1, %eax                #  41:     assign t8 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_25                 #  42:     goto   25
l_f1_24:
    movl    $0, %eax                #  44:     assign t8 <- 0
    movb    %al, -17(%ebp)         
l_f1_25:
    movzbl  -17(%ebp), %eax         #  46:     return t8
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
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 77 of <array 6 of <array 16 of <array 54 of <array 96 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 84 of <array 4 of <array 80 of <array 1 of <array 72 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #   -153280560(%ebp)  153280536  [ $v3       <array 77 of <array 6 of <array 16 of <array 54 of <array 96 of <int>>>>>> %ebp-153280560 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $153280548, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $38320137, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-153280560(%ebp)     # local array 'v3': 5 dimensions
    movl    $77,-153280556(%ebp)    #   dimension 1: 77 elements
    movl    $6,-153280552(%ebp)     #   dimension 2: 6 elements
    movl    $16,-153280548(%ebp)    #   dimension 3: 16 elements
    movl    $54,-153280544(%ebp)    #   dimension 4: 54 elements
    movl    $96,-153280540(%ebp)    #   dimension 5: 96 elements

    # function body
    jmp     l_f2_exit              
    movl    $43070, %eax            #   1:     if     43070 # 23561 goto 2_if_true
    movl    $23561, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   2:     goto   3_if_false
l_f2_2_if_true:
    leal    -153280560(%ebp), %eax  #   4:     &()    t4 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  1 <- t4
    pushl   %eax                   
    movl    $18696, %eax            #   6:     param  0 <- 18696
    pushl   %eax                   
    call    f0                      #   7:     call   t5 <- f0
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    jmp     l_f2_6                  #   8:     goto   6
l_f2_6:
    jmp     l_f2_exit              
    movl    $99, %eax               #  11:     if     99 < 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  12:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  14:     goto   10
l_f2_12_if_false:
l_f2_10:
    movl    $1, %eax                #  17:     assign v1 <- 1
    movb    %al, 12(%ebp)          
    jmp     l_f2_1                  #  18:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    dummyCHARfunc           #  21:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  22:     if     t6 > 99 goto 16
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_16                
    jmp     l_f2_17                 #  23:     goto   17
l_f2_16:
    movl    $1, %eax                #  25:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_18                 #  26:     goto   18
l_f2_17:
    movl    $0, %eax                #  28:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f2_18:
    movzbl  -22(%ebp), %eax         #  30:     assign v2 <- t7
    movb    %al, 16(%ebp)          

l_f2_exit:
    # epilogue
    addl    $153280548, %esp        # remove locals
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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
l_test_2_while_cond:
    movl    $100, %eax              #   2:     if     100 = 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
l_test_6_while_cond:
    jmp     l_test_5                #   6:     goto   5
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    jmp     l_test_8                #   9:     goto   8
l_test_8:
    jmp     l_test_2_while_cond     #  11:     goto   2_while_cond
l_test_1:
    call    ReadInt                 #  13:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    ReadInt                 #  14:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $73082, %eax            #  15:     if     73082 >= t2 goto 13_if_true
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_13_if_true      
    jmp     l_test_14_if_false      #  16:     goto   14_if_false
l_test_13_if_true:
    movl    $41074, %eax            #  18:     assign v0 <- 41074
    movl    %eax, v0               
l_test_18_while_cond:
    movl    $100, %eax              #  20:     if     100 = 98 goto 19_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_19_while_body   
    jmp     l_test_17               #  21:     goto   17
l_test_19_while_body:
    jmp     l_test_18_while_cond    #  23:     goto   18_while_cond
l_test_17:
    jmp     l_test_12               #  25:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $99, %eax               #  28:     assign v1 <- 99
    movb    %al, v1                
    call    dummyCHARfunc           #  29:     call   t3 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  30:     assign v1 <- t3
    movb    %al, v1                

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
